// @file records.d
// @brief Full agibot d codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_9_0_main values in d. 75 original records retain 237 fields and 57 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/agibot/en_US/catalog/.
// Generated complete bounded values; BetterC, caller buffers, no authority.
module agibot.d.ros2.sdk_v0_9_0_main.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 2 aimdk_msgs/msg/AgentPropertyIdType value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_c200e5c12c94037c8d6c15a2ad74e549f98381340d3fdec13fa58e6c749546d3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgAgentPropertyIdType {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/AgentPropertyIdType in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of aimdk_msgs/msg/AgentPropertyIdType.
 /// @details Exact identity UWVMROS1_c200e5c12c94037c8d6c15a2ad74e549f98381340d3fdec13fa58e6c749546d3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c200e5c12c94037c8d6c15a2ad74e549f98381340d3fdec13fa58e6c749546d3";
 /// @brief Original ROS type name for aimdk_msgs/msg/AgentPropertyIdType.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/AgentPropertyIdType";
 /// @brief Selected original native identity for aimdk_msgs/msg/AgentPropertyIdType.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_UNDEFINED: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AGENT_PROPERTY_UNDEFINED=0;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_LANGUAGE: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AGENT_PROPERTY_LANGUAGE=1;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_RUN_MODE: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AGENT_PROPERTY_RUN_MODE=2;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_GREET: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AGENT_PROPERTY_GREET=3;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_HEAD_FOLLOW: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AGENT_PROPERTY_HEAD_FOLLOW=4;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_DUPLEX_TIMEOUT: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AGENT_PROPERTY_DUPLEX_TIMEOUT=5;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_ENVIRONMENT_SWITCH: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AGENT_PROPERTY_ENVIRONMENT_SWITCH=6;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_WELCOME_STATUS: original uint8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AGENT_PROPERTY_WELCOME_STATUS=7;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_SITE_SWITCH: original uint8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AGENT_PROPERTY_SITE_SWITCH=8;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.value: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 ubyte field_value=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/AgentPropertyIdType.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/AgentPropertyIdType.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgAgentPropertyIdType value) {
  value=Ros2Aimdk_msgsMsgAgentPropertyIdType.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/AgentPropertyIdType value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/AgentPropertyIdType value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgAgentPropertyIdType value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/AgentPropertiesValue value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..133 bytes
/// and is identified by UWVMROS1_570dc0d22fba76baa35fa65776e7e4b8152f2aa525dee858b21d91ede97543ef.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgAgentPropertiesValue {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/AgentPropertiesValue in bytes.
 /// @details The inclusive bound is 133 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=133;
 /// @brief Canonical codec identity of aimdk_msgs/msg/AgentPropertiesValue.
 /// @details Exact identity UWVMROS1_570dc0d22fba76baa35fa65776e7e4b8152f2aa525dee858b21d91ede97543ef binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_570dc0d22fba76baa35fa65776e7e4b8152f2aa525dee858b21d91ede97543ef";
 /// @brief Original ROS type name for aimdk_msgs/msg/AgentPropertiesValue.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/AgentPropertiesValue";
 /// @brief Selected original native identity for aimdk_msgs/msg/AgentPropertiesValue.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/AgentPropertiesValue.key: aimdk_msgs/msg/AgentPropertyIdType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgAgentPropertyIdType field_key=Ros2Aimdk_msgsMsgAgentPropertyIdType.init;
 /// @brief aimdk_msgs/msg/AgentPropertiesValue.value: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_value=null;
 /// @brief Append every canonical field of aimdk_msgs/msg/AgentPropertiesValue.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_key.writeFields(w)) return false;
  if(!w.text(this.field_value,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/AgentPropertiesValue.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgAgentPropertiesValue value) {
  value=Ros2Aimdk_msgsMsgAgentPropertiesValue.init;
  if(!Ros2Aimdk_msgsMsgAgentPropertyIdType.readFields(r,arena,value.field_key)) return false;
  if(!r.text(value.field_value,128)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/AgentPropertiesValue value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/AgentPropertiesValue value.
 /// @details Require the complete 5..133-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgAgentPropertiesValue value) {
  if(bytes.length<5 || bytes.length>133) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/AgentProperties value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..536 bytes
/// and is identified by UWVMROS1_051be5d21402ad0034bd25ebfb308609846579a4b459b2cbf70f92c05ffeedfe.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgAgentProperties {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/AgentProperties in bytes.
 /// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=536;
 /// @brief Canonical codec identity of aimdk_msgs/msg/AgentProperties.
 /// @details Exact identity UWVMROS1_051be5d21402ad0034bd25ebfb308609846579a4b459b2cbf70f92c05ffeedfe binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_051be5d21402ad0034bd25ebfb308609846579a4b459b2cbf70f92c05ffeedfe";
 /// @brief Original ROS type name for aimdk_msgs/msg/AgentProperties.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/AgentProperties";
 /// @brief Selected original native identity for aimdk_msgs/msg/AgentProperties.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/AgentProperties.properties: aimdk_msgs/msg/AgentPropertiesValue; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgAgentPropertiesValue[] field_properties=null;
 /// @brief Append every canonical field of aimdk_msgs/msg/AgentProperties.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_properties.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_properties.length)) return false;
  foreach(ref e; this.field_properties) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/AgentProperties.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgAgentProperties value) {
  value=Ros2Aimdk_msgsMsgAgentProperties.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>4) {
       r.code=22;
       return false;
  }
  value.field_properties=arena.allocate!(Ros2Aimdk_msgsMsgAgentPropertiesValue)(count0);
  if(value.field_properties.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_properties) {
  if(!Ros2Aimdk_msgsMsgAgentPropertiesValue.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/AgentProperties value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/AgentProperties value.
 /// @details Require the complete 4..536-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgAgentProperties value) {
  if(bytes.length<4 || bytes.length>536) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/AudioVadStateType value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgAudioVadStateType {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/AudioVadStateType in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of aimdk_msgs/msg/AudioVadStateType.
 /// @details Exact identity UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526";
 /// @brief Original ROS type name for aimdk_msgs/msg/AudioVadStateType.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/AudioVadStateType";
 /// @brief Selected original native identity for aimdk_msgs/msg/AudioVadStateType.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/AudioVadStateType.AUDIO_VAD_STATE_NONE: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AUDIO_VAD_STATE_NONE=0;
 /// @brief aimdk_msgs/msg/AudioVadStateType.AUDIO_VAD_STATE_BEGIN: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AUDIO_VAD_STATE_BEGIN=1;
 /// @brief aimdk_msgs/msg/AudioVadStateType.AUDIO_VAD_STATE_PROCESSING: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AUDIO_VAD_STATE_PROCESSING=2;
 /// @brief aimdk_msgs/msg/AudioVadStateType.AUDIO_VAD_STATE_END: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AUDIO_VAD_STATE_END=3;
 /// @brief aimdk_msgs/msg/AudioVadStateType.value: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 ubyte field_value=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/AudioVadStateType.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/AudioVadStateType.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgAudioVadStateType value) {
  value=Ros2Aimdk_msgsMsgAudioVadStateType.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/AudioVadStateType value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/AudioVadStateType value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgAudioVadStateType value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 builtin_interfaces/msg/Time value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Builtin_interfacesMsgTime {
 /// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of builtin_interfaces/msg/Time.
 /// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
 /// @brief Original ROS type name for builtin_interfaces/msg/Time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="builtin_interfaces/msg/Time";
 /// @brief Selected original native identity for builtin_interfaces/msg/Time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief builtin_interfaces/msg/Time.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 int field_sec=0;
 /// @brief builtin_interfaces/msg/Time.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 uint field_nanosec=0;
 /// @brief Append every canonical field of builtin_interfaces/msg/Time.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_nanosec >= 1000000000) {
       w.code=22;
       return false;
  }
  if(!w.integer(this.field_sec)) return false;
  if(!w.integer(this.field_nanosec)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of builtin_interfaces/msg/Time.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Builtin_interfacesMsgTime value) {
  value=Ros2Builtin_interfacesMsgTime.init;
  if(!r.integer(value.field_sec)) return false;
  if(!r.integer(value.field_nanosec)) return false;
  if(value.field_nanosec >= 1000000000) {
       r.code=22;
       return false;
  }
  return true;
 }
 /// @brief Encode one complete builtin_interfaces/msg/Time value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete builtin_interfaces/msg/Time value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Builtin_interfacesMsgTime value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/RequestHeader value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgRequestHeader {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/RequestHeader in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of aimdk_msgs/msg/RequestHeader.
 /// @details Exact identity UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000";
 /// @brief Original ROS type name for aimdk_msgs/msg/RequestHeader.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/RequestHeader";
 /// @brief Selected original native identity for aimdk_msgs/msg/RequestHeader.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/RequestHeader.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/d/API-CONTRACT.md
 Ros2Builtin_interfacesMsgTime field_stamp=Ros2Builtin_interfacesMsgTime.init;
 /// @brief Append every canonical field of aimdk_msgs/msg/RequestHeader.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_stamp.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/RequestHeader.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgRequestHeader value) {
  value=Ros2Aimdk_msgsMsgRequestHeader.init;
  if(!Ros2Builtin_interfacesMsgTime.readFields(r,arena,value.field_stamp)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/RequestHeader value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/RequestHeader value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgRequestHeader value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/CommonRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgCommonRequest {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/CommonRequest in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of aimdk_msgs/msg/CommonRequest.
 /// @details Exact identity UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7";
 /// @brief Original ROS type name for aimdk_msgs/msg/CommonRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/CommonRequest";
 /// @brief Selected original native identity for aimdk_msgs/msg/CommonRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/CommonRequest.header: aimdk_msgs/msg/RequestHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgRequestHeader field_header=Ros2Aimdk_msgsMsgRequestHeader.init;
 /// @brief Append every canonical field of aimdk_msgs/msg/CommonRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/CommonRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgCommonRequest value) {
  value=Ros2Aimdk_msgsMsgCommonRequest.init;
  if(!Ros2Aimdk_msgsMsgRequestHeader.readFields(r,arena,value.field_header)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/CommonRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/CommonRequest value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgCommonRequest value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/ResponseHeader value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes
/// and is identified by UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgResponseHeader {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/ResponseHeader in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of aimdk_msgs/msg/ResponseHeader.
 /// @details Exact identity UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90";
 /// @brief Original ROS type name for aimdk_msgs/msg/ResponseHeader.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/ResponseHeader";
 /// @brief Selected original native identity for aimdk_msgs/msg/ResponseHeader.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/ResponseHeader.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/d/API-CONTRACT.md
 Ros2Builtin_interfacesMsgTime field_stamp=Ros2Builtin_interfacesMsgTime.init;
 /// @brief aimdk_msgs/msg/ResponseHeader.code: int64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/d/API-CONTRACT.md
 long field_code=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/ResponseHeader.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_stamp.writeFields(w)) return false;
  if(!w.integer(this.field_code)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/ResponseHeader.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgResponseHeader value) {
  value=Ros2Aimdk_msgsMsgResponseHeader.init;
  if(!Ros2Builtin_interfacesMsgTime.readFields(r,arena,value.field_stamp)) return false;
  if(!r.integer(value.field_code)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/ResponseHeader value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/ResponseHeader value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgResponseHeader value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/CommonState value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgCommonState {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/CommonState in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of aimdk_msgs/msg/CommonState.
 /// @details Exact identity UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e";
 /// @brief Original ROS type name for aimdk_msgs/msg/CommonState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/CommonState";
 /// @brief Selected original native identity for aimdk_msgs/msg/CommonState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/CommonState.UNKNOWN: original int32 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum int field_UNKNOWN=0;
 /// @brief aimdk_msgs/msg/CommonState.SUCCESS: original int32 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum int field_SUCCESS=1;
 /// @brief aimdk_msgs/msg/CommonState.FAILURE: original int32 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum int field_FAILURE=2;
 /// @brief aimdk_msgs/msg/CommonState.ABORTED: original int32 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum int field_ABORTED=3;
 /// @brief aimdk_msgs/msg/CommonState.TIMEOUT: original int32 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum int field_TIMEOUT=4;
 /// @brief aimdk_msgs/msg/CommonState.INVALID: original int32 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum int field_INVALID=5;
 /// @brief aimdk_msgs/msg/CommonState.IN_MANUAL: original int32 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum int field_IN_MANUAL=6;
 /// @brief aimdk_msgs/msg/CommonState.NOT_READY: original int32 constant.
 /// @details Exact admitted value 100. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum int field_NOT_READY=100;
 /// @brief aimdk_msgs/msg/CommonState.PENDING: original int32 constant.
 /// @details Exact admitted value 200. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum int field_PENDING=200;
 /// @brief aimdk_msgs/msg/CommonState.CREATED: original int32 constant.
 /// @details Exact admitted value 300. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum int field_CREATED=300;
 /// @brief aimdk_msgs/msg/CommonState.RUNNING: original int32 constant.
 /// @details Exact admitted value 400. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 enum int field_RUNNING=400;
 /// @brief aimdk_msgs/msg/CommonState.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 int field_value=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/CommonState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/CommonState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgCommonState value) {
  value=Ros2Aimdk_msgsMsgCommonState.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/CommonState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/CommonState value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgCommonState value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/CommonResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
/// and is identified by UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgCommonResponse {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/CommonResponse in bytes.
 /// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=152;
 /// @brief Canonical codec identity of aimdk_msgs/msg/CommonResponse.
 /// @details Exact identity UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6";
 /// @brief Original ROS type name for aimdk_msgs/msg/CommonResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/CommonResponse";
 /// @brief Selected original native identity for aimdk_msgs/msg/CommonResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/CommonResponse.header: aimdk_msgs/msg/ResponseHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgResponseHeader field_header=Ros2Aimdk_msgsMsgResponseHeader.init;
 /// @brief aimdk_msgs/msg/CommonResponse.status: aimdk_msgs/msg/CommonState.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonState field_status=Ros2Aimdk_msgsMsgCommonState.init;
 /// @brief aimdk_msgs/msg/CommonResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of aimdk_msgs/msg/CommonResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_status.writeFields(w)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/CommonResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgCommonResponse value) {
  value=Ros2Aimdk_msgsMsgCommonResponse.init;
  if(!Ros2Aimdk_msgsMsgResponseHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Aimdk_msgsMsgCommonState.readFields(r,arena,value.field_status)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/CommonResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/CommonResponse value.
 /// @details Require the complete 24..152-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgCommonResponse value) {
  if(bytes.length<24 || bytes.length>152) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/CommonTaskResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..28 bytes
/// and is identified by UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgCommonTaskResponse {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/CommonTaskResponse in bytes.
 /// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=28;
 /// @brief Canonical codec identity of aimdk_msgs/msg/CommonTaskResponse.
 /// @details Exact identity UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2";
 /// @brief Original ROS type name for aimdk_msgs/msg/CommonTaskResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/CommonTaskResponse";
 /// @brief Selected original native identity for aimdk_msgs/msg/CommonTaskResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/CommonTaskResponse.header: aimdk_msgs/msg/ResponseHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgResponseHeader field_header=Ros2Aimdk_msgsMsgResponseHeader.init;
 /// @brief aimdk_msgs/msg/CommonTaskResponse.task_id: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/d/API-CONTRACT.md
 ulong field_task_id=0;
 /// @brief aimdk_msgs/msg/CommonTaskResponse.state: aimdk_msgs/msg/CommonState.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonState field_state=Ros2Aimdk_msgsMsgCommonState.init;
 /// @brief Append every canonical field of aimdk_msgs/msg/CommonTaskResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.integer(this.field_task_id)) return false;
  if(!this.field_state.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/CommonTaskResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgCommonTaskResponse value) {
  value=Ros2Aimdk_msgsMsgCommonTaskResponse.init;
  if(!Ros2Aimdk_msgsMsgResponseHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.integer(value.field_task_id)) return false;
  if(!Ros2Aimdk_msgsMsgCommonState.readFields(r,arena,value.field_state)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/CommonTaskResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/CommonTaskResponse value.
 /// @details Require the complete 28..28-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgCommonTaskResponse value) {
  if(bytes.length<28 || bytes.length>28) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/DomainErrorState value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgDomainErrorState {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/DomainErrorState in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of aimdk_msgs/msg/DomainErrorState.
 /// @details Exact identity UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231";
 /// @brief Original ROS type name for aimdk_msgs/msg/DomainErrorState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/DomainErrorState";
 /// @brief Selected original native identity for aimdk_msgs/msg/DomainErrorState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/DomainErrorState.NONE: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_NONE=0;
 /// @brief aimdk_msgs/msg/DomainErrorState.DAMPING: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_DAMPING=1;
 /// @brief aimdk_msgs/msg/DomainErrorState.POWERDOWN: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_POWERDOWN=2;
 /// @brief aimdk_msgs/msg/DomainErrorState.DISABLE: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_DISABLE=3;
 /// @brief aimdk_msgs/msg/DomainErrorState.DISCONNECT: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_DISCONNECT=4;
 /// @brief aimdk_msgs/msg/DomainErrorState.value: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 ubyte field_value=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/DomainErrorState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/DomainErrorState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgDomainErrorState value) {
  value=Ros2Aimdk_msgsMsgDomainErrorState.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/DomainErrorState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/DomainErrorState value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgDomainErrorState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgDomainErrorState value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/MessageHeader value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
/// and is identified by UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgMessageHeader {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/MessageHeader in bytes.
 /// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=152;
 /// @brief Canonical codec identity of aimdk_msgs/msg/MessageHeader.
 /// @details Exact identity UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496";
 /// @brief Original ROS type name for aimdk_msgs/msg/MessageHeader.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/MessageHeader";
 /// @brief Selected original native identity for aimdk_msgs/msg/MessageHeader.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/MessageHeader.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/d/API-CONTRACT.md
 Ros2Builtin_interfacesMsgTime field_stamp=Ros2Builtin_interfacesMsgTime.init;
 /// @brief aimdk_msgs/msg/MessageHeader.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_frame_id=null;
 /// @brief aimdk_msgs/msg/MessageHeader.sequence: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/d/API-CONTRACT.md
 uint field_sequence=0;
 /// @brief aimdk_msgs/msg/MessageHeader.meas_stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/d/API-CONTRACT.md
 Ros2Builtin_interfacesMsgTime field_meas_stamp=Ros2Builtin_interfacesMsgTime.init;
 /// @brief Append every canonical field of aimdk_msgs/msg/MessageHeader.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_stamp.writeFields(w)) return false;
  if(!w.text(this.field_frame_id,128)) return false;
  if(!w.integer(this.field_sequence)) return false;
  if(!this.field_meas_stamp.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/MessageHeader.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgMessageHeader value) {
  value=Ros2Aimdk_msgsMsgMessageHeader.init;
  if(!Ros2Builtin_interfacesMsgTime.readFields(r,arena,value.field_stamp)) return false;
  if(!r.text(value.field_frame_id,128)) return false;
  if(!r.integer(value.field_sequence)) return false;
  if(!Ros2Builtin_interfacesMsgTime.readFields(r,arena,value.field_meas_stamp)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/MessageHeader value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/MessageHeader value.
 /// @details Require the complete 24..152-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgMessageHeader value) {
  if(bytes.length<24 || bytes.length>152) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/FaceEmojiStatus value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 47..2415
/// bytes and is identified by UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgFaceEmojiStatus {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/FaceEmojiStatus in bytes.
 /// @details The inclusive bound is 2415 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=2415;
 /// @brief Canonical codec identity of aimdk_msgs/msg/FaceEmojiStatus.
 /// @details Exact identity UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7";
 /// @brief Original ROS type name for aimdk_msgs/msg/FaceEmojiStatus.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/FaceEmojiStatus";
 /// @brief Selected original native identity for aimdk_msgs/msg/FaceEmojiStatus.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_IDLE: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_STATUS_IDLE=0;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_START: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_STATUS_START=1;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_RUNNING: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_STATUS_RUNNING=2;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_FINISHED: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_STATUS_FINISHED=3;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_STOPPED: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_STATUS_STOPPED=4;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMessageHeader field_header=Ros2Aimdk_msgsMsgMessageHeader.init;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.e_path: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_e_path=null;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.e_path_list: string; 0..16 elements; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[][] field_e_path_list=null;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.e_id: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 ubyte field_e_id=0;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 ubyte field_mode=0;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.priority: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 int field_priority=0;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.status: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 ubyte field_status=0;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.time_to_end_ms: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 double field_time_to_end_ms=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/FaceEmojiStatus.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.text(this.field_e_path,128)) return false;
  if(this.field_e_path_list.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_e_path_list.length)) return false;
  foreach(ref e; this.field_e_path_list) {
  if(!w.text(e,128)) return false;
  }
  if(!w.integer(this.field_e_id)) return false;
  if(!w.integer(this.field_mode)) return false;
  if(!w.integer(this.field_priority)) return false;
  if(!w.integer(this.field_status)) return false;
  if(!w.float64(this.field_time_to_end_ms)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/FaceEmojiStatus.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgFaceEmojiStatus value) {
  value=Ros2Aimdk_msgsMsgFaceEmojiStatus.init;
  if(!Ros2Aimdk_msgsMsgMessageHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.text(value.field_e_path,128)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>16) {
       r.code=22;
       return false;
  }
  value.field_e_path_list=arena.allocate!(const(ubyte)[])(count2);
  if(value.field_e_path_list.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_e_path_list) {
  if(!r.text(e,128)) return false;
  }
  if(!r.integer(value.field_e_id)) return false;
  if(!r.integer(value.field_mode)) return false;
  if(!r.integer(value.field_priority)) return false;
  if(!r.integer(value.field_status)) return false;
  if(!r.float64(value.field_time_to_end_ms)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/FaceEmojiStatus value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/FaceEmojiStatus value.
 /// @details Require the complete 47..2415-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgFaceEmojiStatus value) {
  if(bytes.length<47 || bytes.length>2415) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/HandCommand value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 44..172 bytes
/// and is identified by UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgHandCommand {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/HandCommand in bytes.
 /// @details The inclusive bound is 172 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=172;
 /// @brief Canonical codec identity of aimdk_msgs/msg/HandCommand.
 /// @details Exact identity UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8";
 /// @brief Original ROS type name for aimdk_msgs/msg/HandCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/HandCommand";
 /// @brief Selected original native identity for aimdk_msgs/msg/HandCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/HandCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_name=null;
 /// @brief aimdk_msgs/msg/HandCommand.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 double field_position=0;
 /// @brief aimdk_msgs/msg/HandCommand.velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 double field_velocity=0;
 /// @brief aimdk_msgs/msg/HandCommand.acceleration: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 double field_acceleration=0;
 /// @brief aimdk_msgs/msg/HandCommand.deceleration: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 double field_deceleration=0;
 /// @brief aimdk_msgs/msg/HandCommand.effort: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 double field_effort=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/HandCommand.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_name,128)) return false;
  if(!w.float64(this.field_position)) return false;
  if(!w.float64(this.field_velocity)) return false;
  if(!w.float64(this.field_acceleration)) return false;
  if(!w.float64(this.field_deceleration)) return false;
  if(!w.float64(this.field_effort)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandCommand.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgHandCommand value) {
  value=Ros2Aimdk_msgsMsgHandCommand.init;
  if(!r.text(value.field_name,128)) return false;
  if(!r.float64(value.field_position)) return false;
  if(!r.float64(value.field_velocity)) return false;
  if(!r.float64(value.field_acceleration)) return false;
  if(!r.float64(value.field_deceleration)) return false;
  if(!r.float64(value.field_effort)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/HandCommand value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/HandCommand value.
 /// @details Require the complete 44..172-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgHandCommand value) {
  if(bytes.length<44 || bytes.length>172) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/HandType value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgHandType {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/HandType in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of aimdk_msgs/msg/HandType.
 /// @details Exact identity UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6";
 /// @brief Original ROS type name for aimdk_msgs/msg/HandType.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/HandType";
 /// @brief Selected original native identity for aimdk_msgs/msg/HandType.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/HandType.NONE: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_NONE=0;
 /// @brief aimdk_msgs/msg/HandType.NIMBLE_HANDS: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_NIMBLE_HANDS=1;
 /// @brief aimdk_msgs/msg/HandType.CLAW: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_CLAW=2;
 /// @brief aimdk_msgs/msg/HandType.ERROR: original uint8 constant.
 /// @details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ERROR=255;
 /// @brief aimdk_msgs/msg/HandType.value: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 ubyte field_value=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/HandType.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandType.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgHandType value) {
  value=Ros2Aimdk_msgsMsgHandType.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/HandType value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/HandType value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgHandType value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/HandCommandArray value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 34..1538
/// bytes and is identified by UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgHandCommandArray {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/HandCommandArray in bytes.
 /// @details The inclusive bound is 1538 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1538;
 /// @brief Canonical codec identity of aimdk_msgs/msg/HandCommandArray.
 /// @details Exact identity UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e";
 /// @brief Original ROS type name for aimdk_msgs/msg/HandCommandArray.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/HandCommandArray";
 /// @brief Selected original native identity for aimdk_msgs/msg/HandCommandArray.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/HandCommandArray.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMessageHeader field_header=Ros2Aimdk_msgsMsgMessageHeader.init;
 /// @brief aimdk_msgs/msg/HandCommandArray.left_hand_type: aimdk_msgs/msg/HandType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgHandType field_left_hand_type=Ros2Aimdk_msgsMsgHandType.init;
 /// @brief aimdk_msgs/msg/HandCommandArray.left_hands: aimdk_msgs/msg/HandCommand; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgHandCommand[] field_left_hands=null;
 /// @brief aimdk_msgs/msg/HandCommandArray.right_hand_type: aimdk_msgs/msg/HandType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgHandType field_right_hand_type=Ros2Aimdk_msgsMsgHandType.init;
 /// @brief aimdk_msgs/msg/HandCommandArray.right_hands: aimdk_msgs/msg/HandCommand; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgHandCommand[] field_right_hands=null;
 /// @brief Append every canonical field of aimdk_msgs/msg/HandCommandArray.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_left_hand_type.writeFields(w)) return false;
  if(this.field_left_hands.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_left_hands.length)) return false;
  foreach(ref e; this.field_left_hands) {
  if(!e.writeFields(w)) return false;
  }
  if(!this.field_right_hand_type.writeFields(w)) return false;
  if(this.field_right_hands.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_right_hands.length)) return false;
  foreach(ref e; this.field_right_hands) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandCommandArray.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgHandCommandArray value) {
  value=Ros2Aimdk_msgsMsgHandCommandArray.init;
  if(!Ros2Aimdk_msgsMsgMessageHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Aimdk_msgsMsgHandType.readFields(r,arena,value.field_left_hand_type)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>4) {
       r.code=22;
       return false;
  }
  value.field_left_hands=arena.allocate!(Ros2Aimdk_msgsMsgHandCommand)(count2);
  if(value.field_left_hands.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_left_hands) {
  if(!Ros2Aimdk_msgsMsgHandCommand.readFields(r,arena,e)) return false;
  }
  if(!Ros2Aimdk_msgsMsgHandType.readFields(r,arena,value.field_right_hand_type)) return false;
  uint count4; if(!r.integer(count4)) return false;
  if(count4>4) {
       r.code=22;
       return false;
  }
  value.field_right_hands=arena.allocate!(Ros2Aimdk_msgsMsgHandCommand)(count4);
  if(value.field_right_hands.length!=count4) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_right_hands) {
  if(!Ros2Aimdk_msgsMsgHandCommand.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/HandCommandArray value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/HandCommandArray value.
 /// @details Require the complete 34..1538-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgHandCommandArray value) {
  if(bytes.length<34 || bytes.length>1538) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/HandState value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 36..164 bytes
/// and is identified by UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgHandState {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/HandState in bytes.
 /// @details The inclusive bound is 164 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=164;
 /// @brief Canonical codec identity of aimdk_msgs/msg/HandState.
 /// @details Exact identity UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c";
 /// @brief Original ROS type name for aimdk_msgs/msg/HandState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/HandState";
 /// @brief Selected original native identity for aimdk_msgs/msg/HandState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/HandState.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_name=null;
 /// @brief aimdk_msgs/msg/HandState.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 double field_position=0;
 /// @brief aimdk_msgs/msg/HandState.velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 double field_velocity=0;
 /// @brief aimdk_msgs/msg/HandState.effort: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 double field_effort=0;
 /// @brief aimdk_msgs/msg/HandState.state: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 int field_state=0;
 /// @brief aimdk_msgs/msg/HandState.faultcode: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 int field_faultcode=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/HandState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_name,128)) return false;
  if(!w.float64(this.field_position)) return false;
  if(!w.float64(this.field_velocity)) return false;
  if(!w.float64(this.field_effort)) return false;
  if(!w.integer(this.field_state)) return false;
  if(!w.integer(this.field_faultcode)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgHandState value) {
  value=Ros2Aimdk_msgsMsgHandState.init;
  if(!r.text(value.field_name,128)) return false;
  if(!r.float64(value.field_position)) return false;
  if(!r.float64(value.field_velocity)) return false;
  if(!r.float64(value.field_effort)) return false;
  if(!r.integer(value.field_state)) return false;
  if(!r.integer(value.field_faultcode)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/HandState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/HandState value.
 /// @details Require the complete 36..164-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgHandState value) {
  if(bytes.length<36 || bytes.length>164) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/HandStateArray value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 34..1474
/// bytes and is identified by UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgHandStateArray {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/HandStateArray in bytes.
 /// @details The inclusive bound is 1474 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1474;
 /// @brief Canonical codec identity of aimdk_msgs/msg/HandStateArray.
 /// @details Exact identity UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d";
 /// @brief Original ROS type name for aimdk_msgs/msg/HandStateArray.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/HandStateArray";
 /// @brief Selected original native identity for aimdk_msgs/msg/HandStateArray.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/HandStateArray.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMessageHeader field_header=Ros2Aimdk_msgsMsgMessageHeader.init;
 /// @brief aimdk_msgs/msg/HandStateArray.left_hand_type: aimdk_msgs/msg/HandType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgHandType field_left_hand_type=Ros2Aimdk_msgsMsgHandType.init;
 /// @brief aimdk_msgs/msg/HandStateArray.left_hands: aimdk_msgs/msg/HandState; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgHandState[] field_left_hands=null;
 /// @brief aimdk_msgs/msg/HandStateArray.right_hand_type: aimdk_msgs/msg/HandType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgHandType field_right_hand_type=Ros2Aimdk_msgsMsgHandType.init;
 /// @brief aimdk_msgs/msg/HandStateArray.right_hands: aimdk_msgs/msg/HandState; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgHandState[] field_right_hands=null;
 /// @brief Append every canonical field of aimdk_msgs/msg/HandStateArray.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_left_hand_type.writeFields(w)) return false;
  if(this.field_left_hands.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_left_hands.length)) return false;
  foreach(ref e; this.field_left_hands) {
  if(!e.writeFields(w)) return false;
  }
  if(!this.field_right_hand_type.writeFields(w)) return false;
  if(this.field_right_hands.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_right_hands.length)) return false;
  foreach(ref e; this.field_right_hands) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandStateArray.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgHandStateArray value) {
  value=Ros2Aimdk_msgsMsgHandStateArray.init;
  if(!Ros2Aimdk_msgsMsgMessageHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Aimdk_msgsMsgHandType.readFields(r,arena,value.field_left_hand_type)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>4) {
       r.code=22;
       return false;
  }
  value.field_left_hands=arena.allocate!(Ros2Aimdk_msgsMsgHandState)(count2);
  if(value.field_left_hands.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_left_hands) {
  if(!Ros2Aimdk_msgsMsgHandState.readFields(r,arena,e)) return false;
  }
  if(!Ros2Aimdk_msgsMsgHandType.readFields(r,arena,value.field_right_hand_type)) return false;
  uint count4; if(!r.integer(count4)) return false;
  if(count4>4) {
       r.code=22;
       return false;
  }
  value.field_right_hands=arena.allocate!(Ros2Aimdk_msgsMsgHandState)(count4);
  if(value.field_right_hands.length!=count4) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_right_hands) {
  if(!Ros2Aimdk_msgsMsgHandState.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/HandStateArray value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/HandStateArray value.
 /// @details Require the complete 34..1474-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgHandStateArray value) {
  if(bytes.length<34 || bytes.length>1474) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/JointCommand value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 44..172 bytes
/// and is identified by UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgJointCommand {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/JointCommand in bytes.
 /// @details The inclusive bound is 172 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=172;
 /// @brief Canonical codec identity of aimdk_msgs/msg/JointCommand.
 /// @details Exact identity UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f";
 /// @brief Original ROS type name for aimdk_msgs/msg/JointCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/JointCommand";
 /// @brief Selected original native identity for aimdk_msgs/msg/JointCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/JointCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_name=null;
 /// @brief aimdk_msgs/msg/JointCommand.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 double field_position=0;
 /// @brief aimdk_msgs/msg/JointCommand.velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 double field_velocity=0;
 /// @brief aimdk_msgs/msg/JointCommand.effort: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 double field_effort=0;
 /// @brief aimdk_msgs/msg/JointCommand.stiffness: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 double field_stiffness=0;
 /// @brief aimdk_msgs/msg/JointCommand.damping: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 double field_damping=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/JointCommand.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_name,128)) return false;
  if(!w.float64(this.field_position)) return false;
  if(!w.float64(this.field_velocity)) return false;
  if(!w.float64(this.field_effort)) return false;
  if(!w.float64(this.field_stiffness)) return false;
  if(!w.float64(this.field_damping)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/JointCommand.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgJointCommand value) {
  value=Ros2Aimdk_msgsMsgJointCommand.init;
  if(!r.text(value.field_name,128)) return false;
  if(!r.float64(value.field_position)) return false;
  if(!r.float64(value.field_velocity)) return false;
  if(!r.float64(value.field_effort)) return false;
  if(!r.float64(value.field_stiffness)) return false;
  if(!r.float64(value.field_damping)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/JointCommand value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/JointCommand value.
 /// @details Require the complete 44..172-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgJointCommand value) {
  if(bytes.length<44 || bytes.length>172) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/JointCommandArray value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..11164
/// bytes and is identified by UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgJointCommandArray {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/JointCommandArray in bytes.
 /// @details The inclusive bound is 11164 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=11164;
 /// @brief Canonical codec identity of aimdk_msgs/msg/JointCommandArray.
 /// @details Exact identity UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6";
 /// @brief Original ROS type name for aimdk_msgs/msg/JointCommandArray.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/JointCommandArray";
 /// @brief Selected original native identity for aimdk_msgs/msg/JointCommandArray.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/JointCommandArray.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMessageHeader field_header=Ros2Aimdk_msgsMsgMessageHeader.init;
 /// @brief aimdk_msgs/msg/JointCommandArray.joints: aimdk_msgs/msg/JointCommand; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgJointCommand[] field_joints=null;
 /// @brief Append every canonical field of aimdk_msgs/msg/JointCommandArray.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(this.field_joints.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joints.length)) return false;
  foreach(ref e; this.field_joints) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/JointCommandArray.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgJointCommandArray value) {
  value=Ros2Aimdk_msgsMsgJointCommandArray.init;
  if(!Ros2Aimdk_msgsMsgMessageHeader.readFields(r,arena,value.field_header)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>64) {
       r.code=22;
       return false;
  }
  value.field_joints=arena.allocate!(Ros2Aimdk_msgsMsgJointCommand)(count1);
  if(value.field_joints.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joints) {
  if(!Ros2Aimdk_msgsMsgJointCommand.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/JointCommandArray value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/JointCommandArray value.
 /// @details Require the complete 28..11164-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgJointCommandArray value) {
  if(bytes.length<28 || bytes.length>11164) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/JointState value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 31..159 bytes
/// and is identified by UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgJointState {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/JointState in bytes.
 /// @details The inclusive bound is 159 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=159;
 /// @brief Canonical codec identity of aimdk_msgs/msg/JointState.
 /// @details Exact identity UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f";
 /// @brief Original ROS type name for aimdk_msgs/msg/JointState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/JointState";
 /// @brief Selected original native identity for aimdk_msgs/msg/JointState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/JointState.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_name=null;
 /// @brief aimdk_msgs/msg/JointState.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 double field_position=0;
 /// @brief aimdk_msgs/msg/JointState.velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 double field_velocity=0;
 /// @brief aimdk_msgs/msg/JointState.effort: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 double field_effort=0;
 /// @brief aimdk_msgs/msg/JointState.coil_temp: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 ubyte field_coil_temp=0;
 /// @brief aimdk_msgs/msg/JointState.motor_temp: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 ubyte field_motor_temp=0;
 /// @brief aimdk_msgs/msg/JointState.motor_vol: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 ubyte field_motor_vol=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/JointState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_name,128)) return false;
  if(!w.float64(this.field_position)) return false;
  if(!w.float64(this.field_velocity)) return false;
  if(!w.float64(this.field_effort)) return false;
  if(!w.integer(this.field_coil_temp)) return false;
  if(!w.integer(this.field_motor_temp)) return false;
  if(!w.integer(this.field_motor_vol)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/JointState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgJointState value) {
  value=Ros2Aimdk_msgsMsgJointState.init;
  if(!r.text(value.field_name,128)) return false;
  if(!r.float64(value.field_position)) return false;
  if(!r.float64(value.field_velocity)) return false;
  if(!r.float64(value.field_effort)) return false;
  if(!r.integer(value.field_coil_temp)) return false;
  if(!r.integer(value.field_motor_temp)) return false;
  if(!r.integer(value.field_motor_vol)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/JointState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/JointState value.
 /// @details Require the complete 31..159-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgJointState value) {
  if(bytes.length<31 || bytes.length>159) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/JointStateArray value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 29..10333
/// bytes and is identified by UWVMROS1_5be49aebcfbd4a6580e9c83ceafc5c13c7d4bee8b7d667d3510bbf17acddce36.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgJointStateArray {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/JointStateArray in bytes.
 /// @details The inclusive bound is 10333 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=10333;
 /// @brief Canonical codec identity of aimdk_msgs/msg/JointStateArray.
 /// @details Exact identity UWVMROS1_5be49aebcfbd4a6580e9c83ceafc5c13c7d4bee8b7d667d3510bbf17acddce36 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_5be49aebcfbd4a6580e9c83ceafc5c13c7d4bee8b7d667d3510bbf17acddce36";
 /// @brief Original ROS type name for aimdk_msgs/msg/JointStateArray.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/JointStateArray";
 /// @brief Selected original native identity for aimdk_msgs/msg/JointStateArray.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/JointStateArray.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMessageHeader field_header=Ros2Aimdk_msgsMsgMessageHeader.init;
 /// @brief aimdk_msgs/msg/JointStateArray.state: aimdk_msgs/msg/DomainErrorState.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgDomainErrorState field_state=Ros2Aimdk_msgsMsgDomainErrorState.init;
 /// @brief aimdk_msgs/msg/JointStateArray.joints: aimdk_msgs/msg/JointState; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgJointState[] field_joints=null;
 /// @brief Append every canonical field of aimdk_msgs/msg/JointStateArray.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_state.writeFields(w)) return false;
  if(this.field_joints.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joints.length)) return false;
  foreach(ref e; this.field_joints) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/JointStateArray.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgJointStateArray value) {
  value=Ros2Aimdk_msgsMsgJointStateArray.init;
  if(!Ros2Aimdk_msgsMsgMessageHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Aimdk_msgsMsgDomainErrorState.readFields(r,arena,value.field_state)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>64) {
       r.code=22;
       return false;
  }
  value.field_joints=arena.allocate!(Ros2Aimdk_msgsMsgJointState)(count2);
  if(value.field_joints.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joints) {
  if(!Ros2Aimdk_msgsMsgJointState.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/JointStateArray value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/JointStateArray value.
 /// @details Require the complete 29..10333-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgJointStateArray value) {
  if(bytes.length<29 || bytes.length>10333) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/McAction value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgMcAction {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McAction in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McAction.
 /// @details Exact identity UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b";
 /// @brief Original ROS type name for aimdk_msgs/msg/McAction.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/McAction";
 /// @brief Selected original native identity for aimdk_msgs/msg/McAction.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/McAction.PASSIVE_DEFAULT: original int32 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_PASSIVE_DEFAULT=1;
 /// @brief aimdk_msgs/msg/McAction.SOFT_EMERGENCY_STOP: original int32 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_SOFT_EMERGENCY_STOP=2;
 /// @brief aimdk_msgs/msg/McAction.DAMPING_DEFAULT: original int32 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_DAMPING_DEFAULT=3;
 /// @brief aimdk_msgs/msg/McAction.ZERO_TORQUE_DEFAULT: original int32 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_ZERO_TORQUE_DEFAULT=4;
 /// @brief aimdk_msgs/msg/McAction.JOINT_DEFAULT: original int32 constant.
 /// @details Exact admitted value 100. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_JOINT_DEFAULT=100;
 /// @brief aimdk_msgs/msg/McAction.JOINT_FREEZE: original int32 constant.
 /// @details Exact admitted value 101. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_JOINT_FREEZE=101;
 /// @brief aimdk_msgs/msg/McAction.STAND_DEFAULT: original int32 constant.
 /// @details Exact admitted value 200. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_STAND_DEFAULT=200;
 /// @brief aimdk_msgs/msg/McAction.STAND_BODY_CONTROL: original int32 constant.
 /// @details Exact admitted value 201. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_STAND_BODY_CONTROL=201;
 /// @brief aimdk_msgs/msg/McAction.LOCOMOTION_DEFAULT: original int32 constant.
 /// @details Exact admitted value 300. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_LOCOMOTION_DEFAULT=300;
 /// @brief aimdk_msgs/msg/McAction.RUN_DEFAULT: original int32 constant.
 /// @details Exact admitted value 301. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_RUN_DEFAULT=301;
 /// @brief aimdk_msgs/msg/McAction.LOCOMOTION_STEP: original int32 constant.
 /// @details Exact admitted value 302. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_LOCOMOTION_STEP=302;
 /// @brief aimdk_msgs/msg/McAction.VR_REMOTE_CONTROLLER: original int32 constant.
 /// @details Exact admitted value 400. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_VR_REMOTE_CONTROLLER=400;
 /// @brief aimdk_msgs/msg/McAction.SIT_DOWN_DEFAULT: original int32 constant.
 /// @details Exact admitted value 2000. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_SIT_DOWN_DEFAULT=2000;
 /// @brief aimdk_msgs/msg/McAction.CROUCH_DOWN_DEFAULT: original int32 constant.
 /// @details Exact admitted value 2002. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_CROUCH_DOWN_DEFAULT=2002;
 /// @brief aimdk_msgs/msg/McAction.LIE_DOWN_DEFAULT: original int32 constant.
 /// @details Exact admitted value 2004. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_LIE_DOWN_DEFAULT=2004;
 /// @brief aimdk_msgs/msg/McAction.STAND_UP_DEFAULT: original int32 constant.
 /// @details Exact admitted value 2005. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_STAND_UP_DEFAULT=2005;
 /// @brief aimdk_msgs/msg/McAction.ASCEND_STAIRS: original int32 constant.
 /// @details Exact admitted value 2006. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_ASCEND_STAIRS=2006;
 /// @brief aimdk_msgs/msg/McAction.DESCEND_STAIRS: original int32 constant.
 /// @details Exact admitted value 2008. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_DESCEND_STAIRS=2008;
 /// @brief aimdk_msgs/msg/McAction.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 int field_value=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/McAction.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McAction.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgMcAction value) {
  value=Ros2Aimdk_msgsMsgMcAction.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McAction value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/McAction value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgMcAction value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/McActionCommand value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgMcActionCommand {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McActionCommand in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=136;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McActionCommand.
 /// @details Exact identity UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648";
 /// @brief Original ROS type name for aimdk_msgs/msg/McActionCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/McActionCommand";
 /// @brief Selected original native identity for aimdk_msgs/msg/McActionCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/McActionCommand.action: aimdk_msgs/msg/McAction.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMcAction field_action=Ros2Aimdk_msgsMsgMcAction.init;
 /// @brief aimdk_msgs/msg/McActionCommand.action_desc: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_action_desc=null;
 /// @brief Append every canonical field of aimdk_msgs/msg/McActionCommand.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_action.writeFields(w)) return false;
  if(!w.text(this.field_action_desc,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McActionCommand.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgMcActionCommand value) {
  value=Ros2Aimdk_msgsMsgMcActionCommand.init;
  if(!Ros2Aimdk_msgsMsgMcAction.readFields(r,arena,value.field_action)) return false;
  if(!r.text(value.field_action_desc,128)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McActionCommand value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/McActionCommand value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgMcActionCommand value) {
  if(bytes.length<8 || bytes.length>136) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/McActionStatus value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgMcActionStatus {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McActionStatus in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McActionStatus.
 /// @details Exact identity UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48";
 /// @brief Original ROS type name for aimdk_msgs/msg/McActionStatus.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/McActionStatus";
 /// @brief Selected original native identity for aimdk_msgs/msg/McActionStatus.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/McActionStatus.IDLE: original int32 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/d/API-CONTRACT.md
 enum int field_IDLE=0;
 /// @brief aimdk_msgs/msg/McActionStatus.RUNNING: original int32 constant.
 /// @details Exact admitted value 100. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/d/API-CONTRACT.md
 enum int field_RUNNING=100;
 /// @brief aimdk_msgs/msg/McActionStatus.TRANSITION: original int32 constant.
 /// @details Exact admitted value 200. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/d/API-CONTRACT.md
 enum int field_TRANSITION=200;
 /// @brief aimdk_msgs/msg/McActionStatus.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/d/API-CONTRACT.md
 int field_value=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/McActionStatus.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McActionStatus.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgMcActionStatus value) {
  value=Ros2Aimdk_msgsMsgMcActionStatus.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McActionStatus value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/McActionStatus value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgMcActionStatus value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/McActionInfo value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgMcActionInfo {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McActionInfo in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=140;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McActionInfo.
 /// @details Exact identity UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9";
 /// @brief Original ROS type name for aimdk_msgs/msg/McActionInfo.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/McActionInfo";
 /// @brief Selected original native identity for aimdk_msgs/msg/McActionInfo.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/McActionInfo.current_action: aimdk_msgs/msg/McAction.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMcAction field_current_action=Ros2Aimdk_msgsMsgMcAction.init;
 /// @brief aimdk_msgs/msg/McActionInfo.action_desc: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_action_desc=null;
 /// @brief aimdk_msgs/msg/McActionInfo.status: aimdk_msgs/msg/McActionStatus.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMcActionStatus field_status=Ros2Aimdk_msgsMsgMcActionStatus.init;
 /// @brief Append every canonical field of aimdk_msgs/msg/McActionInfo.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_current_action.writeFields(w)) return false;
  if(!w.text(this.field_action_desc,128)) return false;
  if(!this.field_status.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McActionInfo.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgMcActionInfo value) {
  value=Ros2Aimdk_msgsMsgMcActionInfo.init;
  if(!Ros2Aimdk_msgsMsgMcAction.readFields(r,arena,value.field_current_action)) return false;
  if(!r.text(value.field_action_desc,128)) return false;
  if(!Ros2Aimdk_msgsMsgMcActionStatus.readFields(r,arena,value.field_status)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McActionInfo value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/McActionInfo value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgMcActionInfo value) {
  if(bytes.length<12 || bytes.length>140) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/McControlArea value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgMcControlArea {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McControlArea in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McControlArea.
 /// @details Exact identity UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9";
 /// @brief Original ROS type name for aimdk_msgs/msg/McControlArea.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/McControlArea";
 /// @brief Selected original native identity for aimdk_msgs/msg/McControlArea.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/McControlArea.NONE: original int32 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 enum int field_NONE=0;
 /// @brief aimdk_msgs/msg/McControlArea.LEFT_HAND: original int32 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 enum int field_LEFT_HAND=1;
 /// @brief aimdk_msgs/msg/McControlArea.RIGHT_HAND: original int32 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 enum int field_RIGHT_HAND=2;
 /// @brief aimdk_msgs/msg/McControlArea.HEAD: original int32 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 enum int field_HEAD=4;
 /// @brief aimdk_msgs/msg/McControlArea.WAIST: original int32 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 enum int field_WAIST=8;
 /// @brief aimdk_msgs/msg/McControlArea.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 int field_value=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/McControlArea.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McControlArea.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgMcControlArea value) {
  value=Ros2Aimdk_msgsMsgMcControlArea.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McControlArea value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/McControlArea value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgMcControlArea value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/McInputAction value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgMcInputAction {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McInputAction in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McInputAction.
 /// @details Exact identity UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9";
 /// @brief Original ROS type name for aimdk_msgs/msg/McInputAction.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/McInputAction";
 /// @brief Selected original native identity for aimdk_msgs/msg/McInputAction.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_ADD: original int32 constant.
 /// @details Exact admitted value 1001. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_INPUTACTION_ADD=1001;
 /// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_MODIFY: original int32 constant.
 /// @details Exact admitted value 1002. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_INPUTACTION_MODIFY=1002;
 /// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_DELETE: original int32 constant.
 /// @details Exact admitted value 1003. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_INPUTACTION_DELETE=1003;
 /// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_ENABLE: original int32 constant.
 /// @details Exact admitted value 2001. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_INPUTACTION_ENABLE=2001;
 /// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_DISABLE: original int32 constant.
 /// @details Exact admitted value 2002. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 enum int field_INPUTACTION_DISABLE=2002;
 /// @brief aimdk_msgs/msg/McInputAction.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 int field_value=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/McInputAction.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McInputAction.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgMcInputAction value) {
  value=Ros2Aimdk_msgsMsgMcInputAction.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McInputAction value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/McInputAction value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgMcInputAction value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/McInputSource value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgMcInputSource {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McInputSource in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=140;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McInputSource.
 /// @details Exact identity UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd";
 /// @brief Original ROS type name for aimdk_msgs/msg/McInputSource.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/McInputSource";
 /// @brief Selected original native identity for aimdk_msgs/msg/McInputSource.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/McInputSource.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_name=null;
 /// @brief aimdk_msgs/msg/McInputSource.priority: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/d/API-CONTRACT.md
 int field_priority=0;
 /// @brief aimdk_msgs/msg/McInputSource.timeout: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/d/API-CONTRACT.md
 int field_timeout=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/McInputSource.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_name,128)) return false;
  if(!w.integer(this.field_priority)) return false;
  if(!w.integer(this.field_timeout)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McInputSource.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgMcInputSource value) {
  value=Ros2Aimdk_msgsMsgMcInputSource.init;
  if(!r.text(value.field_name,128)) return false;
  if(!r.integer(value.field_priority)) return false;
  if(!r.integer(value.field_timeout)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McInputSource value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/McInputSource value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgMcInputSource value) {
  if(bytes.length<12 || bytes.length>140) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/McLocomotionVelocity value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 52..308 bytes
/// and is identified by UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgMcLocomotionVelocity {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McLocomotionVelocity in bytes.
 /// @details The inclusive bound is 308 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=308;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McLocomotionVelocity.
 /// @details Exact identity UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00";
 /// @brief Original ROS type name for aimdk_msgs/msg/McLocomotionVelocity.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/McLocomotionVelocity";
 /// @brief Selected original native identity for aimdk_msgs/msg/McLocomotionVelocity.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/McLocomotionVelocity.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMessageHeader field_header=Ros2Aimdk_msgsMsgMessageHeader.init;
 /// @brief aimdk_msgs/msg/McLocomotionVelocity.source: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_source=null;
 /// @brief aimdk_msgs/msg/McLocomotionVelocity.forward_velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 double field_forward_velocity=0;
 /// @brief aimdk_msgs/msg/McLocomotionVelocity.lateral_velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 double field_lateral_velocity=0;
 /// @brief aimdk_msgs/msg/McLocomotionVelocity.angular_velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 double field_angular_velocity=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/McLocomotionVelocity.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.text(this.field_source,128)) return false;
  if(!w.float64(this.field_forward_velocity)) return false;
  if(!w.float64(this.field_lateral_velocity)) return false;
  if(!w.float64(this.field_angular_velocity)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McLocomotionVelocity.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgMcLocomotionVelocity value) {
  value=Ros2Aimdk_msgsMsgMcLocomotionVelocity.init;
  if(!Ros2Aimdk_msgsMsgMessageHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.text(value.field_source,128)) return false;
  if(!r.float64(value.field_forward_velocity)) return false;
  if(!r.float64(value.field_lateral_velocity)) return false;
  if(!r.float64(value.field_angular_velocity)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McLocomotionVelocity value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/McLocomotionVelocity value.
 /// @details Require the complete 52..308-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgMcLocomotionVelocity value) {
  if(bytes.length<52 || bytes.length>308) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/McPresetMotion value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgMcPresetMotion {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McPresetMotion in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McPresetMotion.
 /// @details Exact identity UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153";
 /// @brief Original ROS type name for aimdk_msgs/msg/McPresetMotion.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/McPresetMotion";
 /// @brief Selected original native identity for aimdk_msgs/msg/McPresetMotion.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/McPresetMotion.RAISE_HAND: original int32 constant.
 /// @details Exact admitted value 1001. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_RAISE_HAND=1001;
 /// @brief aimdk_msgs/msg/McPresetMotion.WAVE_HAND: original int32 constant.
 /// @details Exact admitted value 1002. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_WAVE_HAND=1002;
 /// @brief aimdk_msgs/msg/McPresetMotion.SHAKE_HAND: original int32 constant.
 /// @details Exact admitted value 1003. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_SHAKE_HAND=1003;
 /// @brief aimdk_msgs/msg/McPresetMotion.FLYING_KISS_HAND: original int32 constant.
 /// @details Exact admitted value 1004. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_FLYING_KISS_HAND=1004;
 /// @brief aimdk_msgs/msg/McPresetMotion.CLAP_HAND: original int32 constant.
 /// @details Exact admitted value 1008. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_CLAP_HAND=1008;
 /// @brief aimdk_msgs/msg/McPresetMotion.TURN_WAVE_HAND: original int32 constant.
 /// @details Exact admitted value 2001. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_TURN_WAVE_HAND=2001;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_BOW: original int32 constant.
 /// @details Exact admitted value 3001. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_BOW=3001;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_LIKE: original int32 constant.
 /// @details Exact admitted value 3002. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_LIKE=3002;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_YE: original int32 constant.
 /// @details Exact admitted value 3003. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_YE=3003;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_SWEATHEART: original int32 constant.
 /// @details Exact admitted value 3004. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_SWEATHEART=3004;
 /// @brief aimdk_msgs/msg/McPresetMotion.SALUTE: original int32 constant.
 /// @details Exact admitted value 1013. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_SALUTE=1013;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_SAD: original int32 constant.
 /// @details Exact admitted value 3006. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_SAD=3006;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_LIGHTWAVE: original int32 constant.
 /// @details Exact admitted value 3007. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_LIGHTWAVE=3007;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_HUG: original int32 constant.
 /// @details Exact admitted value 3008. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_HUG=3008;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_HANDX: original int32 constant.
 /// @details Exact admitted value 3009. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_HANDX=3009;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_CHESTWAVE: original int32 constant.
 /// @details Exact admitted value 3010. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_CHESTWAVE=3010;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_CHEER: original int32 constant.
 /// @details Exact admitted value 3011. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_CHEER=3011;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_BLOWKISS: original int32 constant.
 /// @details Exact admitted value 3012. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_BLOWKISS=3012;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_BASSDANCE1: original int32 constant.
 /// @details Exact admitted value 3013. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_BASSDANCE1=3013;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_BASSDANCE2: original int32 constant.
 /// @details Exact admitted value 3014. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_BASSDANCE2=3014;
 /// @brief aimdk_msgs/msg/McPresetMotion.HITCLAP: original int32 constant.
 /// @details Exact admitted value 3015. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_HITCLAP=3015;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_SPEAK: original int32 constant.
 /// @details Exact admitted value 3016. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_SPEAK=3016;
 /// @brief aimdk_msgs/msg/McPresetMotion.CLIPFIST: original int32 constant.
 /// @details Exact admitted value 1009. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_CLIPFIST=1009;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_PHOTOPOSTURE: original int32 constant.
 /// @details Exact admitted value 3018. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_PHOTOPOSTURE=3018;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_PHOTOTRIPPLEPOSTURE: original int32 constant.
 /// @details Exact admitted value 3019. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_INTERACTION_PHOTOTRIPPLEPOSTURE=3019;
 /// @brief aimdk_msgs/msg/McPresetMotion.POINT_HEAD: original int32 constant.
 /// @details Exact admitted value 4001. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_POINT_HEAD=4001;
 /// @brief aimdk_msgs/msg/McPresetMotion.SHAKE_HEAD: original int32 constant.
 /// @details Exact admitted value 4002. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 enum int field_SHAKE_HEAD=4002;
 /// @brief aimdk_msgs/msg/McPresetMotion.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 int field_value=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/McPresetMotion.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McPresetMotion.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgMcPresetMotion value) {
  value=Ros2Aimdk_msgsMsgMcPresetMotion.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McPresetMotion value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/McPresetMotion value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgMcPresetMotion value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/TtsPriorityLevel value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgTtsPriorityLevel {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/TtsPriorityLevel in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of aimdk_msgs/msg/TtsPriorityLevel.
 /// @details Exact identity UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507";
 /// @brief Original ROS type name for aimdk_msgs/msg/TtsPriorityLevel.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/TtsPriorityLevel";
 /// @brief Selected original native identity for aimdk_msgs/msg/TtsPriorityLevel.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.UNKNOWN: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_UNKNOWN=0;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.BACKGROUND_L1: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_BACKGROUND_L1=1;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.SERVICE_L2: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_SERVICE_L2=2;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.MISSION_L4: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_MISSION_L4=4;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.INTERACTION_L6: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_INTERACTION_L6=6;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.SYSTEM_L7: original uint8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_SYSTEM_L7=7;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.WARNING_L8: original uint8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_WARNING_L8=8;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.SAFETY_L10: original uint8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_SAFETY_L10=10;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.value: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 ubyte field_value=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/TtsPriorityLevel.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/TtsPriorityLevel.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgTtsPriorityLevel value) {
  value=Ros2Aimdk_msgsMsgTtsPriorityLevel.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/TtsPriorityLevel value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/TtsPriorityLevel value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgTtsPriorityLevel value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/PlayMediaFileRequest value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 22..406 bytes
/// and is identified by UWVMROS1_904909a9d55bb158b68473dba999ce76712c609d8cded69ecb88c65380c6ff02.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgPlayMediaFileRequest {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/PlayMediaFileRequest in bytes.
 /// @details The inclusive bound is 406 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=406;
 /// @brief Canonical codec identity of aimdk_msgs/msg/PlayMediaFileRequest.
 /// @details Exact identity UWVMROS1_904909a9d55bb158b68473dba999ce76712c609d8cded69ecb88c65380c6ff02 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_904909a9d55bb158b68473dba999ce76712c609d8cded69ecb88c65380c6ff02";
 /// @brief Original ROS type name for aimdk_msgs/msg/PlayMediaFileRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/PlayMediaFileRequest";
 /// @brief Selected original native identity for aimdk_msgs/msg/PlayMediaFileRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.file_name: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_file_name=null;
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.sample_rate: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 uint field_sample_rate=0;
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.priority_level: aimdk_msgs/msg/TtsPriorityLevel.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgTtsPriorityLevel field_priority_level=Ros2Aimdk_msgsMsgTtsPriorityLevel.init;
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.priority_weight: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 uint field_priority_weight=0;
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.domain: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_domain=null;
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.trace_id: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_trace_id=null;
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.is_interrupted: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_is_interrupted=false;
 /// @brief Append every canonical field of aimdk_msgs/msg/PlayMediaFileRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_file_name,128)) return false;
  if(!w.integer(this.field_sample_rate)) return false;
  if(!this.field_priority_level.writeFields(w)) return false;
  if(!w.integer(this.field_priority_weight)) return false;
  if(!w.text(this.field_domain,128)) return false;
  if(!w.text(this.field_trace_id,128)) return false;
  if(!w.boolean(this.field_is_interrupted)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/PlayMediaFileRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgPlayMediaFileRequest value) {
  value=Ros2Aimdk_msgsMsgPlayMediaFileRequest.init;
  if(!r.text(value.field_file_name,128)) return false;
  if(!r.integer(value.field_sample_rate)) return false;
  if(!Ros2Aimdk_msgsMsgTtsPriorityLevel.readFields(r,arena,value.field_priority_level)) return false;
  if(!r.integer(value.field_priority_weight)) return false;
  if(!r.text(value.field_domain,128)) return false;
  if(!r.text(value.field_trace_id,128)) return false;
  if(!r.boolean(value.field_is_interrupted)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/PlayMediaFileRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/PlayMediaFileRequest value.
 /// @details Require the complete 22..406-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgPlayMediaFileRequest value) {
  if(bytes.length<22 || bytes.length>406) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/PlayTtsRequest value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 18..402 bytes
/// and is identified by UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgPlayTtsRequest {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/PlayTtsRequest in bytes.
 /// @details The inclusive bound is 402 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=402;
 /// @brief Canonical codec identity of aimdk_msgs/msg/PlayTtsRequest.
 /// @details Exact identity UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72";
 /// @brief Original ROS type name for aimdk_msgs/msg/PlayTtsRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/PlayTtsRequest";
 /// @brief Selected original native identity for aimdk_msgs/msg/PlayTtsRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/PlayTtsRequest.text: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_text=null;
 /// @brief aimdk_msgs/msg/PlayTtsRequest.priority_level: aimdk_msgs/msg/TtsPriorityLevel.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgTtsPriorityLevel field_priority_level=Ros2Aimdk_msgsMsgTtsPriorityLevel.init;
 /// @brief aimdk_msgs/msg/PlayTtsRequest.priority_weight: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 uint field_priority_weight=0;
 /// @brief aimdk_msgs/msg/PlayTtsRequest.domain: string; each string is 0..128 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_domain=null;
 /// @brief aimdk_msgs/msg/PlayTtsRequest.trace_id: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_trace_id=null;
 /// @brief aimdk_msgs/msg/PlayTtsRequest.is_interrupted: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_is_interrupted=false;
 /// @brief Append every canonical field of aimdk_msgs/msg/PlayTtsRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_text,128)) return false;
  if(!this.field_priority_level.writeFields(w)) return false;
  if(!w.integer(this.field_priority_weight)) return false;
  if(!w.text(this.field_domain,128)) return false;
  if(!w.text(this.field_trace_id,128)) return false;
  if(!w.boolean(this.field_is_interrupted)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/PlayTtsRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgPlayTtsRequest value) {
  value=Ros2Aimdk_msgsMsgPlayTtsRequest.init;
  if(!r.text(value.field_text,128)) return false;
  if(!Ros2Aimdk_msgsMsgTtsPriorityLevel.readFields(r,arena,value.field_priority_level)) return false;
  if(!r.integer(value.field_priority_weight)) return false;
  if(!r.text(value.field_domain,128)) return false;
  if(!r.text(value.field_trace_id,128)) return false;
  if(!r.boolean(value.field_is_interrupted)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/PlayTtsRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/PlayTtsRequest value.
 /// @details Require the complete 18..402-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgPlayTtsRequest value) {
  if(bytes.length<18 || bytes.length>402) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/PlayTtsResponse value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 26..538 bytes
/// and is identified by UWVMROS1_ace6fc9356d764c1f456687c3a05c24f514167cc2b48787bda62413353b8ec82.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgPlayTtsResponse {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/PlayTtsResponse in bytes.
 /// @details The inclusive bound is 538 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=538;
 /// @brief Canonical codec identity of aimdk_msgs/msg/PlayTtsResponse.
 /// @details Exact identity UWVMROS1_ace6fc9356d764c1f456687c3a05c24f514167cc2b48787bda62413353b8ec82 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ace6fc9356d764c1f456687c3a05c24f514167cc2b48787bda62413353b8ec82";
 /// @brief Original ROS type name for aimdk_msgs/msg/PlayTtsResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/PlayTtsResponse";
 /// @brief Selected original native identity for aimdk_msgs/msg/PlayTtsResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/PlayTtsResponse.text: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_text=null;
 /// @brief aimdk_msgs/msg/PlayTtsResponse.priority_level: aimdk_msgs/msg/TtsPriorityLevel.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgTtsPriorityLevel field_priority_level=Ros2Aimdk_msgsMsgTtsPriorityLevel.init;
 /// @brief aimdk_msgs/msg/PlayTtsResponse.priority_weight: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 uint field_priority_weight=0;
 /// @brief aimdk_msgs/msg/PlayTtsResponse.domain: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_domain=null;
 /// @brief aimdk_msgs/msg/PlayTtsResponse.trace_id: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_trace_id=null;
 /// @brief aimdk_msgs/msg/PlayTtsResponse.is_success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_is_success=false;
 /// @brief aimdk_msgs/msg/PlayTtsResponse.error_message: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_error_message=null;
 /// @brief aimdk_msgs/msg/PlayTtsResponse.estimated_duration: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 uint field_estimated_duration=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/PlayTtsResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_text,128)) return false;
  if(!this.field_priority_level.writeFields(w)) return false;
  if(!w.integer(this.field_priority_weight)) return false;
  if(!w.text(this.field_domain,128)) return false;
  if(!w.text(this.field_trace_id,128)) return false;
  if(!w.boolean(this.field_is_success)) return false;
  if(!w.text(this.field_error_message,128)) return false;
  if(!w.integer(this.field_estimated_duration)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/PlayTtsResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgPlayTtsResponse value) {
  value=Ros2Aimdk_msgsMsgPlayTtsResponse.init;
  if(!r.text(value.field_text,128)) return false;
  if(!Ros2Aimdk_msgsMsgTtsPriorityLevel.readFields(r,arena,value.field_priority_level)) return false;
  if(!r.integer(value.field_priority_weight)) return false;
  if(!r.text(value.field_domain,128)) return false;
  if(!r.text(value.field_trace_id,128)) return false;
  if(!r.boolean(value.field_is_success)) return false;
  if(!r.text(value.field_error_message,128)) return false;
  if(!r.integer(value.field_estimated_duration)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/PlayTtsResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/PlayTtsResponse value.
 /// @details Require the complete 26..538-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgPlayTtsResponse value) {
  if(bytes.length<26 || bytes.length>538) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/PmuState value.
/// @details All 33 declared fields are retained in source order. The canonical representation occupies 201..1097
/// bytes and is identified by UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgPmuState {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/PmuState in bytes.
 /// @details The inclusive bound is 1097 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1097;
 /// @brief Canonical codec identity of aimdk_msgs/msg/PmuState.
 /// @details Exact identity UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c";
 /// @brief Original ROS type name for aimdk_msgs/msg/PmuState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/PmuState";
 /// @brief Selected original native identity for aimdk_msgs/msg/PmuState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/PmuState.pmu_software_version: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_pmu_software_version=null;
 /// @brief aimdk_msgs/msg/PmuState.pmu_hardware_version: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_pmu_hardware_version=null;
 /// @brief aimdk_msgs/msg/PmuState.pmu_protocol_version: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_pmu_protocol_version=null;
 /// @brief aimdk_msgs/msg/PmuState.pmu_bool_status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 uint field_pmu_bool_status=0;
 /// @brief aimdk_msgs/msg/PmuState.head_power_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_head_power_current=0;
 /// @brief aimdk_msgs/msg/PmuState.output_48v_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_output_48v_current=0;
 /// @brief aimdk_msgs/msg/PmuState.rk3588_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_rk3588_current=0;
 /// @brief aimdk_msgs/msg/PmuState.output_12v_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_output_12v_current=0;
 /// @brief aimdk_msgs/msg/PmuState.bus_48v_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_bus_48v_current=0;
 /// @brief aimdk_msgs/msg/PmuState.orin_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_orin_current=0;
 /// @brief aimdk_msgs/msg/PmuState.bus_48v_pmos_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_bus_48v_pmos_voltage=0;
 /// @brief aimdk_msgs/msg/PmuState.battery_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_battery_voltage=0;
 /// @brief aimdk_msgs/msg/PmuState.fan_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_fan_voltage=0;
 /// @brief aimdk_msgs/msg/PmuState.output_12v_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_output_12v_voltage=0;
 /// @brief aimdk_msgs/msg/PmuState.output_48v_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_output_48v_voltage=0;
 /// @brief aimdk_msgs/msg/PmuState.bus_48v_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_bus_48v_voltage=0;
 /// @brief aimdk_msgs/msg/PmuState.head_power_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_head_power_voltage=0;
 /// @brief aimdk_msgs/msg/PmuState.orin_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_orin_voltage=0;
 /// @brief aimdk_msgs/msg/PmuState.rk3588_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_rk3588_voltage=0;
 /// @brief aimdk_msgs/msg/PmuState.bms_manufacturer: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_bms_manufacturer=null;
 /// @brief aimdk_msgs/msg/PmuState.bms_serial_number: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_bms_serial_number=null;
 /// @brief aimdk_msgs/msg/PmuState.bms_hardware_version: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_bms_hardware_version=null;
 /// @brief aimdk_msgs/msg/PmuState.bms_software_version: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_bms_software_version=null;
 /// @brief aimdk_msgs/msg/PmuState.bms_status_bits: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 uint field_bms_status_bits=0;
 /// @brief aimdk_msgs/msg/PmuState.battery_balance_line_resistance: uint16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 ushort field_battery_balance_line_resistance=0;
 /// @brief aimdk_msgs/msg/PmuState.battery_pack_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_battery_pack_voltage=0;
 /// @brief aimdk_msgs/msg/PmuState.battery_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_battery_current=0;
 /// @brief aimdk_msgs/msg/PmuState.battery_output_power: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_battery_output_power=0;
 /// @brief aimdk_msgs/msg/PmuState.battery_temperature: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 double field_battery_temperature=0;
 /// @brief aimdk_msgs/msg/PmuState.battery_remaining_capacity: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 uint field_battery_remaining_capacity=0;
 /// @brief aimdk_msgs/msg/PmuState.battery_remaining_capacity_percentage: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 ubyte field_battery_remaining_capacity_percentage=0;
 /// @brief aimdk_msgs/msg/PmuState.battery_cycle_count: uint16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 ushort field_battery_cycle_count=0;
 /// @brief aimdk_msgs/msg/PmuState.battery_cycle_total_capacity: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 uint field_battery_cycle_total_capacity=0;
 /// @brief Append every canonical field of aimdk_msgs/msg/PmuState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_pmu_software_version,128)) return false;
  if(!w.text(this.field_pmu_hardware_version,128)) return false;
  if(!w.text(this.field_pmu_protocol_version,128)) return false;
  if(!w.integer(this.field_pmu_bool_status)) return false;
  if(!w.float64(this.field_head_power_current)) return false;
  if(!w.float64(this.field_output_48v_current)) return false;
  if(!w.float64(this.field_rk3588_current)) return false;
  if(!w.float64(this.field_output_12v_current)) return false;
  if(!w.float64(this.field_bus_48v_current)) return false;
  if(!w.float64(this.field_orin_current)) return false;
  if(!w.float64(this.field_bus_48v_pmos_voltage)) return false;
  if(!w.float64(this.field_battery_voltage)) return false;
  if(!w.float64(this.field_fan_voltage)) return false;
  if(!w.float64(this.field_output_12v_voltage)) return false;
  if(!w.float64(this.field_output_48v_voltage)) return false;
  if(!w.float64(this.field_bus_48v_voltage)) return false;
  if(!w.float64(this.field_head_power_voltage)) return false;
  if(!w.float64(this.field_orin_voltage)) return false;
  if(!w.float64(this.field_rk3588_voltage)) return false;
  if(!w.text(this.field_bms_manufacturer,128)) return false;
  if(!w.text(this.field_bms_serial_number,128)) return false;
  if(!w.text(this.field_bms_hardware_version,128)) return false;
  if(!w.text(this.field_bms_software_version,128)) return false;
  if(!w.integer(this.field_bms_status_bits)) return false;
  if(!w.integer(this.field_battery_balance_line_resistance)) return false;
  if(!w.float64(this.field_battery_pack_voltage)) return false;
  if(!w.float64(this.field_battery_current)) return false;
  if(!w.float64(this.field_battery_output_power)) return false;
  if(!w.float64(this.field_battery_temperature)) return false;
  if(!w.integer(this.field_battery_remaining_capacity)) return false;
  if(!w.integer(this.field_battery_remaining_capacity_percentage)) return false;
  if(!w.integer(this.field_battery_cycle_count)) return false;
  if(!w.integer(this.field_battery_cycle_total_capacity)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/PmuState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgPmuState value) {
  value=Ros2Aimdk_msgsMsgPmuState.init;
  if(!r.text(value.field_pmu_software_version,128)) return false;
  if(!r.text(value.field_pmu_hardware_version,128)) return false;
  if(!r.text(value.field_pmu_protocol_version,128)) return false;
  if(!r.integer(value.field_pmu_bool_status)) return false;
  if(!r.float64(value.field_head_power_current)) return false;
  if(!r.float64(value.field_output_48v_current)) return false;
  if(!r.float64(value.field_rk3588_current)) return false;
  if(!r.float64(value.field_output_12v_current)) return false;
  if(!r.float64(value.field_bus_48v_current)) return false;
  if(!r.float64(value.field_orin_current)) return false;
  if(!r.float64(value.field_bus_48v_pmos_voltage)) return false;
  if(!r.float64(value.field_battery_voltage)) return false;
  if(!r.float64(value.field_fan_voltage)) return false;
  if(!r.float64(value.field_output_12v_voltage)) return false;
  if(!r.float64(value.field_output_48v_voltage)) return false;
  if(!r.float64(value.field_bus_48v_voltage)) return false;
  if(!r.float64(value.field_head_power_voltage)) return false;
  if(!r.float64(value.field_orin_voltage)) return false;
  if(!r.float64(value.field_rk3588_voltage)) return false;
  if(!r.text(value.field_bms_manufacturer,128)) return false;
  if(!r.text(value.field_bms_serial_number,128)) return false;
  if(!r.text(value.field_bms_hardware_version,128)) return false;
  if(!r.text(value.field_bms_software_version,128)) return false;
  if(!r.integer(value.field_bms_status_bits)) return false;
  if(!r.integer(value.field_battery_balance_line_resistance)) return false;
  if(!r.float64(value.field_battery_pack_voltage)) return false;
  if(!r.float64(value.field_battery_current)) return false;
  if(!r.float64(value.field_battery_output_power)) return false;
  if(!r.float64(value.field_battery_temperature)) return false;
  if(!r.integer(value.field_battery_remaining_capacity)) return false;
  if(!r.integer(value.field_battery_remaining_capacity_percentage)) return false;
  if(!r.integer(value.field_battery_cycle_count)) return false;
  if(!r.integer(value.field_battery_cycle_total_capacity)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/PmuState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/PmuState value.
 /// @details Require the complete 201..1097-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgPmuState value) {
  if(bytes.length<201 || bytes.length>1097) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/ProcessedAudioOutput value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 33..417 bytes
/// and is identified by UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgProcessedAudioOutput {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/ProcessedAudioOutput in bytes.
 /// @details The inclusive bound is 417 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=417;
 /// @brief Canonical codec identity of aimdk_msgs/msg/ProcessedAudioOutput.
 /// @details Exact identity UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30";
 /// @brief Original ROS type name for aimdk_msgs/msg/ProcessedAudioOutput.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/ProcessedAudioOutput";
 /// @brief Selected original native identity for aimdk_msgs/msg/ProcessedAudioOutput.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/ProcessedAudioOutput.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMessageHeader field_header=Ros2Aimdk_msgsMsgMessageHeader.init;
 /// @brief aimdk_msgs/msg/ProcessedAudioOutput.stream_id: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/d/API-CONTRACT.md
 uint field_stream_id=0;
 /// @brief aimdk_msgs/msg/ProcessedAudioOutput.audio_vad_state: aimdk_msgs/msg/AudioVadStateType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgAudioVadStateType field_audio_vad_state=Ros2Aimdk_msgsMsgAudioVadStateType.init;
 /// @brief aimdk_msgs/msg/ProcessedAudioOutput.audio_data: uint8; 0..256 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/d/API-CONTRACT.md
 ubyte[] field_audio_data=null;
 /// @brief Append every canonical field of aimdk_msgs/msg/ProcessedAudioOutput.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.integer(this.field_stream_id)) return false;
  if(!this.field_audio_vad_state.writeFields(w)) return false;
  if(this.field_audio_data.length>256) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_audio_data.length)) return false;
  foreach(ref e; this.field_audio_data) {
  if(!w.integer(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/ProcessedAudioOutput.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgProcessedAudioOutput value) {
  value=Ros2Aimdk_msgsMsgProcessedAudioOutput.init;
  if(!Ros2Aimdk_msgsMsgMessageHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.integer(value.field_stream_id)) return false;
  if(!Ros2Aimdk_msgsMsgAudioVadStateType.readFields(r,arena,value.field_audio_vad_state)) return false;
  uint count3; if(!r.integer(count3)) return false;
  if(count3>256) {
       r.code=22;
       return false;
  }
  value.field_audio_data=arena.allocate!(ubyte)(count3);
  if(value.field_audio_data.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_audio_data) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/ProcessedAudioOutput value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/ProcessedAudioOutput value.
 /// @details Require the complete 33..417-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgProcessedAudioOutput value) {
  if(bytes.length<33 || bytes.length>417) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/msg/TouchState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 97..225 bytes
/// and is identified by UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsMsgTouchState {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/TouchState in bytes.
 /// @details The inclusive bound is 225 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=225;
 /// @brief Canonical codec identity of aimdk_msgs/msg/TouchState.
 /// @details Exact identity UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564";
 /// @brief Original ROS type name for aimdk_msgs/msg/TouchState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/msg/TouchState";
 /// @brief Selected original native identity for aimdk_msgs/msg/TouchState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/msg/TouchState.UNKNOWN: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_UNKNOWN=0;
 /// @brief aimdk_msgs/msg/TouchState.IDLE: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_IDLE=1;
 /// @brief aimdk_msgs/msg/TouchState.TOUCH: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_TOUCH=2;
 /// @brief aimdk_msgs/msg/TouchState.SLIDE: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_SLIDE=3;
 /// @brief aimdk_msgs/msg/TouchState.PAT_ONCE: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_PAT_ONCE=4;
 /// @brief aimdk_msgs/msg/TouchState.PAT_TWICE: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_PAT_TWICE=5;
 /// @brief aimdk_msgs/msg/TouchState.PAT_TRIPLE: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_PAT_TRIPLE=6;
 /// @brief aimdk_msgs/msg/TouchState.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMessageHeader field_header=Ros2Aimdk_msgsMsgMessageHeader.init;
 /// @brief aimdk_msgs/msg/TouchState.event_type: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 ubyte field_event_type=0;
 /// @brief aimdk_msgs/msg/TouchState.data: uint32; exactly 8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 uint[8] field_data=0;
 /// @brief aimdk_msgs/msg/TouchState.threshold: uint32; exactly 8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 uint[8] field_threshold=0;
 /// @brief aimdk_msgs/msg/TouchState.is_touched: bool; exactly 8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 bool[8] field_is_touched=false;
 /// @brief Append every canonical field of aimdk_msgs/msg/TouchState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.integer(this.field_event_type)) return false;
  foreach(ref e; this.field_data) {
  if(!w.integer(e)) return false;
  }
  foreach(ref e; this.field_threshold) {
  if(!w.integer(e)) return false;
  }
  foreach(ref e; this.field_is_touched) {
  if(!w.boolean(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/TouchState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsMsgTouchState value) {
  value=Ros2Aimdk_msgsMsgTouchState.init;
  if(!Ros2Aimdk_msgsMsgMessageHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.integer(value.field_event_type)) return false;
  foreach(ref e; value.field_data) {
  if(!r.integer(e)) return false;
  }
  foreach(ref e; value.field_threshold) {
  if(!r.integer(e)) return false;
  }
  foreach(ref e; value.field_is_touched) {
  if(!r.boolean(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/msg/TouchState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/msg/TouchState value.
 /// @details Require the complete 97..225-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsMsgTouchState value) {
  if(bytes.length<97 || bytes.length>225) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/GetAllJointState_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvGetAllJointState_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetAllJointState_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetAllJointState_Request.
 /// @details Exact identity UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetAllJointState_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/GetAllJointState_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetAllJointState_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/GetAllJointState_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_request=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/GetAllJointState_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_request.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetAllJointState_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvGetAllJointState_Request value) {
  value=Ros2Aimdk_msgsSrvGetAllJointState_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_request)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetAllJointState_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetAllJointState_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvGetAllJointState_Request value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/GetAllJointState_Response value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 40..2712
/// bytes and is identified by UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvGetAllJointState_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetAllJointState_Response in bytes.
 /// @details The inclusive bound is 2712 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=2712;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetAllJointState_Response.
 /// @details Exact identity UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetAllJointState_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/GetAllJointState_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetAllJointState_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/GetAllJointState_Response.reponse: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_reponse=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief aimdk_msgs/srv/GetAllJointState_Response.head_joints: aimdk_msgs/msg/JointState; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgJointState[] field_head_joints=null;
 /// @brief aimdk_msgs/srv/GetAllJointState_Response.arm_joints: aimdk_msgs/msg/JointState; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgJointState[] field_arm_joints=null;
 /// @brief aimdk_msgs/srv/GetAllJointState_Response.waist_joints: aimdk_msgs/msg/JointState; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgJointState[] field_waist_joints=null;
 /// @brief aimdk_msgs/srv/GetAllJointState_Response.leg_joints: aimdk_msgs/msg/JointState; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgJointState[] field_leg_joints=null;
 /// @brief Append every canonical field of aimdk_msgs/srv/GetAllJointState_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_reponse.writeFields(w)) return false;
  if(this.field_head_joints.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_head_joints.length)) return false;
  foreach(ref e; this.field_head_joints) {
  if(!e.writeFields(w)) return false;
  }
  if(this.field_arm_joints.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_arm_joints.length)) return false;
  foreach(ref e; this.field_arm_joints) {
  if(!e.writeFields(w)) return false;
  }
  if(this.field_waist_joints.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_waist_joints.length)) return false;
  foreach(ref e; this.field_waist_joints) {
  if(!e.writeFields(w)) return false;
  }
  if(this.field_leg_joints.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_leg_joints.length)) return false;
  foreach(ref e; this.field_leg_joints) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetAllJointState_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvGetAllJointState_Response value) {
  value=Ros2Aimdk_msgsSrvGetAllJointState_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_reponse)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>4) {
       r.code=22;
       return false;
  }
  value.field_head_joints=arena.allocate!(Ros2Aimdk_msgsMsgJointState)(count1);
  if(value.field_head_joints.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_head_joints) {
  if(!Ros2Aimdk_msgsMsgJointState.readFields(r,arena,e)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>4) {
       r.code=22;
       return false;
  }
  value.field_arm_joints=arena.allocate!(Ros2Aimdk_msgsMsgJointState)(count2);
  if(value.field_arm_joints.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_arm_joints) {
  if(!Ros2Aimdk_msgsMsgJointState.readFields(r,arena,e)) return false;
  }
  uint count3; if(!r.integer(count3)) return false;
  if(count3>4) {
       r.code=22;
       return false;
  }
  value.field_waist_joints=arena.allocate!(Ros2Aimdk_msgsMsgJointState)(count3);
  if(value.field_waist_joints.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_waist_joints) {
  if(!Ros2Aimdk_msgsMsgJointState.readFields(r,arena,e)) return false;
  }
  uint count4; if(!r.integer(count4)) return false;
  if(count4>4) {
       r.code=22;
       return false;
  }
  value.field_leg_joints=arena.allocate!(Ros2Aimdk_msgsMsgJointState)(count4);
  if(value.field_leg_joints.length!=count4) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_leg_joints) {
  if(!Ros2Aimdk_msgsMsgJointState.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetAllJointState_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetAllJointState_Response value.
 /// @details Require the complete 40..2712-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvGetAllJointState_Response value) {
  if(bytes.length<40 || bytes.length>2712) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/GetCurrentInputSource_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvGetCurrentInputSource_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetCurrentInputSource_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetCurrentInputSource_Request.
 /// @details Exact identity UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetCurrentInputSource_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/GetCurrentInputSource_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetCurrentInputSource_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/GetCurrentInputSource_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_request=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/GetCurrentInputSource_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_request.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetCurrentInputSource_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvGetCurrentInputSource_Request value) {
  value=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_request)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetCurrentInputSource_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetCurrentInputSource_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvGetCurrentInputSource_Request value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/GetCurrentInputSource_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 40..168 bytes
/// and is identified by UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvGetCurrentInputSource_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetCurrentInputSource_Response in bytes.
 /// @details The inclusive bound is 168 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=168;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetCurrentInputSource_Response.
 /// @details Exact identity UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetCurrentInputSource_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/GetCurrentInputSource_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetCurrentInputSource_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/GetCurrentInputSource_Response.response: aimdk_msgs/msg/CommonTaskResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonTaskResponse field_response=Ros2Aimdk_msgsMsgCommonTaskResponse.init;
 /// @brief aimdk_msgs/srv/GetCurrentInputSource_Response.input_source: aimdk_msgs/msg/McInputSource.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMcInputSource field_input_source=Ros2Aimdk_msgsMsgMcInputSource.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/GetCurrentInputSource_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_response.writeFields(w)) return false;
  if(!this.field_input_source.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetCurrentInputSource_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvGetCurrentInputSource_Response value) {
  value=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonTaskResponse.readFields(r,arena,value.field_response)) return false;
  if(!Ros2Aimdk_msgsMsgMcInputSource.readFields(r,arena,value.field_input_source)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetCurrentInputSource_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetCurrentInputSource_Response value.
 /// @details Require the complete 40..168-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvGetCurrentInputSource_Response value) {
  if(bytes.length<40 || bytes.length>168) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/GetHandType_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvGetHandType_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetHandType_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetHandType_Request.
 /// @details Exact identity UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetHandType_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/GetHandType_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetHandType_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/GetHandType_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_request=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/GetHandType_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_request.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetHandType_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvGetHandType_Request value) {
  value=Ros2Aimdk_msgsSrvGetHandType_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_request)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetHandType_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetHandType_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvGetHandType_Request value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/GetHandType_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 26..154 bytes
/// and is identified by UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvGetHandType_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetHandType_Response in bytes.
 /// @details The inclusive bound is 154 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=154;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetHandType_Response.
 /// @details Exact identity UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetHandType_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/GetHandType_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetHandType_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/GetHandType_Response.reponse: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_reponse=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief aimdk_msgs/srv/GetHandType_Response.left_hands_type: aimdk_msgs/msg/HandType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgHandType field_left_hands_type=Ros2Aimdk_msgsMsgHandType.init;
 /// @brief aimdk_msgs/srv/GetHandType_Response.right_hands_type: aimdk_msgs/msg/HandType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgHandType field_right_hands_type=Ros2Aimdk_msgsMsgHandType.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/GetHandType_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_reponse.writeFields(w)) return false;
  if(!this.field_left_hands_type.writeFields(w)) return false;
  if(!this.field_right_hands_type.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetHandType_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvGetHandType_Response value) {
  value=Ros2Aimdk_msgsSrvGetHandType_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_reponse)) return false;
  if(!Ros2Aimdk_msgsMsgHandType.readFields(r,arena,value.field_left_hands_type)) return false;
  if(!Ros2Aimdk_msgsMsgHandType.readFields(r,arena,value.field_right_hands_type)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetHandType_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetHandType_Response value.
 /// @details Require the complete 26..154-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvGetHandType_Response value) {
  if(bytes.length<26 || bytes.length>154) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/GetMcAction_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvGetMcAction_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetMcAction_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetMcAction_Request.
 /// @details Exact identity UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetMcAction_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/GetMcAction_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetMcAction_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/GetMcAction_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_request=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/GetMcAction_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_request.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetMcAction_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvGetMcAction_Request value) {
  value=Ros2Aimdk_msgsSrvGetMcAction_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_request)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetMcAction_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetMcAction_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvGetMcAction_Request value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/GetMcAction_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..156 bytes
/// and is identified by UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvGetMcAction_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetMcAction_Response in bytes.
 /// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=156;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetMcAction_Response.
 /// @details Exact identity UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetMcAction_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/GetMcAction_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetMcAction_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/GetMcAction_Response.header: aimdk_msgs/msg/ResponseHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgResponseHeader field_header=Ros2Aimdk_msgsMsgResponseHeader.init;
 /// @brief aimdk_msgs/srv/GetMcAction_Response.info: aimdk_msgs/msg/McActionInfo.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMcActionInfo field_info=Ros2Aimdk_msgsMsgMcActionInfo.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/GetMcAction_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_info.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetMcAction_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvGetMcAction_Response value) {
  value=Ros2Aimdk_msgsSrvGetMcAction_Response.init;
  if(!Ros2Aimdk_msgsMsgResponseHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Aimdk_msgsMsgMcActionInfo.readFields(r,arena,value.field_info)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetMcAction_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetMcAction_Response value.
 /// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvGetMcAction_Response value) {
  if(bytes.length<28 || bytes.length>156) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/GetMute_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvGetMute_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetMute_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetMute_Request.
 /// @details Exact identity UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetMute_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/GetMute_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetMute_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/GetMute_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_request=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/GetMute_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_request.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetMute_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvGetMute_Request value) {
  value=Ros2Aimdk_msgsSrvGetMute_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_request)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetMute_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetMute_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvGetMute_Request value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/GetMute_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 25..153 bytes
/// and is identified by UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvGetMute_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetMute_Response in bytes.
 /// @details The inclusive bound is 153 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=153;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetMute_Response.
 /// @details Exact identity UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetMute_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/GetMute_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetMute_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/GetMute_Response.reponse: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_reponse=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief aimdk_msgs/srv/GetMute_Response.is_mute: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_is_mute=false;
 /// @brief Append every canonical field of aimdk_msgs/srv/GetMute_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_reponse.writeFields(w)) return false;
  if(!w.boolean(this.field_is_mute)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetMute_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvGetMute_Response value) {
  value=Ros2Aimdk_msgsSrvGetMute_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_reponse)) return false;
  if(!r.boolean(value.field_is_mute)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetMute_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetMute_Response value.
 /// @details Require the complete 25..153-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvGetMute_Response value) {
  if(bytes.length<25 || bytes.length>153) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/GetVolume_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvGetVolume_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetVolume_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetVolume_Request.
 /// @details Exact identity UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetVolume_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/GetVolume_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetVolume_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/GetVolume_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_request=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/GetVolume_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_request.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetVolume_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvGetVolume_Request value) {
  value=Ros2Aimdk_msgsSrvGetVolume_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_request)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetVolume_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetVolume_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvGetVolume_Request value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/GetVolume_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..156 bytes
/// and is identified by UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvGetVolume_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetVolume_Response in bytes.
 /// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=156;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetVolume_Response.
 /// @details Exact identity UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetVolume_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/GetVolume_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetVolume_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/GetVolume_Response.reponse: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_reponse=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief aimdk_msgs/srv/GetVolume_Response.audio_volume: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 uint field_audio_volume=0;
 /// @brief Append every canonical field of aimdk_msgs/srv/GetVolume_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_reponse.writeFields(w)) return false;
  if(!w.integer(this.field_audio_volume)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetVolume_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvGetVolume_Response value) {
  value=Ros2Aimdk_msgsSrvGetVolume_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_reponse)) return false;
  if(!r.integer(value.field_audio_volume)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetVolume_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetVolume_Response value.
 /// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvGetVolume_Response value) {
  if(bytes.length<28 || bytes.length>156) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/LedStripCommand_Request value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
/// and is identified by UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvLedStripCommand_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/LedStripCommand_Request in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=12;
 /// @brief Canonical codec identity of aimdk_msgs/srv/LedStripCommand_Request.
 /// @details Exact identity UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6";
 /// @brief Original ROS type name for aimdk_msgs/srv/LedStripCommand_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/LedStripCommand_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/LedStripCommand_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_CONSTANT: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_LED_STRIP_MODE_CONSTANT=0;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_BREATH: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_LED_STRIP_MODE_BREATH=1;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_FLASH: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_LED_STRIP_MODE_FLASH=2;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_FLOW: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_LED_STRIP_MODE_FLOW=3;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_MAX: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_LED_STRIP_MODE_MAX=4;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_request=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.led_strip_mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 ubyte field_led_strip_mode=0;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.r: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 ubyte field_r=0;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.g: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 ubyte field_g=0;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.b: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 ubyte field_b=0;
 /// @brief Append every canonical field of aimdk_msgs/srv/LedStripCommand_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_request.writeFields(w)) return false;
  if(!w.integer(this.field_led_strip_mode)) return false;
  if(!w.integer(this.field_r)) return false;
  if(!w.integer(this.field_g)) return false;
  if(!w.integer(this.field_b)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/LedStripCommand_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvLedStripCommand_Request value) {
  value=Ros2Aimdk_msgsSrvLedStripCommand_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_request)) return false;
  if(!r.integer(value.field_led_strip_mode)) return false;
  if(!r.integer(value.field_r)) return false;
  if(!r.integer(value.field_g)) return false;
  if(!r.integer(value.field_b)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/LedStripCommand_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/LedStripCommand_Request value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvLedStripCommand_Request value) {
  if(bytes.length<12 || bytes.length>12) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/LedStripCommand_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 18..18 bytes
/// and is identified by UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvLedStripCommand_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/LedStripCommand_Response in bytes.
 /// @details The inclusive bound is 18 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=18;
 /// @brief Canonical codec identity of aimdk_msgs/srv/LedStripCommand_Response.
 /// @details Exact identity UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9";
 /// @brief Original ROS type name for aimdk_msgs/srv/LedStripCommand_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/LedStripCommand_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/LedStripCommand_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/LedStripCommand_Response.header: aimdk_msgs/msg/ResponseHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgResponseHeader field_header=Ros2Aimdk_msgsMsgResponseHeader.init;
 /// @brief aimdk_msgs/srv/LedStripCommand_Response.status_code: uint16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/d/API-CONTRACT.md
 ushort field_status_code=0;
 /// @brief Append every canonical field of aimdk_msgs/srv/LedStripCommand_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.integer(this.field_status_code)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/LedStripCommand_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvLedStripCommand_Response value) {
  value=Ros2Aimdk_msgsSrvLedStripCommand_Response.init;
  if(!Ros2Aimdk_msgsMsgResponseHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.integer(value.field_status_code)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/LedStripCommand_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/LedStripCommand_Response value.
 /// @details Require the complete 18..18-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvLedStripCommand_Response value) {
  if(bytes.length<18 || bytes.length>18) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayEmoji_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 14..14 bytes
/// and is identified by UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvPlayEmoji_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayEmoji_Request in bytes.
 /// @details The inclusive bound is 14 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=14;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayEmoji_Request.
 /// @details Exact identity UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayEmoji_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/PlayEmoji_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayEmoji_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_UNKNOWN: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_UNKNOWN=0;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_BLINK: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_IDLE_BLINK=1;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CALM_1: original uint8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_IDLE_CALM_1=10;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CALM_2: original uint8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_IDLE_CALM_2=11;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_GAME: original uint8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_IDLE_GAME=20;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CUTE_1: original uint8 constant.
 /// @details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_IDLE_CUTE_1=30;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CUTE_2: original uint8 constant.
 /// @details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_IDLE_CUTE_2=31;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CUTE_3: original uint8 constant.
 /// @details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_IDLE_CUTE_3=32;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CUTE_4: original uint8 constant.
 /// @details Exact admitted value 33. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_IDLE_CUTE_4=33;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_CLOSE: original uint8 constant.
 /// @details Exact admitted value 40. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_CLOSE=40;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_OPEN: original uint8 constant.
 /// @details Exact admitted value 50. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_OPEN=50;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_BORING_1: original uint8 constant.
 /// @details Exact admitted value 60. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_BORING_1=60;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_ABNORMAL: original uint8 constant.
 /// @details Exact admitted value 70. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_ABNORMAL=70;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SLEEPY: original uint8 constant.
 /// @details Exact admitted value 80. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_SLEEPY=80;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_HAPPY: original uint8 constant.
 /// @details Exact admitted value 90. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_HAPPY=90;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_EXTREMEHAPPY_1: original uint8 constant.
 /// @details Exact admitted value 100. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_EXTREMEHAPPY_1=100;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_EXTREMEHAPPY_2: original uint8 constant.
 /// @details Exact admitted value 101. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_EXTREMEHAPPY_2=101;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SAD: original uint8 constant.
 /// @details Exact admitted value 110. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_SAD=110;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SYMPATHY: original uint8 constant.
 /// @details Exact admitted value 120. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_SYMPATHY=120;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_CONFUSE: original uint8 constant.
 /// @details Exact admitted value 130. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_CONFUSE=130;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SHOCK: original uint8 constant.
 /// @details Exact admitted value 140. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_SHOCK=140;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_ACTCUTE: original uint8 constant.
 /// @details Exact admitted value 150. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_ACTCUTE=150;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SERIOUS: original uint8 constant.
 /// @details Exact admitted value 160. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_SERIOUS=160;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_THINKING: original uint8 constant.
 /// @details Exact admitted value 170. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_THINKING=170;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_ANGRY: original uint8 constant.
 /// @details Exact admitted value 180. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_ANGRY=180;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_EXTREMEANGRY: original uint8 constant.
 /// @details Exact admitted value 190. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_EXTREMEANGRY=190;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_ADORE: original uint8 constant.
 /// @details Exact admitted value 200. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_ADORE=200;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_EXTREMEADORE: original uint8 constant.
 /// @details Exact admitted value 210. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_EXTREMEADORE=210;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_CHARGE: original uint8 constant.
 /// @details Exact admitted value 220. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_EYE_CHARGE=220;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_MODE_ONCE: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_MODE_ONCE=1;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_MODE_LOOP: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_MODE_LOOP=2;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.header: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_header=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.emotion_id: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 ubyte field_emotion_id=0;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 ubyte field_mode=0;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.priority: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 int field_priority=0;
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayEmoji_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.integer(this.field_emotion_id)) return false;
  if(!w.integer(this.field_mode)) return false;
  if(!w.integer(this.field_priority)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayEmoji_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvPlayEmoji_Request value) {
  value=Ros2Aimdk_msgsSrvPlayEmoji_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_header)) return false;
  if(!r.integer(value.field_emotion_id)) return false;
  if(!r.integer(value.field_mode)) return false;
  if(!r.integer(value.field_priority)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayEmoji_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayEmoji_Request value.
 /// @details Require the complete 14..14-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvPlayEmoji_Request value) {
  if(bytes.length<14 || bytes.length>14) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayEmoji_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 29..285 bytes
/// and is identified by UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvPlayEmoji_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayEmoji_Response in bytes.
 /// @details The inclusive bound is 285 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=285;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayEmoji_Response.
 /// @details Exact identity UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayEmoji_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/PlayEmoji_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayEmoji_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/PlayEmoji_Response.header: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_header=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief aimdk_msgs/srv/PlayEmoji_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief aimdk_msgs/srv/PlayEmoji_Response.message: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayEmoji_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayEmoji_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvPlayEmoji_Response value) {
  value=Ros2Aimdk_msgsSrvPlayEmoji_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_header)) return false;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayEmoji_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayEmoji_Response value.
 /// @details Require the complete 29..285-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvPlayEmoji_Response value) {
  if(bytes.length<29 || bytes.length>285) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayMediaFile_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 30..414 bytes
/// and is identified by UWVMROS1_de9106af79fdc65581b3c2aa7642a1caab223f294e25e32c2251daddeb26717e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvPlayMediaFile_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayMediaFile_Request in bytes.
 /// @details The inclusive bound is 414 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=414;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayMediaFile_Request.
 /// @details Exact identity UWVMROS1_de9106af79fdc65581b3c2aa7642a1caab223f294e25e32c2251daddeb26717e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_de9106af79fdc65581b3c2aa7642a1caab223f294e25e32c2251daddeb26717e";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayMediaFile_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/PlayMediaFile_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayMediaFile_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/PlayMediaFile_Request.header: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_header=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief aimdk_msgs/srv/PlayMediaFile_Request.media_file_req: aimdk_msgs/msg/PlayMediaFileRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgPlayMediaFileRequest field_media_file_req=Ros2Aimdk_msgsMsgPlayMediaFileRequest.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayMediaFile_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_media_file_req.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayMediaFile_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvPlayMediaFile_Request value) {
  value=Ros2Aimdk_msgsSrvPlayMediaFile_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Aimdk_msgsMsgPlayMediaFileRequest.readFields(r,arena,value.field_media_file_req)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayMediaFile_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayMediaFile_Request value.
 /// @details Require the complete 30..414-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvPlayMediaFile_Request value) {
  if(bytes.length<30 || bytes.length>414) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayMediaFile_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 50..690 bytes
/// and is identified by UWVMROS1_c9d87c3e8eba48eac719d9efc5dd3f09846e62be5ce94afaaf79fe0f82c1b70b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvPlayMediaFile_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayMediaFile_Response in bytes.
 /// @details The inclusive bound is 690 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=690;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayMediaFile_Response.
 /// @details Exact identity UWVMROS1_c9d87c3e8eba48eac719d9efc5dd3f09846e62be5ce94afaaf79fe0f82c1b70b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c9d87c3e8eba48eac719d9efc5dd3f09846e62be5ce94afaaf79fe0f82c1b70b";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayMediaFile_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/PlayMediaFile_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayMediaFile_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/PlayMediaFile_Response.header: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_header=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief aimdk_msgs/srv/PlayMediaFile_Response.tts_resp: aimdk_msgs/msg/PlayTtsResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgPlayTtsResponse field_tts_resp=Ros2Aimdk_msgsMsgPlayTtsResponse.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayMediaFile_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_tts_resp.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayMediaFile_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvPlayMediaFile_Response value) {
  value=Ros2Aimdk_msgsSrvPlayMediaFile_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Aimdk_msgsMsgPlayTtsResponse.readFields(r,arena,value.field_tts_resp)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayMediaFile_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayMediaFile_Response value.
 /// @details Require the complete 50..690-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvPlayMediaFile_Response value) {
  if(bytes.length<50 || bytes.length>690) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayTts_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 26..410 bytes
/// and is identified by UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvPlayTts_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayTts_Request in bytes.
 /// @details The inclusive bound is 410 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=410;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayTts_Request.
 /// @details Exact identity UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayTts_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/PlayTts_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayTts_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/PlayTts_Request.header: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_header=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief aimdk_msgs/srv/PlayTts_Request.tts_req: aimdk_msgs/msg/PlayTtsRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgPlayTtsRequest field_tts_req=Ros2Aimdk_msgsMsgPlayTtsRequest.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayTts_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_tts_req.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayTts_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvPlayTts_Request value) {
  value=Ros2Aimdk_msgsSrvPlayTts_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Aimdk_msgsMsgPlayTtsRequest.readFields(r,arena,value.field_tts_req)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayTts_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayTts_Request value.
 /// @details Require the complete 26..410-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvPlayTts_Request value) {
  if(bytes.length<26 || bytes.length>410) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayTts_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 50..690 bytes
/// and is identified by UWVMROS1_80d6f75ec35cccce215b1ab1321eabeae2e6668eb29a7249c8f8fad77e59bcc6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvPlayTts_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayTts_Response in bytes.
 /// @details The inclusive bound is 690 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=690;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayTts_Response.
 /// @details Exact identity UWVMROS1_80d6f75ec35cccce215b1ab1321eabeae2e6668eb29a7249c8f8fad77e59bcc6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_80d6f75ec35cccce215b1ab1321eabeae2e6668eb29a7249c8f8fad77e59bcc6";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayTts_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/PlayTts_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayTts_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/PlayTts_Response.header: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_header=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief aimdk_msgs/srv/PlayTts_Response.tts_resp: aimdk_msgs/msg/PlayTtsResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgPlayTtsResponse field_tts_resp=Ros2Aimdk_msgsMsgPlayTtsResponse.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayTts_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_tts_resp.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayTts_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvPlayTts_Response value) {
  value=Ros2Aimdk_msgsSrvPlayTts_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Aimdk_msgsMsgPlayTtsResponse.readFields(r,arena,value.field_tts_resp)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayTts_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayTts_Response value.
 /// @details Require the complete 50..690-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvPlayTts_Response value) {
  if(bytes.length<50 || bytes.length>690) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayVideo_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 17..145 bytes
/// and is identified by UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvPlayVideo_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayVideo_Request in bytes.
 /// @details The inclusive bound is 145 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=145;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayVideo_Request.
 /// @details Exact identity UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayVideo_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/PlayVideo_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayVideo_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/PlayVideo_Request.EMOTION_MODE_ONCE: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_MODE_ONCE=1;
 /// @brief aimdk_msgs/srv/PlayVideo_Request.EMOTION_MODE_LOOP: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_MODE_LOOP=2;
 /// @brief aimdk_msgs/srv/PlayVideo_Request.header: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_header=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief aimdk_msgs/srv/PlayVideo_Request.video_path: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_video_path=null;
 /// @brief aimdk_msgs/srv/PlayVideo_Request.mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 ubyte field_mode=0;
 /// @brief aimdk_msgs/srv/PlayVideo_Request.priority: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 int field_priority=0;
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayVideo_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.text(this.field_video_path,128)) return false;
  if(!w.integer(this.field_mode)) return false;
  if(!w.integer(this.field_priority)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayVideo_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvPlayVideo_Request value) {
  value=Ros2Aimdk_msgsSrvPlayVideo_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_header)) return false;
  if(!r.text(value.field_video_path,128)) return false;
  if(!r.integer(value.field_mode)) return false;
  if(!r.integer(value.field_priority)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayVideo_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayVideo_Request value.
 /// @details Require the complete 17..145-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvPlayVideo_Request value) {
  if(bytes.length<17 || bytes.length>145) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayVideo_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 29..285 bytes
/// and is identified by UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvPlayVideo_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayVideo_Response in bytes.
 /// @details The inclusive bound is 285 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=285;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayVideo_Response.
 /// @details Exact identity UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayVideo_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/PlayVideo_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayVideo_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/PlayVideo_Response.header: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_header=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief aimdk_msgs/srv/PlayVideo_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief aimdk_msgs/srv/PlayVideo_Response.message: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayVideo_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayVideo_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvPlayVideo_Response value) {
  value=Ros2Aimdk_msgsSrvPlayVideo_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_header)) return false;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayVideo_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayVideo_Response value.
 /// @details Require the complete 29..285-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvPlayVideo_Response value) {
  if(bytes.length<29 || bytes.length>285) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayVideoGroup_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 17..2129
/// bytes and is identified by UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvPlayVideoGroup_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayVideoGroup_Request in bytes.
 /// @details The inclusive bound is 2129 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=2129;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayVideoGroup_Request.
 /// @details Exact identity UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayVideoGroup_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/PlayVideoGroup_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayVideoGroup_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/PlayVideoGroup_Request.EMOTION_MODE_ONCE: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_MODE_ONCE=1;
 /// @brief aimdk_msgs/srv/PlayVideoGroup_Request.EMOTION_MODE_LOOP: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_EMOTION_MODE_LOOP=2;
 /// @brief aimdk_msgs/srv/PlayVideoGroup_Request.header: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_header=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief aimdk_msgs/srv/PlayVideoGroup_Request.video_path_list: string; 0..16 elements; each string is 0..128
 /// bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[][] field_video_path_list=null;
 /// @brief aimdk_msgs/srv/PlayVideoGroup_Request.mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 ubyte field_mode=0;
 /// @brief aimdk_msgs/srv/PlayVideoGroup_Request.priority: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 int field_priority=0;
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayVideoGroup_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(this.field_video_path_list.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_video_path_list.length)) return false;
  foreach(ref e; this.field_video_path_list) {
  if(!w.text(e,128)) return false;
  }
  if(!w.integer(this.field_mode)) return false;
  if(!w.integer(this.field_priority)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayVideoGroup_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvPlayVideoGroup_Request value) {
  value=Ros2Aimdk_msgsSrvPlayVideoGroup_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_header)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>16) {
       r.code=22;
       return false;
  }
  value.field_video_path_list=arena.allocate!(const(ubyte)[])(count1);
  if(value.field_video_path_list.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_video_path_list) {
  if(!r.text(e,128)) return false;
  }
  if(!r.integer(value.field_mode)) return false;
  if(!r.integer(value.field_priority)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayVideoGroup_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayVideoGroup_Request value.
 /// @details Require the complete 17..2129-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvPlayVideoGroup_Request value) {
  if(bytes.length<17 || bytes.length>2129) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayVideoGroup_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 29..285 bytes
/// and is identified by UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvPlayVideoGroup_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayVideoGroup_Response in bytes.
 /// @details The inclusive bound is 285 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=285;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayVideoGroup_Response.
 /// @details Exact identity UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayVideoGroup_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/PlayVideoGroup_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayVideoGroup_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/PlayVideoGroup_Response.header: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_header=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief aimdk_msgs/srv/PlayVideoGroup_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief aimdk_msgs/srv/PlayVideoGroup_Response.message: string; each string is 0..128 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayVideoGroup_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayVideoGroup_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvPlayVideoGroup_Response value) {
  value=Ros2Aimdk_msgsSrvPlayVideoGroup_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_header)) return false;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,128)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayVideoGroup_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayVideoGroup_Response value.
 /// @details Require the complete 29..285-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideoGroup_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvPlayVideoGroup_Response value) {
  if(bytes.length<29 || bytes.length>285) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/SetAgentPropertiesRequest_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..544 bytes
/// and is identified by UWVMROS1_e6f9e68a634c0391e9c6ac58aa2840b1b99cb523b5c3019d0b45bcf966df893f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetAgentPropertiesRequest_Request in bytes.
 /// @details The inclusive bound is 544 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=544;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
 /// @details Exact identity UWVMROS1_e6f9e68a634c0391e9c6ac58aa2840b1b99cb523b5c3019d0b45bcf966df893f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e6f9e68a634c0391e9c6ac58aa2840b1b99cb523b5c3019d0b45bcf966df893f";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/SetAgentPropertiesRequest_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/SetAgentPropertiesRequest_Request.header: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_header=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief aimdk_msgs/srv/SetAgentPropertiesRequest_Request.contents: aimdk_msgs/msg/AgentProperties.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgAgentProperties field_contents=Ros2Aimdk_msgsMsgAgentProperties.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_contents.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request value) {
  value=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Aimdk_msgsMsgAgentProperties.readFields(r,arena,value.field_contents)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetAgentPropertiesRequest_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetAgentPropertiesRequest_Request value.
 /// @details Require the complete 12..544-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request value) {
  if(bytes.length<12 || bytes.length>544) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/SetAgentPropertiesRequest_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
/// and is identified by UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetAgentPropertiesRequest_Response in bytes.
 /// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=152;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
 /// @details Exact identity UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/SetAgentPropertiesRequest_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/SetAgentPropertiesRequest_Response.header: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_header=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response value) {
  value=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_header)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetAgentPropertiesRequest_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetAgentPropertiesRequest_Response value.
 /// @details Require the complete 24..152-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response value) {
  if(bytes.length<24 || bytes.length>152) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMcAction_Request value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..276 bytes
/// and is identified by UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvSetMcAction_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcAction_Request in bytes.
 /// @details The inclusive bound is 276 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=276;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMcAction_Request.
 /// @details Exact identity UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMcAction_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/SetMcAction_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMcAction_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/SetMcAction_Request.header: aimdk_msgs/msg/RequestHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgRequestHeader field_header=Ros2Aimdk_msgsMsgRequestHeader.init;
 /// @brief aimdk_msgs/srv/SetMcAction_Request.source: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_source=null;
 /// @brief aimdk_msgs/srv/SetMcAction_Request.command: aimdk_msgs/msg/McActionCommand.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMcActionCommand field_command=Ros2Aimdk_msgsMsgMcActionCommand.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMcAction_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.text(this.field_source,128)) return false;
  if(!this.field_command.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcAction_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvSetMcAction_Request value) {
  value=Ros2Aimdk_msgsSrvSetMcAction_Request.init;
  if(!Ros2Aimdk_msgsMsgRequestHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.text(value.field_source,128)) return false;
  if(!Ros2Aimdk_msgsMsgMcActionCommand.readFields(r,arena,value.field_command)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMcAction_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMcAction_Request value.
 /// @details Require the complete 20..276-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvSetMcAction_Request value) {
  if(bytes.length<20 || bytes.length>276) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMcAction_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
/// and is identified by UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvSetMcAction_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcAction_Response in bytes.
 /// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=152;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMcAction_Response.
 /// @details Exact identity UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMcAction_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/SetMcAction_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMcAction_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/SetMcAction_Response.response: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_response=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMcAction_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_response.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcAction_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvSetMcAction_Response value) {
  value=Ros2Aimdk_msgsSrvSetMcAction_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_response)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMcAction_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMcAction_Response value.
 /// @details Require the complete 24..152-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvSetMcAction_Response value) {
  if(bytes.length<24 || bytes.length>152) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMcInputSource_Request value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
/// and is identified by UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvSetMcInputSource_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcInputSource_Request in bytes.
 /// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=152;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMcInputSource_Request.
 /// @details Exact identity UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMcInputSource_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/SetMcInputSource_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMcInputSource_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/SetMcInputSource_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_request=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief aimdk_msgs/srv/SetMcInputSource_Request.action: aimdk_msgs/msg/McInputAction.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMcInputAction field_action=Ros2Aimdk_msgsMsgMcInputAction.init;
 /// @brief aimdk_msgs/srv/SetMcInputSource_Request.input_source: aimdk_msgs/msg/McInputSource.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMcInputSource field_input_source=Ros2Aimdk_msgsMsgMcInputSource.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMcInputSource_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_request.writeFields(w)) return false;
  if(!this.field_action.writeFields(w)) return false;
  if(!this.field_input_source.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcInputSource_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvSetMcInputSource_Request value) {
  value=Ros2Aimdk_msgsSrvSetMcInputSource_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_request)) return false;
  if(!Ros2Aimdk_msgsMsgMcInputAction.readFields(r,arena,value.field_action)) return false;
  if(!Ros2Aimdk_msgsMsgMcInputSource.readFields(r,arena,value.field_input_source)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMcInputSource_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMcInputSource_Request value.
 /// @details Require the complete 24..152-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvSetMcInputSource_Request value) {
  if(bytes.length<24 || bytes.length>152) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMcInputSource_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 28..28 bytes
/// and is identified by UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvSetMcInputSource_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcInputSource_Response in bytes.
 /// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=28;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMcInputSource_Response.
 /// @details Exact identity UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMcInputSource_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/SetMcInputSource_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMcInputSource_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/SetMcInputSource_Response.response: aimdk_msgs/msg/CommonTaskResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonTaskResponse field_response=Ros2Aimdk_msgsMsgCommonTaskResponse.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMcInputSource_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_response.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcInputSource_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvSetMcInputSource_Response value) {
  value=Ros2Aimdk_msgsSrvSetMcInputSource_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonTaskResponse.readFields(r,arena,value.field_response)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMcInputSource_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMcInputSource_Response value.
 /// @details Require the complete 28..28-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvSetMcInputSource_Response value) {
  if(bytes.length<28 || bytes.length>28) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMcPresetMotion_Request value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 21..149 bytes
/// and is identified by UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvSetMcPresetMotion_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcPresetMotion_Request in bytes.
 /// @details The inclusive bound is 149 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=149;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMcPresetMotion_Request.
 /// @details Exact identity UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMcPresetMotion_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/SetMcPresetMotion_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMcPresetMotion_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/SetMcPresetMotion_Request.header: aimdk_msgs/msg/RequestHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgRequestHeader field_header=Ros2Aimdk_msgsMsgRequestHeader.init;
 /// @brief aimdk_msgs/srv/SetMcPresetMotion_Request.area: aimdk_msgs/msg/McControlArea.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMcControlArea field_area=Ros2Aimdk_msgsMsgMcControlArea.init;
 /// @brief aimdk_msgs/srv/SetMcPresetMotion_Request.motion: aimdk_msgs/msg/McPresetMotion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgMcPresetMotion field_motion=Ros2Aimdk_msgsMsgMcPresetMotion.init;
 /// @brief aimdk_msgs/srv/SetMcPresetMotion_Request.interrupt: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 bool field_interrupt=false;
 /// @brief aimdk_msgs/srv/SetMcPresetMotion_Request.ani_path: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_ani_path=null;
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMcPresetMotion_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_area.writeFields(w)) return false;
  if(!this.field_motion.writeFields(w)) return false;
  if(!w.boolean(this.field_interrupt)) return false;
  if(!w.text(this.field_ani_path,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcPresetMotion_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvSetMcPresetMotion_Request value) {
  value=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request.init;
  if(!Ros2Aimdk_msgsMsgRequestHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Aimdk_msgsMsgMcControlArea.readFields(r,arena,value.field_area)) return false;
  if(!Ros2Aimdk_msgsMsgMcPresetMotion.readFields(r,arena,value.field_motion)) return false;
  if(!r.boolean(value.field_interrupt)) return false;
  if(!r.text(value.field_ani_path,128)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMcPresetMotion_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMcPresetMotion_Request value.
 /// @details Require the complete 21..149-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvSetMcPresetMotion_Request value) {
  if(bytes.length<21 || bytes.length>149) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMcPresetMotion_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 28..28 bytes
/// and is identified by UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvSetMcPresetMotion_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcPresetMotion_Response in bytes.
 /// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=28;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMcPresetMotion_Response.
 /// @details Exact identity UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMcPresetMotion_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/SetMcPresetMotion_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMcPresetMotion_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/SetMcPresetMotion_Response.response: aimdk_msgs/msg/CommonTaskResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonTaskResponse field_response=Ros2Aimdk_msgsMsgCommonTaskResponse.init;
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMcPresetMotion_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_response.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcPresetMotion_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvSetMcPresetMotion_Response value) {
  value=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonTaskResponse.readFields(r,arena,value.field_response)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMcPresetMotion_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMcPresetMotion_Response value.
 /// @details Require the complete 28..28-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvSetMcPresetMotion_Response value) {
  if(bytes.length<28 || bytes.length>28) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMute_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 9..9 bytes
/// and is identified by UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvSetMute_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMute_Request in bytes.
 /// @details The inclusive bound is 9 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=9;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMute_Request.
 /// @details Exact identity UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMute_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/SetMute_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMute_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/SetMute_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_request=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief aimdk_msgs/srv/SetMute_Request.is_mute: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/d/API-CONTRACT.md
 bool field_is_mute=false;
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMute_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_request.writeFields(w)) return false;
  if(!w.boolean(this.field_is_mute)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMute_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvSetMute_Request value) {
  value=Ros2Aimdk_msgsSrvSetMute_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_request)) return false;
  if(!r.boolean(value.field_is_mute)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMute_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMute_Request value.
 /// @details Require the complete 9..9-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvSetMute_Request value) {
  if(bytes.length<9 || bytes.length>9) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMute_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 25..153 bytes
/// and is identified by UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvSetMute_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMute_Response in bytes.
 /// @details The inclusive bound is 153 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=153;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMute_Response.
 /// @details Exact identity UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMute_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/SetMute_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMute_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/SetMute_Response.reponse: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_reponse=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief aimdk_msgs/srv/SetMute_Response.is_mute: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_is_mute=false;
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMute_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_reponse.writeFields(w)) return false;
  if(!w.boolean(this.field_is_mute)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMute_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvSetMute_Response value) {
  value=Ros2Aimdk_msgsSrvSetMute_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_reponse)) return false;
  if(!r.boolean(value.field_is_mute)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMute_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMute_Response value.
 /// @details Require the complete 25..153-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvSetMute_Response value) {
  if(bytes.length<25 || bytes.length>153) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/SetVolume_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
/// and is identified by UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvSetVolume_Request {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetVolume_Request in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=12;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetVolume_Request.
 /// @details Exact identity UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetVolume_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/SetVolume_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetVolume_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/SetVolume_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonRequest field_request=Ros2Aimdk_msgsMsgCommonRequest.init;
 /// @brief aimdk_msgs/srv/SetVolume_Request.audio_volume: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 uint field_audio_volume=0;
 /// @brief Append every canonical field of aimdk_msgs/srv/SetVolume_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_request.writeFields(w)) return false;
  if(!w.integer(this.field_audio_volume)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetVolume_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvSetVolume_Request value) {
  value=Ros2Aimdk_msgsSrvSetVolume_Request.init;
  if(!Ros2Aimdk_msgsMsgCommonRequest.readFields(r,arena,value.field_request)) return false;
  if(!r.integer(value.field_audio_volume)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetVolume_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetVolume_Request value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvSetVolume_Request value) {
  if(bytes.length<12 || bytes.length>12) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 aimdk_msgs/srv/SetVolume_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..156 bytes
/// and is identified by UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Aimdk_msgsSrvSetVolume_Response {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetVolume_Response in bytes.
 /// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=156;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetVolume_Response.
 /// @details Exact identity UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetVolume_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="aimdk_msgs/srv/SetVolume_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetVolume_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief aimdk_msgs/srv/SetVolume_Response.reponse: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Aimdk_msgsMsgCommonResponse field_reponse=Ros2Aimdk_msgsMsgCommonResponse.init;
 /// @brief aimdk_msgs/srv/SetVolume_Response.audio_volume: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 uint field_audio_volume=0;
 /// @brief Append every canonical field of aimdk_msgs/srv/SetVolume_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_reponse.writeFields(w)) return false;
  if(!w.integer(this.field_audio_volume)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetVolume_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Aimdk_msgsSrvSetVolume_Response value) {
  value=Ros2Aimdk_msgsSrvSetVolume_Response.init;
  if(!Ros2Aimdk_msgsMsgCommonResponse.readFields(r,arena,value.field_reponse)) return false;
  if(!r.integer(value.field_audio_volume)) return false;
  return true;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetVolume_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetVolume_Response value.
 /// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Aimdk_msgsSrvSetVolume_Response value) {
  if(bytes.length<28 || bytes.length>156) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
