// Generated complete bounded values; BetterC, caller buffers, no authority.
module roswasm.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 2 builtin_interfaces/msg/Duration value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Builtin_interfacesMsgDuration {
 /// @brief Maximum canonical extent of builtin_interfaces/msg/Duration in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of builtin_interfaces/msg/Duration.
 /// @details Exact identity UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
 /// @brief Original ROS type name for builtin_interfaces/msg/Duration.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/d/API.md
 enum nativeType="builtin_interfaces/msg/Duration";
 /// @brief Selected original native identity for builtin_interfaces/msg/Duration.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief builtin_interfaces/msg/Duration.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/d/API.md
 int field_sec=0;
 /// @brief builtin_interfaces/msg/Duration.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/d/API.md
 uint field_nanosec=0;
 /// @brief Append every canonical field of builtin_interfaces/msg/Duration.
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
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_nanosec >= 1000000000) {
       w.code=22;
       return false;
  }
  if(!w.integer(this.field_sec)) return false;
  if(!w.integer(this.field_nanosec)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of builtin_interfaces/msg/Duration.
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
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Builtin_interfacesMsgDuration value) {
  value=Ros2Builtin_interfacesMsgDuration.init;
  if(!r.integer(value.field_sec)) return false;
  if(!r.integer(value.field_nanosec)) return false;
  if(value.field_nanosec >= 1000000000) {
       r.code=22;
       return false;
  }
  return true;
 }
 /// @brief Encode one complete builtin_interfaces/msg/Duration value.
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
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete builtin_interfaces/msg/Duration value.
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
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Builtin_interfacesMsgDuration value) {
  if(bytes.length<8 || bytes.length>8) return 22;
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
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Builtin_interfacesMsgTime {
 /// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of builtin_interfaces/msg/Time.
 /// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
 /// @brief Original ROS type name for builtin_interfaces/msg/Time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/d/API.md
 enum nativeType="builtin_interfaces/msg/Time";
 /// @brief Selected original native identity for builtin_interfaces/msg/Time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief builtin_interfaces/msg/Time.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/d/API.md
 int field_sec=0;
 /// @brief builtin_interfaces/msg/Time.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Builtin_interfacesMsgTime value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 std_msgs/msg/ColorRGBA value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16 bytes
/// and is identified by UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Std_msgsMsgColorRGBA {
 /// @brief Maximum canonical extent of std_msgs/msg/ColorRGBA in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of std_msgs/msg/ColorRGBA.
 /// @details Exact identity UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2";
 /// @brief Original ROS type name for std_msgs/msg/ColorRGBA.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/d/API.md
 enum nativeType="std_msgs/msg/ColorRGBA";
 /// @brief Selected original native identity for std_msgs/msg/ColorRGBA.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief std_msgs/msg/ColorRGBA.r: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/d/API.md
 float field_r=0;
 /// @brief std_msgs/msg/ColorRGBA.g: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/d/API.md
 float field_g=0;
 /// @brief std_msgs/msg/ColorRGBA.b: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/d/API.md
 float field_b=0;
 /// @brief std_msgs/msg/ColorRGBA.a: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/d/API.md
 float field_a=0;
 /// @brief Append every canonical field of std_msgs/msg/ColorRGBA.
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
 /// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_r)) return false;
  if(!w.float32(this.field_g)) return false;
  if(!w.float32(this.field_b)) return false;
  if(!w.float32(this.field_a)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_msgs/msg/ColorRGBA.
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
 /// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Std_msgsMsgColorRGBA value) {
  value=Ros2Std_msgsMsgColorRGBA.init;
  if(!r.float32(value.field_r)) return false;
  if(!r.float32(value.field_g)) return false;
  if(!r.float32(value.field_b)) return false;
  if(!r.float32(value.field_a)) return false;
  return true;
 }
 /// @brief Encode one complete std_msgs/msg/ColorRGBA value.
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
 /// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_msgs/msg/ColorRGBA value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Std_msgsMsgColorRGBA; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Std_msgsMsgColorRGBA value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/LedFixedColorParams value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 16..16 bytes
/// and is identified by UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgLedFixedColorParams {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/LedFixedColorParams in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of pal_device_msgs/msg/LedFixedColorParams.
 /// @details Exact identity UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac";
 /// @brief Original ROS type name for pal_device_msgs/msg/LedFixedColorParams.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/LedFixedColorParams";
 /// @brief Selected original native identity for pal_device_msgs/msg/LedFixedColorParams.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/LedFixedColorParams.color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief Append every canonical field of pal_device_msgs/msg/LedFixedColorParams.
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
 /// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_color.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedFixedColorParams.
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
 /// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgLedFixedColorParams value) {
  value=Ros2Pal_device_msgsMsgLedFixedColorParams.init;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_color)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/LedFixedColorParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/LedFixedColorParams value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsMsgLedFixedColorParams; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgLedFixedColorParams value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/LedRainbowParams value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgLedRainbowParams {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/LedRainbowParams in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of pal_device_msgs/msg/LedRainbowParams.
 /// @details Exact identity UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2";
 /// @brief Original ROS type name for pal_device_msgs/msg/LedRainbowParams.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/LedRainbowParams";
 /// @brief Selected original native identity for pal_device_msgs/msg/LedRainbowParams.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/LedRainbowParams.transition_duration: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_transition_duration=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief Append every canonical field of pal_device_msgs/msg/LedRainbowParams.
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
 /// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_transition_duration.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedRainbowParams.
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
 /// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgLedRainbowParams value) {
  value=Ros2Pal_device_msgsMsgLedRainbowParams.init;
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_transition_duration)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/LedRainbowParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/LedRainbowParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedRainbowParams; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgLedRainbowParams value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/LedFadeParams value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 41..41 bytes
/// and is identified by UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgLedFadeParams {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/LedFadeParams in bytes.
 /// @details The inclusive bound is 41 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=41;
 /// @brief Canonical codec identity of pal_device_msgs/msg/LedFadeParams.
 /// @details Exact identity UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5";
 /// @brief Original ROS type name for pal_device_msgs/msg/LedFadeParams.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/LedFadeParams";
 /// @brief Selected original native identity for pal_device_msgs/msg/LedFadeParams.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/LedFadeParams.first_color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_first_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/msg/LedFadeParams.second_color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_second_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/msg/LedFadeParams.transition_duration: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_transition_duration=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief pal_device_msgs/msg/LedFadeParams.reverse_fade: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/d/API.md
 bool field_reverse_fade=false;
 /// @brief Append every canonical field of pal_device_msgs/msg/LedFadeParams.
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
 /// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_first_color.writeFields(w)) return false;
  if(!this.field_second_color.writeFields(w)) return false;
  if(!this.field_transition_duration.writeFields(w)) return false;
  if(!w.boolean(this.field_reverse_fade)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedFadeParams.
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
 /// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgLedFadeParams value) {
  value=Ros2Pal_device_msgsMsgLedFadeParams.init;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_first_color)) return false;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_second_color)) return false;
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_transition_duration)) return false;
  if(!r.boolean(value.field_reverse_fade)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/LedFadeParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/LedFadeParams value.
 /// @details Require the complete 41..41-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsMsgLedFadeParams; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgLedFadeParams value) {
  if(bytes.length<41 || bytes.length>41) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/LedBlinkParams value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 48..48 bytes
/// and is identified by UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgLedBlinkParams {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/LedBlinkParams in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=48;
 /// @brief Canonical codec identity of pal_device_msgs/msg/LedBlinkParams.
 /// @details Exact identity UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd";
 /// @brief Original ROS type name for pal_device_msgs/msg/LedBlinkParams.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/LedBlinkParams";
 /// @brief Selected original native identity for pal_device_msgs/msg/LedBlinkParams.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/LedBlinkParams.first_color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_first_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/msg/LedBlinkParams.second_color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_second_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/msg/LedBlinkParams.first_color_duration: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_first_color_duration=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief pal_device_msgs/msg/LedBlinkParams.second_color_duration: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_second_color_duration=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief Append every canonical field of pal_device_msgs/msg/LedBlinkParams.
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
 /// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_first_color.writeFields(w)) return false;
  if(!this.field_second_color.writeFields(w)) return false;
  if(!this.field_first_color_duration.writeFields(w)) return false;
  if(!this.field_second_color_duration.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedBlinkParams.
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
 /// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgLedBlinkParams value) {
  value=Ros2Pal_device_msgsMsgLedBlinkParams.init;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_first_color)) return false;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_second_color)) return false;
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_first_color_duration)) return false;
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_second_color_duration)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/LedBlinkParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/LedBlinkParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedBlinkParams; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgLedBlinkParams value) {
  if(bytes.length<48 || bytes.length>48) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/LedProgressParams value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 40..40 bytes
/// and is identified by UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgLedProgressParams {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/LedProgressParams in bytes.
 /// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=40;
 /// @brief Canonical codec identity of pal_device_msgs/msg/LedProgressParams.
 /// @details Exact identity UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0";
 /// @brief Original ROS type name for pal_device_msgs/msg/LedProgressParams.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/LedProgressParams";
 /// @brief Selected original native identity for pal_device_msgs/msg/LedProgressParams.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/LedProgressParams.first_color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_first_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/msg/LedProgressParams.second_color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_second_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/msg/LedProgressParams.percentage: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/d/API.md
 float field_percentage=0;
 /// @brief pal_device_msgs/msg/LedProgressParams.led_offset: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/d/API.md
 float field_led_offset=0;
 /// @brief Append every canonical field of pal_device_msgs/msg/LedProgressParams.
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
 /// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_first_color.writeFields(w)) return false;
  if(!this.field_second_color.writeFields(w)) return false;
  if(!w.float32(this.field_percentage)) return false;
  if(!w.float32(this.field_led_offset)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedProgressParams.
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
 /// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgLedProgressParams value) {
  value=Ros2Pal_device_msgsMsgLedProgressParams.init;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_first_color)) return false;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_second_color)) return false;
  if(!r.float32(value.field_percentage)) return false;
  if(!r.float32(value.field_led_offset)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/LedProgressParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/LedProgressParams value.
 /// @details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsMsgLedProgressParams; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgLedProgressParams value) {
  if(bytes.length<40 || bytes.length>40) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/LedFlowParams value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 40..40 bytes
/// and is identified by UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgLedFlowParams {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/LedFlowParams in bytes.
 /// @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=40;
 /// @brief Canonical codec identity of pal_device_msgs/msg/LedFlowParams.
 /// @details Exact identity UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561";
 /// @brief Original ROS type name for pal_device_msgs/msg/LedFlowParams.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/LedFlowParams";
 /// @brief Selected original native identity for pal_device_msgs/msg/LedFlowParams.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/LedFlowParams.first_color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_first_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/msg/LedFlowParams.second_color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_second_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/msg/LedFlowParams.percentage: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/d/API.md
 float field_percentage=0;
 /// @brief pal_device_msgs/msg/LedFlowParams.velocity: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/d/API.md
 float field_velocity=0;
 /// @brief Append every canonical field of pal_device_msgs/msg/LedFlowParams.
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
 /// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_first_color.writeFields(w)) return false;
  if(!this.field_second_color.writeFields(w)) return false;
  if(!w.float32(this.field_percentage)) return false;
  if(!w.float32(this.field_velocity)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedFlowParams.
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
 /// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgLedFlowParams value) {
  value=Ros2Pal_device_msgsMsgLedFlowParams.init;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_first_color)) return false;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_second_color)) return false;
  if(!r.float32(value.field_percentage)) return false;
  if(!r.float32(value.field_velocity)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/LedFlowParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/LedFlowParams value.
 /// @details Require the complete 40..40-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsMsgLedFlowParams; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgLedFlowParams value) {
  if(bytes.length<40 || bytes.length>40) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/LedPreProgrammedParams value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgLedPreProgrammedParams {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/LedPreProgrammedParams in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of pal_device_msgs/msg/LedPreProgrammedParams.
 /// @details Exact identity UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be";
 /// @brief Original ROS type name for pal_device_msgs/msg/LedPreProgrammedParams.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/LedPreProgrammedParams";
 /// @brief Selected original native identity for pal_device_msgs/msg/LedPreProgrammedParams.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/LedPreProgrammedParams.preprogrammed_id: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/d/API.md
 ubyte field_preprogrammed_id=0;
 /// @brief Append every canonical field of pal_device_msgs/msg/LedPreProgrammedParams.
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
 /// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_preprogrammed_id)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedPreProgrammedParams.
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
 /// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgLedPreProgrammedParams value) {
  value=Ros2Pal_device_msgsMsgLedPreProgrammedParams.init;
  if(!r.integer(value.field_preprogrammed_id)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/LedPreProgrammedParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/LedPreProgrammedParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedPreProgrammedParams; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgLedPreProgrammedParams value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/LedEffectViaTopicParams value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..132 bytes
/// and is identified by UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgLedEffectViaTopicParams {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/LedEffectViaTopicParams in bytes.
 /// @details The inclusive bound is 132 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=132;
 /// @brief Canonical codec identity of pal_device_msgs/msg/LedEffectViaTopicParams.
 /// @details Exact identity UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485";
 /// @brief Original ROS type name for pal_device_msgs/msg/LedEffectViaTopicParams.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/LedEffectViaTopicParams";
 /// @brief Selected original native identity for pal_device_msgs/msg/LedEffectViaTopicParams.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/LedEffectViaTopicParams.topic_name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/d/API.md
 const(ubyte)[] field_topic_name=null;
 /// @brief Append every canonical field of pal_device_msgs/msg/LedEffectViaTopicParams.
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
 /// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_topic_name,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedEffectViaTopicParams.
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
 /// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgLedEffectViaTopicParams value) {
  value=Ros2Pal_device_msgsMsgLedEffectViaTopicParams.init;
  if(!r.text(value.field_topic_name,128)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/LedEffectViaTopicParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/LedEffectViaTopicParams value.
 /// @details Require the complete 4..132-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsMsgLedEffectViaTopicParams; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgLedEffectViaTopicParams value) {
  if(bytes.length<4 || bytes.length>132) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/LedDataArrayParams value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..68 bytes
/// and is identified by UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgLedDataArrayParams {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/LedDataArrayParams in bytes.
 /// @details The inclusive bound is 68 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=68;
 /// @brief Canonical codec identity of pal_device_msgs/msg/LedDataArrayParams.
 /// @details Exact identity UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349";
 /// @brief Original ROS type name for pal_device_msgs/msg/LedDataArrayParams.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/LedDataArrayParams";
 /// @brief Selected original native identity for pal_device_msgs/msg/LedDataArrayParams.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/LedDataArrayParams.data: std_msgs/msg/ColorRGBA; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA[] field_data=null;
 /// @brief Append every canonical field of pal_device_msgs/msg/LedDataArrayParams.
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
 /// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_data.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_data.length)) return false;
  foreach(ref e; this.field_data) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedDataArrayParams.
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
 /// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgLedDataArrayParams value) {
  value=Ros2Pal_device_msgsMsgLedDataArrayParams.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>4) {
       r.code=22;
       return false;
  }
  value.field_data=arena.allocate!(Ros2Std_msgsMsgColorRGBA)(count0);
  if(value.field_data.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_data) {
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/LedDataArrayParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/LedDataArrayParams value.
 /// @details Require the complete 4..68-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsMsgLedDataArrayParams; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgLedDataArrayParams value) {
  if(bytes.length<4 || bytes.length>68) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/LedEffectParams value.
/// @details All 10 declared fields are retained in source order. The canonical representation occupies 203..395
/// bytes and is identified by UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgLedEffectParams {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/LedEffectParams in bytes.
 /// @details The inclusive bound is 395 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=395;
 /// @brief Canonical codec identity of pal_device_msgs/msg/LedEffectParams.
 /// @details Exact identity UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848";
 /// @brief Original ROS type name for pal_device_msgs/msg/LedEffectParams.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/LedEffectParams";
 /// @brief Selected original native identity for pal_device_msgs/msg/LedEffectParams.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/LedEffectParams.FIXED_COLOR: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_FIXED_COLOR=0;
 /// @brief pal_device_msgs/msg/LedEffectParams.RAINBOW: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_RAINBOW=1;
 /// @brief pal_device_msgs/msg/LedEffectParams.FADE: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_FADE=2;
 /// @brief pal_device_msgs/msg/LedEffectParams.BLINK: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_BLINK=3;
 /// @brief pal_device_msgs/msg/LedEffectParams.PROGRESS: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_PROGRESS=4;
 /// @brief pal_device_msgs/msg/LedEffectParams.FLOW: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_FLOW=5;
 /// @brief pal_device_msgs/msg/LedEffectParams.PREPROGRAMMED_EFFECT: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_PREPROGRAMMED_EFFECT=6;
 /// @brief pal_device_msgs/msg/LedEffectParams.EFFECT_VIA_TOPIC: original uint8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_EFFECT_VIA_TOPIC=7;
 /// @brief pal_device_msgs/msg/LedEffectParams.DATA_ARRAY: original uint8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_DATA_ARRAY=8;
 /// @brief pal_device_msgs/msg/LedEffectParams.effect_type: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 ubyte field_effect_type=0;
 /// @brief pal_device_msgs/msg/LedEffectParams.fixed_color: pal_device_msgs/msg/LedFixedColorParams.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedFixedColorParams field_fixed_color=Ros2Pal_device_msgsMsgLedFixedColorParams.init;
 /// @brief pal_device_msgs/msg/LedEffectParams.rainbow: pal_device_msgs/msg/LedRainbowParams.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedRainbowParams field_rainbow=Ros2Pal_device_msgsMsgLedRainbowParams.init;
 /// @brief pal_device_msgs/msg/LedEffectParams.fade: pal_device_msgs/msg/LedFadeParams.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedFadeParams field_fade=Ros2Pal_device_msgsMsgLedFadeParams.init;
 /// @brief pal_device_msgs/msg/LedEffectParams.blink: pal_device_msgs/msg/LedBlinkParams.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedBlinkParams field_blink=Ros2Pal_device_msgsMsgLedBlinkParams.init;
 /// @brief pal_device_msgs/msg/LedEffectParams.progress: pal_device_msgs/msg/LedProgressParams.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedProgressParams field_progress=Ros2Pal_device_msgsMsgLedProgressParams.init;
 /// @brief pal_device_msgs/msg/LedEffectParams.flow: pal_device_msgs/msg/LedFlowParams.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedFlowParams field_flow=Ros2Pal_device_msgsMsgLedFlowParams.init;
 /// @brief pal_device_msgs/msg/LedEffectParams.preprogrammed: pal_device_msgs/msg/LedPreProgrammedParams.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedPreProgrammedParams field_preprogrammed=Ros2Pal_device_msgsMsgLedPreProgrammedParams.init;
 /// @brief pal_device_msgs/msg/LedEffectParams.effect_via_topic: pal_device_msgs/msg/LedEffectViaTopicParams.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedEffectViaTopicParams field_effect_via_topic=Ros2Pal_device_msgsMsgLedEffectViaTopicParams.init;
 /// @brief pal_device_msgs/msg/LedEffectParams.data_array: pal_device_msgs/msg/LedDataArrayParams.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedDataArrayParams field_data_array=Ros2Pal_device_msgsMsgLedDataArrayParams.init;
 /// @brief Append every canonical field of pal_device_msgs/msg/LedEffectParams.
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
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_effect_type)) return false;
  if(!this.field_fixed_color.writeFields(w)) return false;
  if(!this.field_rainbow.writeFields(w)) return false;
  if(!this.field_fade.writeFields(w)) return false;
  if(!this.field_blink.writeFields(w)) return false;
  if(!this.field_progress.writeFields(w)) return false;
  if(!this.field_flow.writeFields(w)) return false;
  if(!this.field_preprogrammed.writeFields(w)) return false;
  if(!this.field_effect_via_topic.writeFields(w)) return false;
  if(!this.field_data_array.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedEffectParams.
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
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgLedEffectParams value) {
  value=Ros2Pal_device_msgsMsgLedEffectParams.init;
  if(!r.integer(value.field_effect_type)) return false;
  if(!Ros2Pal_device_msgsMsgLedFixedColorParams.readFields(r,arena,value.field_fixed_color)) return false;
  if(!Ros2Pal_device_msgsMsgLedRainbowParams.readFields(r,arena,value.field_rainbow)) return false;
  if(!Ros2Pal_device_msgsMsgLedFadeParams.readFields(r,arena,value.field_fade)) return false;
  if(!Ros2Pal_device_msgsMsgLedBlinkParams.readFields(r,arena,value.field_blink)) return false;
  if(!Ros2Pal_device_msgsMsgLedProgressParams.readFields(r,arena,value.field_progress)) return false;
  if(!Ros2Pal_device_msgsMsgLedFlowParams.readFields(r,arena,value.field_flow)) return false;
  if(!Ros2Pal_device_msgsMsgLedPreProgrammedParams.readFields(r,arena,value.field_preprogrammed)) return false;
  if(!Ros2Pal_device_msgsMsgLedEffectViaTopicParams.readFields(r,arena,value.field_effect_via_topic)) return false;
  if(!Ros2Pal_device_msgsMsgLedDataArrayParams.readFields(r,arena,value.field_data_array)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/LedEffectParams value.
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
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/LedEffectParams value.
 /// @details Require the complete 203..395-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsMsgLedEffectParams; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgLedEffectParams value) {
  if(bytes.length<203 || bytes.length>395) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/action/DoTimedLedEffect_Goal value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 216..472
/// bytes and is identified by UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsActionDoTimedLedEffect_Goal {
 /// @brief Maximum canonical extent of pal_device_msgs/action/DoTimedLedEffect_Goal in bytes.
 /// @details The inclusive bound is 472 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=472;
 /// @brief Canonical codec identity of pal_device_msgs/action/DoTimedLedEffect_Goal.
 /// @details Exact identity UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2";
 /// @brief Original ROS type name for pal_device_msgs/action/DoTimedLedEffect_Goal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/action/DoTimedLedEffect_Goal";
 /// @brief Selected original native identity for pal_device_msgs/action/DoTimedLedEffect_Goal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/action/DoTimedLedEffect_Goal.devices: uint32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/d/API.md
 uint[] field_devices=null;
 /// @brief pal_device_msgs/action/DoTimedLedEffect_Goal.params: pal_device_msgs/msg/LedEffectParams.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedEffectParams field_params=Ros2Pal_device_msgsMsgLedEffectParams.init;
 /// @brief pal_device_msgs/action/DoTimedLedEffect_Goal.effect_duration: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_effect_duration=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief pal_device_msgs/action/DoTimedLedEffect_Goal.priority: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/d/API.md
 ubyte field_priority=0;
 /// @brief Append every canonical field of pal_device_msgs/action/DoTimedLedEffect_Goal.
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
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_devices.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_devices.length)) return false;
  foreach(ref e; this.field_devices) {
  if(!w.integer(e)) return false;
  }
  if(!this.field_params.writeFields(w)) return false;
  if(!this.field_effect_duration.writeFields(w)) return false;
  if(!w.integer(this.field_priority)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/action/DoTimedLedEffect_Goal.
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
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsActionDoTimedLedEffect_Goal value) {
  value=Ros2Pal_device_msgsActionDoTimedLedEffect_Goal.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>16) {
       r.code=22;
       return false;
  }
  value.field_devices=arena.allocate!(uint)(count0);
  if(value.field_devices.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_devices) {
  if(!r.integer(e)) return false;
  }
  if(!Ros2Pal_device_msgsMsgLedEffectParams.readFields(r,arena,value.field_params)) return false;
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_effect_duration)) return false;
  if(!r.integer(value.field_priority)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/action/DoTimedLedEffect_Goal value.
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
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/action/DoTimedLedEffect_Goal value.
 /// @details Require the complete 216..472-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsActionDoTimedLedEffect_Goal value) {
  if(bytes.length<216 || bytes.length>472) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/action/DoTimedLedEffect_Result value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsActionDoTimedLedEffect_Result {
 /// @brief Maximum canonical extent of pal_device_msgs/action/DoTimedLedEffect_Result in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of pal_device_msgs/action/DoTimedLedEffect_Result.
 /// @details Exact identity UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9";
 /// @brief Original ROS type name for pal_device_msgs/action/DoTimedLedEffect_Result.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/action/DoTimedLedEffect_Result";
 /// @brief Selected original native identity for pal_device_msgs/action/DoTimedLedEffect_Result.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of pal_device_msgs/action/DoTimedLedEffect_Result.
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
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/action/DoTimedLedEffect_Result.
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
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsActionDoTimedLedEffect_Result value) {
  value=Ros2Pal_device_msgsActionDoTimedLedEffect_Result.init;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/action/DoTimedLedEffect_Result value.
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
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/action/DoTimedLedEffect_Result value.
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
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Result; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsActionDoTimedLedEffect_Result value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/action/DoTimedLedEffect_Feedback value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback {
 /// @brief Maximum canonical extent of pal_device_msgs/action/DoTimedLedEffect_Feedback in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of pal_device_msgs/action/DoTimedLedEffect_Feedback.
 /// @details Exact identity UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d";
 /// @brief Original ROS type name for pal_device_msgs/action/DoTimedLedEffect_Feedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/action/DoTimedLedEffect_Feedback";
 /// @brief Selected original native identity for pal_device_msgs/action/DoTimedLedEffect_Feedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of pal_device_msgs/action/DoTimedLedEffect_Feedback.
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
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/action/DoTimedLedEffect_Feedback.
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
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback value) {
  value=Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback.init;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/action/DoTimedLedEffect_Feedback value.
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
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/action/DoTimedLedEffect_Feedback value.
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
 /// @see Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/BatteryState value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..5 bytes
/// and is identified by UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgBatteryState {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/BatteryState in bytes.
 /// @details The inclusive bound is 5 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=5;
 /// @brief Canonical codec identity of pal_device_msgs/msg/BatteryState.
 /// @details Exact identity UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904";
 /// @brief Original ROS type name for pal_device_msgs/msg/BatteryState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/BatteryState";
 /// @brief Selected original native identity for pal_device_msgs/msg/BatteryState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/BatteryState.FULL: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_FULL=5;
 /// @brief pal_device_msgs/msg/BatteryState.HIGH: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_HIGH=4;
 /// @brief pal_device_msgs/msg/BatteryState.MEDIUM: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_MEDIUM=3;
 /// @brief pal_device_msgs/msg/BatteryState.LOW: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_LOW=2;
 /// @brief pal_device_msgs/msg/BatteryState.CRITICAL_LOW: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_CRITICAL_LOW=1;
 /// @brief pal_device_msgs/msg/BatteryState.charge_state: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 byte field_charge_state=0;
 /// @brief pal_device_msgs/msg/BatteryState.battery_percentage: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 float field_battery_percentage=0;
 /// @brief Append every canonical field of pal_device_msgs/msg/BatteryState.
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
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_charge_state)) return false;
  if(!w.float32(this.field_battery_percentage)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/BatteryState.
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
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgBatteryState value) {
  value=Ros2Pal_device_msgsMsgBatteryState.init;
  if(!r.integer(value.field_charge_state)) return false;
  if(!r.float32(value.field_battery_percentage)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/BatteryState value.
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
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/BatteryState value.
 /// @details Require the complete 5..5-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsMsgBatteryState; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgBatteryState value) {
  if(bytes.length<5 || bytes.length>5) return 22;
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
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Std_msgsMsgHeader {
 /// @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=140;
 /// @brief Canonical codec identity of std_msgs/msg/Header.
 /// @details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
 /// @brief Original ROS type name for std_msgs/msg/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/d/API.md
 enum nativeType="std_msgs/msg/Header";
 /// @brief Selected original native identity for std_msgs/msg/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgTime field_stamp=Ros2Builtin_interfacesMsgTime.init;
 /// @brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/d/API.md
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/d/API.md
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/d/API.md
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/d/API.md
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Std_msgsMsgHeader value) {
  if(bytes.length<12 || bytes.length>140) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/Bumper value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 13..141 bytes
/// and is identified by UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgBumper {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/Bumper in bytes.
 /// @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=141;
 /// @brief Canonical codec identity of pal_device_msgs/msg/Bumper.
 /// @details Exact identity UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022";
 /// @brief Original ROS type name for pal_device_msgs/msg/Bumper.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/Bumper";
 /// @brief Selected original native identity for pal_device_msgs/msg/Bumper.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/Bumper.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief pal_device_msgs/msg/Bumper.is_pressed: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/d/API.md
 bool field_is_pressed=false;
 /// @brief Append every canonical field of pal_device_msgs/msg/Bumper.
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
 /// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.boolean(this.field_is_pressed)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/Bumper.
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
 /// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgBumper value) {
  value=Ros2Pal_device_msgsMsgBumper.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.boolean(value.field_is_pressed)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/Bumper value.
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
 /// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/Bumper value.
 /// @details Require the complete 13..141-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsMsgBumper; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgBumper value) {
  if(bytes.length<13 || bytes.length>141) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/msg/LedGroup value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsMsgLedGroup {
 /// @brief Maximum canonical extent of pal_device_msgs/msg/LedGroup in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of pal_device_msgs/msg/LedGroup.
 /// @details Exact identity UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0";
 /// @brief Original ROS type name for pal_device_msgs/msg/LedGroup.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/msg/LedGroup";
 /// @brief Selected original native identity for pal_device_msgs/msg/LedGroup.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/msg/LedGroup.LEFT_EAR: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_LEFT_EAR=1;
 /// @brief pal_device_msgs/msg/LedGroup.RIGHT_EAR: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/d/API.md
 enum ubyte field_RIGHT_EAR=2;
 /// @brief pal_device_msgs/msg/LedGroup.led_mask: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/d/API.md
 uint field_led_mask=0;
 /// @brief Append every canonical field of pal_device_msgs/msg/LedGroup.
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
 /// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_led_mask)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/msg/LedGroup.
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
 /// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsMsgLedGroup value) {
  value=Ros2Pal_device_msgsMsgLedGroup.init;
  if(!r.integer(value.field_led_mask)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/msg/LedGroup value.
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
 /// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/msg/LedGroup value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsMsgLedGroup; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsMsgLedGroup value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/srv/CancelEffect_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsSrvCancelEffect_Request {
 /// @brief Maximum canonical extent of pal_device_msgs/srv/CancelEffect_Request in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of pal_device_msgs/srv/CancelEffect_Request.
 /// @details Exact identity UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062";
 /// @brief Original ROS type name for pal_device_msgs/srv/CancelEffect_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/srv/CancelEffect_Request";
 /// @brief Selected original native identity for pal_device_msgs/srv/CancelEffect_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/srv/CancelEffect_Request.effect_id: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/d/API.md
 uint field_effect_id=0;
 /// @brief Append every canonical field of pal_device_msgs/srv/CancelEffect_Request.
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
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_effect_id)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/srv/CancelEffect_Request.
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
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsSrvCancelEffect_Request value) {
  value=Ros2Pal_device_msgsSrvCancelEffect_Request.init;
  if(!r.integer(value.field_effect_id)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/srv/CancelEffect_Request value.
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
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/srv/CancelEffect_Request value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Request; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsSrvCancelEffect_Request value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/srv/CancelEffect_Response value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsSrvCancelEffect_Response {
 /// @brief Maximum canonical extent of pal_device_msgs/srv/CancelEffect_Response in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of pal_device_msgs/srv/CancelEffect_Response.
 /// @details Exact identity UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657";
 /// @brief Original ROS type name for pal_device_msgs/srv/CancelEffect_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/srv/CancelEffect_Response";
 /// @brief Selected original native identity for pal_device_msgs/srv/CancelEffect_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of pal_device_msgs/srv/CancelEffect_Response.
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
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/srv/CancelEffect_Response.
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
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsSrvCancelEffect_Response value) {
  value=Ros2Pal_device_msgsSrvCancelEffect_Response.init;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/srv/CancelEffect_Response value.
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
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/srv/CancelEffect_Response value.
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
 /// @see Ros2Pal_device_msgsSrvCancelEffect_Response; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsSrvCancelEffect_Response value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request {
 /// @brief Maximum canonical extent of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
 /// @details Exact identity UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166";
 /// @brief Original ROS type name for pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request";
 /// @brief Selected original native identity for pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.shutdown_duration: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_shutdown_duration=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief Append every canonical field of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
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
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_shutdown_duration.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
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
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request value) {
  value=Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request.init;
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_shutdown_duration)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request value.
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
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request value.
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
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response {
 /// @brief Maximum canonical extent of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
 /// @details Exact identity UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af";
 /// @brief Original ROS type name for pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response";
 /// @brief Selected original native identity for pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
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
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
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
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response value) {
  value=Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response.init;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response value.
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
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response value.
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
 /// @see Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/srv/TimedBlinkEffect_Request value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 61..61 bytes
/// and is identified by UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsSrvTimedBlinkEffect_Request {
 /// @brief Maximum canonical extent of pal_device_msgs/srv/TimedBlinkEffect_Request in bytes.
 /// @details The inclusive bound is 61 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=61;
 /// @brief Canonical codec identity of pal_device_msgs/srv/TimedBlinkEffect_Request.
 /// @details Exact identity UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c";
 /// @brief Original ROS type name for pal_device_msgs/srv/TimedBlinkEffect_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/srv/TimedBlinkEffect_Request";
 /// @brief Selected original native identity for pal_device_msgs/srv/TimedBlinkEffect_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/srv/TimedBlinkEffect_Request.leds: pal_device_msgs/msg/LedGroup.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedGroup field_leds=Ros2Pal_device_msgsMsgLedGroup.init;
 /// @brief pal_device_msgs/srv/TimedBlinkEffect_Request.first_color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_first_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/srv/TimedBlinkEffect_Request.second_color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_second_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/srv/TimedBlinkEffect_Request.first_color_duration: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_first_color_duration=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief pal_device_msgs/srv/TimedBlinkEffect_Request.second_color_duration: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_second_color_duration=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief pal_device_msgs/srv/TimedBlinkEffect_Request.effect_duration: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_effect_duration=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief pal_device_msgs/srv/TimedBlinkEffect_Request.priority: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 ubyte field_priority=0;
 /// @brief Append every canonical field of pal_device_msgs/srv/TimedBlinkEffect_Request.
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
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_leds.writeFields(w)) return false;
  if(!this.field_first_color.writeFields(w)) return false;
  if(!this.field_second_color.writeFields(w)) return false;
  if(!this.field_first_color_duration.writeFields(w)) return false;
  if(!this.field_second_color_duration.writeFields(w)) return false;
  if(!this.field_effect_duration.writeFields(w)) return false;
  if(!w.integer(this.field_priority)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/srv/TimedBlinkEffect_Request.
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
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsSrvTimedBlinkEffect_Request value) {
  value=Ros2Pal_device_msgsSrvTimedBlinkEffect_Request.init;
  if(!Ros2Pal_device_msgsMsgLedGroup.readFields(r,arena,value.field_leds)) return false;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_first_color)) return false;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_second_color)) return false;
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_first_color_duration)) return false;
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_second_color_duration)) return false;
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_effect_duration)) return false;
  if(!r.integer(value.field_priority)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/srv/TimedBlinkEffect_Request value.
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
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/srv/TimedBlinkEffect_Request value.
 /// @details Require the complete 61..61-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsSrvTimedBlinkEffect_Request value) {
  if(bytes.length<61 || bytes.length>61) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/srv/TimedBlinkEffect_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsSrvTimedBlinkEffect_Response {
 /// @brief Maximum canonical extent of pal_device_msgs/srv/TimedBlinkEffect_Response in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of pal_device_msgs/srv/TimedBlinkEffect_Response.
 /// @details Exact identity UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a";
 /// @brief Original ROS type name for pal_device_msgs/srv/TimedBlinkEffect_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/srv/TimedBlinkEffect_Response";
 /// @brief Selected original native identity for pal_device_msgs/srv/TimedBlinkEffect_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/srv/TimedBlinkEffect_Response.effect_id: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/d/API.md
 uint field_effect_id=0;
 /// @brief Append every canonical field of pal_device_msgs/srv/TimedBlinkEffect_Response.
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
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_effect_id)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/srv/TimedBlinkEffect_Response.
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
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsSrvTimedBlinkEffect_Response value) {
  value=Ros2Pal_device_msgsSrvTimedBlinkEffect_Response.init;
  if(!r.integer(value.field_effect_id)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/srv/TimedBlinkEffect_Response value.
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
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/srv/TimedBlinkEffect_Response value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsSrvTimedBlinkEffect_Response value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/srv/TimedColourEffect_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 29..29 bytes
/// and is identified by UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsSrvTimedColourEffect_Request {
 /// @brief Maximum canonical extent of pal_device_msgs/srv/TimedColourEffect_Request in bytes.
 /// @details The inclusive bound is 29 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=29;
 /// @brief Canonical codec identity of pal_device_msgs/srv/TimedColourEffect_Request.
 /// @details Exact identity UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8";
 /// @brief Original ROS type name for pal_device_msgs/srv/TimedColourEffect_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/srv/TimedColourEffect_Request";
 /// @brief Selected original native identity for pal_device_msgs/srv/TimedColourEffect_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/srv/TimedColourEffect_Request.leds: pal_device_msgs/msg/LedGroup.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedGroup field_leds=Ros2Pal_device_msgsMsgLedGroup.init;
 /// @brief pal_device_msgs/srv/TimedColourEffect_Request.color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/srv/TimedColourEffect_Request.effect_duration: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_effect_duration=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief pal_device_msgs/srv/TimedColourEffect_Request.priority: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/d/API.md
 ubyte field_priority=0;
 /// @brief Append every canonical field of pal_device_msgs/srv/TimedColourEffect_Request.
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
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_leds.writeFields(w)) return false;
  if(!this.field_color.writeFields(w)) return false;
  if(!this.field_effect_duration.writeFields(w)) return false;
  if(!w.integer(this.field_priority)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/srv/TimedColourEffect_Request.
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
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsSrvTimedColourEffect_Request value) {
  value=Ros2Pal_device_msgsSrvTimedColourEffect_Request.init;
  if(!Ros2Pal_device_msgsMsgLedGroup.readFields(r,arena,value.field_leds)) return false;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_color)) return false;
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_effect_duration)) return false;
  if(!r.integer(value.field_priority)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/srv/TimedColourEffect_Request value.
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
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/srv/TimedColourEffect_Request value.
 /// @details Require the complete 29..29-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Request; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsSrvTimedColourEffect_Request value) {
  if(bytes.length<29 || bytes.length>29) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/srv/TimedColourEffect_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsSrvTimedColourEffect_Response {
 /// @brief Maximum canonical extent of pal_device_msgs/srv/TimedColourEffect_Response in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of pal_device_msgs/srv/TimedColourEffect_Response.
 /// @details Exact identity UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9";
 /// @brief Original ROS type name for pal_device_msgs/srv/TimedColourEffect_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/srv/TimedColourEffect_Response";
 /// @brief Selected original native identity for pal_device_msgs/srv/TimedColourEffect_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/srv/TimedColourEffect_Response.effect_id: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/d/API.md
 uint field_effect_id=0;
 /// @brief Append every canonical field of pal_device_msgs/srv/TimedColourEffect_Response.
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
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_effect_id)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/srv/TimedColourEffect_Response.
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
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsSrvTimedColourEffect_Response value) {
  value=Ros2Pal_device_msgsSrvTimedColourEffect_Response.init;
  if(!r.integer(value.field_effect_id)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/srv/TimedColourEffect_Response value.
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
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/srv/TimedColourEffect_Response value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsSrvTimedColourEffect_Response; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsSrvTimedColourEffect_Response value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/srv/TimedFadeEffect_Request value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 54..54 bytes
/// and is identified by UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsSrvTimedFadeEffect_Request {
 /// @brief Maximum canonical extent of pal_device_msgs/srv/TimedFadeEffect_Request in bytes.
 /// @details The inclusive bound is 54 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=54;
 /// @brief Canonical codec identity of pal_device_msgs/srv/TimedFadeEffect_Request.
 /// @details Exact identity UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13";
 /// @brief Original ROS type name for pal_device_msgs/srv/TimedFadeEffect_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/srv/TimedFadeEffect_Request";
 /// @brief Selected original native identity for pal_device_msgs/srv/TimedFadeEffect_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/srv/TimedFadeEffect_Request.leds: pal_device_msgs/msg/LedGroup.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Pal_device_msgsMsgLedGroup field_leds=Ros2Pal_device_msgsMsgLedGroup.init;
 /// @brief pal_device_msgs/srv/TimedFadeEffect_Request.first_color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_first_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/srv/TimedFadeEffect_Request.second_color: std_msgs/msg/ColorRGBA.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Std_msgsMsgColorRGBA field_second_color=Ros2Std_msgsMsgColorRGBA.init;
 /// @brief pal_device_msgs/srv/TimedFadeEffect_Request.color_change_duration: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_color_change_duration=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief pal_device_msgs/srv/TimedFadeEffect_Request.reverse_fade: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 bool field_reverse_fade=false;
 /// @brief pal_device_msgs/srv/TimedFadeEffect_Request.effect_duration: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_effect_duration=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief pal_device_msgs/srv/TimedFadeEffect_Request.priority: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 ubyte field_priority=0;
 /// @brief Append every canonical field of pal_device_msgs/srv/TimedFadeEffect_Request.
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
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_leds.writeFields(w)) return false;
  if(!this.field_first_color.writeFields(w)) return false;
  if(!this.field_second_color.writeFields(w)) return false;
  if(!this.field_color_change_duration.writeFields(w)) return false;
  if(!w.boolean(this.field_reverse_fade)) return false;
  if(!this.field_effect_duration.writeFields(w)) return false;
  if(!w.integer(this.field_priority)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/srv/TimedFadeEffect_Request.
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
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsSrvTimedFadeEffect_Request value) {
  value=Ros2Pal_device_msgsSrvTimedFadeEffect_Request.init;
  if(!Ros2Pal_device_msgsMsgLedGroup.readFields(r,arena,value.field_leds)) return false;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_first_color)) return false;
  if(!Ros2Std_msgsMsgColorRGBA.readFields(r,arena,value.field_second_color)) return false;
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_color_change_duration)) return false;
  if(!r.boolean(value.field_reverse_fade)) return false;
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_effect_duration)) return false;
  if(!r.integer(value.field_priority)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/srv/TimedFadeEffect_Request value.
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
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/srv/TimedFadeEffect_Request value.
 /// @details Require the complete 54..54-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Request; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsSrvTimedFadeEffect_Request value) {
  if(bytes.length<54 || bytes.length>54) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 pal_device_msgs/srv/TimedFadeEffect_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/pal/en_US/language/d/API.md
struct Ros2Pal_device_msgsSrvTimedFadeEffect_Response {
 /// @brief Maximum canonical extent of pal_device_msgs/srv/TimedFadeEffect_Response in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of pal_device_msgs/srv/TimedFadeEffect_Response.
 /// @details Exact identity UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5";
 /// @brief Original ROS type name for pal_device_msgs/srv/TimedFadeEffect_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum nativeType="pal_device_msgs/srv/TimedFadeEffect_Response";
 /// @brief Selected original native identity for pal_device_msgs/srv/TimedFadeEffect_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief pal_device_msgs/srv/TimedFadeEffect_Response.effect_id: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/d/API.md
 uint field_effect_id=0;
 /// @brief Append every canonical field of pal_device_msgs/srv/TimedFadeEffect_Response.
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
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_effect_id)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of pal_device_msgs/srv/TimedFadeEffect_Response.
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
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Pal_device_msgsSrvTimedFadeEffect_Response value) {
  value=Ros2Pal_device_msgsSrvTimedFadeEffect_Response.init;
  if(!r.integer(value.field_effect_id)) return false;
  return true;
 }
 /// @brief Encode one complete pal_device_msgs/srv/TimedFadeEffect_Response value.
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
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete pal_device_msgs/srv/TimedFadeEffect_Response value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Pal_device_msgsSrvTimedFadeEffect_Response; document/platform/pal/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Pal_device_msgsSrvTimedFadeEffect_Response value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
