// Generated complete bounded values; BetterC, caller buffers, no authority.
module roswasm.records;
import roswasm.wire;
@nogc nothrow:
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
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Builtin_interfacesMsgTime {
 /// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of builtin_interfaces/msg/Time.
 /// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
 /// @brief Original ROS type name for builtin_interfaces/msg/Time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="builtin_interfaces/msg/Time";
 /// @brief Selected original native identity for builtin_interfaces/msg/Time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief builtin_interfaces/msg/Time.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/d/API.md
 int field_sec=0;
 /// @brief builtin_interfaces/msg/Time.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/d/API.md
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
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/d/API.md
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
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Builtin_interfacesMsgTime value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Point value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
/// and is identified by UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Geometry_msgsMsgPoint {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Point in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of geometry_msgs/msg/Point.
 /// @details Exact identity UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
 /// @brief Original ROS type name for geometry_msgs/msg/Point.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/msg/Point";
 /// @brief Selected original native identity for geometry_msgs/msg/Point.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Point.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/d/API.md
 double field_x=0;
 /// @brief geometry_msgs/msg/Point.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/d/API.md
 double field_y=0;
 /// @brief geometry_msgs/msg/Point.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/d/API.md
 double field_z=0;
 /// @brief Append every canonical field of geometry_msgs/msg/Point.
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
 /// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Point.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgPoint value) {
  value=Ros2Geometry_msgsMsgPoint.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Point value.
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
 /// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Point value.
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPoint; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgPoint value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Quaternion value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes
/// and is identified by UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Geometry_msgsMsgQuaternion {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Quaternion in bytes.
 /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=32;
 /// @brief Canonical codec identity of geometry_msgs/msg/Quaternion.
 /// @details Exact identity UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
 /// @brief Original ROS type name for geometry_msgs/msg/Quaternion.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/msg/Quaternion";
 /// @brief Selected original native identity for geometry_msgs/msg/Quaternion.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Quaternion.x: float64.
 /// @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds
 /// fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/d/API.md
 double field_x=0x0.0p+0;
 /// @brief geometry_msgs/msg/Quaternion.y: float64.
 /// @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds
 /// fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/d/API.md
 double field_y=0x0.0p+0;
 /// @brief geometry_msgs/msg/Quaternion.z: float64.
 /// @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds
 /// fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/d/API.md
 double field_z=0x0.0p+0;
 /// @brief geometry_msgs/msg/Quaternion.w: float64.
 /// @details Schema default 1.0. Encoding preserves the original field position and signedness; invalid bounds
 /// fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/d/API.md
 double field_w=0x1.0000000000000p+0;
 /// @brief Append every canonical field of geometry_msgs/msg/Quaternion.
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
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  if(!w.float64(this.field_w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Quaternion.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgQuaternion value) {
  value=Ros2Geometry_msgsMsgQuaternion.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  if(!r.float64(value.field_w)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Quaternion value.
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
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Quaternion value.
 /// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgQuaternion; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgQuaternion value) {
  if(bytes.length<32 || bytes.length>32) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Pose value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
/// and is identified by UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Geometry_msgsMsgPose {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Pose in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of geometry_msgs/msg/Pose.
 /// @details Exact identity UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
 /// @brief Original ROS type name for geometry_msgs/msg/Pose.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/msg/Pose";
 /// @brief Selected original native identity for geometry_msgs/msg/Pose.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Pose.position: geometry_msgs/msg/Point.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgPoint field_position=Ros2Geometry_msgsMsgPoint.init;
 /// @brief geometry_msgs/msg/Pose.orientation: geometry_msgs/msg/Quaternion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgQuaternion field_orientation=Ros2Geometry_msgsMsgQuaternion.init;
 /// @brief Append every canonical field of geometry_msgs/msg/Pose.
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
 /// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_position.writeFields(w)) return false;
  if(!this.field_orientation.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Pose.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgPose value) {
  value=Ros2Geometry_msgsMsgPose.init;
  if(!Ros2Geometry_msgsMsgPoint.readFields(r,arena,value.field_position)) return false;
  if(!Ros2Geometry_msgsMsgQuaternion.readFields(r,arena,value.field_orientation)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Pose value.
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
 /// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Pose value.
 /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPose; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgPose value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/PoseWithCovariance value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 344..344
/// bytes and is identified by UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Geometry_msgsMsgPoseWithCovariance {
 /// @brief Maximum canonical extent of geometry_msgs/msg/PoseWithCovariance in bytes.
 /// @details The inclusive bound is 344 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=344;
 /// @brief Canonical codec identity of geometry_msgs/msg/PoseWithCovariance.
 /// @details Exact identity UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2";
 /// @brief Original ROS type name for geometry_msgs/msg/PoseWithCovariance.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/msg/PoseWithCovariance";
 /// @brief Selected original native identity for geometry_msgs/msg/PoseWithCovariance.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/PoseWithCovariance.pose: geometry_msgs/msg/Pose.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgPose field_pose=Ros2Geometry_msgsMsgPose.init;
 /// @brief geometry_msgs/msg/PoseWithCovariance.covariance: float64; exactly 36 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 double[36] field_covariance=0;
 /// @brief Append every canonical field of geometry_msgs/msg/PoseWithCovariance.
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
 /// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_pose.writeFields(w)) return false;
  foreach(ref e; this.field_covariance) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/PoseWithCovariance.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgPoseWithCovariance value) {
  value=Ros2Geometry_msgsMsgPoseWithCovariance.init;
  if(!Ros2Geometry_msgsMsgPose.readFields(r,arena,value.field_pose)) return false;
  foreach(ref e; value.field_covariance) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/PoseWithCovariance value.
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
 /// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/PoseWithCovariance value.
 /// @details Require the complete 344..344-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgPoseWithCovariance value) {
  if(bytes.length<344 || bytes.length>344) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Vector3 value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
/// and is identified by UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Geometry_msgsMsgVector3 {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Vector3 in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of geometry_msgs/msg/Vector3.
 /// @details Exact identity UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
 /// @brief Original ROS type name for geometry_msgs/msg/Vector3.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/msg/Vector3";
 /// @brief Selected original native identity for geometry_msgs/msg/Vector3.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Vector3.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/d/API.md
 double field_x=0;
 /// @brief geometry_msgs/msg/Vector3.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/d/API.md
 double field_y=0;
 /// @brief geometry_msgs/msg/Vector3.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/d/API.md
 double field_z=0;
 /// @brief Append every canonical field of geometry_msgs/msg/Vector3.
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
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Vector3.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgVector3 value) {
  value=Ros2Geometry_msgsMsgVector3.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Vector3 value.
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
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Vector3 value.
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgVector3; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgVector3 value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Transform value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
/// and is identified by UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Geometry_msgsMsgTransform {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Transform in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of geometry_msgs/msg/Transform.
 /// @details Exact identity UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b";
 /// @brief Original ROS type name for geometry_msgs/msg/Transform.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/msg/Transform";
 /// @brief Selected original native identity for geometry_msgs/msg/Transform.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Transform.translation: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgVector3 field_translation=Ros2Geometry_msgsMsgVector3.init;
 /// @brief geometry_msgs/msg/Transform.rotation: geometry_msgs/msg/Quaternion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgQuaternion field_rotation=Ros2Geometry_msgsMsgQuaternion.init;
 /// @brief Append every canonical field of geometry_msgs/msg/Transform.
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
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_translation.writeFields(w)) return false;
  if(!this.field_rotation.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Transform.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgTransform value) {
  value=Ros2Geometry_msgsMsgTransform.init;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_translation)) return false;
  if(!Ros2Geometry_msgsMsgQuaternion.readFields(r,arena,value.field_rotation)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Transform value.
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
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Transform value.
 /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTransform; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgTransform value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 std_msgs/msg/Header value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Std_msgsMsgHeader {
 /// @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=140;
 /// @brief Canonical codec identity of std_msgs/msg/Header.
 /// @details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
 /// @brief Original ROS type name for std_msgs/msg/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="std_msgs/msg/Header";
 /// @brief Selected original native identity for std_msgs/msg/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgTime field_stamp=Ros2Builtin_interfacesMsgTime.init;
 /// @brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_frame_id=null;
 /// @brief Append every canonical field of std_msgs/msg/Header.
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_stamp.writeFields(w)) return false;
  if(!w.text(this.field_frame_id,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_msgs/msg/Header.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Std_msgsMsgHeader value) {
  value=Ros2Std_msgsMsgHeader.init;
  if(!Ros2Builtin_interfacesMsgTime.readFields(r,arena,value.field_stamp)) return false;
  if(!r.text(value.field_frame_id,128)) return false;
  return true;
 }
 /// @brief Encode one complete std_msgs/msg/Header value.
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_msgs/msg/Header value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Std_msgsMsgHeader value) {
  if(bytes.length<12 || bytes.length>140) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/TransformStamped value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 72..456 bytes
/// and is identified by UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Geometry_msgsMsgTransformStamped {
 /// @brief Maximum canonical extent of geometry_msgs/msg/TransformStamped in bytes.
 /// @details The inclusive bound is 456 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=456;
 /// @brief Canonical codec identity of geometry_msgs/msg/TransformStamped.
 /// @details Exact identity UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a";
 /// @brief Original ROS type name for geometry_msgs/msg/TransformStamped.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/msg/TransformStamped";
 /// @brief Selected original native identity for geometry_msgs/msg/TransformStamped.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/TransformStamped.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/d/API.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief geometry_msgs/msg/TransformStamped.child_frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_child_frame_id=null;
 /// @brief geometry_msgs/msg/TransformStamped.transform: geometry_msgs/msg/Transform.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgTransform field_transform=Ros2Geometry_msgsMsgTransform.init;
 /// @brief Append every canonical field of geometry_msgs/msg/TransformStamped.
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
 /// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.text(this.field_child_frame_id,256)) return false;
  if(!this.field_transform.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/TransformStamped.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgTransformStamped value) {
  value=Ros2Geometry_msgsMsgTransformStamped.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.text(value.field_child_frame_id,256)) return false;
  if(!Ros2Geometry_msgsMsgTransform.readFields(r,arena,value.field_transform)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/TransformStamped value.
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
 /// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/TransformStamped value.
 /// @details Require the complete 72..456-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTransformStamped; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgTransformStamped value) {
  if(bytes.length<72 || bytes.length>456) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/Twist value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes
/// and is identified by UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Geometry_msgsMsgTwist {
 /// @brief Maximum canonical extent of geometry_msgs/msg/Twist in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=48;
 /// @brief Canonical codec identity of geometry_msgs/msg/Twist.
 /// @details Exact identity UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
 /// @brief Original ROS type name for geometry_msgs/msg/Twist.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/msg/Twist";
 /// @brief Selected original native identity for geometry_msgs/msg/Twist.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/Twist.linear: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgVector3 field_linear=Ros2Geometry_msgsMsgVector3.init;
 /// @brief geometry_msgs/msg/Twist.angular: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgVector3 field_angular=Ros2Geometry_msgsMsgVector3.init;
 /// @brief Append every canonical field of geometry_msgs/msg/Twist.
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
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_linear.writeFields(w)) return false;
  if(!this.field_angular.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/Twist.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgTwist value) {
  value=Ros2Geometry_msgsMsgTwist.init;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_linear)) return false;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_angular)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/Twist value.
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
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/Twist value.
 /// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwist; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgTwist value) {
  if(bytes.length<48 || bytes.length>48) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/TwistStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 60..188 bytes
/// and is identified by UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Geometry_msgsMsgTwistStamped {
 /// @brief Maximum canonical extent of geometry_msgs/msg/TwistStamped in bytes.
 /// @details The inclusive bound is 188 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=188;
 /// @brief Canonical codec identity of geometry_msgs/msg/TwistStamped.
 /// @details Exact identity UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573";
 /// @brief Original ROS type name for geometry_msgs/msg/TwistStamped.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/msg/TwistStamped";
 /// @brief Selected original native identity for geometry_msgs/msg/TwistStamped.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/TwistStamped.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/d/API.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief geometry_msgs/msg/TwistStamped.twist: geometry_msgs/msg/Twist.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgTwist field_twist=Ros2Geometry_msgsMsgTwist.init;
 /// @brief Append every canonical field of geometry_msgs/msg/TwistStamped.
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
 /// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_twist.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/TwistStamped.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgTwistStamped value) {
  value=Ros2Geometry_msgsMsgTwistStamped.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Geometry_msgsMsgTwist.readFields(r,arena,value.field_twist)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/TwistStamped value.
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
 /// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/TwistStamped value.
 /// @details Require the complete 60..188-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwistStamped; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgTwistStamped value) {
  if(bytes.length<60 || bytes.length>188) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 geometry_msgs/msg/TwistWithCovariance value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 336..336
/// bytes and is identified by UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Geometry_msgsMsgTwistWithCovariance {
 /// @brief Maximum canonical extent of geometry_msgs/msg/TwistWithCovariance in bytes.
 /// @details The inclusive bound is 336 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=336;
 /// @brief Canonical codec identity of geometry_msgs/msg/TwistWithCovariance.
 /// @details Exact identity UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404";
 /// @brief Original ROS type name for geometry_msgs/msg/TwistWithCovariance.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/msg/TwistWithCovariance";
 /// @brief Selected original native identity for geometry_msgs/msg/TwistWithCovariance.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/msg/TwistWithCovariance.twist: geometry_msgs/msg/Twist.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgTwist field_twist=Ros2Geometry_msgsMsgTwist.init;
 /// @brief geometry_msgs/msg/TwistWithCovariance.covariance: float64; exactly 36 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 double[36] field_covariance=0;
 /// @brief Append every canonical field of geometry_msgs/msg/TwistWithCovariance.
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
 /// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_twist.writeFields(w)) return false;
  foreach(ref e; this.field_covariance) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/msg/TwistWithCovariance.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Geometry_msgsMsgTwistWithCovariance value) {
  value=Ros2Geometry_msgsMsgTwistWithCovariance.init;
  if(!Ros2Geometry_msgsMsgTwist.readFields(r,arena,value.field_twist)) return false;
  foreach(ref e; value.field_covariance) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete geometry_msgs/msg/TwistWithCovariance value.
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
 /// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/msg/TwistWithCovariance value.
 /// @details Require the complete 336..336-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Geometry_msgsMsgTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Geometry_msgsMsgTwistWithCovariance value) {
  if(bytes.length<336 || bytes.length>336) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 nav_msgs/msg/Odometry value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 696..1080
/// bytes and is identified by UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Nav_msgsMsgOdometry {
 /// @brief Maximum canonical extent of nav_msgs/msg/Odometry in bytes.
 /// @details The inclusive bound is 1080 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=1080;
 /// @brief Canonical codec identity of nav_msgs/msg/Odometry.
 /// @details Exact identity UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111";
 /// @brief Original ROS type name for nav_msgs/msg/Odometry.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="nav_msgs/msg/Odometry";
 /// @brief Selected original native identity for nav_msgs/msg/Odometry.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief nav_msgs/msg/Odometry.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/d/API.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief nav_msgs/msg/Odometry.child_frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_child_frame_id=null;
 /// @brief nav_msgs/msg/Odometry.pose: geometry_msgs/msg/PoseWithCovariance.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgPoseWithCovariance field_pose=Ros2Geometry_msgsMsgPoseWithCovariance.init;
 /// @brief nav_msgs/msg/Odometry.twist: geometry_msgs/msg/TwistWithCovariance.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgTwistWithCovariance field_twist=Ros2Geometry_msgsMsgTwistWithCovariance.init;
 /// @brief Append every canonical field of nav_msgs/msg/Odometry.
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
 /// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.text(this.field_child_frame_id,256)) return false;
  if(!this.field_pose.writeFields(w)) return false;
  if(!this.field_twist.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of nav_msgs/msg/Odometry.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Nav_msgsMsgOdometry value) {
  value=Ros2Nav_msgsMsgOdometry.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.text(value.field_child_frame_id,256)) return false;
  if(!Ros2Geometry_msgsMsgPoseWithCovariance.readFields(r,arena,value.field_pose)) return false;
  if(!Ros2Geometry_msgsMsgTwistWithCovariance.readFields(r,arena,value.field_twist)) return false;
  return true;
 }
 /// @brief Encode one complete nav_msgs/msg/Odometry value.
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
 /// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete nav_msgs/msg/Odometry value.
 /// @details Require the complete 696..1080-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Nav_msgsMsgOdometry; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Nav_msgsMsgOdometry value) {
  if(bytes.length<696 || bytes.length>1080) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 sensor_msgs/msg/BatteryState value.
/// @details All 16 declared fields are retained in source order. The canonical representation occupies 60..828
/// bytes and is identified by UWVMROS1_6fda2e20edad173e5f8977e1f82f525f36305371e3b1f5e7e628813b5121b11f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Sensor_msgsMsgBatteryState {
 /// @brief Maximum canonical extent of sensor_msgs/msg/BatteryState in bytes.
 /// @details The inclusive bound is 828 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=828;
 /// @brief Canonical codec identity of sensor_msgs/msg/BatteryState.
 /// @details Exact identity UWVMROS1_6fda2e20edad173e5f8977e1f82f525f36305371e3b1f5e7e628813b5121b11f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_6fda2e20edad173e5f8977e1f82f525f36305371e3b1f5e7e628813b5121b11f";
 /// @brief Original ROS type name for sensor_msgs/msg/BatteryState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="sensor_msgs/msg/BatteryState";
 /// @brief Selected original native identity for sensor_msgs/msg/BatteryState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_STATUS_UNKNOWN: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_STATUS_UNKNOWN=0;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_STATUS_CHARGING: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_STATUS_CHARGING=1;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_STATUS_DISCHARGING: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_STATUS_DISCHARGING=2;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_STATUS_NOT_CHARGING: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_STATUS_NOT_CHARGING=3;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_STATUS_FULL: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_STATUS_FULL=4;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_UNKNOWN: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_UNKNOWN=0;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_GOOD: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_GOOD=1;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_OVERHEAT: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_OVERHEAT=2;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_DEAD: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_DEAD=3;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_OVERVOLTAGE: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_OVERVOLTAGE=4;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_UNSPEC_FAILURE: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE=5;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_COLD: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_COLD=6;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE: original uint8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE=7;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE: original uint8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE=8;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_UNKNOWN: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_UNKNOWN=0;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_NIMH: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_NIMH=1;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_LION: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_LION=2;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_LIPO: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_LIPO=3;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_LIFE: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_LIFE=4;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_NICD: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_NICD=5;
 /// @brief sensor_msgs/msg/BatteryState.POWER_SUPPLY_TECHNOLOGY_LIMN: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_LIMN=6;
 /// @brief sensor_msgs/msg/BatteryState.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief sensor_msgs/msg/BatteryState.voltage: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_voltage=0;
 /// @brief sensor_msgs/msg/BatteryState.temperature: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_temperature=0;
 /// @brief sensor_msgs/msg/BatteryState.current: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_current=0;
 /// @brief sensor_msgs/msg/BatteryState.charge: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_charge=0;
 /// @brief sensor_msgs/msg/BatteryState.capacity: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_capacity=0;
 /// @brief sensor_msgs/msg/BatteryState.design_capacity: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_design_capacity=0;
 /// @brief sensor_msgs/msg/BatteryState.percentage: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_percentage=0;
 /// @brief sensor_msgs/msg/BatteryState.power_supply_status: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 ubyte field_power_supply_status=0;
 /// @brief sensor_msgs/msg/BatteryState.power_supply_health: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 ubyte field_power_supply_health=0;
 /// @brief sensor_msgs/msg/BatteryState.power_supply_technology: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 ubyte field_power_supply_technology=0;
 /// @brief sensor_msgs/msg/BatteryState.present: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 bool field_present=false;
 /// @brief sensor_msgs/msg/BatteryState.cell_voltage: float32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 float[] field_cell_voltage=null;
 /// @brief sensor_msgs/msg/BatteryState.cell_temperature: float32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 float[] field_cell_temperature=null;
 /// @brief sensor_msgs/msg/BatteryState.location: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_location=null;
 /// @brief sensor_msgs/msg/BatteryState.serial_number: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_serial_number=null;
 /// @brief Append every canonical field of sensor_msgs/msg/BatteryState.
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
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.float32(this.field_voltage)) return false;
  if(!w.float32(this.field_temperature)) return false;
  if(!w.float32(this.field_current)) return false;
  if(!w.float32(this.field_charge)) return false;
  if(!w.float32(this.field_capacity)) return false;
  if(!w.float32(this.field_design_capacity)) return false;
  if(!w.float32(this.field_percentage)) return false;
  if(!w.integer(this.field_power_supply_status)) return false;
  if(!w.integer(this.field_power_supply_health)) return false;
  if(!w.integer(this.field_power_supply_technology)) return false;
  if(!w.boolean(this.field_present)) return false;
  if(this.field_cell_voltage.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_cell_voltage.length)) return false;
  foreach(ref e; this.field_cell_voltage) {
  if(!w.float32(e)) return false;
  }
  if(this.field_cell_temperature.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_cell_temperature.length)) return false;
  foreach(ref e; this.field_cell_temperature) {
  if(!w.float32(e)) return false;
  }
  if(!w.text(this.field_location,256)) return false;
  if(!w.text(this.field_serial_number,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of sensor_msgs/msg/BatteryState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Sensor_msgsMsgBatteryState value) {
  value=Ros2Sensor_msgsMsgBatteryState.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.float32(value.field_voltage)) return false;
  if(!r.float32(value.field_temperature)) return false;
  if(!r.float32(value.field_current)) return false;
  if(!r.float32(value.field_charge)) return false;
  if(!r.float32(value.field_capacity)) return false;
  if(!r.float32(value.field_design_capacity)) return false;
  if(!r.float32(value.field_percentage)) return false;
  if(!r.integer(value.field_power_supply_status)) return false;
  if(!r.integer(value.field_power_supply_health)) return false;
  if(!r.integer(value.field_power_supply_technology)) return false;
  if(!r.boolean(value.field_present)) return false;
  uint count12; if(!r.integer(count12)) return false;
  if(count12>16) {
       r.code=22;
       return false;
  }
  value.field_cell_voltage=arena.allocate!(float)(count12);
  if(value.field_cell_voltage.length!=count12) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_cell_voltage) {
  if(!r.float32(e)) return false;
  }
  uint count13; if(!r.integer(count13)) return false;
  if(count13>16) {
       r.code=22;
       return false;
  }
  value.field_cell_temperature=arena.allocate!(float)(count13);
  if(value.field_cell_temperature.length!=count13) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_cell_temperature) {
  if(!r.float32(e)) return false;
  }
  if(!r.text(value.field_location,256)) return false;
  if(!r.text(value.field_serial_number,256)) return false;
  return true;
 }
 /// @brief Encode one complete sensor_msgs/msg/BatteryState value.
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
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete sensor_msgs/msg/BatteryState value.
 /// @details Require the complete 60..828-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgBatteryState; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Sensor_msgsMsgBatteryState value) {
  if(bytes.length<60 || bytes.length>828) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 sensor_msgs/msg/Imu value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 308..436
