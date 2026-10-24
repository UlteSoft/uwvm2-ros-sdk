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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Builtin_interfacesMsgDuration {
 /// @brief Maximum canonical extent of builtin_interfaces/msg/Duration in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of builtin_interfaces/msg/Duration.
 /// @details Exact identity UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
 /// @brief Original ROS type name for builtin_interfaces/msg/Duration.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="builtin_interfaces/msg/Duration";
 /// @brief Selected original native identity for builtin_interfaces/msg/Duration.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief builtin_interfaces/msg/Duration.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/d/API.md
 int field_sec=0;
 /// @brief builtin_interfaces/msg/Duration.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgDuration; document/platform/trossen/en_US/language/d/API.md
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Builtin_interfacesMsgTime {
 /// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of builtin_interfaces/msg/Time.
 /// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
 /// @brief Original ROS type name for builtin_interfaces/msg/Time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="builtin_interfaces/msg/Time";
 /// @brief Selected original native identity for builtin_interfaces/msg/Time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief builtin_interfaces/msg/Time.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/d/API.md
 int field_sec=0;
 /// @brief builtin_interfaces/msg/Time.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/d/API.md
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
 /// @see Ros2Builtin_interfacesMsgTime; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Builtin_interfacesMsgTime value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/ArmJoy value.
/// @details All 12 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
/// and is identified by UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsMsgArmJoy {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/ArmJoy in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=12;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/ArmJoy.
 /// @details Exact identity UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/ArmJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/msg/ArmJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/ArmJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_X_INC: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_X_INC=1;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_X_DEC: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_X_DEC=2;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_Y_INC: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Y_INC=3;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Y_DEC=4;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_Z_INC: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Z_INC=5;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Z_DEC=6;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_ROLL_CCW: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_ROLL_CCW=7;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_ROLL_CW: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_ROLL_CW=8;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_PITCH_UP=9;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.EE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_PITCH_DOWN=10;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.WAIST_CCW: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WAIST_CCW=11;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.WAIST_CW: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WAIST_CW=12;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.GRIPPER_RELEASE: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_RELEASE=13;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.GRIPPER_GRASP: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_GRASP=14;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_HOME_POSE=15;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.SLEEP_POSE: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SLEEP_POSE=16;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_INC=17;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_DEC=18;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.SPEED_COARSE: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_COARSE=19;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_FINE=20;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.GRIPPER_PWM_INC: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_PWM_INC=21;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.GRIPPER_PWM_DEC: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_PWM_DEC=22;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.TORQUE_ON: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_TORQUE_ON=23;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.TORQUE_OFF: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_TORQUE_OFF=24;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.ee_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_x_cmd=0;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.ee_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_y_cmd=0;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.ee_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_z_cmd=0;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.ee_roll_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_roll_cmd=0;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.ee_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_pitch_cmd=0;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.waist_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_waist_cmd=0;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.gripper_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_gripper_cmd=0;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_pose_cmd=0;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_cmd=0;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_toggle_cmd=0;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.gripper_pwm_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_gripper_pwm_cmd=0;
 /// @brief interbotix_xs_msgs/msg/ArmJoy.torque_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_torque_cmd=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/ArmJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ee_x_cmd)) return false;
  if(!w.integer(this.field_ee_y_cmd)) return false;
  if(!w.integer(this.field_ee_z_cmd)) return false;
  if(!w.integer(this.field_ee_roll_cmd)) return false;
  if(!w.integer(this.field_ee_pitch_cmd)) return false;
  if(!w.integer(this.field_waist_cmd)) return false;
  if(!w.integer(this.field_gripper_cmd)) return false;
  if(!w.integer(this.field_pose_cmd)) return false;
  if(!w.integer(this.field_speed_cmd)) return false;
  if(!w.integer(this.field_speed_toggle_cmd)) return false;
  if(!w.integer(this.field_gripper_pwm_cmd)) return false;
  if(!w.integer(this.field_torque_cmd)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/ArmJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsMsgArmJoy value) {
  value=Ros2Interbotix_xs_msgsMsgArmJoy.init;
  if(!r.integer(value.field_ee_x_cmd)) return false;
  if(!r.integer(value.field_ee_y_cmd)) return false;
  if(!r.integer(value.field_ee_z_cmd)) return false;
  if(!r.integer(value.field_ee_roll_cmd)) return false;
  if(!r.integer(value.field_ee_pitch_cmd)) return false;
  if(!r.integer(value.field_waist_cmd)) return false;
  if(!r.integer(value.field_gripper_cmd)) return false;
  if(!r.integer(value.field_pose_cmd)) return false;
  if(!r.integer(value.field_speed_cmd)) return false;
  if(!r.integer(value.field_speed_toggle_cmd)) return false;
  if(!r.integer(value.field_gripper_pwm_cmd)) return false;
  if(!r.integer(value.field_torque_cmd)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/ArmJoy value.
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
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/ArmJoy value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgArmJoy; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsMsgArmJoy value) {
  if(bytes.length<12 || bytes.length>12) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/HexJoy value.
/// @details All 17 declared fields are retained in source order. The canonical representation occupies 17..17 bytes
/// and is identified by UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsMsgHexJoy {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/HexJoy in bytes.
 /// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=17;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/HexJoy.
 /// @details Exact identity UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/HexJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/msg/HexJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/HexJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_X_INC: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WORLD_X_INC=1;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_X_DEC: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WORLD_X_DEC=2;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_Y_INC: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WORLD_Y_INC=3;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_Y_DEC: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WORLD_Y_DEC=4;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_YAW_CCW: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WORLD_YAW_CCW=5;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WORLD_YAW_CW: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WORLD_YAW_CW=6;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_X_INC: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_X_INC=7;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_X_DEC: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_X_DEC=8;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_Y_INC: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_Y_INC=9;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_Y_DEC=10;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_Z_INC: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_Z_INC=11;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_Z_DEC=12;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_ROLL_CCW: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_ROLL_CCW=13;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_ROLL_CW: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_ROLL_CW=14;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_PITCH_UP=15;
 /// @brief interbotix_xs_msgs/msg/HexJoy.PLACE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PLACE_PITCH_DOWN=16;
 /// @brief interbotix_xs_msgs/msg/HexJoy.MOVE_HEXAPOD: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_MOVE_HEXAPOD=17;
 /// @brief interbotix_xs_msgs/msg/HexJoy.MOVE_LEG: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_MOVE_LEG=18;
 /// @brief interbotix_xs_msgs/msg/HexJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_HOME_POSE=19;
 /// @brief interbotix_xs_msgs/msg/HexJoy.SLEEP_POSE: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SLEEP_POSE=20;
 /// @brief interbotix_xs_msgs/msg/HexJoy.GAIT_NEXT: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GAIT_NEXT=21;
 /// @brief interbotix_xs_msgs/msg/HexJoy.GAIT_PREVIOUS: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GAIT_PREVIOUS=22;
 /// @brief interbotix_xs_msgs/msg/HexJoy.LEG_NEXT: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_LEG_NEXT=23;
 /// @brief interbotix_xs_msgs/msg/HexJoy.LEG_PREVIOUS: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_LEG_PREVIOUS=24;
 /// @brief interbotix_xs_msgs/msg/HexJoy.WIDEN_STANCE: original int8 constant.
 /// @details Exact admitted value 25. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WIDEN_STANCE=25;
 /// @brief interbotix_xs_msgs/msg/HexJoy.NARROW_STANCE: original int8 constant.
 /// @details Exact admitted value 26. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_NARROW_STANCE=26;
 /// @brief interbotix_xs_msgs/msg/HexJoy.REBOOT_MOTORS: original int8 constant.
 /// @details Exact admitted value 27. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_REBOOT_MOTORS=27;
 /// @brief interbotix_xs_msgs/msg/HexJoy.SET_HOME_POSE: original int8 constant.
 /// @details Exact admitted value 28. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SET_HOME_POSE=28;
 /// @brief interbotix_xs_msgs/msg/HexJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 29. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_INC=29;
 /// @brief interbotix_xs_msgs/msg/HexJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_DEC=30;
 /// @brief interbotix_xs_msgs/msg/HexJoy.SPEED_COARSE: original int8 constant.
 /// @details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_COARSE=31;
 /// @brief interbotix_xs_msgs/msg/HexJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_FINE=32;
 /// @brief interbotix_xs_msgs/msg/HexJoy.world_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_world_x_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.world_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_world_y_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.world_yaw_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_world_yaw_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.place_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_place_x_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.place_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_place_y_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.place_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_place_z_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.place_roll_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_place_roll_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.place_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_place_pitch_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_pose_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.move_type_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_move_type_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.gait_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_gait_toggle_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.leg_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_leg_toggle_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.stance_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_stance_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.reboot_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_reboot_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.set_home_pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_set_home_pose_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_cmd=0;
 /// @brief interbotix_xs_msgs/msg/HexJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_toggle_cmd=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/HexJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_world_x_cmd)) return false;
  if(!w.integer(this.field_world_y_cmd)) return false;
  if(!w.integer(this.field_world_yaw_cmd)) return false;
  if(!w.integer(this.field_place_x_cmd)) return false;
  if(!w.integer(this.field_place_y_cmd)) return false;
  if(!w.integer(this.field_place_z_cmd)) return false;
  if(!w.integer(this.field_place_roll_cmd)) return false;
  if(!w.integer(this.field_place_pitch_cmd)) return false;
  if(!w.integer(this.field_pose_cmd)) return false;
  if(!w.integer(this.field_move_type_cmd)) return false;
  if(!w.integer(this.field_gait_toggle_cmd)) return false;
  if(!w.integer(this.field_leg_toggle_cmd)) return false;
  if(!w.integer(this.field_stance_cmd)) return false;
  if(!w.integer(this.field_reboot_cmd)) return false;
  if(!w.integer(this.field_set_home_pose_cmd)) return false;
  if(!w.integer(this.field_speed_cmd)) return false;
  if(!w.integer(this.field_speed_toggle_cmd)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/HexJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsMsgHexJoy value) {
  value=Ros2Interbotix_xs_msgsMsgHexJoy.init;
  if(!r.integer(value.field_world_x_cmd)) return false;
  if(!r.integer(value.field_world_y_cmd)) return false;
  if(!r.integer(value.field_world_yaw_cmd)) return false;
  if(!r.integer(value.field_place_x_cmd)) return false;
  if(!r.integer(value.field_place_y_cmd)) return false;
  if(!r.integer(value.field_place_z_cmd)) return false;
  if(!r.integer(value.field_place_roll_cmd)) return false;
  if(!r.integer(value.field_place_pitch_cmd)) return false;
  if(!r.integer(value.field_pose_cmd)) return false;
  if(!r.integer(value.field_move_type_cmd)) return false;
  if(!r.integer(value.field_gait_toggle_cmd)) return false;
  if(!r.integer(value.field_leg_toggle_cmd)) return false;
  if(!r.integer(value.field_stance_cmd)) return false;
  if(!r.integer(value.field_reboot_cmd)) return false;
  if(!r.integer(value.field_set_home_pose_cmd)) return false;
  if(!r.integer(value.field_speed_cmd)) return false;
  if(!r.integer(value.field_speed_toggle_cmd)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/HexJoy value.
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
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/HexJoy value.
 /// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgHexJoy; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsMsgHexJoy value) {
  if(bytes.length<17 || bytes.length>17) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/JointGroupCommand value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..392 bytes
/// and is identified by UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsMsgJointGroupCommand {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/JointGroupCommand in bytes.
 /// @details The inclusive bound is 392 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=392;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/JointGroupCommand.
 /// @details Exact identity UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/JointGroupCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/msg/JointGroupCommand";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/JointGroupCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/msg/JointGroupCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/msg/JointGroupCommand.cmd: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 float[] field_cmd=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/JointGroupCommand.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_name,128)) return false;
  if(this.field_cmd.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_cmd.length)) return false;
  foreach(ref e; this.field_cmd) {
  if(!w.float32(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/JointGroupCommand.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsMsgJointGroupCommand value) {
  value=Ros2Interbotix_xs_msgsMsgJointGroupCommand.init;
  if(!r.text(value.field_name,128)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>64) {
       r.code=22;
       return false;
  }
  value.field_cmd=arena.allocate!(float)(count1);
  if(value.field_cmd.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_cmd) {
  if(!r.float32(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/JointGroupCommand value.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/JointGroupCommand value.
 /// @details Require the complete 8..392-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgJointGroupCommand; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsMsgJointGroupCommand value) {
  if(bytes.length<8 || bytes.length>392) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/JointSingleCommand value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsMsgJointSingleCommand {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/JointSingleCommand in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=136;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/JointSingleCommand.
 /// @details Exact identity UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/JointSingleCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/msg/JointSingleCommand";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/JointSingleCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/msg/JointSingleCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/msg/JointSingleCommand.cmd: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 float field_cmd=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/JointSingleCommand.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_name,128)) return false;
  if(!w.float32(this.field_cmd)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/JointSingleCommand.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsMsgJointSingleCommand value) {
  value=Ros2Interbotix_xs_msgsMsgJointSingleCommand.init;
  if(!r.text(value.field_name,128)) return false;
  if(!r.float32(value.field_cmd)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/JointSingleCommand value.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/JointSingleCommand value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgJointSingleCommand; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsMsgJointSingleCommand value) {
  if(bytes.length<8 || bytes.length>136) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/JointTemps value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8712 bytes
/// and is identified by UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsMsgJointTemps {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/JointTemps in bytes.
 /// @details The inclusive bound is 8712 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=8712;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/JointTemps.
 /// @details Exact identity UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/JointTemps.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/msg/JointTemps";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/JointTemps.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/msg/JointTemps.names: string; 0..64 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[][] field_names=null;
 /// @brief interbotix_xs_msgs/msg/JointTemps.temps: int32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/d/API.md
 int[] field_temps=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/JointTemps.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_names.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_names.length)) return false;
  foreach(ref e; this.field_names) {
  if(!w.text(e,128)) return false;
  }
  if(this.field_temps.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_temps.length)) return false;
  foreach(ref e; this.field_temps) {
  if(!w.integer(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/JointTemps.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsMsgJointTemps value) {
  value=Ros2Interbotix_xs_msgsMsgJointTemps.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>64) {
       r.code=22;
       return false;
  }
  value.field_names=arena.allocate!(const(ubyte)[])(count0);
  if(value.field_names.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_names) {
  if(!r.text(e,128)) return false;
  }
  uint count1; if(!r.integer(count1)) return false;
  if(count1>64) {
       r.code=22;
       return false;
  }
  value.field_temps=arena.allocate!(int)(count1);
  if(value.field_temps.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_temps) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/JointTemps value.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/JointTemps value.
 /// @details Require the complete 8..8712-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTemps; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsMsgJointTemps value) {
  if(bytes.length<8 || bytes.length>8712) return 22;
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
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Std_msgsMsgHeader {
 /// @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=140;
 /// @brief Canonical codec identity of std_msgs/msg/Header.
 /// @details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
 /// @brief Original ROS type name for std_msgs/msg/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="std_msgs/msg/Header";
 /// @brief Selected original native identity for std_msgs/msg/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgTime field_stamp=Ros2Builtin_interfacesMsgTime.init;
 /// @brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/d/API.md
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/d/API.md
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/d/API.md
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/d/API.md
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
 /// @see Ros2Std_msgsMsgHeader; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Std_msgsMsgHeader value) {
  if(bytes.length<12 || bytes.length>140) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectoryPoint value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 24..536 bytes
/// and is identified by UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Trajectory_msgsMsgJointTrajectoryPoint {
 /// @brief Maximum canonical extent of trajectory_msgs/msg/JointTrajectoryPoint in bytes.
 /// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=536;
 /// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details Exact identity UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1";
 /// @brief Original ROS type name for trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="trajectory_msgs/msg/JointTrajectoryPoint";
 /// @brief Selected original native identity for trajectory_msgs/msg/JointTrajectoryPoint.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.positions: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 double[] field_positions=null;
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.velocities: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 double[] field_velocities=null;
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.accelerations: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 double[] field_accelerations=null;
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.effort: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 double[] field_effort=null;
 /// @brief trajectory_msgs/msg/JointTrajectoryPoint.time_from_start: builtin_interfaces/msg/Duration.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 Ros2Builtin_interfacesMsgDuration field_time_from_start=Ros2Builtin_interfacesMsgDuration.init;
 /// @brief Append every canonical field of trajectory_msgs/msg/JointTrajectoryPoint.
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_positions.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_positions.length)) return false;
  foreach(ref e; this.field_positions) {
  if(!w.float64(e)) return false;
  }
  if(this.field_velocities.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_velocities.length)) return false;
  foreach(ref e; this.field_velocities) {
  if(!w.float64(e)) return false;
  }
  if(this.field_accelerations.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_accelerations.length)) return false;
  foreach(ref e; this.field_accelerations) {
  if(!w.float64(e)) return false;
  }
  if(this.field_effort.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_effort.length)) return false;
  foreach(ref e; this.field_effort) {
  if(!w.float64(e)) return false;
  }
  if(!this.field_time_from_start.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of trajectory_msgs/msg/JointTrajectoryPoint.
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Trajectory_msgsMsgJointTrajectoryPoint value) {
  value=Ros2Trajectory_msgsMsgJointTrajectoryPoint.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>16) {
       r.code=22;
       return false;
  }
  value.field_positions=arena.allocate!(double)(count0);
  if(value.field_positions.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_positions) {
  if(!r.float64(e)) return false;
  }
  uint count1; if(!r.integer(count1)) return false;
  if(count1>16) {
       r.code=22;
       return false;
  }
  value.field_velocities=arena.allocate!(double)(count1);
  if(value.field_velocities.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_velocities) {
  if(!r.float64(e)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>16) {
       r.code=22;
       return false;
  }
  value.field_accelerations=arena.allocate!(double)(count2);
  if(value.field_accelerations.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_accelerations) {
  if(!r.float64(e)) return false;
  }
  uint count3; if(!r.integer(count3)) return false;
  if(count3>16) {
       r.code=22;
       return false;
  }
  value.field_effort=arena.allocate!(double)(count3);
  if(value.field_effort.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_effort) {
  if(!r.float64(e)) return false;
  }
  if(!Ros2Builtin_interfacesMsgDuration.readFields(r,arena,value.field_time_from_start)) return false;
  return true;
 }
 /// @brief Encode one complete trajectory_msgs/msg/JointTrajectoryPoint value.
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectoryPoint value.
 /// @details Require the complete 24..536-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Trajectory_msgsMsgJointTrajectoryPoint value) {
  if(bytes.length<24 || bytes.length>536) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 trajectory_msgs/msg/JointTrajectory value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..4404
/// bytes and is identified by UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Trajectory_msgsMsgJointTrajectory {
 /// @brief Maximum canonical extent of trajectory_msgs/msg/JointTrajectory in bytes.
 /// @details The inclusive bound is 4404 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=4404;
 /// @brief Canonical codec identity of trajectory_msgs/msg/JointTrajectory.
 /// @details Exact identity UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7";
 /// @brief Original ROS type name for trajectory_msgs/msg/JointTrajectory.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="trajectory_msgs/msg/JointTrajectory";
 /// @brief Selected original native identity for trajectory_msgs/msg/JointTrajectory.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief trajectory_msgs/msg/JointTrajectory.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief trajectory_msgs/msg/JointTrajectory.joint_names: string; 0..16 elements; each string is 0..128 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[][] field_joint_names=null;
 /// @brief trajectory_msgs/msg/JointTrajectory.points: trajectory_msgs/msg/JointTrajectoryPoint; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 Ros2Trajectory_msgsMsgJointTrajectoryPoint[] field_points=null;
 /// @brief Append every canonical field of trajectory_msgs/msg/JointTrajectory.
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(this.field_joint_names.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_names.length)) return false;
  foreach(ref e; this.field_joint_names) {
  if(!w.text(e,128)) return false;
  }
  if(this.field_points.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_points.length)) return false;
  foreach(ref e; this.field_points) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of trajectory_msgs/msg/JointTrajectory.
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Trajectory_msgsMsgJointTrajectory value) {
  value=Ros2Trajectory_msgsMsgJointTrajectory.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>16) {
       r.code=22;
       return false;
  }
  value.field_joint_names=arena.allocate!(const(ubyte)[])(count1);
  if(value.field_joint_names.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_names) {
  if(!r.text(e,128)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>4) {
       r.code=22;
       return false;
  }
  value.field_points=arena.allocate!(Ros2Trajectory_msgsMsgJointTrajectoryPoint)(count2);
  if(value.field_points.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_points) {
  if(!Ros2Trajectory_msgsMsgJointTrajectoryPoint.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete trajectory_msgs/msg/JointTrajectory value.
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectory value.
 /// @details Require the complete 20..4404-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Trajectory_msgsMsgJointTrajectory; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Trajectory_msgsMsgJointTrajectory value) {
  if(bytes.length<20 || bytes.length>4404) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/JointTrajectoryCommand value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..4668
/// bytes and is identified by UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/JointTrajectoryCommand in bytes.
 /// @details The inclusive bound is 4668 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=4668;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/JointTrajectoryCommand.
 /// @details Exact identity UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/JointTrajectoryCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/msg/JointTrajectoryCommand";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/JointTrajectoryCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/msg/JointTrajectoryCommand.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/msg/JointTrajectoryCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/msg/JointTrajectoryCommand.traj: trajectory_msgs/msg/JointTrajectory.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 Ros2Trajectory_msgsMsgJointTrajectory field_traj=Ros2Trajectory_msgsMsgJointTrajectory.init;
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/JointTrajectoryCommand.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  if(!this.field_traj.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/JointTrajectoryCommand.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand value) {
  value=Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  if(!Ros2Trajectory_msgsMsgJointTrajectory.readFields(r,arena,value.field_traj)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/JointTrajectoryCommand value.
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/JointTrajectoryCommand value.
 /// @details Require the complete 28..4668-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand value) {
  if(bytes.length<28 || bytes.length>4668) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/LocobotJoy value.
/// @details All 16 declared fields are retained in source order. The canonical representation occupies 30..30 bytes
/// and is identified by UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsMsgLocobotJoy {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/LocobotJoy in bytes.
 /// @details The inclusive bound is 30 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=30;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/LocobotJoy.
 /// @details Exact identity UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/LocobotJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/msg/LocobotJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/LocobotJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.RESET_ODOM: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_RESET_ODOM=1;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.PAN_CCW: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PAN_CCW=2;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.PAN_CW: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PAN_CW=3;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.TILT_UP: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_TILT_UP=4;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.TILT_DOWN: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_TILT_DOWN=5;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.PAN_TILT_HOME: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PAN_TILT_HOME=6;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_X_INC: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_X_INC=7;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_X_DEC: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_X_DEC=8;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_Y_INC: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Y_INC=9;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_Y_DEC: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Y_DEC=10;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_Z_INC: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Z_INC=11;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_Z_DEC: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_Z_DEC=12;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_ROLL_CCW: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_ROLL_CCW=13;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_ROLL_CW: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_ROLL_CW=14;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_PITCH_UP: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_PITCH_UP=15;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.EE_PITCH_DOWN: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_EE_PITCH_DOWN=16;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.WAIST_CCW: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WAIST_CCW=17;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.WAIST_CW: original int8 constant.
 /// @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_WAIST_CW=18;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.GRIPPER_RELEASE: original int8 constant.
 /// @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_RELEASE=19;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.GRIPPER_GRASP: original int8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_GRASP=20;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.HOME_POSE: original int8 constant.
 /// @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_HOME_POSE=21;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.SLEEP_POSE: original int8 constant.
 /// @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SLEEP_POSE=22;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_INC=23;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_DEC=24;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.SPEED_COARSE: original int8 constant.
 /// @details Exact admitted value 25. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_COARSE=25;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 26. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_FINE=26;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.GRIPPER_PWM_INC: original int8 constant.
 /// @details Exact admitted value 27. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_PWM_INC=27;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.GRIPPER_PWM_DEC: original int8 constant.
 /// @details Exact admitted value 28. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_GRIPPER_PWM_DEC=28;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.base_x_cmd: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 double field_base_x_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.base_theta_cmd: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 double field_base_theta_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.base_reset_odom_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_base_reset_odom_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.pan_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_pan_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.tilt_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_tilt_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.ee_x_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_x_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.ee_y_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_y_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.ee_z_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_z_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.ee_roll_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_roll_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.ee_pitch_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_ee_pitch_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.waist_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_waist_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.gripper_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_gripper_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.pose_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_pose_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_toggle_cmd=0;
 /// @brief interbotix_xs_msgs/msg/LocobotJoy.gripper_pwm_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_gripper_pwm_cmd=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/LocobotJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_base_x_cmd)) return false;
  if(!w.float64(this.field_base_theta_cmd)) return false;
  if(!w.integer(this.field_base_reset_odom_cmd)) return false;
  if(!w.integer(this.field_pan_cmd)) return false;
  if(!w.integer(this.field_tilt_cmd)) return false;
  if(!w.integer(this.field_ee_x_cmd)) return false;
  if(!w.integer(this.field_ee_y_cmd)) return false;
  if(!w.integer(this.field_ee_z_cmd)) return false;
  if(!w.integer(this.field_ee_roll_cmd)) return false;
  if(!w.integer(this.field_ee_pitch_cmd)) return false;
  if(!w.integer(this.field_waist_cmd)) return false;
  if(!w.integer(this.field_gripper_cmd)) return false;
  if(!w.integer(this.field_pose_cmd)) return false;
  if(!w.integer(this.field_speed_cmd)) return false;
  if(!w.integer(this.field_speed_toggle_cmd)) return false;
  if(!w.integer(this.field_gripper_pwm_cmd)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/LocobotJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsMsgLocobotJoy value) {
  value=Ros2Interbotix_xs_msgsMsgLocobotJoy.init;
  if(!r.float64(value.field_base_x_cmd)) return false;
  if(!r.float64(value.field_base_theta_cmd)) return false;
  if(!r.integer(value.field_base_reset_odom_cmd)) return false;
  if(!r.integer(value.field_pan_cmd)) return false;
  if(!r.integer(value.field_tilt_cmd)) return false;
  if(!r.integer(value.field_ee_x_cmd)) return false;
  if(!r.integer(value.field_ee_y_cmd)) return false;
  if(!r.integer(value.field_ee_z_cmd)) return false;
  if(!r.integer(value.field_ee_roll_cmd)) return false;
  if(!r.integer(value.field_ee_pitch_cmd)) return false;
  if(!r.integer(value.field_waist_cmd)) return false;
  if(!r.integer(value.field_gripper_cmd)) return false;
  if(!r.integer(value.field_pose_cmd)) return false;
  if(!r.integer(value.field_speed_cmd)) return false;
  if(!r.integer(value.field_speed_toggle_cmd)) return false;
  if(!r.integer(value.field_gripper_pwm_cmd)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/LocobotJoy value.
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
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/LocobotJoy value.
 /// @details Require the complete 30..30-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsMsgLocobotJoy; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsMsgLocobotJoy value) {
  if(bytes.length<30 || bytes.length>30) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/msg/TurretJoy value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsMsgTurretJoy {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/msg/TurretJoy in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of interbotix_xs_msgs/msg/TurretJoy.
 /// @details Exact identity UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f";
 /// @brief Original ROS type name for interbotix_xs_msgs/msg/TurretJoy.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/msg/TurretJoy";
 /// @brief Selected original native identity for interbotix_xs_msgs/msg/TurretJoy.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/msg/TurretJoy.PAN_CCW: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PAN_CCW=1;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.PAN_CW: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PAN_CW=2;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.TILT_UP: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_TILT_UP=3;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.TILT_DOWN: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_TILT_DOWN=4;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.PAN_TILT_HOME: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_PAN_TILT_HOME=5;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.SPEED_INC: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_INC=6;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.SPEED_DEC: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_DEC=7;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.SPEED_COARSE: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_COARSE=8;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.SPEED_FINE: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 enum byte field_SPEED_FINE=9;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.pan_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_pan_cmd=0;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.tilt_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_tilt_cmd=0;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.speed_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_cmd=0;
 /// @brief interbotix_xs_msgs/msg/TurretJoy.speed_toggle_cmd: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 byte field_speed_toggle_cmd=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/msg/TurretJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_pan_cmd)) return false;
  if(!w.integer(this.field_tilt_cmd)) return false;
  if(!w.integer(this.field_speed_cmd)) return false;
  if(!w.integer(this.field_speed_toggle_cmd)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/msg/TurretJoy.
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
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsMsgTurretJoy value) {
  value=Ros2Interbotix_xs_msgsMsgTurretJoy.init;
  if(!r.integer(value.field_pan_cmd)) return false;
  if(!r.integer(value.field_tilt_cmd)) return false;
  if(!r.integer(value.field_speed_cmd)) return false;
  if(!r.integer(value.field_speed_toggle_cmd)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/msg/TurretJoy value.
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
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/msg/TurretJoy value.
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
 /// @see Ros2Interbotix_xs_msgsMsgTurretJoy; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsMsgTurretJoy value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/MotorGains_Request value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 36..292 bytes
/// and is identified by UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsSrvMotorGains_Request {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/MotorGains_Request in bytes.
 /// @details The inclusive bound is 292 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=292;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/MotorGains_Request.
 /// @details Exact identity UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/MotorGains_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/srv/MotorGains_Request";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/MotorGains_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.kp_pos: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 int field_kp_pos=0;
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.ki_pos: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 int field_ki_pos=0;
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.kd_pos: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 int field_kd_pos=0;
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.k1: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 int field_k1=0;
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.k2: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 int field_k2=0;
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.kp_vel: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 int field_kp_vel=0;
 /// @brief interbotix_xs_msgs/srv/MotorGains_Request.ki_vel: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 int field_ki_vel=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/MotorGains_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  if(!w.integer(this.field_kp_pos)) return false;
  if(!w.integer(this.field_ki_pos)) return false;
  if(!w.integer(this.field_kd_pos)) return false;
  if(!w.integer(this.field_k1)) return false;
  if(!w.integer(this.field_k2)) return false;
  if(!w.integer(this.field_kp_vel)) return false;
  if(!w.integer(this.field_ki_vel)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/MotorGains_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsSrvMotorGains_Request value) {
  value=Ros2Interbotix_xs_msgsSrvMotorGains_Request.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  if(!r.integer(value.field_kp_pos)) return false;
  if(!r.integer(value.field_ki_pos)) return false;
  if(!r.integer(value.field_kd_pos)) return false;
  if(!r.integer(value.field_k1)) return false;
  if(!r.integer(value.field_k2)) return false;
  if(!r.integer(value.field_kp_vel)) return false;
  if(!r.integer(value.field_ki_vel)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/MotorGains_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/MotorGains_Request value.
 /// @details Require the complete 36..292-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Request; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsSrvMotorGains_Request value) {
  if(bytes.length<36 || bytes.length>292) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/MotorGains_Response value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsSrvMotorGains_Response {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/MotorGains_Response in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/MotorGains_Response.
 /// @details Exact identity UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/MotorGains_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/srv/MotorGains_Response";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/MotorGains_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/MotorGains_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/MotorGains_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsSrvMotorGains_Response value) {
  value=Ros2Interbotix_xs_msgsSrvMotorGains_Response.init;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/MotorGains_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/MotorGains_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvMotorGains_Response; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsSrvMotorGains_Response value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/OperatingModes_Request value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 24..536 bytes
/// and is identified by UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsSrvOperatingModes_Request {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/OperatingModes_Request in bytes.
 /// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=536;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/OperatingModes_Request.
 /// @details Exact identity UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/OperatingModes_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/srv/OperatingModes_Request";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/OperatingModes_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/srv/OperatingModes_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/srv/OperatingModes_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/srv/OperatingModes_Request.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_mode=null;
 /// @brief interbotix_xs_msgs/srv/OperatingModes_Request.profile_type: string; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_profile_type=null;
 /// @brief interbotix_xs_msgs/srv/OperatingModes_Request.profile_velocity: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 int field_profile_velocity=0;
 /// @brief interbotix_xs_msgs/srv/OperatingModes_Request.profile_acceleration: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 int field_profile_acceleration=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/OperatingModes_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  if(!w.text(this.field_mode,128)) return false;
  if(!w.text(this.field_profile_type,128)) return false;
  if(!w.integer(this.field_profile_velocity)) return false;
  if(!w.integer(this.field_profile_acceleration)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/OperatingModes_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsSrvOperatingModes_Request value) {
  value=Ros2Interbotix_xs_msgsSrvOperatingModes_Request.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  if(!r.text(value.field_mode,128)) return false;
  if(!r.text(value.field_profile_type,128)) return false;
  if(!r.integer(value.field_profile_velocity)) return false;
  if(!r.integer(value.field_profile_acceleration)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/OperatingModes_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/OperatingModes_Request value.
 /// @details Require the complete 24..536-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Request; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsSrvOperatingModes_Request value) {
  if(bytes.length<24 || bytes.length>536) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/OperatingModes_Response value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsSrvOperatingModes_Response {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/OperatingModes_Response in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/OperatingModes_Response.
 /// @details Exact identity UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/OperatingModes_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/srv/OperatingModes_Response";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/OperatingModes_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/OperatingModes_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/OperatingModes_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsSrvOperatingModes_Response value) {
  value=Ros2Interbotix_xs_msgsSrvOperatingModes_Response.init;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/OperatingModes_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/OperatingModes_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvOperatingModes_Response; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsSrvOperatingModes_Response value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/Reboot_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 10..266 bytes
/// and is identified by UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsSrvReboot_Request {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/Reboot_Request in bytes.
 /// @details The inclusive bound is 266 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=266;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/Reboot_Request.
 /// @details Exact identity UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/Reboot_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/srv/Reboot_Request";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/Reboot_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/srv/Reboot_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/srv/Reboot_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/srv/Reboot_Request.enable: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/d/API.md
 bool field_enable=false;
 /// @brief interbotix_xs_msgs/srv/Reboot_Request.smart_reboot: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/d/API.md
 bool field_smart_reboot=false;
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/Reboot_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  if(!w.boolean(this.field_enable)) return false;
  if(!w.boolean(this.field_smart_reboot)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/Reboot_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsSrvReboot_Request value) {
  value=Ros2Interbotix_xs_msgsSrvReboot_Request.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  if(!r.boolean(value.field_enable)) return false;
  if(!r.boolean(value.field_smart_reboot)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/Reboot_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/Reboot_Request value.
 /// @details Require the complete 10..266-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Request; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsSrvReboot_Request value) {
  if(bytes.length<10 || bytes.length>266) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/Reboot_Response value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsSrvReboot_Response {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/Reboot_Response in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/Reboot_Response.
 /// @details Exact identity UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/Reboot_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/srv/Reboot_Response";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/Reboot_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/Reboot_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/Reboot_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsSrvReboot_Response value) {
  value=Ros2Interbotix_xs_msgsSrvReboot_Response.init;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/Reboot_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/Reboot_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvReboot_Response; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsSrvReboot_Response value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/RegisterValues_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..400 bytes
/// and is identified by UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsSrvRegisterValues_Request {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/RegisterValues_Request in bytes.
 /// @details The inclusive bound is 400 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=400;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/RegisterValues_Request.
 /// @details Exact identity UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/RegisterValues_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/srv/RegisterValues_Request";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/RegisterValues_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/srv/RegisterValues_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/srv/RegisterValues_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/srv/RegisterValues_Request.reg: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_reg=null;
 /// @brief interbotix_xs_msgs/srv/RegisterValues_Request.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/d/API.md
 int field_value=0;
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/RegisterValues_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  if(!w.text(this.field_reg,128)) return false;
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/RegisterValues_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsSrvRegisterValues_Request value) {
  value=Ros2Interbotix_xs_msgsSrvRegisterValues_Request.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  if(!r.text(value.field_reg,128)) return false;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/RegisterValues_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/RegisterValues_Request value.
 /// @details Require the complete 16..400-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Request; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsSrvRegisterValues_Request value) {
  if(bytes.length<16 || bytes.length>400) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/RegisterValues_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..68 bytes
/// and is identified by UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsSrvRegisterValues_Response {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/RegisterValues_Response in bytes.
 /// @details The inclusive bound is 68 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=68;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/RegisterValues_Response.
 /// @details Exact identity UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/RegisterValues_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/srv/RegisterValues_Response";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/RegisterValues_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/srv/RegisterValues_Response.values: int32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/d/API.md
 int[] field_values=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/RegisterValues_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(this.field_values.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_values.length)) return false;
  foreach(ref e; this.field_values) {
  if(!w.integer(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/RegisterValues_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsSrvRegisterValues_Response value) {
  value=Ros2Interbotix_xs_msgsSrvRegisterValues_Response.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>16) {
       r.code=22;
       return false;
  }
  value.field_values=arena.allocate!(int)(count0);
  if(value.field_values.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_values) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/RegisterValues_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/RegisterValues_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvRegisterValues_Response; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsSrvRegisterValues_Response value) {
  if(bytes.length<4 || bytes.length>68) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/RobotInfo_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..264 bytes
/// and is identified by UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsSrvRobotInfo_Request {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/RobotInfo_Request in bytes.
 /// @details The inclusive bound is 264 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=264;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/RobotInfo_Request.
 /// @details Exact identity UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/RobotInfo_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/srv/RobotInfo_Request";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/RobotInfo_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/RobotInfo_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/RobotInfo_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsSrvRobotInfo_Request value) {
  value=Ros2Interbotix_xs_msgsSrvRobotInfo_Request.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/RobotInfo_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/RobotInfo_Request value.
 /// @details Require the complete 8..264-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Request; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsSrvRobotInfo_Request value) {
  if(bytes.length<8 || bytes.length>264) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/RobotInfo_Response value.
/// @details All 11 declared fields are retained in source order. The canonical representation occupies 42..18474
/// bytes and is identified by UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsSrvRobotInfo_Response {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/RobotInfo_Response in bytes.
 /// @details The inclusive bound is 18474 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=18474;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/RobotInfo_Response.
 /// @details Exact identity UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/RobotInfo_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/srv/RobotInfo_Response";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/RobotInfo_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.mode: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_mode=null;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.profile_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_profile_type=null;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_names: string; 0..64 elements; each string is 0..128
 /// bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[][] field_joint_names=null;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_ids: int16; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 short[] field_joint_ids=null;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_lower_limits: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 float[] field_joint_lower_limits=null;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_upper_limits: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 float[] field_joint_upper_limits=null;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_velocity_limits: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 float[] field_joint_velocity_limits=null;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_sleep_positions: float32; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 float[] field_joint_sleep_positions=null;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.joint_state_indices: int16; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 short[] field_joint_state_indices=null;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.num_joints: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 short field_num_joints=0;
 /// @brief interbotix_xs_msgs/srv/RobotInfo_Response.name: string; 0..64 elements; each string is 0..128 bytes;
 /// strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[][] field_name=null;
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/RobotInfo_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_mode,128)) return false;
  if(!w.text(this.field_profile_type,128)) return false;
  if(this.field_joint_names.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_names.length)) return false;
  foreach(ref e; this.field_joint_names) {
  if(!w.text(e,128)) return false;
  }
  if(this.field_joint_ids.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_ids.length)) return false;
  foreach(ref e; this.field_joint_ids) {
  if(!w.integer(e)) return false;
  }
  if(this.field_joint_lower_limits.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_lower_limits.length)) return false;
  foreach(ref e; this.field_joint_lower_limits) {
  if(!w.float32(e)) return false;
  }
  if(this.field_joint_upper_limits.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_upper_limits.length)) return false;
  foreach(ref e; this.field_joint_upper_limits) {
  if(!w.float32(e)) return false;
  }
  if(this.field_joint_velocity_limits.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_velocity_limits.length)) return false;
  foreach(ref e; this.field_joint_velocity_limits) {
  if(!w.float32(e)) return false;
  }
  if(this.field_joint_sleep_positions.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_sleep_positions.length)) return false;
  foreach(ref e; this.field_joint_sleep_positions) {
  if(!w.float32(e)) return false;
  }
  if(this.field_joint_state_indices.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_state_indices.length)) return false;
  foreach(ref e; this.field_joint_state_indices) {
  if(!w.integer(e)) return false;
  }
  if(!w.integer(this.field_num_joints)) return false;
  if(this.field_name.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_name.length)) return false;
  foreach(ref e; this.field_name) {
  if(!w.text(e,128)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/RobotInfo_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsSrvRobotInfo_Response value) {
  value=Ros2Interbotix_xs_msgsSrvRobotInfo_Response.init;
  if(!r.text(value.field_mode,128)) return false;
  if(!r.text(value.field_profile_type,128)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>64) {
       r.code=22;
       return false;
  }
  value.field_joint_names=arena.allocate!(const(ubyte)[])(count2);
  if(value.field_joint_names.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_names) {
  if(!r.text(e,128)) return false;
  }
  uint count3; if(!r.integer(count3)) return false;
  if(count3>64) {
       r.code=22;
       return false;
  }
  value.field_joint_ids=arena.allocate!(short)(count3);
  if(value.field_joint_ids.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_ids) {
  if(!r.integer(e)) return false;
  }
  uint count4; if(!r.integer(count4)) return false;
  if(count4>64) {
       r.code=22;
       return false;
  }
  value.field_joint_lower_limits=arena.allocate!(float)(count4);
  if(value.field_joint_lower_limits.length!=count4) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_lower_limits) {
  if(!r.float32(e)) return false;
  }
  uint count5; if(!r.integer(count5)) return false;
  if(count5>64) {
       r.code=22;
       return false;
  }
  value.field_joint_upper_limits=arena.allocate!(float)(count5);
  if(value.field_joint_upper_limits.length!=count5) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_upper_limits) {
  if(!r.float32(e)) return false;
  }
  uint count6; if(!r.integer(count6)) return false;
  if(count6>64) {
       r.code=22;
       return false;
  }
  value.field_joint_velocity_limits=arena.allocate!(float)(count6);
  if(value.field_joint_velocity_limits.length!=count6) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_velocity_limits) {
  if(!r.float32(e)) return false;
  }
  uint count7; if(!r.integer(count7)) return false;
  if(count7>64) {
       r.code=22;
       return false;
  }
  value.field_joint_sleep_positions=arena.allocate!(float)(count7);
  if(value.field_joint_sleep_positions.length!=count7) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_sleep_positions) {
  if(!r.float32(e)) return false;
  }
  uint count8; if(!r.integer(count8)) return false;
  if(count8>64) {
       r.code=22;
       return false;
  }
  value.field_joint_state_indices=arena.allocate!(short)(count8);
  if(value.field_joint_state_indices.length!=count8) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_state_indices) {
  if(!r.integer(e)) return false;
  }
  if(!r.integer(value.field_num_joints)) return false;
  uint count10; if(!r.integer(count10)) return false;
  if(count10>64) {
       r.code=22;
       return false;
  }
  value.field_name=arena.allocate!(const(ubyte)[])(count10);
  if(value.field_name.length!=count10) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_name) {
  if(!r.text(e,128)) return false;
  }
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/RobotInfo_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/RobotInfo_Response value.
 /// @details Require the complete 42..18474-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvRobotInfo_Response; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsSrvRobotInfo_Response value) {
  if(bytes.length<42 || bytes.length>18474) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/TorqueEnable_Request value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..265 bytes
/// and is identified by UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsSrvTorqueEnable_Request {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/TorqueEnable_Request in bytes.
 /// @details The inclusive bound is 265 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=265;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/TorqueEnable_Request.
 /// @details Exact identity UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/TorqueEnable_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/srv/TorqueEnable_Request";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/TorqueEnable_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief interbotix_xs_msgs/srv/TorqueEnable_Request.cmd_type: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_cmd_type=null;
 /// @brief interbotix_xs_msgs/srv/TorqueEnable_Request.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/d/API.md
 const(ubyte)[] field_name=null;
 /// @brief interbotix_xs_msgs/srv/TorqueEnable_Request.enable: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/d/API.md
 bool field_enable=false;
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/TorqueEnable_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_cmd_type,128)) return false;
  if(!w.text(this.field_name,128)) return false;
  if(!w.boolean(this.field_enable)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/TorqueEnable_Request.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsSrvTorqueEnable_Request value) {
  value=Ros2Interbotix_xs_msgsSrvTorqueEnable_Request.init;
  if(!r.text(value.field_cmd_type,128)) return false;
  if(!r.text(value.field_name,128)) return false;
  if(!r.boolean(value.field_enable)) return false;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/TorqueEnable_Request value.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/TorqueEnable_Request value.
 /// @details Require the complete 9..265-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsSrvTorqueEnable_Request value) {
  if(bytes.length<9 || bytes.length>265) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 interbotix_xs_msgs/srv/TorqueEnable_Response value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/trossen/en_US/language/d/API.md
struct Ros2Interbotix_xs_msgsSrvTorqueEnable_Response {
 /// @brief Maximum canonical extent of interbotix_xs_msgs/srv/TorqueEnable_Response in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of interbotix_xs_msgs/srv/TorqueEnable_Response.
 /// @details Exact identity UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b";
 /// @brief Original ROS type name for interbotix_xs_msgs/srv/TorqueEnable_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeType="interbotix_xs_msgs/srv/TorqueEnable_Response";
 /// @brief Selected original native identity for interbotix_xs_msgs/srv/TorqueEnable_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of interbotix_xs_msgs/srv/TorqueEnable_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of interbotix_xs_msgs/srv/TorqueEnable_Response.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Interbotix_xs_msgsSrvTorqueEnable_Response value) {
  value=Ros2Interbotix_xs_msgsSrvTorqueEnable_Response.init;
  return true;
 }
 /// @brief Encode one complete interbotix_xs_msgs/srv/TorqueEnable_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete interbotix_xs_msgs/srv/TorqueEnable_Response value.
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
 /// @see Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; document/platform/trossen/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Interbotix_xs_msgsSrvTorqueEnable_Response value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
