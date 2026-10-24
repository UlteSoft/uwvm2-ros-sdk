// Generated complete bounded values; BetterC, caller buffers, no authority.
module roswasm.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 2 builtin_interfaces/msg/Time value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7.
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
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 int field_sec=0;
 /// @brief builtin_interfaces/msg/Time.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 uint field_nanosec=0;
 /// @brief Append every canonical field of builtin_interfaces/msg/Time.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
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
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Builtin_interfacesMsgTime value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 std_msgs/msg/Header value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..76 bytes and
/// is identified by UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Std_msgsMsgHeader {
 /// @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
 /// @details The inclusive bound is 76 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=76;
 /// @brief Canonical codec identity of std_msgs/msg/Header.
 /// @details Exact identity UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
 /// @brief Original ROS type name for std_msgs/msg/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="std_msgs/msg/Header";
 /// @brief Selected original native identity for std_msgs/msg/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 Ros2Builtin_interfacesMsgTime field_stamp=Ros2Builtin_interfacesMsgTime.init;
 /// @brief std_msgs/msg/Header.frame_id: string; each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_frame_id=null;
 /// @brief Append every canonical field of std_msgs/msg/Header.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_stamp.writeFields(w)) return false;
  if(!w.text(this.field_frame_id,64)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_msgs/msg/Header.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Std_msgsMsgHeader value) {
  value=Ros2Std_msgsMsgHeader.init;
  if(!Ros2Builtin_interfacesMsgTime.readFields(r,arena,value.field_stamp)) return false;
  if(!r.text(value.field_frame_id,64)) return false;
  return true;
 }
 /// @brief Encode one complete std_msgs/msg/Header value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_msgs/msg/Header value.
 /// @details Require the complete 12..76-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Std_msgsMsgHeader; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Std_msgsMsgHeader value) {
  if(bytes.length<12 || bytes.length>76) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 sensor_msgs/msg/JointState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 28..5980 bytes