/// bytes and is identified by UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Sensor_msgsMsgImu {
 /// @brief Maximum canonical extent of sensor_msgs/msg/Imu in bytes.
 /// @details The inclusive bound is 436 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=436;
 /// @brief Canonical codec identity of sensor_msgs/msg/Imu.
 /// @details Exact identity UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b";
 /// @brief Original ROS type name for sensor_msgs/msg/Imu.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="sensor_msgs/msg/Imu";
 /// @brief Selected original native identity for sensor_msgs/msg/Imu.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief sensor_msgs/msg/Imu.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief sensor_msgs/msg/Imu.orientation: geometry_msgs/msg/Quaternion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgQuaternion field_orientation=Ros2Geometry_msgsMsgQuaternion.init;
 /// @brief sensor_msgs/msg/Imu.orientation_covariance: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 double[9] field_orientation_covariance=0;
 /// @brief sensor_msgs/msg/Imu.angular_velocity: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgVector3 field_angular_velocity=Ros2Geometry_msgsMsgVector3.init;
 /// @brief sensor_msgs/msg/Imu.angular_velocity_covariance: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 double[9] field_angular_velocity_covariance=0;
 /// @brief sensor_msgs/msg/Imu.linear_acceleration: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgVector3 field_linear_acceleration=Ros2Geometry_msgsMsgVector3.init;
 /// @brief sensor_msgs/msg/Imu.linear_acceleration_covariance: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 double[9] field_linear_acceleration_covariance=0;
 /// @brief Append every canonical field of sensor_msgs/msg/Imu.
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
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_orientation.writeFields(w)) return false;
  foreach(ref e; this.field_orientation_covariance) {
  if(!w.float64(e)) return false;
  }
  if(!this.field_angular_velocity.writeFields(w)) return false;
  foreach(ref e; this.field_angular_velocity_covariance) {
  if(!w.float64(e)) return false;
  }
  if(!this.field_linear_acceleration.writeFields(w)) return false;
  foreach(ref e; this.field_linear_acceleration_covariance) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of sensor_msgs/msg/Imu.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Sensor_msgsMsgImu value) {
  value=Ros2Sensor_msgsMsgImu.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Geometry_msgsMsgQuaternion.readFields(r,arena,value.field_orientation)) return false;
  foreach(ref e; value.field_orientation_covariance) {
  if(!r.float64(e)) return false;
  }
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_angular_velocity)) return false;
  foreach(ref e; value.field_angular_velocity_covariance) {
  if(!r.float64(e)) return false;
  }
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_linear_acceleration)) return false;
  foreach(ref e; value.field_linear_acceleration_covariance) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete sensor_msgs/msg/Imu value.
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
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete sensor_msgs/msg/Imu value.
 /// @details Require the complete 308..436-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgImu; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Sensor_msgsMsgImu value) {
  if(bytes.length<308 || bytes.length>436) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 sensor_msgs/msg/JointState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 28..468 bytes
/// and is identified by UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Sensor_msgsMsgJointState {
 /// @brief Maximum canonical extent of sensor_msgs/msg/JointState in bytes.
 /// @details The inclusive bound is 468 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=468;
 /// @brief Canonical codec identity of sensor_msgs/msg/JointState.
 /// @details Exact identity UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf";
 /// @brief Original ROS type name for sensor_msgs/msg/JointState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="sensor_msgs/msg/JointState";
 /// @brief Selected original native identity for sensor_msgs/msg/JointState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief sensor_msgs/msg/JointState.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief sensor_msgs/msg/JointState.name: string; 0..2 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[][] field_name=null;
 /// @brief sensor_msgs/msg/JointState.position: float64; 0..2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 double[] field_position=null;
 /// @brief sensor_msgs/msg/JointState.velocity: float64; 0..2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 double[] field_velocity=null;
 /// @brief sensor_msgs/msg/JointState.effort: float64; 0..2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 double[] field_effort=null;
 /// @brief Append every canonical field of sensor_msgs/msg/JointState.
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
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_name.length != 0 && this.field_position.length != 0 && this.field_name.length != this.field_position.length) {
       w.code=22;
       return false;
  }
  if(this.field_name.length != 0 && this.field_velocity.length != 0 && this.field_name.length != this.field_velocity.length) {
       w.code=22;
       return false;
  }
  if(this.field_name.length != 0 && this.field_effort.length != 0 && this.field_name.length != this.field_effort.length) {
       w.code=22;
       return false;
  }
  if(this.field_position.length != 0 &&
      this.field_velocity.length != 0 &&
      this.field_position.length != this.field_velocity.length) {
           w.code=22; return false;
      }
  if(this.field_position.length != 0 &&
      this.field_effort.length != 0 &&
      this.field_position.length != this.field_effort.length) {
           w.code=22; return false;
      }
  if(this.field_velocity.length != 0 &&
      this.field_effort.length != 0 &&
      this.field_velocity.length != this.field_effort.length) {
           w.code=22; return false;
      }
  if(!this.field_header.writeFields(w)) return false;
  if(this.field_name.length>2) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_name.length)) return false;
  foreach(ref e; this.field_name) {
  if(!w.text(e,128)) return false;
  }
  if(this.field_position.length>2) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_position.length)) return false;
  foreach(ref e; this.field_position) {
  if(!w.float64(e)) return false;
  }
  if(this.field_velocity.length>2) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_velocity.length)) return false;
  foreach(ref e; this.field_velocity) {
  if(!w.float64(e)) return false;
  }
  if(this.field_effort.length>2) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_effort.length)) return false;
  foreach(ref e; this.field_effort) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of sensor_msgs/msg/JointState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Sensor_msgsMsgJointState value) {
  value=Ros2Sensor_msgsMsgJointState.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>2) {
       r.code=22;
       return false;
  }
  value.field_name=arena.allocate!(const(ubyte)[])(count1);
  if(value.field_name.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_name) {
  if(!r.text(e,128)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>2) {
       r.code=22;
       return false;
  }
  value.field_position=arena.allocate!(double)(count2);
  if(value.field_position.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_position) {
  if(!r.float64(e)) return false;
  }
  uint count3; if(!r.integer(count3)) return false;
  if(count3>2) {
       r.code=22;
       return false;
  }
  value.field_velocity=arena.allocate!(double)(count3);
  if(value.field_velocity.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_velocity) {
  if(!r.float64(e)) return false;
  }
  uint count4; if(!r.integer(count4)) return false;
  if(count4>2) {
       r.code=22;
       return false;
  }
  value.field_effort=arena.allocate!(double)(count4);
  if(value.field_effort.length!=count4) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_effort) {
  if(!r.float64(e)) return false;
  }
  if(value.field_name.length != 0 &&
      value.field_position.length != 0 &&
      value.field_name.length != value.field_position.length) {
           r.code=22; return false;
      }
  if(value.field_name.length != 0 &&
      value.field_velocity.length != 0 &&
      value.field_name.length != value.field_velocity.length) {
           r.code=22; return false;
      }
  if(value.field_name.length != 0 && value.field_effort.length != 0 && value.field_name.length != value.field_effort.length) {
       r.code=22;
       return false;
  }
  if(value.field_position.length != 0 &&
      value.field_velocity.length != 0 &&
      value.field_position.length != value.field_velocity.length) {
           r.code=22; return false;
      }
  if(value.field_position.length != 0 &&
      value.field_effort.length != 0 &&
      value.field_position.length != value.field_effort.length) {
           r.code=22; return false;
      }
  if(value.field_velocity.length != 0 &&
      value.field_effort.length != 0 &&
      value.field_velocity.length != value.field_effort.length) {
           r.code=22; return false;
      }
  return true;
 }
 /// @brief Encode one complete sensor_msgs/msg/JointState value.
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
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete sensor_msgs/msg/JointState value.
 /// @details Require the complete 28..468-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Sensor_msgsMsgJointState value) {
  if(bytes.length<28 || bytes.length>468) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 sensor_msgs/msg/LaserScan value.