/// and is identified by UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Sensor_msgsMsgJointState {
 /// @brief Maximum canonical extent of sensor_msgs/msg/JointState in bytes.
 /// @details The inclusive bound is 5980 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=5980;
 /// @brief Canonical codec identity of sensor_msgs/msg/JointState.
 /// @details Exact identity UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac";
 /// @brief Original ROS type name for sensor_msgs/msg/JointState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="sensor_msgs/msg/JointState";
 /// @brief Selected original native identity for sensor_msgs/msg/JointState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief sensor_msgs/msg/JointState.header: std_msgs/msg/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 Ros2Std_msgsMsgHeader field_header=Ros2Std_msgsMsgHeader.init;
 /// @brief sensor_msgs/msg/JointState.name: string; 0..64 elements; each string is 0..64 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[][] field_name=null;
 /// @brief sensor_msgs/msg/JointState.position: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 double[] field_position=null;
 /// @brief sensor_msgs/msg/JointState.velocity: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 double[] field_velocity=null;
 /// @brief sensor_msgs/msg/JointState.effort: float64; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 double[] field_effort=null;
 /// @brief Append every canonical field of sensor_msgs/msg/JointState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_name.length != 0 && this.field_position.length != 0 && this.field_name.length !=
      this.field_position.length) {
           w.code=22; return false;
      }
  if(this.field_name.length != 0 && this.field_velocity.length != 0 && this.field_name.length !=
      this.field_velocity.length) {
           w.code=22; return false;
      }
  if(this.field_name.length != 0 && this.field_effort.length != 0 && this.field_name.length !=
      this.field_effort.length) {
           w.code=22; return false;
      }
  if(this.field_position.length != 0 && this.field_velocity.length != 0 && this.field_position.length !=
      this.field_velocity.length) {
           w.code=22; return false;
      }
  if(this.field_position.length != 0 && this.field_effort.length != 0 && this.field_position.length !=
      this.field_effort.length) {
           w.code=22; return false;
      }
  if(this.field_velocity.length != 0 && this.field_effort.length != 0 && this.field_velocity.length !=
      this.field_effort.length) {
           w.code=22; return false;
      }
  if(!this.field_header.writeFields(w)) return false;
  if(this.field_name.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_name.length)) return false;
  foreach(ref e; this.field_name) {
  if(!w.text(e,64)) return false;
  }
  if(this.field_position.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_position.length)) return false;
  foreach(ref e; this.field_position) {
  if(!w.float64(e)) return false;
  }
  if(this.field_velocity.length>64) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_velocity.length)) return false;
  foreach(ref e; this.field_velocity) {
  if(!w.float64(e)) return false;
  }
  if(this.field_effort.length>64) {
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
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Sensor_msgsMsgJointState value) {
  value=Ros2Sensor_msgsMsgJointState.init;
  if(!Ros2Std_msgsMsgHeader.readFields(r,arena,value.field_header)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>64) {
       r.code=22;
       return false;
  }
  value.field_name=arena.allocate!(const(ubyte)[])(count1);
  if(value.field_name.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_name) {
  if(!r.text(e,64)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>64) {
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
  if(count3>64) {
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
  if(count4>64) {
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
  if(value.field_name.length != 0 && value.field_position.length != 0 && value.field_name.length !=
      value.field_position.length) {
           r.code=22; return false;
      }
  if(value.field_name.length != 0 && value.field_velocity.length != 0 && value.field_name.length !=
      value.field_velocity.length) {
           r.code=22; return false;
      }
  if(value.field_name.length != 0 && value.field_effort.length != 0 && value.field_name.length !=
      value.field_effort.length) {
           r.code=22; return false;
      }
  if(value.field_position.length != 0 && value.field_velocity.length != 0 && value.field_position.length !=
      value.field_velocity.length) {
           r.code=22; return false;
      }
  if(value.field_position.length != 0 && value.field_effort.length != 0 && value.field_position.length !=
      value.field_effort.length) {
           r.code=22; return false;
      }
  if(value.field_velocity.length != 0 && value.field_effort.length != 0 && value.field_velocity.length !=
      value.field_effort.length) {
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
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete sensor_msgs/msg/JointState value.
 /// @details Require the complete 28..5980-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Sensor_msgsMsgJointState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Sensor_msgsMsgJointState value) {
  if(bytes.length<28 || bytes.length>5980) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_isaac_sim_bridge/msg/ClockEvent value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 14..14 bytes and
/// is identified by UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_isaac_sim_bridgeMsgClockEvent {
 /// @brief Maximum canonical extent of uwvm_isaac_sim_bridge/msg/ClockEvent in bytes.
 /// @details The inclusive bound is 14 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=14;
 /// @brief Canonical codec identity of uwvm_isaac_sim_bridge/msg/ClockEvent.
 /// @details Exact identity UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6";
 /// @brief Original ROS type name for uwvm_isaac_sim_bridge/msg/ClockEvent.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_isaac_sim_bridge/msg/ClockEvent";
 /// @brief Selected original native identity for uwvm_isaac_sim_bridge/msg/ClockEvent.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.AUTOMATIC: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AUTOMATIC=1;
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.MANUAL: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_MANUAL=2;
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.kind: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 ubyte field_kind=0;
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.phase: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 ubyte field_phase=0;
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.frame: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 uint field_frame=0;
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 int field_sec=0;
 /// @brief uwvm_isaac_sim_bridge/msg/ClockEvent.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 uint field_nanosec=0;
 /// @brief Append every canonical field of uwvm_isaac_sim_bridge/msg/ClockEvent.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_kind)) return false;
  if(!w.integer(this.field_phase)) return false;
  if(!w.integer(this.field_frame)) return false;
  if(!w.integer(this.field_sec)) return false;
  if(!w.integer(this.field_nanosec)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_isaac_sim_bridge/msg/ClockEvent.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_isaac_sim_bridgeMsgClockEvent value) {
  value=Ros2Uwvm_isaac_sim_bridgeMsgClockEvent.init;
  if(!r.integer(value.field_kind)) return false;
  if(!r.integer(value.field_phase)) return false;
  if(!r.integer(value.field_frame)) return false;
  if(!r.integer(value.field_sec)) return false;
  if(!r.integer(value.field_nanosec)) return false;
  return true;
 }
 /// @brief Encode one complete uwvm_isaac_sim_bridge/msg/ClockEvent value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_isaac_sim_bridge/msg/ClockEvent value.
 /// @details Require the complete 14..14-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Uwvm_isaac_sim_bridgeMsgClockEvent value) {
  if(bytes.length<14 || bytes.length>14) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_isaac_sim_bridge/srv/ClockControl_Request value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 22..22 bytes and
/// is identified by UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request {
 /// @brief Maximum canonical extent of uwvm_isaac_sim_bridge/srv/ClockControl_Request in bytes.
 /// @details The inclusive bound is 22 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=22;
 /// @brief Canonical codec identity of uwvm_isaac_sim_bridge/srv/ClockControl_Request.
 /// @details Exact identity UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19";
 /// @brief Original ROS type name for uwvm_isaac_sim_bridge/srv/ClockControl_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_isaac_sim_bridge/srv/ClockControl_Request";
 /// @brief Selected original native identity for uwvm_isaac_sim_bridge/srv/ClockControl_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.START: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_START=1;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.STEP: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_STEP=2;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.FINISH: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_FINISH=3;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.CANCEL: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_CANCEL=4;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.operation: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 ubyte field_operation=0;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.session_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 ulong field_session_nonce=0;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.request_sequence: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 uint field_request_sequence=0;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.phase: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 ubyte field_phase=0;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.frame: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 uint field_frame=0;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.impulse: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 bool field_impulse=false;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.extra_update: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 bool field_extra_update=false;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Request.pacing_milliseconds: uint16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 ushort field_pacing_milliseconds=0;
 /// @brief Append every canonical field of uwvm_isaac_sim_bridge/srv/ClockControl_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_operation)) return false;
  if(!w.integer(this.field_session_nonce)) return false;
  if(!w.integer(this.field_request_sequence)) return false;
  if(!w.integer(this.field_phase)) return false;
  if(!w.integer(this.field_frame)) return false;
  if(!w.boolean(this.field_impulse)) return false;
  if(!w.boolean(this.field_extra_update)) return false;
  if(!w.integer(this.field_pacing_milliseconds)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_isaac_sim_bridge/srv/ClockControl_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request value) {
  value=Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request.init;
  if(!r.integer(value.field_operation)) return false;
  if(!r.integer(value.field_session_nonce)) return false;
  if(!r.integer(value.field_request_sequence)) return false;
  if(!r.integer(value.field_phase)) return false;
  if(!r.integer(value.field_frame)) return false;
  if(!r.boolean(value.field_impulse)) return false;
  if(!r.boolean(value.field_extra_update)) return false;
  if(!r.integer(value.field_pacing_milliseconds)) return false;
  return true;
 }
 /// @brief Encode one complete uwvm_isaac_sim_bridge/srv/ClockControl_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_isaac_sim_bridge/srv/ClockControl_Request value.
 /// @details Require the complete 22..22-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request value) {
  if(bytes.length<22 || bytes.length>22) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_isaac_sim_bridge/srv/ClockControl_Response value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and
/// is identified by UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response {
 /// @brief Maximum canonical extent of uwvm_isaac_sim_bridge/srv/ClockControl_Response in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=48;
 /// @brief Canonical codec identity of uwvm_isaac_sim_bridge/srv/ClockControl_Response.
 /// @details Exact identity UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502";
 /// @brief Original ROS type name for uwvm_isaac_sim_bridge/srv/ClockControl_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_isaac_sim_bridge/srv/ClockControl_Response";
 /// @brief Selected original native identity for uwvm_isaac_sim_bridge/srv/ClockControl_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 uint field_status=0;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.session_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 ulong field_session_nonce=0;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.request_sequence: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 uint field_request_sequence=0;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.state: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 ubyte field_state=0;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.actual_app_updates: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 ulong field_actual_app_updates=0;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.completed_steps: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 uint field_completed_steps=0;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.has_event: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_has_event=false;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.event: uwvm_isaac_sim_bridge/msg/ClockEvent.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Uwvm_isaac_sim_bridgeMsgClockEvent field_event=Ros2Uwvm_isaac_sim_bridgeMsgClockEvent.init;
 /// @brief uwvm_isaac_sim_bridge/srv/ClockControl_Response.cleanup_status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 uint field_cleanup_status=0;
 /// @brief Append every canonical field of uwvm_isaac_sim_bridge/srv/ClockControl_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_status)) return false;
  if(!w.integer(this.field_session_nonce)) return false;
  if(!w.integer(this.field_request_sequence)) return false;
  if(!w.integer(this.field_state)) return false;
  if(!w.integer(this.field_actual_app_updates)) return false;
  if(!w.integer(this.field_completed_steps)) return false;
  if(!w.boolean(this.field_has_event)) return false;
  if(!this.field_event.writeFields(w)) return false;
  if(!w.integer(this.field_cleanup_status)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_isaac_sim_bridge/srv/ClockControl_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response value) {
  value=Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response.init;
  if(!r.integer(value.field_status)) return false;
  if(!r.integer(value.field_session_nonce)) return false;
  if(!r.integer(value.field_request_sequence)) return false;
  if(!r.integer(value.field_state)) return false;
  if(!r.integer(value.field_actual_app_updates)) return false;
  if(!r.integer(value.field_completed_steps)) return false;
  if(!r.boolean(value.field_has_event)) return false;
  if(!Ros2Uwvm_isaac_sim_bridgeMsgClockEvent.readFields(r,arena,value.field_event)) return false;
  if(!r.integer(value.field_cleanup_status)) return false;
  return true;
 }
 /// @brief Encode one complete uwvm_isaac_sim_bridge/srv/ClockControl_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_isaac_sim_bridge/srv/ClockControl_Response value.
 /// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial
 /// failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena,
     out Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response value) {
  if(bytes.length<48 || bytes.length>48) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