/// @details All 10 declared fields are retained in source order. The canonical representation occupies 48..8368
/// bytes and is identified by UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Sensor_msgsMsgLaserScan {
 /// @brief Maximum canonical extent of sensor_msgs/msg/LaserScan in bytes.
 /// @details The inclusive bound is 8368 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=8368;
 /// @brief Canonical codec identity of sensor_msgs/msg/LaserScan.
 /// @details Exact identity UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4";
 /// @brief Original ROS type name for sensor_msgs/msg/LaserScan.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="sensor_msgs/msg/LaserScan";
 /// @brief Selected original native identity for sensor_msgs/msg/LaserScan.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief sensor_msgs/msg/LaserScan.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief sensor_msgs/msg/LaserScan.angle_min: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_angle_min=0;
 /// @brief sensor_msgs/msg/LaserScan.angle_max: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_angle_max=0;
 /// @brief sensor_msgs/msg/LaserScan.angle_increment: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_angle_increment=0;
 /// @brief sensor_msgs/msg/LaserScan.time_increment: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_time_increment=0;
 /// @brief sensor_msgs/msg/LaserScan.scan_time: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_scan_time=0;
 /// @brief sensor_msgs/msg/LaserScan.range_min: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_range_min=0;
 /// @brief sensor_msgs/msg/LaserScan.range_max: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_range_max=0;
 /// @brief sensor_msgs/msg/LaserScan.ranges: float32; 0..1024 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 float[] field_ranges=null;
 /// @brief sensor_msgs/msg/LaserScan.intensities: float32; 0..1024 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 float[] field_intensities=null;
 /// @brief Append every canonical field of sensor_msgs/msg/LaserScan.
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
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.float32(this.field_angle_min)) return false;
  if(!w.float32(this.field_angle_max)) return false;
  if(!w.float32(this.field_angle_increment)) return false;
  if(!w.float32(this.field_time_increment)) return false;
  if(!w.float32(this.field_scan_time)) return false;
  if(!w.float32(this.field_range_min)) return false;
  if(!w.float32(this.field_range_max)) return false;
  if(this.field_ranges.length>1024) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_ranges.length)) return false;
  foreach(ref e; this.field_ranges) {
  if(!w.float32(e)) return false;
  }
  if(this.field_intensities.length>1024) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_intensities.length)) return false;
  foreach(ref e; this.field_intensities) {
  if(!w.float32(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of sensor_msgs/msg/LaserScan.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Sensor_msgsMsgLaserScan value) {
  value=Ros2Sensor_msgsMsgLaserScan.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.float32(value.field_angle_min)) return false;
  if(!r.float32(value.field_angle_max)) return false;
  if(!r.float32(value.field_angle_increment)) return false;
  if(!r.float32(value.field_time_increment)) return false;
  if(!r.float32(value.field_scan_time)) return false;
  if(!r.float32(value.field_range_min)) return false;
  if(!r.float32(value.field_range_max)) return false;
  uint count8; if(!r.integer(count8)) return false;
  if(count8>1024) {
       r.code=22;
       return false;
  }
  value.field_ranges=arena.allocate!(float)(count8);
  if(value.field_ranges.length!=count8) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_ranges) {
  if(!r.float32(e)) return false;
  }
  uint count9; if(!r.integer(count9)) return false;
  if(count9>1024) {
       r.code=22;
       return false;
  }
  value.field_intensities=arena.allocate!(float)(count9);
  if(value.field_intensities.length!=count9) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_intensities) {
  if(!r.float32(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete sensor_msgs/msg/LaserScan value.
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
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete sensor_msgs/msg/LaserScan value.
 /// @details Require the complete 48..8368-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgLaserScan; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Sensor_msgsMsgLaserScan value) {
  if(bytes.length<48 || bytes.length>8368) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 sensor_msgs/msg/MagneticField value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 108..236
/// bytes and is identified by UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Sensor_msgsMsgMagneticField {
 /// @brief Maximum canonical extent of sensor_msgs/msg/MagneticField in bytes.
 /// @details The inclusive bound is 236 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=236;
 /// @brief Canonical codec identity of sensor_msgs/msg/MagneticField.
 /// @details Exact identity UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b";
 /// @brief Original ROS type name for sensor_msgs/msg/MagneticField.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="sensor_msgs/msg/MagneticField";
 /// @brief Selected original native identity for sensor_msgs/msg/MagneticField.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief sensor_msgs/msg/MagneticField.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/d/API.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief sensor_msgs/msg/MagneticField.magnetic_field: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgVector3 field_magnetic_field=Ros2Geometry_msgsMsgVector3.init;
 /// @brief sensor_msgs/msg/MagneticField.magnetic_field_covariance: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/d/API.md
 double[9] field_magnetic_field_covariance=0;
 /// @brief Append every canonical field of sensor_msgs/msg/MagneticField.
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
 /// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_magnetic_field.writeFields(w)) return false;
  foreach(ref e; this.field_magnetic_field_covariance) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of sensor_msgs/msg/MagneticField.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Sensor_msgsMsgMagneticField value) {
  value=Ros2Sensor_msgsMsgMagneticField.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_magnetic_field)) return false;
  foreach(ref e; value.field_magnetic_field_covariance) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete sensor_msgs/msg/MagneticField value.
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
 /// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete sensor_msgs/msg/MagneticField value.
 /// @details Require the complete 108..236-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgMagneticField; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Sensor_msgsMsgMagneticField value) {
  if(bytes.length<108 || bytes.length>236) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 std_srvs/srv/SetBool_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Std_srvsSrvSetBool_Request {
 /// @brief Maximum canonical extent of std_srvs/srv/SetBool_Request in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of std_srvs/srv/SetBool_Request.
 /// @details Exact identity UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910";
 /// @brief Original ROS type name for std_srvs/srv/SetBool_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="std_srvs/srv/SetBool_Request";
 /// @brief Selected original native identity for std_srvs/srv/SetBool_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief std_srvs/srv/SetBool_Request.data: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/d/API.md
 bool field_data=false;
 /// @brief Append every canonical field of std_srvs/srv/SetBool_Request.
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
 /// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_data)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_srvs/srv/SetBool_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Std_srvsSrvSetBool_Request value) {
  value=Ros2Std_srvsSrvSetBool_Request.init;
  if(!r.boolean(value.field_data)) return false;
  return true;
 }
 /// @brief Encode one complete std_srvs/srv/SetBool_Request value.
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
 /// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_srvs/srv/SetBool_Request value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_srvsSrvSetBool_Request; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Std_srvsSrvSetBool_Request value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 std_srvs/srv/SetBool_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
/// and is identified by UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Std_srvsSrvSetBool_Response {
 /// @brief Maximum canonical extent of std_srvs/srv/SetBool_Response in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of std_srvs/srv/SetBool_Response.
 /// @details Exact identity UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4";
 /// @brief Original ROS type name for std_srvs/srv/SetBool_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="std_srvs/srv/SetBool_Response";
 /// @brief Selected original native identity for std_srvs/srv/SetBool_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief std_srvs/srv/SetBool_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/d/API.md
 bool field_success=false;
 /// @brief std_srvs/srv/SetBool_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of std_srvs/srv/SetBool_Response.
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
 /// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_srvs/srv/SetBool_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Std_srvsSrvSetBool_Response value) {
  value=Ros2Std_srvsSrvSetBool_Response.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete std_srvs/srv/SetBool_Response value.
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
 /// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_srvs/srv/SetBool_Response value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_srvsSrvSetBool_Response; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Std_srvsSrvSetBool_Response value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 std_srvs/srv/Trigger_Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Std_srvsSrvTrigger_Request {
 /// @brief Maximum canonical extent of std_srvs/srv/Trigger_Request in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of std_srvs/srv/Trigger_Request.
 /// @details Exact identity UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77";
 /// @brief Original ROS type name for std_srvs/srv/Trigger_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="std_srvs/srv/Trigger_Request";
 /// @brief Selected original native identity for std_srvs/srv/Trigger_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of std_srvs/srv/Trigger_Request.
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
 /// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of std_srvs/srv/Trigger_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Std_srvsSrvTrigger_Request value) {
  value=Ros2Std_srvsSrvTrigger_Request.init;
  return true;
 }
 /// @brief Encode one complete std_srvs/srv/Trigger_Request value.
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
 /// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_srvs/srv/Trigger_Request value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_srvsSrvTrigger_Request; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Std_srvsSrvTrigger_Request value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 std_srvs/srv/Trigger_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
/// and is identified by UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Std_srvsSrvTrigger_Response {
 /// @brief Maximum canonical extent of std_srvs/srv/Trigger_Response in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of std_srvs/srv/Trigger_Response.
 /// @details Exact identity UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392";
 /// @brief Original ROS type name for std_srvs/srv/Trigger_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="std_srvs/srv/Trigger_Response";
 /// @brief Selected original native identity for std_srvs/srv/Trigger_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief std_srvs/srv/Trigger_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/d/API.md
 bool field_success=false;
 /// @brief std_srvs/srv/Trigger_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of std_srvs/srv/Trigger_Response.
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
 /// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_srvs/srv/Trigger_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Std_srvsSrvTrigger_Response value) {
  value=Ros2Std_srvsSrvTrigger_Response.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete std_srvs/srv/Trigger_Response value.
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
 /// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_srvs/srv/Trigger_Response value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_srvsSrvTrigger_Response; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Std_srvsSrvTrigger_Response value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 turtlebot3_msgs/action/Patrol_Goal value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
/// and is identified by UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Turtlebot3_msgsActionPatrol_Goal {
 /// @brief Maximum canonical extent of turtlebot3_msgs/action/Patrol_Goal in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of turtlebot3_msgs/action/Patrol_Goal.
 /// @details Exact identity UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f";
 /// @brief Original ROS type name for turtlebot3_msgs/action/Patrol_Goal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/action/Patrol_Goal";
 /// @brief Selected original native identity for turtlebot3_msgs/action/Patrol_Goal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/action/Patrol_Goal.goal: geometry_msgs/msg/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/d/API.md
 Ros2Geometry_msgsMsgVector3 field_goal=Ros2Geometry_msgsMsgVector3.init;
 /// @brief Append every canonical field of turtlebot3_msgs/action/Patrol_Goal.
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
 /// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_goal.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/action/Patrol_Goal.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Turtlebot3_msgsActionPatrol_Goal value) {
  value=Ros2Turtlebot3_msgsActionPatrol_Goal.init;
  if(!Ros2Geometry_msgsMsgVector3.readFields(r,arena,value.field_goal)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/action/Patrol_Goal value.
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
 /// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/action/Patrol_Goal value.
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Goal; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Turtlebot3_msgsActionPatrol_Goal value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 turtlebot3_msgs/action/Patrol_Result value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
/// and is identified by UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Turtlebot3_msgsActionPatrol_Result {
 /// @brief Maximum canonical extent of turtlebot3_msgs/action/Patrol_Result in bytes.
 /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=260;
 /// @brief Canonical codec identity of turtlebot3_msgs/action/Patrol_Result.
 /// @details Exact identity UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3";
 /// @brief Original ROS type name for turtlebot3_msgs/action/Patrol_Result.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/action/Patrol_Result";
 /// @brief Selected original native identity for turtlebot3_msgs/action/Patrol_Result.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/action/Patrol_Result.result: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_result=null;
 /// @brief Append every canonical field of turtlebot3_msgs/action/Patrol_Result.
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
 /// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_result,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/action/Patrol_Result.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Turtlebot3_msgsActionPatrol_Result value) {
  value=Ros2Turtlebot3_msgsActionPatrol_Result.init;
  if(!r.text(value.field_result,256)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/action/Patrol_Result value.
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
 /// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/action/Patrol_Result value.
 /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Result; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Turtlebot3_msgsActionPatrol_Result value) {
  if(bytes.length<4 || bytes.length>260) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 turtlebot3_msgs/action/Patrol_Feedback value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
/// and is identified by UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Turtlebot3_msgsActionPatrol_Feedback {
 /// @brief Maximum canonical extent of turtlebot3_msgs/action/Patrol_Feedback in bytes.
 /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=260;
 /// @brief Canonical codec identity of turtlebot3_msgs/action/Patrol_Feedback.
 /// @details Exact identity UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e";
 /// @brief Original ROS type name for turtlebot3_msgs/action/Patrol_Feedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/action/Patrol_Feedback";
 /// @brief Selected original native identity for turtlebot3_msgs/action/Patrol_Feedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/action/Patrol_Feedback.state: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_state=null;
 /// @brief Append every canonical field of turtlebot3_msgs/action/Patrol_Feedback.
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
 /// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_state,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/action/Patrol_Feedback.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Turtlebot3_msgsActionPatrol_Feedback value) {
  value=Ros2Turtlebot3_msgsActionPatrol_Feedback.init;
  if(!r.text(value.field_state,256)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/action/Patrol_Feedback value.
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
 /// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/action/Patrol_Feedback value.
 /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsActionPatrol_Feedback; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Turtlebot3_msgsActionPatrol_Feedback value) {
  if(bytes.length<4 || bytes.length>260) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 turtlebot3_msgs/msg/SensorState value.
/// @details All 11 declared fields are retained in source order. The canonical representation occupies 40..168
/// bytes and is identified by UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Turtlebot3_msgsMsgSensorState {
 /// @brief Maximum canonical extent of turtlebot3_msgs/msg/SensorState in bytes.
 /// @details The inclusive bound is 168 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=168;
 /// @brief Canonical codec identity of turtlebot3_msgs/msg/SensorState.
 /// @details Exact identity UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358";
 /// @brief Original ROS type name for turtlebot3_msgs/msg/SensorState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/msg/SensorState";
 /// @brief Selected original native identity for turtlebot3_msgs/msg/SensorState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/msg/SensorState.BUMPER_FORWARD: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_BUMPER_FORWARD=1;
 /// @brief turtlebot3_msgs/msg/SensorState.BUMPER_BACKWARD: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_BUMPER_BACKWARD=2;
 /// @brief turtlebot3_msgs/msg/SensorState.CLIFF: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_CLIFF=1;
 /// @brief turtlebot3_msgs/msg/SensorState.SONAR: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_SONAR=1;
 /// @brief turtlebot3_msgs/msg/SensorState.ILLUMINATION: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_ILLUMINATION=1;
 /// @brief turtlebot3_msgs/msg/SensorState.BUTTON0: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_BUTTON0=1;
 /// @brief turtlebot3_msgs/msg/SensorState.BUTTON1: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_BUTTON1=2;
 /// @brief turtlebot3_msgs/msg/SensorState.ERROR_LEFT_MOTOR: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_ERROR_LEFT_MOTOR=1;
 /// @brief turtlebot3_msgs/msg/SensorState.ERROR_RIGHT_MOTOR: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_ERROR_RIGHT_MOTOR=2;
 /// @brief turtlebot3_msgs/msg/SensorState.TORQUE_ON: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_TORQUE_ON=1;
 /// @brief turtlebot3_msgs/msg/SensorState.TORQUE_OFF: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_TORQUE_OFF=2;
 /// @brief turtlebot3_msgs/msg/SensorState.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief turtlebot3_msgs/msg/SensorState.bumper: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 ubyte field_bumper=0;
 /// @brief turtlebot3_msgs/msg/SensorState.cliff: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 float field_cliff=0;
 /// @brief turtlebot3_msgs/msg/SensorState.sonar: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 float field_sonar=0;
 /// @brief turtlebot3_msgs/msg/SensorState.illumination: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 float field_illumination=0;
 /// @brief turtlebot3_msgs/msg/SensorState.led: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 ubyte field_led=0;
 /// @brief turtlebot3_msgs/msg/SensorState.button: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 ubyte field_button=0;
 /// @brief turtlebot3_msgs/msg/SensorState.torque: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 bool field_torque=false;
 /// @brief turtlebot3_msgs/msg/SensorState.left_encoder: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 int field_left_encoder=0;
 /// @brief turtlebot3_msgs/msg/SensorState.right_encoder: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 int field_right_encoder=0;
 /// @brief turtlebot3_msgs/msg/SensorState.battery: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 float field_battery=0;
 /// @brief Append every canonical field of turtlebot3_msgs/msg/SensorState.
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
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.integer(this.field_bumper)) return false;
  if(!w.float32(this.field_cliff)) return false;
  if(!w.float32(this.field_sonar)) return false;
  if(!w.float32(this.field_illumination)) return false;
  if(!w.integer(this.field_led)) return false;
  if(!w.integer(this.field_button)) return false;
  if(!w.boolean(this.field_torque)) return false;
  if(!w.integer(this.field_left_encoder)) return false;
  if(!w.integer(this.field_right_encoder)) return false;
  if(!w.float32(this.field_battery)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/msg/SensorState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Turtlebot3_msgsMsgSensorState value) {
  value=Ros2Turtlebot3_msgsMsgSensorState.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.integer(value.field_bumper)) return false;
  if(!r.float32(value.field_cliff)) return false;
  if(!r.float32(value.field_sonar)) return false;
  if(!r.float32(value.field_illumination)) return false;
  if(!r.integer(value.field_led)) return false;
  if(!r.integer(value.field_button)) return false;
  if(!r.boolean(value.field_torque)) return false;
  if(!r.integer(value.field_left_encoder)) return false;
  if(!r.integer(value.field_right_encoder)) return false;
  if(!r.float32(value.field_battery)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/msg/SensorState value.
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
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/msg/SensorState value.
 /// @details Require the complete 40..168-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsMsgSensorState; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Turtlebot3_msgsMsgSensorState value) {
  if(bytes.length<40 || bytes.length>168) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 turtlebot3_msgs/msg/Sound value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Turtlebot3_msgsMsgSound {
 /// @brief Maximum canonical extent of turtlebot3_msgs/msg/Sound in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of turtlebot3_msgs/msg/Sound.
 /// @details Exact identity UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b";
 /// @brief Original ROS type name for turtlebot3_msgs/msg/Sound.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/msg/Sound";
 /// @brief Selected original native identity for turtlebot3_msgs/msg/Sound.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/msg/Sound.OFF: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_OFF=0;
 /// @brief turtlebot3_msgs/msg/Sound.ON: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_ON=1;
 /// @brief turtlebot3_msgs/msg/Sound.LOW_BATTERY: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_LOW_BATTERY=2;
 /// @brief turtlebot3_msgs/msg/Sound.ERROR: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_ERROR=3;
 /// @brief turtlebot3_msgs/msg/Sound.BUTTON1: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_BUTTON1=4;
 /// @brief turtlebot3_msgs/msg/Sound.BUTTON2: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_BUTTON2=5;
 /// @brief turtlebot3_msgs/msg/Sound.value: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 ubyte field_value=0;
 /// @brief Append every canonical field of turtlebot3_msgs/msg/Sound.
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
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/msg/Sound.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Turtlebot3_msgsMsgSound value) {
  value=Ros2Turtlebot3_msgsMsgSound.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/msg/Sound value.
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
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/msg/Sound value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsMsgSound; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Turtlebot3_msgsMsgSound value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 turtlebot3_msgs/msg/VersionInfo value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..780 bytes
/// and is identified by UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Turtlebot3_msgsMsgVersionInfo {
 /// @brief Maximum canonical extent of turtlebot3_msgs/msg/VersionInfo in bytes.
 /// @details The inclusive bound is 780 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=780;
 /// @brief Canonical codec identity of turtlebot3_msgs/msg/VersionInfo.
 /// @details Exact identity UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a";
 /// @brief Original ROS type name for turtlebot3_msgs/msg/VersionInfo.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/msg/VersionInfo";
 /// @brief Selected original native identity for turtlebot3_msgs/msg/VersionInfo.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/msg/VersionInfo.hardware: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_hardware=null;
 /// @brief turtlebot3_msgs/msg/VersionInfo.firmware: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_firmware=null;
 /// @brief turtlebot3_msgs/msg/VersionInfo.software: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_software=null;
 /// @brief Append every canonical field of turtlebot3_msgs/msg/VersionInfo.
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
 /// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_hardware,256)) return false;
  if(!w.text(this.field_firmware,256)) return false;
  if(!w.text(this.field_software,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/msg/VersionInfo.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Turtlebot3_msgsMsgVersionInfo value) {
  value=Ros2Turtlebot3_msgsMsgVersionInfo.init;
  if(!r.text(value.field_hardware,256)) return false;
  if(!r.text(value.field_firmware,256)) return false;
  if(!r.text(value.field_software,256)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/msg/VersionInfo value.
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
 /// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/msg/VersionInfo value.
 /// @details Require the complete 12..780-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsMsgVersionInfo; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Turtlebot3_msgsMsgVersionInfo value) {
  if(bytes.length<12 || bytes.length>780) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 turtlebot3_msgs/srv/Dqn_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes
/// and is identified by UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Turtlebot3_msgsSrvDqn_Request {
 /// @brief Maximum canonical extent of turtlebot3_msgs/srv/Dqn_Request in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=2;
 /// @brief Canonical codec identity of turtlebot3_msgs/srv/Dqn_Request.
 /// @details Exact identity UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e";
 /// @brief Original ROS type name for turtlebot3_msgs/srv/Dqn_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/srv/Dqn_Request";
 /// @brief Selected original native identity for turtlebot3_msgs/srv/Dqn_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/srv/Dqn_Request.action: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/d/API.md
 ubyte field_action=0;
 /// @brief turtlebot3_msgs/srv/Dqn_Request.init: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/d/API.md
 bool field_init=false;
 /// @brief Append every canonical field of turtlebot3_msgs/srv/Dqn_Request.
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
 /// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_action)) return false;
  if(!w.boolean(this.field_init)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/srv/Dqn_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Turtlebot3_msgsSrvDqn_Request value) {
  value=Ros2Turtlebot3_msgsSrvDqn_Request.init;
  if(!r.integer(value.field_action)) return false;
  if(!r.boolean(value.field_init)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/srv/Dqn_Request value.
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
 /// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/srv/Dqn_Request value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Request; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Turtlebot3_msgsSrvDqn_Request value) {
  if(bytes.length<2 || bytes.length>2) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 turtlebot3_msgs/srv/Dqn_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes
/// and is identified by UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Turtlebot3_msgsSrvDqn_Response {
 /// @brief Maximum canonical extent of turtlebot3_msgs/srv/Dqn_Response in bytes.
 /// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=521;
 /// @brief Canonical codec identity of turtlebot3_msgs/srv/Dqn_Response.
 /// @details Exact identity UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e";
 /// @brief Original ROS type name for turtlebot3_msgs/srv/Dqn_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/srv/Dqn_Response";
 /// @brief Selected original native identity for turtlebot3_msgs/srv/Dqn_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/srv/Dqn_Response.state: float32; 0..128 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/d/API.md
 float[] field_state=null;
 /// @brief turtlebot3_msgs/srv/Dqn_Response.reward: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/d/API.md
 float field_reward=0;
 /// @brief turtlebot3_msgs/srv/Dqn_Response.done: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/d/API.md
 bool field_done=false;
 /// @brief Append every canonical field of turtlebot3_msgs/srv/Dqn_Response.
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
 /// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_state.length>128) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_state.length)) return false;
  foreach(ref e; this.field_state) {
  if(!w.float32(e)) return false;
  }
  if(!w.float32(this.field_reward)) return false;
  if(!w.boolean(this.field_done)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/srv/Dqn_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Turtlebot3_msgsSrvDqn_Response value) {
  value=Ros2Turtlebot3_msgsSrvDqn_Response.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>128) {
       r.code=22;
       return false;
  }
  value.field_state=arena.allocate!(float)(count0);
  if(value.field_state.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_state) {
  if(!r.float32(e)) return false;
  }
  if(!r.float32(value.field_reward)) return false;
  if(!r.boolean(value.field_done)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/srv/Dqn_Response value.
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
 /// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/srv/Dqn_Response value.
 /// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsSrvDqn_Response; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Turtlebot3_msgsSrvDqn_Response value) {
  if(bytes.length<9 || bytes.length>521) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 turtlebot3_msgs/srv/Goal_Request value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Turtlebot3_msgsSrvGoal_Request {
 /// @brief Maximum canonical extent of turtlebot3_msgs/srv/Goal_Request in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of turtlebot3_msgs/srv/Goal_Request.
 /// @details Exact identity UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded";
 /// @brief Original ROS type name for turtlebot3_msgs/srv/Goal_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/srv/Goal_Request";
 /// @brief Selected original native identity for turtlebot3_msgs/srv/Goal_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of turtlebot3_msgs/srv/Goal_Request.
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
 /// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/srv/Goal_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Turtlebot3_msgsSrvGoal_Request value) {
  value=Ros2Turtlebot3_msgsSrvGoal_Request.init;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/srv/Goal_Request value.
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
 /// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/srv/Goal_Request value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Request; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Turtlebot3_msgsSrvGoal_Request value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 turtlebot3_msgs/srv/Goal_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..9 bytes
/// and is identified by UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Turtlebot3_msgsSrvGoal_Response {
 /// @brief Maximum canonical extent of turtlebot3_msgs/srv/Goal_Response in bytes.
 /// @details The inclusive bound is 9 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=9;
 /// @brief Canonical codec identity of turtlebot3_msgs/srv/Goal_Response.
 /// @details Exact identity UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990";
 /// @brief Original ROS type name for turtlebot3_msgs/srv/Goal_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/srv/Goal_Response";
 /// @brief Selected original native identity for turtlebot3_msgs/srv/Goal_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/srv/Goal_Response.pose_x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/d/API.md
 float field_pose_x=0;
 /// @brief turtlebot3_msgs/srv/Goal_Response.pose_y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/d/API.md
 float field_pose_y=0;
 /// @brief turtlebot3_msgs/srv/Goal_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/d/API.md
 bool field_success=false;
 /// @brief Append every canonical field of turtlebot3_msgs/srv/Goal_Response.
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
 /// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_pose_x)) return false;
  if(!w.float32(this.field_pose_y)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/srv/Goal_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Turtlebot3_msgsSrvGoal_Response value) {
  value=Ros2Turtlebot3_msgsSrvGoal_Response.init;
  if(!r.float32(value.field_pose_x)) return false;
  if(!r.float32(value.field_pose_y)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/srv/Goal_Response value.
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
 /// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/srv/Goal_Response value.
 /// @details Require the complete 9..9-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsSrvGoal_Response; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Turtlebot3_msgsSrvGoal_Response value) {
  if(bytes.length<9 || bytes.length>9) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 turtlebot3_msgs/srv/Sound_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Turtlebot3_msgsSrvSound_Request {
 /// @brief Maximum canonical extent of turtlebot3_msgs/srv/Sound_Request in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of turtlebot3_msgs/srv/Sound_Request.
 /// @details Exact identity UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a";
 /// @brief Original ROS type name for turtlebot3_msgs/srv/Sound_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/srv/Sound_Request";
 /// @brief Selected original native identity for turtlebot3_msgs/srv/Sound_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/srv/Sound_Request.value: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/d/API.md
 ubyte field_value=0;
 /// @brief Append every canonical field of turtlebot3_msgs/srv/Sound_Request.
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
 /// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/srv/Sound_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Turtlebot3_msgsSrvSound_Request value) {
  value=Ros2Turtlebot3_msgsSrvSound_Request.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/srv/Sound_Request value.
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
 /// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/srv/Sound_Request value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsSrvSound_Request; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Turtlebot3_msgsSrvSound_Request value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 turtlebot3_msgs/srv/Sound_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
/// and is identified by UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros2Turtlebot3_msgsSrvSound_Response {
 /// @brief Maximum canonical extent of turtlebot3_msgs/srv/Sound_Response in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of turtlebot3_msgs/srv/Sound_Response.
 /// @details Exact identity UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e";
 /// @brief Original ROS type name for turtlebot3_msgs/srv/Sound_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/srv/Sound_Response";
 /// @brief Selected original native identity for turtlebot3_msgs/srv/Sound_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/srv/Sound_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/d/API.md
 bool field_success=false;
 /// @brief turtlebot3_msgs/srv/Sound_Response.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of turtlebot3_msgs/srv/Sound_Response.
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
 /// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/srv/Sound_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Turtlebot3_msgsSrvSound_Response value) {
  value=Ros2Turtlebot3_msgsSrvSound_Response.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/srv/Sound_Response value.
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
 /// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/srv/Sound_Response value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong
 /// to the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after
 /// any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Turtlebot3_msgsSrvSound_Response; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Turtlebot3_msgsSrvSound_Response value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
