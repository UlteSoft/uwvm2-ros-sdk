/// @file records.d
/// @brief Complete universal_robots values and adapters for the selected original interface catalog.
/// @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
/// defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
/// roles require the separately admitted SDK owner.
/// @see share/platform/universal_robots/domains/universal-robots-ros1-complete.ir.json
/// @see document/platform/universal_robots/en_US/README.md

// Generated complete bounded values; BetterC, caller buffers, no authority.
module universal_robots.ros1.universal_robots_ros1_complete.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 1 geometry_msgs/Point value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and is identified by
/// UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsPoint {
 /// @brief Maximum canonical extent of geometry_msgs/Point in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of geometry_msgs/Point.
 /// @details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
 /// @brief Original ROS type name for geometry_msgs/Point.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/Point";
 /// @brief Selected original native identity for geometry_msgs/Point.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Point.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 double field_x=0;
 /// @brief geometry_msgs/Point.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 double field_y=0;
 /// @brief geometry_msgs/Point.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 double field_z=0;
 /// @brief Append every canonical field of geometry_msgs/Point.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Point.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsPoint value) {
  value=Ros1Geometry_msgsPoint.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Point value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Point value.
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsPoint value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Quaternion value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes and is identified by
/// UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsQuaternion {
 /// @brief Maximum canonical extent of geometry_msgs/Quaternion in bytes.
 /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=32;
 /// @brief Canonical codec identity of geometry_msgs/Quaternion.
 /// @details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
 /// @brief Original ROS type name for geometry_msgs/Quaternion.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/Quaternion";
 /// @brief Selected original native identity for geometry_msgs/Quaternion.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Quaternion.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_x=0;
 /// @brief geometry_msgs/Quaternion.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_y=0;
 /// @brief geometry_msgs/Quaternion.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_z=0;
 /// @brief geometry_msgs/Quaternion.w: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_w=0;
 /// @brief Append every canonical field of geometry_msgs/Quaternion.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  if(!w.float64(this.field_w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Quaternion.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsQuaternion value) {
  value=Ros1Geometry_msgsQuaternion.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  if(!r.float64(value.field_w)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Quaternion value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Quaternion value.
 /// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsQuaternion value) {
  if(bytes.length<32 || bytes.length>32) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Pose value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes and is identified by
/// UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsPose {
 /// @brief Maximum canonical extent of geometry_msgs/Pose in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of geometry_msgs/Pose.
 /// @details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
 /// @brief Original ROS type name for geometry_msgs/Pose.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/Pose";
 /// @brief Selected original native identity for geometry_msgs/Pose.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Pose.position: geometry_msgs/Point.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsPoint field_position=Ros1Geometry_msgsPoint.init;
 /// @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsQuaternion field_orientation=Ros1Geometry_msgsQuaternion.init;
 /// @brief Append every canonical field of geometry_msgs/Pose.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_position.writeFields(w)) return false;
  if(!this.field_orientation.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Pose.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsPose value) {
  value=Ros1Geometry_msgsPose.init;
  if(!Ros1Geometry_msgsPoint.readFields(r,arena,value.field_position)) return false;
  if(!Ros1Geometry_msgsQuaternion.readFields(r,arena,value.field_orientation)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Pose value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Pose value.
 /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsPose value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 time value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is identified by
/// UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Time {
 /// @brief Maximum canonical extent of time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of time.
 /// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
 /// @brief Original ROS type name for time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="time";
 /// @brief Selected original native identity for time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief time.sec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 uint field_sec=0;
 /// @brief time.nsec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 uint field_nsec=0;
 /// @brief Append every canonical field of time.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_nsec >= 1000000000) {
       w.code=22;
       return false;
  }
  if(!w.integer(this.field_sec)) return false;
  if(!w.integer(this.field_nsec)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of time.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Time value) {
  value=Ros1Time.init;
  if(!r.integer(value.field_sec)) return false;
  if(!r.integer(value.field_nsec)) return false;
  if(value.field_nsec >= 1000000000) {
       r.code=22;
       return false;
  }
  return true;
 }
 /// @brief Encode one complete time value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete time value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Time; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Time value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 std_msgs/Header value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..144 bytes and is identified by
/// UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Std_msgsHeader {
 /// @brief Maximum canonical extent of std_msgs/Header in bytes.
 /// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=144;
 /// @brief Canonical codec identity of std_msgs/Header.
 /// @details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
 /// @brief Original ROS type name for std_msgs/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="std_msgs/Header";
 /// @brief Selected original native identity for std_msgs/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief std_msgs/Header.seq: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 uint field_seq=0;
 /// @brief std_msgs/Header.stamp: time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 Ros1Time field_stamp=Ros1Time.init;
 /// @brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_frame_id=null;
 /// @brief Append every canonical field of std_msgs/Header.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_seq)) return false;
  if(!this.field_stamp.writeFields(w)) return false;
  if(!w.text(this.field_frame_id,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_msgs/Header.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Std_msgsHeader value) {
  value=Ros1Std_msgsHeader.init;
  if(!r.integer(value.field_seq)) return false;
  if(!Ros1Time.readFields(r,arena,value.field_stamp)) return false;
  if(!r.text(value.field_frame_id,128)) return false;
  return true;
 }
 /// @brief Encode one complete std_msgs/Header value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_msgs/Header value.
 /// @details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a
 /// successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Std_msgsHeader; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Std_msgsHeader value) {
  if(bytes.length<16 || bytes.length>144) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/PoseStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 72..200 bytes and is identified by
/// UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsPoseStamped {
 /// @brief Maximum canonical extent of geometry_msgs/PoseStamped in bytes.
 /// @details The inclusive bound is 200 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=200;
 /// @brief Canonical codec identity of geometry_msgs/PoseStamped.
 /// @details Exact identity UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95";
 /// @brief Original ROS type name for geometry_msgs/PoseStamped.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/PoseStamped";
 /// @brief Selected original native identity for geometry_msgs/PoseStamped.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/PoseStamped.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/d/API-CONTRACT.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief geometry_msgs/PoseStamped.pose: geometry_msgs/Pose.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsPose field_pose=Ros1Geometry_msgsPose.init;
 /// @brief Append every canonical field of geometry_msgs/PoseStamped.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_pose.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/PoseStamped.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsPoseStamped value) {
  value=Ros1Geometry_msgsPoseStamped.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros1Geometry_msgsPose.readFields(r,arena,value.field_pose)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/PoseStamped value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/PoseStamped value.
 /// @details Require the complete 72..200-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a
 /// successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoseStamped; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsPoseStamped value) {
  if(bytes.length<72 || bytes.length>200) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Vector3 value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes and is identified by
/// UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsVector3 {
 /// @brief Maximum canonical extent of geometry_msgs/Vector3 in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of geometry_msgs/Vector3.
 /// @details Exact identity UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";
 /// @brief Original ROS type name for geometry_msgs/Vector3.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/Vector3";
 /// @brief Selected original native identity for geometry_msgs/Vector3.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Vector3.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/d/API-CONTRACT.md
 double field_x=0;
 /// @brief geometry_msgs/Vector3.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/d/API-CONTRACT.md
 double field_y=0;
 /// @brief geometry_msgs/Vector3.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/d/API-CONTRACT.md
 double field_z=0;
 /// @brief Append every canonical field of geometry_msgs/Vector3.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Vector3.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsVector3 value) {
  value=Ros1Geometry_msgsVector3.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Vector3 value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Vector3 value.
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsVector3; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsVector3 value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Twist value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and is identified by
/// UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsTwist {
 /// @brief Maximum canonical extent of geometry_msgs/Twist in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsTwist; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=48;
 /// @brief Canonical codec identity of geometry_msgs/Twist.
 /// @details Exact identity UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Geometry_msgsTwist; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921";
 /// @brief Original ROS type name for geometry_msgs/Twist.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsTwist; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/Twist";
 /// @brief Selected original native identity for geometry_msgs/Twist.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsTwist; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Twist.linear: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsTwist; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsVector3 field_linear=Ros1Geometry_msgsVector3.init;
 /// @brief geometry_msgs/Twist.angular: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsTwist; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsVector3 field_angular=Ros1Geometry_msgsVector3.init;
 /// @brief Append every canonical field of geometry_msgs/Twist.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsTwist; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_linear.writeFields(w)) return false;
  if(!this.field_angular.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Twist.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsTwist; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsTwist value) {
  value=Ros1Geometry_msgsTwist.init;
  if(!Ros1Geometry_msgsVector3.readFields(r,arena,value.field_linear)) return false;
  if(!Ros1Geometry_msgsVector3.readFields(r,arena,value.field_angular)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Twist value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsTwist; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Twist value.
 /// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsTwist; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsTwist value) {
  if(bytes.length<48 || bytes.length>48) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Wrench value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes and is identified by
/// UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsWrench {
 /// @brief Maximum canonical extent of geometry_msgs/Wrench in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsWrench; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=48;
 /// @brief Canonical codec identity of geometry_msgs/Wrench.
 /// @details Exact identity UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Geometry_msgsWrench; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3";
 /// @brief Original ROS type name for geometry_msgs/Wrench.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsWrench; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="geometry_msgs/Wrench";
 /// @brief Selected original native identity for geometry_msgs/Wrench.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsWrench; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Wrench.force: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsWrench; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsVector3 field_force=Ros1Geometry_msgsVector3.init;
 /// @brief geometry_msgs/Wrench.torque: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Geometry_msgsWrench; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsVector3 field_torque=Ros1Geometry_msgsVector3.init;
 /// @brief Append every canonical field of geometry_msgs/Wrench.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsWrench; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_force.writeFields(w)) return false;
  if(!this.field_torque.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Wrench.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsWrench; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsWrench value) {
  value=Ros1Geometry_msgsWrench.init;
  if(!Ros1Geometry_msgsVector3.readFields(r,arena,value.field_force)) return false;
  if(!Ros1Geometry_msgsVector3.readFields(r,arena,value.field_torque)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Wrench value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsWrench; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Wrench value.
 /// @details Require the complete 48..48-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsWrench; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsWrench value) {
  if(bytes.length<48 || bytes.length>48) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/AddToLogRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and is identified by
/// UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsAddToLogRequest {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/AddToLogRequest in bytes.
 /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=260;
 /// @brief Canonical codec identity of ur_dashboard_msgs/AddToLogRequest.
 /// @details Exact identity UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4";
 /// @brief Original ROS type name for ur_dashboard_msgs/AddToLogRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/AddToLogRequest";
 /// @brief Selected original native identity for ur_dashboard_msgs/AddToLogRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/AddToLogRequest.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of ur_dashboard_msgs/AddToLogRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/AddToLogRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsAddToLogRequest value) {
  value=Ros1Ur_dashboard_msgsAddToLogRequest.init;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/AddToLogRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/AddToLogRequest value.
 /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsAddToLogRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsAddToLogRequest value) {
  if(bytes.length<4 || bytes.length>260) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/AddToLogResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and is identified by
/// UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsAddToLogResponse {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/AddToLogResponse in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of ur_dashboard_msgs/AddToLogResponse.
 /// @details Exact identity UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c";
 /// @brief Original ROS type name for ur_dashboard_msgs/AddToLogResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/AddToLogResponse";
 /// @brief Selected original native identity for ur_dashboard_msgs/AddToLogResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/AddToLogResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_answer=null;
 /// @brief ur_dashboard_msgs/AddToLogResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_dashboard_msgs/AddToLogResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_answer,256)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/AddToLogResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsAddToLogResponse value) {
  value=Ros1Ur_dashboard_msgsAddToLogResponse.init;
  if(!r.text(value.field_answer,256)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/AddToLogResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/AddToLogResponse value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsAddToLogResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsAddToLogResponse value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/GetLoadedProgramRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is identified by
/// UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsGetLoadedProgramRequest {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/GetLoadedProgramRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of ur_dashboard_msgs/GetLoadedProgramRequest.
 /// @details Exact identity UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a";
 /// @brief Original ROS type name for ur_dashboard_msgs/GetLoadedProgramRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/GetLoadedProgramRequest";
 /// @brief Selected original native identity for ur_dashboard_msgs/GetLoadedProgramRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of ur_dashboard_msgs/GetLoadedProgramRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetLoadedProgramRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsGetLoadedProgramRequest value) {
  value=Ros1Ur_dashboard_msgsGetLoadedProgramRequest.init;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/GetLoadedProgramRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/GetLoadedProgramRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsGetLoadedProgramRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/GetLoadedProgramResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 9..521 bytes and is identified by
/// UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsGetLoadedProgramResponse {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/GetLoadedProgramResponse in bytes.
 /// @details The inclusive bound is 521 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=521;
 /// @brief Canonical codec identity of ur_dashboard_msgs/GetLoadedProgramResponse.
 /// @details Exact identity UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a";
 /// @brief Original ROS type name for ur_dashboard_msgs/GetLoadedProgramResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/GetLoadedProgramResponse";
 /// @brief Selected original native identity for ur_dashboard_msgs/GetLoadedProgramResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/GetLoadedProgramResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_answer=null;
 /// @brief ur_dashboard_msgs/GetLoadedProgramResponse.program_name: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_program_name=null;
 /// @brief ur_dashboard_msgs/GetLoadedProgramResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_dashboard_msgs/GetLoadedProgramResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_answer,256)) return false;
  if(!w.text(this.field_program_name,256)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetLoadedProgramResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsGetLoadedProgramResponse value) {
  value=Ros1Ur_dashboard_msgsGetLoadedProgramResponse.init;
  if(!r.text(value.field_answer,256)) return false;
  if(!r.text(value.field_program_name,256)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/GetLoadedProgramResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/GetLoadedProgramResponse value.
 /// @details Require the complete 9..521-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetLoadedProgramResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsGetLoadedProgramResponse value) {
  if(bytes.length<9 || bytes.length>521) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/GetProgramStateRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is identified by
/// UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsGetProgramStateRequest {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/GetProgramStateRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of ur_dashboard_msgs/GetProgramStateRequest.
 /// @details Exact identity UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2";
 /// @brief Original ROS type name for ur_dashboard_msgs/GetProgramStateRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/GetProgramStateRequest";
 /// @brief Selected original native identity for ur_dashboard_msgs/GetProgramStateRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of ur_dashboard_msgs/GetProgramStateRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetProgramStateRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsGetProgramStateRequest value) {
  value=Ros1Ur_dashboard_msgsGetProgramStateRequest.init;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/GetProgramStateRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/GetProgramStateRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsGetProgramStateRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/ProgramState value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and is identified by
/// UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsProgramState {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/ProgramState in bytes.
 /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=260;
 /// @brief Canonical codec identity of ur_dashboard_msgs/ProgramState.
 /// @details Exact identity UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e";
 /// @brief Original ROS type name for ur_dashboard_msgs/ProgramState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/ProgramState";
 /// @brief Selected original native identity for ur_dashboard_msgs/ProgramState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/ProgramState.STOPPED: original string constant.
 /// @details Exact admitted value STOPPED. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/d/API-CONTRACT.md
 enum const(ubyte)[] field_STOPPED=[cast(ubyte)83, cast(ubyte)84, cast(ubyte)79, cast(ubyte)80, cast(ubyte)80, cast(ubyte)69, cast(ubyte)68];
 /// @brief ur_dashboard_msgs/ProgramState.PLAYING: original string constant.
 /// @details Exact admitted value PLAYING. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/d/API-CONTRACT.md
 enum const(ubyte)[] field_PLAYING=[cast(ubyte)80, cast(ubyte)76, cast(ubyte)65, cast(ubyte)89, cast(ubyte)73, cast(ubyte)78, cast(ubyte)71];
 /// @brief ur_dashboard_msgs/ProgramState.PAUSED: original string constant.
 /// @details Exact admitted value PAUSED. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/d/API-CONTRACT.md
 enum const(ubyte)[] field_PAUSED=[cast(ubyte)80, cast(ubyte)65, cast(ubyte)85, cast(ubyte)83, cast(ubyte)69, cast(ubyte)68];
 /// @brief ur_dashboard_msgs/ProgramState.state: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_state=null;
 /// @brief Append every canonical field of ur_dashboard_msgs/ProgramState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_state,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/ProgramState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsProgramState value) {
  value=Ros1Ur_dashboard_msgsProgramState.init;
  if(!r.text(value.field_state,256)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/ProgramState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/ProgramState value.
 /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsProgramState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsProgramState value) {
  if(bytes.length<4 || bytes.length>260) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/GetProgramStateResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 13..781 bytes and is identified by
/// UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsGetProgramStateResponse {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/GetProgramStateResponse in bytes.
 /// @details The inclusive bound is 781 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=781;
 /// @brief Canonical codec identity of ur_dashboard_msgs/GetProgramStateResponse.
 /// @details Exact identity UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed";
 /// @brief Original ROS type name for ur_dashboard_msgs/GetProgramStateResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/GetProgramStateResponse";
 /// @brief Selected original native identity for ur_dashboard_msgs/GetProgramStateResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/GetProgramStateResponse.state: ur_dashboard_msgs/ProgramState.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/d/API-CONTRACT.md
 Ros1Ur_dashboard_msgsProgramState field_state=Ros1Ur_dashboard_msgsProgramState.init;
 /// @brief ur_dashboard_msgs/GetProgramStateResponse.program_name: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_program_name=null;
 /// @brief ur_dashboard_msgs/GetProgramStateResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_answer=null;
 /// @brief ur_dashboard_msgs/GetProgramStateResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_dashboard_msgs/GetProgramStateResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_state.writeFields(w)) return false;
  if(!w.text(this.field_program_name,256)) return false;
  if(!w.text(this.field_answer,256)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetProgramStateResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsGetProgramStateResponse value) {
  value=Ros1Ur_dashboard_msgsGetProgramStateResponse.init;
  if(!Ros1Ur_dashboard_msgsProgramState.readFields(r,arena,value.field_state)) return false;
  if(!r.text(value.field_program_name,256)) return false;
  if(!r.text(value.field_answer,256)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/GetProgramStateResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/GetProgramStateResponse value.
 /// @details Require the complete 13..781-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a
 /// successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetProgramStateResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsGetProgramStateResponse value) {
  if(bytes.length<13 || bytes.length>781) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/GetRobotModeRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is identified by
/// UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsGetRobotModeRequest {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/GetRobotModeRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of ur_dashboard_msgs/GetRobotModeRequest.
 /// @details Exact identity UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609";
 /// @brief Original ROS type name for ur_dashboard_msgs/GetRobotModeRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/GetRobotModeRequest";
 /// @brief Selected original native identity for ur_dashboard_msgs/GetRobotModeRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of ur_dashboard_msgs/GetRobotModeRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetRobotModeRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsGetRobotModeRequest value) {
  value=Ros1Ur_dashboard_msgsGetRobotModeRequest.init;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/GetRobotModeRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/GetRobotModeRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsGetRobotModeRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/RobotMode value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is identified by
/// UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsRobotMode {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/RobotMode in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of ur_dashboard_msgs/RobotMode.
 /// @details Exact identity UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066";
 /// @brief Original ROS type name for ur_dashboard_msgs/RobotMode.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/RobotMode";
 /// @brief Selected original native identity for ur_dashboard_msgs/RobotMode.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/RobotMode.NO_CONTROLLER: original int8 constant.
 /// @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum byte field_NO_CONTROLLER=-1;
 /// @brief ur_dashboard_msgs/RobotMode.DISCONNECTED: original int8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum byte field_DISCONNECTED=0;
 /// @brief ur_dashboard_msgs/RobotMode.CONFIRM_SAFETY: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum byte field_CONFIRM_SAFETY=1;
 /// @brief ur_dashboard_msgs/RobotMode.BOOTING: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum byte field_BOOTING=2;
 /// @brief ur_dashboard_msgs/RobotMode.POWER_OFF: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum byte field_POWER_OFF=3;
 /// @brief ur_dashboard_msgs/RobotMode.POWER_ON: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum byte field_POWER_ON=4;
 /// @brief ur_dashboard_msgs/RobotMode.IDLE: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum byte field_IDLE=5;
 /// @brief ur_dashboard_msgs/RobotMode.BACKDRIVE: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum byte field_BACKDRIVE=6;
 /// @brief ur_dashboard_msgs/RobotMode.RUNNING: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum byte field_RUNNING=7;
 /// @brief ur_dashboard_msgs/RobotMode.UPDATING_FIRMWARE: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 enum byte field_UPDATING_FIRMWARE=8;
 /// @brief ur_dashboard_msgs/RobotMode.mode: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 byte field_mode=0;
 /// @brief Append every canonical field of ur_dashboard_msgs/RobotMode.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_mode)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/RobotMode.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsRobotMode value) {
  value=Ros1Ur_dashboard_msgsRobotMode.init;
  if(!r.integer(value.field_mode)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/RobotMode value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/RobotMode value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsRobotMode; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsRobotMode value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/GetRobotModeResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes and is identified by
/// UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsGetRobotModeResponse {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/GetRobotModeResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of ur_dashboard_msgs/GetRobotModeResponse.
 /// @details Exact identity UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f";
 /// @brief Original ROS type name for ur_dashboard_msgs/GetRobotModeResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/GetRobotModeResponse";
 /// @brief Selected original native identity for ur_dashboard_msgs/GetRobotModeResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/GetRobotModeResponse.robot_mode: ur_dashboard_msgs/RobotMode.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/d/API-CONTRACT.md
 Ros1Ur_dashboard_msgsRobotMode field_robot_mode=Ros1Ur_dashboard_msgsRobotMode.init;
 /// @brief ur_dashboard_msgs/GetRobotModeResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_answer=null;
 /// @brief ur_dashboard_msgs/GetRobotModeResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_dashboard_msgs/GetRobotModeResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_robot_mode.writeFields(w)) return false;
  if(!w.text(this.field_answer,256)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetRobotModeResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsGetRobotModeResponse value) {
  value=Ros1Ur_dashboard_msgsGetRobotModeResponse.init;
  if(!Ros1Ur_dashboard_msgsRobotMode.readFields(r,arena,value.field_robot_mode)) return false;
  if(!r.text(value.field_answer,256)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/GetRobotModeResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/GetRobotModeResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetRobotModeResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsGetRobotModeResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/GetSafetyModeRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is identified by
/// UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsGetSafetyModeRequest {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/GetSafetyModeRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of ur_dashboard_msgs/GetSafetyModeRequest.
 /// @details Exact identity UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b";
 /// @brief Original ROS type name for ur_dashboard_msgs/GetSafetyModeRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/GetSafetyModeRequest";
 /// @brief Selected original native identity for ur_dashboard_msgs/GetSafetyModeRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of ur_dashboard_msgs/GetSafetyModeRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetSafetyModeRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsGetSafetyModeRequest value) {
  value=Ros1Ur_dashboard_msgsGetSafetyModeRequest.init;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/GetSafetyModeRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/GetSafetyModeRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsGetSafetyModeRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/SafetyMode value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is identified by
/// UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsSafetyMode {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/SafetyMode in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of ur_dashboard_msgs/SafetyMode.
 /// @details Exact identity UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7";
 /// @brief Original ROS type name for ur_dashboard_msgs/SafetyMode.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/SafetyMode";
 /// @brief Selected original native identity for ur_dashboard_msgs/SafetyMode.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/SafetyMode.NORMAL: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_NORMAL=1;
 /// @brief ur_dashboard_msgs/SafetyMode.REDUCED: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_REDUCED=2;
 /// @brief ur_dashboard_msgs/SafetyMode.PROTECTIVE_STOP: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_PROTECTIVE_STOP=3;
 /// @brief ur_dashboard_msgs/SafetyMode.RECOVERY: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_RECOVERY=4;
 /// @brief ur_dashboard_msgs/SafetyMode.SAFEGUARD_STOP: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_SAFEGUARD_STOP=5;
 /// @brief ur_dashboard_msgs/SafetyMode.SYSTEM_EMERGENCY_STOP: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_SYSTEM_EMERGENCY_STOP=6;
 /// @brief ur_dashboard_msgs/SafetyMode.ROBOT_EMERGENCY_STOP: original uint8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_ROBOT_EMERGENCY_STOP=7;
 /// @brief ur_dashboard_msgs/SafetyMode.VIOLATION: original uint8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_VIOLATION=8;
 /// @brief ur_dashboard_msgs/SafetyMode.FAULT: original uint8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_FAULT=9;
 /// @brief ur_dashboard_msgs/SafetyMode.VALIDATE_JOINT_ID: original uint8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_VALIDATE_JOINT_ID=10;
 /// @brief ur_dashboard_msgs/SafetyMode.UNDEFINED_SAFETY_MODE: original uint8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_UNDEFINED_SAFETY_MODE=11;
 /// @brief ur_dashboard_msgs/SafetyMode.AUTOMATIC_MODE_SAFEGUARD_STOP: original uint8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_AUTOMATIC_MODE_SAFEGUARD_STOP=12;
 /// @brief ur_dashboard_msgs/SafetyMode.SYSTEM_THREE_POSITION_ENABLING_STOP: original uint8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_SYSTEM_THREE_POSITION_ENABLING_STOP=13;
 /// @brief ur_dashboard_msgs/SafetyMode.mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 ubyte field_mode=0;
 /// @brief Append every canonical field of ur_dashboard_msgs/SafetyMode.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_mode)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/SafetyMode.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsSafetyMode value) {
  value=Ros1Ur_dashboard_msgsSafetyMode.init;
  if(!r.integer(value.field_mode)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/SafetyMode value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/SafetyMode value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSafetyMode; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsSafetyMode value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/GetSafetyModeResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes and is identified by
/// UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsGetSafetyModeResponse {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/GetSafetyModeResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of ur_dashboard_msgs/GetSafetyModeResponse.
 /// @details Exact identity UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15";
 /// @brief Original ROS type name for ur_dashboard_msgs/GetSafetyModeResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/GetSafetyModeResponse";
 /// @brief Selected original native identity for ur_dashboard_msgs/GetSafetyModeResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/GetSafetyModeResponse.safety_mode: ur_dashboard_msgs/SafetyMode.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/d/API-CONTRACT.md
 Ros1Ur_dashboard_msgsSafetyMode field_safety_mode=Ros1Ur_dashboard_msgsSafetyMode.init;
 /// @brief ur_dashboard_msgs/GetSafetyModeResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_answer=null;
 /// @brief ur_dashboard_msgs/GetSafetyModeResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_dashboard_msgs/GetSafetyModeResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_safety_mode.writeFields(w)) return false;
  if(!w.text(this.field_answer,256)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/GetSafetyModeResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsGetSafetyModeResponse value) {
  value=Ros1Ur_dashboard_msgsGetSafetyModeResponse.init;
  if(!Ros1Ur_dashboard_msgsSafetyMode.readFields(r,arena,value.field_safety_mode)) return false;
  if(!r.text(value.field_answer,256)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/GetSafetyModeResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/GetSafetyModeResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsGetSafetyModeResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsGetSafetyModeResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/IsInRemoteControlRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is identified by
/// UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsIsInRemoteControlRequest {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/IsInRemoteControlRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of ur_dashboard_msgs/IsInRemoteControlRequest.
 /// @details Exact identity UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da";
 /// @brief Original ROS type name for ur_dashboard_msgs/IsInRemoteControlRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/IsInRemoteControlRequest";
 /// @brief Selected original native identity for ur_dashboard_msgs/IsInRemoteControlRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of ur_dashboard_msgs/IsInRemoteControlRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsInRemoteControlRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsIsInRemoteControlRequest value) {
  value=Ros1Ur_dashboard_msgsIsInRemoteControlRequest.init;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/IsInRemoteControlRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/IsInRemoteControlRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsIsInRemoteControlRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/IsInRemoteControlResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes and is identified by
/// UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsIsInRemoteControlResponse {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/IsInRemoteControlResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of ur_dashboard_msgs/IsInRemoteControlResponse.
 /// @details Exact identity UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a";
 /// @brief Original ROS type name for ur_dashboard_msgs/IsInRemoteControlResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/IsInRemoteControlResponse";
 /// @brief Selected original native identity for ur_dashboard_msgs/IsInRemoteControlResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/IsInRemoteControlResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_answer=null;
 /// @brief ur_dashboard_msgs/IsInRemoteControlResponse.in_remote_control: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_in_remote_control=false;
 /// @brief ur_dashboard_msgs/IsInRemoteControlResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_dashboard_msgs/IsInRemoteControlResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_answer,256)) return false;
  if(!w.boolean(this.field_in_remote_control)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsInRemoteControlResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsIsInRemoteControlResponse value) {
  value=Ros1Ur_dashboard_msgsIsInRemoteControlResponse.init;
  if(!r.text(value.field_answer,256)) return false;
  if(!r.boolean(value.field_in_remote_control)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/IsInRemoteControlResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/IsInRemoteControlResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsInRemoteControlResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsIsInRemoteControlResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/IsProgramRunningRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is identified by
/// UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsIsProgramRunningRequest {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/IsProgramRunningRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of ur_dashboard_msgs/IsProgramRunningRequest.
 /// @details Exact identity UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f";
 /// @brief Original ROS type name for ur_dashboard_msgs/IsProgramRunningRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/IsProgramRunningRequest";
 /// @brief Selected original native identity for ur_dashboard_msgs/IsProgramRunningRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of ur_dashboard_msgs/IsProgramRunningRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramRunningRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsIsProgramRunningRequest value) {
  value=Ros1Ur_dashboard_msgsIsProgramRunningRequest.init;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/IsProgramRunningRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/IsProgramRunningRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsIsProgramRunningRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/IsProgramRunningResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..262 bytes and is identified by
/// UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsIsProgramRunningResponse {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/IsProgramRunningResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of ur_dashboard_msgs/IsProgramRunningResponse.
 /// @details Exact identity UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac";
 /// @brief Original ROS type name for ur_dashboard_msgs/IsProgramRunningResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/IsProgramRunningResponse";
 /// @brief Selected original native identity for ur_dashboard_msgs/IsProgramRunningResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/IsProgramRunningResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_answer=null;
 /// @brief ur_dashboard_msgs/IsProgramRunningResponse.program_running: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_program_running=false;
 /// @brief ur_dashboard_msgs/IsProgramRunningResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_dashboard_msgs/IsProgramRunningResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_answer,256)) return false;
  if(!w.boolean(this.field_program_running)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramRunningResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsIsProgramRunningResponse value) {
  value=Ros1Ur_dashboard_msgsIsProgramRunningResponse.init;
  if(!r.text(value.field_answer,256)) return false;
  if(!r.boolean(value.field_program_running)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/IsProgramRunningResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/IsProgramRunningResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramRunningResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsIsProgramRunningResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/IsProgramSavedRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is identified by
/// UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsIsProgramSavedRequest {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/IsProgramSavedRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of ur_dashboard_msgs/IsProgramSavedRequest.
 /// @details Exact identity UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8";
 /// @brief Original ROS type name for ur_dashboard_msgs/IsProgramSavedRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/IsProgramSavedRequest";
 /// @brief Selected original native identity for ur_dashboard_msgs/IsProgramSavedRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of ur_dashboard_msgs/IsProgramSavedRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramSavedRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsIsProgramSavedRequest value) {
  value=Ros1Ur_dashboard_msgsIsProgramSavedRequest.init;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/IsProgramSavedRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/IsProgramSavedRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsIsProgramSavedRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/IsProgramSavedResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 10..522 bytes and is identified by
/// UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsIsProgramSavedResponse {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/IsProgramSavedResponse in bytes.
 /// @details The inclusive bound is 522 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=522;
 /// @brief Canonical codec identity of ur_dashboard_msgs/IsProgramSavedResponse.
 /// @details Exact identity UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52";
 /// @brief Original ROS type name for ur_dashboard_msgs/IsProgramSavedResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/IsProgramSavedResponse";
 /// @brief Selected original native identity for ur_dashboard_msgs/IsProgramSavedResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/IsProgramSavedResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_answer=null;
 /// @brief ur_dashboard_msgs/IsProgramSavedResponse.program_name: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_program_name=null;
 /// @brief ur_dashboard_msgs/IsProgramSavedResponse.program_saved: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_program_saved=false;
 /// @brief ur_dashboard_msgs/IsProgramSavedResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_dashboard_msgs/IsProgramSavedResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_answer,256)) return false;
  if(!w.text(this.field_program_name,256)) return false;
  if(!w.boolean(this.field_program_saved)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/IsProgramSavedResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsIsProgramSavedResponse value) {
  value=Ros1Ur_dashboard_msgsIsProgramSavedResponse.init;
  if(!r.text(value.field_answer,256)) return false;
  if(!r.text(value.field_program_name,256)) return false;
  if(!r.boolean(value.field_program_saved)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/IsProgramSavedResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/IsProgramSavedResponse value.
 /// @details Require the complete 10..522-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a
 /// successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsIsProgramSavedResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsIsProgramSavedResponse value) {
  if(bytes.length<10 || bytes.length>522) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/LoadRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and is identified by
/// UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsLoadRequest {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/LoadRequest in bytes.
 /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=260;
 /// @brief Canonical codec identity of ur_dashboard_msgs/LoadRequest.
 /// @details Exact identity UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd";
 /// @brief Original ROS type name for ur_dashboard_msgs/LoadRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/LoadRequest";
 /// @brief Selected original native identity for ur_dashboard_msgs/LoadRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/LoadRequest.filename: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_filename=null;
 /// @brief Append every canonical field of ur_dashboard_msgs/LoadRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_filename,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/LoadRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsLoadRequest value) {
  value=Ros1Ur_dashboard_msgsLoadRequest.init;
  if(!r.text(value.field_filename,256)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/LoadRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/LoadRequest value.
 /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsLoadRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsLoadRequest value) {
  if(bytes.length<4 || bytes.length>260) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/LoadResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and is identified by
/// UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsLoadResponse {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/LoadResponse in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of ur_dashboard_msgs/LoadResponse.
 /// @details Exact identity UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02";
 /// @brief Original ROS type name for ur_dashboard_msgs/LoadResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/LoadResponse";
 /// @brief Selected original native identity for ur_dashboard_msgs/LoadResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/LoadResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_answer=null;
 /// @brief ur_dashboard_msgs/LoadResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_dashboard_msgs/LoadResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_answer,256)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/LoadResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsLoadResponse value) {
  value=Ros1Ur_dashboard_msgsLoadResponse.init;
  if(!r.text(value.field_answer,256)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/LoadResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/LoadResponse value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsLoadResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsLoadResponse value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/PopupRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and is identified by
/// UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsPopupRequest {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/PopupRequest in bytes.
 /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=260;
 /// @brief Canonical codec identity of ur_dashboard_msgs/PopupRequest.
 /// @details Exact identity UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d";
 /// @brief Original ROS type name for ur_dashboard_msgs/PopupRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/PopupRequest";
 /// @brief Selected original native identity for ur_dashboard_msgs/PopupRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/PopupRequest.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of ur_dashboard_msgs/PopupRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/PopupRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsPopupRequest value) {
  value=Ros1Ur_dashboard_msgsPopupRequest.init;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/PopupRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/PopupRequest value.
 /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsPopupRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsPopupRequest value) {
  if(bytes.length<4 || bytes.length>260) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/PopupResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and is identified by
/// UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsPopupResponse {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/PopupResponse in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of ur_dashboard_msgs/PopupResponse.
 /// @details Exact identity UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14";
 /// @brief Original ROS type name for ur_dashboard_msgs/PopupResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/PopupResponse";
 /// @brief Selected original native identity for ur_dashboard_msgs/PopupResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/PopupResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_answer=null;
 /// @brief ur_dashboard_msgs/PopupResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_dashboard_msgs/PopupResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_answer,256)) return false;
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/PopupResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsPopupResponse value) {
  value=Ros1Ur_dashboard_msgsPopupResponse.init;
  if(!r.text(value.field_answer,256)) return false;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/PopupResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/PopupResponse value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsPopupResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsPopupResponse value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/RawRequestRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and is identified by
/// UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsRawRequestRequest {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/RawRequestRequest in bytes.
 /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=260;
 /// @brief Canonical codec identity of ur_dashboard_msgs/RawRequestRequest.
 /// @details Exact identity UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4";
 /// @brief Original ROS type name for ur_dashboard_msgs/RawRequestRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/RawRequestRequest";
 /// @brief Selected original native identity for ur_dashboard_msgs/RawRequestRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/RawRequestRequest.query: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_query=null;
 /// @brief Append every canonical field of ur_dashboard_msgs/RawRequestRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_query,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/RawRequestRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsRawRequestRequest value) {
  value=Ros1Ur_dashboard_msgsRawRequestRequest.init;
  if(!r.text(value.field_query,256)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/RawRequestRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/RawRequestRequest value.
 /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsRawRequestRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsRawRequestRequest value) {
  if(bytes.length<4 || bytes.length>260) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/RawRequestResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes and is identified by
/// UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsRawRequestResponse {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/RawRequestResponse in bytes.
 /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=260;
 /// @brief Canonical codec identity of ur_dashboard_msgs/RawRequestResponse.
 /// @details Exact identity UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80";
 /// @brief Original ROS type name for ur_dashboard_msgs/RawRequestResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/RawRequestResponse";
 /// @brief Selected original native identity for ur_dashboard_msgs/RawRequestResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/RawRequestResponse.answer: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_answer=null;
 /// @brief Append every canonical field of ur_dashboard_msgs/RawRequestResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_answer,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/RawRequestResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsRawRequestResponse value) {
  value=Ros1Ur_dashboard_msgsRawRequestResponse.init;
  if(!r.text(value.field_answer,256)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/RawRequestResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/RawRequestResponse value.
 /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsRawRequestResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsRawRequestResponse value) {
  if(bytes.length<4 || bytes.length>260) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/SetModeGoal value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 3..3 bytes and is identified by
/// UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsSetModeGoal {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/SetModeGoal in bytes.
 /// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=3;
 /// @brief Canonical codec identity of ur_dashboard_msgs/SetModeGoal.
 /// @details Exact identity UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528";
 /// @brief Original ROS type name for ur_dashboard_msgs/SetModeGoal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/SetModeGoal";
 /// @brief Selected original native identity for ur_dashboard_msgs/SetModeGoal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/SetModeGoal.target_robot_mode: ur_dashboard_msgs/RobotMode.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/d/API-CONTRACT.md
 Ros1Ur_dashboard_msgsRobotMode field_target_robot_mode=Ros1Ur_dashboard_msgsRobotMode.init;
 /// @brief ur_dashboard_msgs/SetModeGoal.stop_program: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/d/API-CONTRACT.md
 bool field_stop_program=false;
 /// @brief ur_dashboard_msgs/SetModeGoal.play_program: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/d/API-CONTRACT.md
 bool field_play_program=false;
 /// @brief Append every canonical field of ur_dashboard_msgs/SetModeGoal.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_target_robot_mode.writeFields(w)) return false;
  if(!w.boolean(this.field_stop_program)) return false;
  if(!w.boolean(this.field_play_program)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeGoal.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsSetModeGoal value) {
  value=Ros1Ur_dashboard_msgsSetModeGoal.init;
  if(!Ros1Ur_dashboard_msgsRobotMode.readFields(r,arena,value.field_target_robot_mode)) return false;
  if(!r.boolean(value.field_stop_program)) return false;
  if(!r.boolean(value.field_play_program)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/SetModeGoal value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/SetModeGoal value.
 /// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSetModeGoal; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsSetModeGoal value) {
  if(bytes.length<3 || bytes.length>3) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/SetModeResult value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes and is identified by
/// UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsSetModeResult {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/SetModeResult in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of ur_dashboard_msgs/SetModeResult.
 /// @details Exact identity UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114";
 /// @brief Original ROS type name for ur_dashboard_msgs/SetModeResult.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/SetModeResult";
 /// @brief Selected original native identity for ur_dashboard_msgs/SetModeResult.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/SetModeResult.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief ur_dashboard_msgs/SetModeResult.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of ur_dashboard_msgs/SetModeResult.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeResult.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsSetModeResult value) {
  value=Ros1Ur_dashboard_msgsSetModeResult.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/SetModeResult value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/SetModeResult value.
 /// @details Require the complete 5..261-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSetModeResult; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsSetModeResult value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_dashboard_msgs/SetModeFeedback value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and is identified by
/// UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_dashboard_msgsSetModeFeedback {
 /// @brief Maximum canonical extent of ur_dashboard_msgs/SetModeFeedback in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=2;
 /// @brief Canonical codec identity of ur_dashboard_msgs/SetModeFeedback.
 /// @details Exact identity UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2";
 /// @brief Original ROS type name for ur_dashboard_msgs/SetModeFeedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_dashboard_msgs/SetModeFeedback";
 /// @brief Selected original native identity for ur_dashboard_msgs/SetModeFeedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_dashboard_msgs/SetModeFeedback.current_robot_mode: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/d/API-CONTRACT.md
 byte field_current_robot_mode=0;
 /// @brief ur_dashboard_msgs/SetModeFeedback.current_safety_mode: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/d/API-CONTRACT.md
 byte field_current_safety_mode=0;
 /// @brief Append every canonical field of ur_dashboard_msgs/SetModeFeedback.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_current_robot_mode)) return false;
  if(!w.integer(this.field_current_safety_mode)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_dashboard_msgs/SetModeFeedback.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_dashboard_msgsSetModeFeedback value) {
  value=Ros1Ur_dashboard_msgsSetModeFeedback.init;
  if(!r.integer(value.field_current_robot_mode)) return false;
  if(!r.integer(value.field_current_safety_mode)) return false;
  return true;
 }
 /// @brief Encode one complete ur_dashboard_msgs/SetModeFeedback value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_dashboard_msgs/SetModeFeedback value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_dashboard_msgsSetModeFeedback; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_dashboard_msgsSetModeFeedback value) {
  if(bytes.length<2 || bytes.length>2) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/Analog value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and is identified by
/// UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsAnalog {
 /// @brief Maximum canonical extent of ur_msgs/Analog in bytes.
 /// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=6;
 /// @brief Canonical codec identity of ur_msgs/Analog.
 /// @details Exact identity UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7";
 /// @brief Original ROS type name for ur_msgs/Analog.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/Analog";
 /// @brief Selected original native identity for ur_msgs/Analog.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/Analog.CURRENT: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_CURRENT=0;
 /// @brief ur_msgs/Analog.VOLTAGE: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_VOLTAGE=1;
 /// @brief ur_msgs/Analog.pin: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 ubyte field_pin=0;
 /// @brief ur_msgs/Analog.domain: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 ubyte field_domain=0;
 /// @brief ur_msgs/Analog.state: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 float field_state=0;
 /// @brief Append every canonical field of ur_msgs/Analog.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_pin)) return false;
  if(!w.integer(this.field_domain)) return false;
  if(!w.float32(this.field_state)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/Analog.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsAnalog value) {
  value=Ros1Ur_msgsAnalog.init;
  if(!r.integer(value.field_pin)) return false;
  if(!r.integer(value.field_domain)) return false;
  if(!r.float32(value.field_state)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/Analog value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/Analog value.
 /// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsAnalog; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsAnalog value) {
  if(bytes.length<6 || bytes.length>6) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/Digital value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 2..2 bytes and is identified by
/// UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsDigital {
 /// @brief Maximum canonical extent of ur_msgs/Digital in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsDigital; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=2;
 /// @brief Canonical codec identity of ur_msgs/Digital.
 /// @details Exact identity UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsDigital; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c";
 /// @brief Original ROS type name for ur_msgs/Digital.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsDigital; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/Digital";
 /// @brief Selected original native identity for ur_msgs/Digital.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsDigital; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/Digital.pin: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsDigital; share/platform/ros/d/API-CONTRACT.md
 ubyte field_pin=0;
 /// @brief ur_msgs/Digital.state: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsDigital; share/platform/ros/d/API-CONTRACT.md
 bool field_state=false;
 /// @brief Append every canonical field of ur_msgs/Digital.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsDigital; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_pin)) return false;
  if(!w.boolean(this.field_state)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/Digital.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsDigital; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsDigital value) {
  value=Ros1Ur_msgsDigital.init;
  if(!r.integer(value.field_pin)) return false;
  if(!r.boolean(value.field_state)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/Digital value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsDigital; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/Digital value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsDigital; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsDigital value) {
  if(bytes.length<2 || bytes.length>2) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/GetRobotSoftwareVersionRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes and is identified by
/// UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsGetRobotSoftwareVersionRequest {
 /// @brief Maximum canonical extent of ur_msgs/GetRobotSoftwareVersionRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of ur_msgs/GetRobotSoftwareVersionRequest.
 /// @details Exact identity UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8";
 /// @brief Original ROS type name for ur_msgs/GetRobotSoftwareVersionRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/GetRobotSoftwareVersionRequest";
 /// @brief Selected original native identity for ur_msgs/GetRobotSoftwareVersionRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of ur_msgs/GetRobotSoftwareVersionRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/GetRobotSoftwareVersionRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsGetRobotSoftwareVersionRequest value) {
  value=Ros1Ur_msgsGetRobotSoftwareVersionRequest.init;
  return true;
 }
 /// @brief Encode one complete ur_msgs/GetRobotSoftwareVersionRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/GetRobotSoftwareVersionRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsGetRobotSoftwareVersionRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/GetRobotSoftwareVersionResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and is identified by
/// UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsGetRobotSoftwareVersionResponse {
 /// @brief Maximum canonical extent of ur_msgs/GetRobotSoftwareVersionResponse in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of ur_msgs/GetRobotSoftwareVersionResponse.
 /// @details Exact identity UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64";
 /// @brief Original ROS type name for ur_msgs/GetRobotSoftwareVersionResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/GetRobotSoftwareVersionResponse";
 /// @brief Selected original native identity for ur_msgs/GetRobotSoftwareVersionResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/GetRobotSoftwareVersionResponse.major: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/d/API-CONTRACT.md
 uint field_major=0;
 /// @brief ur_msgs/GetRobotSoftwareVersionResponse.minor: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/d/API-CONTRACT.md
 uint field_minor=0;
 /// @brief ur_msgs/GetRobotSoftwareVersionResponse.bugfix: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/d/API-CONTRACT.md
 uint field_bugfix=0;
 /// @brief ur_msgs/GetRobotSoftwareVersionResponse.build: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/d/API-CONTRACT.md
 uint field_build=0;
 /// @brief Append every canonical field of ur_msgs/GetRobotSoftwareVersionResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_major)) return false;
  if(!w.integer(this.field_minor)) return false;
  if(!w.integer(this.field_bugfix)) return false;
  if(!w.integer(this.field_build)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/GetRobotSoftwareVersionResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsGetRobotSoftwareVersionResponse value) {
  value=Ros1Ur_msgsGetRobotSoftwareVersionResponse.init;
  if(!r.integer(value.field_major)) return false;
  if(!r.integer(value.field_minor)) return false;
  if(!r.integer(value.field_bugfix)) return false;
  if(!r.integer(value.field_build)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/GetRobotSoftwareVersionResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/GetRobotSoftwareVersionResponse value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsGetRobotSoftwareVersionResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsGetRobotSoftwareVersionResponse value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/IOStates value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 20..404 bytes and is identified by
/// UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsIOStates {
 /// @brief Maximum canonical extent of ur_msgs/IOStates in bytes.
 /// @details The inclusive bound is 404 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=404;
 /// @brief Canonical codec identity of ur_msgs/IOStates.
 /// @details Exact identity UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033";
 /// @brief Original ROS type name for ur_msgs/IOStates.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/IOStates";
 /// @brief Selected original native identity for ur_msgs/IOStates.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/IOStates.digital_in_states: ur_msgs/Digital; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 Ros1Ur_msgsDigital[] field_digital_in_states=null;
 /// @brief ur_msgs/IOStates.digital_out_states: ur_msgs/Digital; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 Ros1Ur_msgsDigital[] field_digital_out_states=null;
 /// @brief ur_msgs/IOStates.flag_states: ur_msgs/Digital; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 Ros1Ur_msgsDigital[] field_flag_states=null;
 /// @brief ur_msgs/IOStates.analog_in_states: ur_msgs/Analog; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 Ros1Ur_msgsAnalog[] field_analog_in_states=null;
 /// @brief ur_msgs/IOStates.analog_out_states: ur_msgs/Analog; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 Ros1Ur_msgsAnalog[] field_analog_out_states=null;
 /// @brief Append every canonical field of ur_msgs/IOStates.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_digital_in_states.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_digital_in_states.length)) return false;
  foreach(ref e; this.field_digital_in_states) {
  if(!e.writeFields(w)) return false;
  }
  if(this.field_digital_out_states.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_digital_out_states.length)) return false;
  foreach(ref e; this.field_digital_out_states) {
  if(!e.writeFields(w)) return false;
  }
  if(this.field_flag_states.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_flag_states.length)) return false;
  foreach(ref e; this.field_flag_states) {
  if(!e.writeFields(w)) return false;
  }
  if(this.field_analog_in_states.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_analog_in_states.length)) return false;
  foreach(ref e; this.field_analog_in_states) {
  if(!e.writeFields(w)) return false;
  }
  if(this.field_analog_out_states.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_analog_out_states.length)) return false;
  foreach(ref e; this.field_analog_out_states) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/IOStates.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsIOStates value) {
  value=Ros1Ur_msgsIOStates.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>32) {
       r.code=22;
       return false;
  }
  value.field_digital_in_states=arena.allocate!(Ros1Ur_msgsDigital)(count0);
  if(value.field_digital_in_states.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_digital_in_states) {
  if(!Ros1Ur_msgsDigital.readFields(r,arena,e)) return false;
  }
  uint count1; if(!r.integer(count1)) return false;
  if(count1>32) {
       r.code=22;
       return false;
  }
  value.field_digital_out_states=arena.allocate!(Ros1Ur_msgsDigital)(count1);
  if(value.field_digital_out_states.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_digital_out_states) {
  if(!Ros1Ur_msgsDigital.readFields(r,arena,e)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>32) {
       r.code=22;
       return false;
  }
  value.field_flag_states=arena.allocate!(Ros1Ur_msgsDigital)(count2);
  if(value.field_flag_states.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_flag_states) {
  if(!Ros1Ur_msgsDigital.readFields(r,arena,e)) return false;
  }
  uint count3; if(!r.integer(count3)) return false;
  if(count3>16) {
       r.code=22;
       return false;
  }
  value.field_analog_in_states=arena.allocate!(Ros1Ur_msgsAnalog)(count3);
  if(value.field_analog_in_states.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_analog_in_states) {
  if(!Ros1Ur_msgsAnalog.readFields(r,arena,e)) return false;
  }
  uint count4; if(!r.integer(count4)) return false;
  if(count4>16) {
       r.code=22;
       return false;
  }
  value.field_analog_out_states=arena.allocate!(Ros1Ur_msgsAnalog)(count4);
  if(value.field_analog_out_states.length!=count4) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_analog_out_states) {
  if(!Ros1Ur_msgsAnalog.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete ur_msgs/IOStates value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/IOStates value.
 /// @details Require the complete 20..404-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a
 /// successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsIOStates; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsIOStates value) {
  if(bytes.length<20 || bytes.length>404) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/MasterboardDataMsg value.
/// @details All 16 declared fields are retained in source order. The canonical representation occupies 62..62 bytes and is identified by
/// UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsMasterboardDataMsg {
 /// @brief Maximum canonical extent of ur_msgs/MasterboardDataMsg in bytes.
 /// @details The inclusive bound is 62 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=62;
 /// @brief Canonical codec identity of ur_msgs/MasterboardDataMsg.
 /// @details Exact identity UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f";
 /// @brief Original ROS type name for ur_msgs/MasterboardDataMsg.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/MasterboardDataMsg";
 /// @brief Selected original native identity for ur_msgs/MasterboardDataMsg.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/MasterboardDataMsg.digital_input_bits: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 uint field_digital_input_bits=0;
 /// @brief ur_msgs/MasterboardDataMsg.digital_output_bits: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 uint field_digital_output_bits=0;
 /// @brief ur_msgs/MasterboardDataMsg.analog_input_range0: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 byte field_analog_input_range0=0;
 /// @brief ur_msgs/MasterboardDataMsg.analog_input_range1: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 byte field_analog_input_range1=0;
 /// @brief ur_msgs/MasterboardDataMsg.analog_input0: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 double field_analog_input0=0;
 /// @brief ur_msgs/MasterboardDataMsg.analog_input1: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 double field_analog_input1=0;
 /// @brief ur_msgs/MasterboardDataMsg.analog_output_domain0: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 byte field_analog_output_domain0=0;
 /// @brief ur_msgs/MasterboardDataMsg.analog_output_domain1: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 byte field_analog_output_domain1=0;
 /// @brief ur_msgs/MasterboardDataMsg.analog_output0: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 double field_analog_output0=0;
 /// @brief ur_msgs/MasterboardDataMsg.analog_output1: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 double field_analog_output1=0;
 /// @brief ur_msgs/MasterboardDataMsg.masterboard_temperature: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 float field_masterboard_temperature=0;
 /// @brief ur_msgs/MasterboardDataMsg.robot_voltage_48V: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 float field_robot_voltage_48V=0;
 /// @brief ur_msgs/MasterboardDataMsg.robot_current: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 float field_robot_current=0;
 /// @brief ur_msgs/MasterboardDataMsg.master_io_current: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 float field_master_io_current=0;
 /// @brief ur_msgs/MasterboardDataMsg.master_safety_state: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 ubyte field_master_safety_state=0;
 /// @brief ur_msgs/MasterboardDataMsg.master_onoff_state: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 ubyte field_master_onoff_state=0;
 /// @brief Append every canonical field of ur_msgs/MasterboardDataMsg.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_digital_input_bits)) return false;
  if(!w.integer(this.field_digital_output_bits)) return false;
  if(!w.integer(this.field_analog_input_range0)) return false;
  if(!w.integer(this.field_analog_input_range1)) return false;
  if(!w.float64(this.field_analog_input0)) return false;
  if(!w.float64(this.field_analog_input1)) return false;
  if(!w.integer(this.field_analog_output_domain0)) return false;
  if(!w.integer(this.field_analog_output_domain1)) return false;
  if(!w.float64(this.field_analog_output0)) return false;
  if(!w.float64(this.field_analog_output1)) return false;
  if(!w.float32(this.field_masterboard_temperature)) return false;
  if(!w.float32(this.field_robot_voltage_48V)) return false;
  if(!w.float32(this.field_robot_current)) return false;
  if(!w.float32(this.field_master_io_current)) return false;
  if(!w.integer(this.field_master_safety_state)) return false;
  if(!w.integer(this.field_master_onoff_state)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/MasterboardDataMsg.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsMasterboardDataMsg value) {
  value=Ros1Ur_msgsMasterboardDataMsg.init;
  if(!r.integer(value.field_digital_input_bits)) return false;
  if(!r.integer(value.field_digital_output_bits)) return false;
  if(!r.integer(value.field_analog_input_range0)) return false;
  if(!r.integer(value.field_analog_input_range1)) return false;
  if(!r.float64(value.field_analog_input0)) return false;
  if(!r.float64(value.field_analog_input1)) return false;
  if(!r.integer(value.field_analog_output_domain0)) return false;
  if(!r.integer(value.field_analog_output_domain1)) return false;
  if(!r.float64(value.field_analog_output0)) return false;
  if(!r.float64(value.field_analog_output1)) return false;
  if(!r.float32(value.field_masterboard_temperature)) return false;
  if(!r.float32(value.field_robot_voltage_48V)) return false;
  if(!r.float32(value.field_robot_current)) return false;
  if(!r.float32(value.field_master_io_current)) return false;
  if(!r.integer(value.field_master_safety_state)) return false;
  if(!r.integer(value.field_master_onoff_state)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/MasterboardDataMsg value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/MasterboardDataMsg value.
 /// @details Require the complete 62..62-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsMasterboardDataMsg; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsMasterboardDataMsg value) {
  if(bytes.length<62 || bytes.length>62) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/RobotModeDataMsg value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 15..15 bytes and is identified by
/// UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsRobotModeDataMsg {
 /// @brief Maximum canonical extent of ur_msgs/RobotModeDataMsg in bytes.
 /// @details The inclusive bound is 15 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=15;
 /// @brief Canonical codec identity of ur_msgs/RobotModeDataMsg.
 /// @details Exact identity UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231";
 /// @brief Original ROS type name for ur_msgs/RobotModeDataMsg.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/RobotModeDataMsg";
 /// @brief Selected original native identity for ur_msgs/RobotModeDataMsg.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/RobotModeDataMsg.timestamp: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 ulong field_timestamp=0;
 /// @brief ur_msgs/RobotModeDataMsg.is_robot_connected: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 bool field_is_robot_connected=false;
 /// @brief ur_msgs/RobotModeDataMsg.is_real_robot_enabled: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 bool field_is_real_robot_enabled=false;
 /// @brief ur_msgs/RobotModeDataMsg.is_power_on_robot: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 bool field_is_power_on_robot=false;
 /// @brief ur_msgs/RobotModeDataMsg.is_emergency_stopped: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 bool field_is_emergency_stopped=false;
 /// @brief ur_msgs/RobotModeDataMsg.is_protective_stopped: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 bool field_is_protective_stopped=false;
 /// @brief ur_msgs/RobotModeDataMsg.is_program_running: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 bool field_is_program_running=false;
 /// @brief ur_msgs/RobotModeDataMsg.is_program_paused: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 bool field_is_program_paused=false;
 /// @brief Append every canonical field of ur_msgs/RobotModeDataMsg.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_timestamp)) return false;
  if(!w.boolean(this.field_is_robot_connected)) return false;
  if(!w.boolean(this.field_is_real_robot_enabled)) return false;
  if(!w.boolean(this.field_is_power_on_robot)) return false;
  if(!w.boolean(this.field_is_emergency_stopped)) return false;
  if(!w.boolean(this.field_is_protective_stopped)) return false;
  if(!w.boolean(this.field_is_program_running)) return false;
  if(!w.boolean(this.field_is_program_paused)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/RobotModeDataMsg.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsRobotModeDataMsg value) {
  value=Ros1Ur_msgsRobotModeDataMsg.init;
  if(!r.integer(value.field_timestamp)) return false;
  if(!r.boolean(value.field_is_robot_connected)) return false;
  if(!r.boolean(value.field_is_real_robot_enabled)) return false;
  if(!r.boolean(value.field_is_power_on_robot)) return false;
  if(!r.boolean(value.field_is_emergency_stopped)) return false;
  if(!r.boolean(value.field_is_protective_stopped)) return false;
  if(!r.boolean(value.field_is_program_running)) return false;
  if(!r.boolean(value.field_is_program_paused)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/RobotModeDataMsg value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/RobotModeDataMsg value.
 /// @details Require the complete 15..15-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsRobotModeDataMsg; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsRobotModeDataMsg value) {
  if(bytes.length<15 || bytes.length>15) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/RobotStateRTMsg value.
/// @details All 19 declared fields are retained in source order. The canonical representation occupies 96..768 bytes and is identified by
/// UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsRobotStateRTMsg {
 /// @brief Maximum canonical extent of ur_msgs/RobotStateRTMsg in bytes.
 /// @details The inclusive bound is 768 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=768;
 /// @brief Canonical codec identity of ur_msgs/RobotStateRTMsg.
 /// @details Exact identity UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7";
 /// @brief Original ROS type name for ur_msgs/RobotStateRTMsg.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/RobotStateRTMsg";
 /// @brief Selected original native identity for ur_msgs/RobotStateRTMsg.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/RobotStateRTMsg.time: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double field_time=0;
 /// @brief ur_msgs/RobotStateRTMsg.q_target: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_q_target=null;
 /// @brief ur_msgs/RobotStateRTMsg.qd_target: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_qd_target=null;
 /// @brief ur_msgs/RobotStateRTMsg.qdd_target: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_qdd_target=null;
 /// @brief ur_msgs/RobotStateRTMsg.i_target: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_i_target=null;
 /// @brief ur_msgs/RobotStateRTMsg.m_target: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_m_target=null;
 /// @brief ur_msgs/RobotStateRTMsg.q_actual: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_q_actual=null;
 /// @brief ur_msgs/RobotStateRTMsg.qd_actual: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_qd_actual=null;
 /// @brief ur_msgs/RobotStateRTMsg.i_actual: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_i_actual=null;
 /// @brief ur_msgs/RobotStateRTMsg.tool_acc_values: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_tool_acc_values=null;
 /// @brief ur_msgs/RobotStateRTMsg.tcp_force: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_tcp_force=null;
 /// @brief ur_msgs/RobotStateRTMsg.tool_vector: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_tool_vector=null;
 /// @brief ur_msgs/RobotStateRTMsg.tcp_speed: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_tcp_speed=null;
 /// @brief ur_msgs/RobotStateRTMsg.digital_input_bits: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double field_digital_input_bits=0;
 /// @brief ur_msgs/RobotStateRTMsg.motor_temperatures: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_motor_temperatures=null;
 /// @brief ur_msgs/RobotStateRTMsg.controller_timer: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double field_controller_timer=0;
 /// @brief ur_msgs/RobotStateRTMsg.test_value: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double field_test_value=0;
 /// @brief ur_msgs/RobotStateRTMsg.robot_mode: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double field_robot_mode=0;
 /// @brief ur_msgs/RobotStateRTMsg.joint_modes: float64; 0..6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 double[] field_joint_modes=null;
 /// @brief Append every canonical field of ur_msgs/RobotStateRTMsg.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_time)) return false;
  if(this.field_q_target.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_q_target.length)) return false;
  foreach(ref e; this.field_q_target) {
  if(!w.float64(e)) return false;
  }
  if(this.field_qd_target.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_qd_target.length)) return false;
  foreach(ref e; this.field_qd_target) {
  if(!w.float64(e)) return false;
  }
  if(this.field_qdd_target.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_qdd_target.length)) return false;
  foreach(ref e; this.field_qdd_target) {
  if(!w.float64(e)) return false;
  }
  if(this.field_i_target.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_i_target.length)) return false;
  foreach(ref e; this.field_i_target) {
  if(!w.float64(e)) return false;
  }
  if(this.field_m_target.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_m_target.length)) return false;
  foreach(ref e; this.field_m_target) {
  if(!w.float64(e)) return false;
  }
  if(this.field_q_actual.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_q_actual.length)) return false;
  foreach(ref e; this.field_q_actual) {
  if(!w.float64(e)) return false;
  }
  if(this.field_qd_actual.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_qd_actual.length)) return false;
  foreach(ref e; this.field_qd_actual) {
  if(!w.float64(e)) return false;
  }
  if(this.field_i_actual.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_i_actual.length)) return false;
  foreach(ref e; this.field_i_actual) {
  if(!w.float64(e)) return false;
  }
  if(this.field_tool_acc_values.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_tool_acc_values.length)) return false;
  foreach(ref e; this.field_tool_acc_values) {
  if(!w.float64(e)) return false;
  }
  if(this.field_tcp_force.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_tcp_force.length)) return false;
  foreach(ref e; this.field_tcp_force) {
  if(!w.float64(e)) return false;
  }
  if(this.field_tool_vector.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_tool_vector.length)) return false;
  foreach(ref e; this.field_tool_vector) {
  if(!w.float64(e)) return false;
  }
  if(this.field_tcp_speed.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_tcp_speed.length)) return false;
  foreach(ref e; this.field_tcp_speed) {
  if(!w.float64(e)) return false;
  }
  if(!w.float64(this.field_digital_input_bits)) return false;
  if(this.field_motor_temperatures.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_motor_temperatures.length)) return false;
  foreach(ref e; this.field_motor_temperatures) {
  if(!w.float64(e)) return false;
  }
  if(!w.float64(this.field_controller_timer)) return false;
  if(!w.float64(this.field_test_value)) return false;
  if(!w.float64(this.field_robot_mode)) return false;
  if(this.field_joint_modes.length>6) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_joint_modes.length)) return false;
  foreach(ref e; this.field_joint_modes) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/RobotStateRTMsg.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsRobotStateRTMsg value) {
  value=Ros1Ur_msgsRobotStateRTMsg.init;
  if(!r.float64(value.field_time)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>6) {
       r.code=22;
       return false;
  }
  value.field_q_target=arena.allocate!(double)(count1);
  if(value.field_q_target.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_q_target) {
  if(!r.float64(e)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>6) {
       r.code=22;
       return false;
  }
  value.field_qd_target=arena.allocate!(double)(count2);
  if(value.field_qd_target.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_qd_target) {
  if(!r.float64(e)) return false;
  }
  uint count3; if(!r.integer(count3)) return false;
  if(count3>6) {
       r.code=22;
       return false;
  }
  value.field_qdd_target=arena.allocate!(double)(count3);
  if(value.field_qdd_target.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_qdd_target) {
  if(!r.float64(e)) return false;
  }
  uint count4; if(!r.integer(count4)) return false;
  if(count4>6) {
       r.code=22;
       return false;
  }
  value.field_i_target=arena.allocate!(double)(count4);
  if(value.field_i_target.length!=count4) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_i_target) {
  if(!r.float64(e)) return false;
  }
  uint count5; if(!r.integer(count5)) return false;
  if(count5>6) {
       r.code=22;
       return false;
  }
  value.field_m_target=arena.allocate!(double)(count5);
  if(value.field_m_target.length!=count5) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_m_target) {
  if(!r.float64(e)) return false;
  }
  uint count6; if(!r.integer(count6)) return false;
  if(count6>6) {
       r.code=22;
       return false;
  }
  value.field_q_actual=arena.allocate!(double)(count6);
  if(value.field_q_actual.length!=count6) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_q_actual) {
  if(!r.float64(e)) return false;
  }
  uint count7; if(!r.integer(count7)) return false;
  if(count7>6) {
       r.code=22;
       return false;
  }
  value.field_qd_actual=arena.allocate!(double)(count7);
  if(value.field_qd_actual.length!=count7) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_qd_actual) {
  if(!r.float64(e)) return false;
  }
  uint count8; if(!r.integer(count8)) return false;
  if(count8>6) {
       r.code=22;
       return false;
  }
  value.field_i_actual=arena.allocate!(double)(count8);
  if(value.field_i_actual.length!=count8) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_i_actual) {
  if(!r.float64(e)) return false;
  }
  uint count9; if(!r.integer(count9)) return false;
  if(count9>6) {
       r.code=22;
       return false;
  }
  value.field_tool_acc_values=arena.allocate!(double)(count9);
  if(value.field_tool_acc_values.length!=count9) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_tool_acc_values) {
  if(!r.float64(e)) return false;
  }
  uint count10; if(!r.integer(count10)) return false;
  if(count10>6) {
       r.code=22;
       return false;
  }
  value.field_tcp_force=arena.allocate!(double)(count10);
  if(value.field_tcp_force.length!=count10) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_tcp_force) {
  if(!r.float64(e)) return false;
  }
  uint count11; if(!r.integer(count11)) return false;
  if(count11>6) {
       r.code=22;
       return false;
  }
  value.field_tool_vector=arena.allocate!(double)(count11);
  if(value.field_tool_vector.length!=count11) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_tool_vector) {
  if(!r.float64(e)) return false;
  }
  uint count12; if(!r.integer(count12)) return false;
  if(count12>6) {
       r.code=22;
       return false;
  }
  value.field_tcp_speed=arena.allocate!(double)(count12);
  if(value.field_tcp_speed.length!=count12) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_tcp_speed) {
  if(!r.float64(e)) return false;
  }
  if(!r.float64(value.field_digital_input_bits)) return false;
  uint count14; if(!r.integer(count14)) return false;
  if(count14>6) {
       r.code=22;
       return false;
  }
  value.field_motor_temperatures=arena.allocate!(double)(count14);
  if(value.field_motor_temperatures.length!=count14) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_motor_temperatures) {
  if(!r.float64(e)) return false;
  }
  if(!r.float64(value.field_controller_timer)) return false;
  if(!r.float64(value.field_test_value)) return false;
  if(!r.float64(value.field_robot_mode)) return false;
  uint count18; if(!r.integer(count18)) return false;
  if(count18>6) {
       r.code=22;
       return false;
  }
  value.field_joint_modes=arena.allocate!(double)(count18);
  if(value.field_joint_modes.length!=count18) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_joint_modes) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete ur_msgs/RobotStateRTMsg value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/RobotStateRTMsg value.
 /// @details Require the complete 96..768-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a
 /// successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsRobotStateRTMsg; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsRobotStateRTMsg value) {
  if(bytes.length<96 || bytes.length>768) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/SetAnalogOutputRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and is identified by
/// UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsSetAnalogOutputRequest {
 /// @brief Maximum canonical extent of ur_msgs/SetAnalogOutputRequest in bytes.
 /// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=6;
 /// @brief Canonical codec identity of ur_msgs/SetAnalogOutputRequest.
 /// @details Exact identity UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789";
 /// @brief Original ROS type name for ur_msgs/SetAnalogOutputRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/SetAnalogOutputRequest";
 /// @brief Selected original native identity for ur_msgs/SetAnalogOutputRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/SetAnalogOutputRequest.data: ur_msgs/Analog.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/d/API-CONTRACT.md
 Ros1Ur_msgsAnalog field_data=Ros1Ur_msgsAnalog.init;
 /// @brief Append every canonical field of ur_msgs/SetAnalogOutputRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_data.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/SetAnalogOutputRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsSetAnalogOutputRequest value) {
  value=Ros1Ur_msgsSetAnalogOutputRequest.init;
  if(!Ros1Ur_msgsAnalog.readFields(r,arena,value.field_data)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/SetAnalogOutputRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/SetAnalogOutputRequest value.
 /// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetAnalogOutputRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsSetAnalogOutputRequest value) {
  if(bytes.length<6 || bytes.length>6) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/SetAnalogOutputResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is identified by
/// UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsSetAnalogOutputResponse {
 /// @brief Maximum canonical extent of ur_msgs/SetAnalogOutputResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of ur_msgs/SetAnalogOutputResponse.
 /// @details Exact identity UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580";
 /// @brief Original ROS type name for ur_msgs/SetAnalogOutputResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/SetAnalogOutputResponse";
 /// @brief Selected original native identity for ur_msgs/SetAnalogOutputResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/SetAnalogOutputResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_msgs/SetAnalogOutputResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/SetAnalogOutputResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsSetAnalogOutputResponse value) {
  value=Ros1Ur_msgsSetAnalogOutputResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/SetAnalogOutputResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/SetAnalogOutputResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetAnalogOutputResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsSetAnalogOutputResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/SetForceModeRequest value.
/// @details All 13 declared fields are retained in source order. The canonical representation occupies 207..335 bytes and is identified by
/// UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsSetForceModeRequest {
 /// @brief Maximum canonical extent of ur_msgs/SetForceModeRequest in bytes.
 /// @details The inclusive bound is 335 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=335;
 /// @brief Canonical codec identity of ur_msgs/SetForceModeRequest.
 /// @details Exact identity UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b";
 /// @brief Original ROS type name for ur_msgs/SetForceModeRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/SetForceModeRequest";
 /// @brief Selected original native identity for ur_msgs/SetForceModeRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/SetForceModeRequest.TCP_TO_ORIGIN: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_TCP_TO_ORIGIN=1;
 /// @brief ur_msgs/SetForceModeRequest.NO_TRANSFORM: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_NO_TRANSFORM=2;
 /// @brief ur_msgs/SetForceModeRequest.TCP_VELOCITY_TO_X_Y: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_TCP_VELOCITY_TO_X_Y=3;
 /// @brief ur_msgs/SetForceModeRequest.task_frame: geometry_msgs/PoseStamped.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsPoseStamped field_task_frame=Ros1Geometry_msgsPoseStamped.init;
 /// @brief ur_msgs/SetForceModeRequest.selection_vector_x: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_selection_vector_x=false;
 /// @brief ur_msgs/SetForceModeRequest.selection_vector_y: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_selection_vector_y=false;
 /// @brief ur_msgs/SetForceModeRequest.selection_vector_z: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_selection_vector_z=false;
 /// @brief ur_msgs/SetForceModeRequest.selection_vector_rx: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_selection_vector_rx=false;
 /// @brief ur_msgs/SetForceModeRequest.selection_vector_ry: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_selection_vector_ry=false;
 /// @brief ur_msgs/SetForceModeRequest.selection_vector_rz: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_selection_vector_rz=false;
 /// @brief ur_msgs/SetForceModeRequest.wrench: geometry_msgs/Wrench.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsWrench field_wrench=Ros1Geometry_msgsWrench.init;
 /// @brief ur_msgs/SetForceModeRequest.type: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 ubyte field_type=0;
 /// @brief ur_msgs/SetForceModeRequest.speed_limits: geometry_msgs/Twist.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsTwist field_speed_limits=Ros1Geometry_msgsTwist.init;
 /// @brief ur_msgs/SetForceModeRequest.deviation_limits: float32; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 float[6] field_deviation_limits=0;
 /// @brief ur_msgs/SetForceModeRequest.damping_factor: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 float field_damping_factor=0;
 /// @brief ur_msgs/SetForceModeRequest.gain_scaling: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 float field_gain_scaling=0;
 /// @brief Append every canonical field of ur_msgs/SetForceModeRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_task_frame.writeFields(w)) return false;
  if(!w.boolean(this.field_selection_vector_x)) return false;
  if(!w.boolean(this.field_selection_vector_y)) return false;
  if(!w.boolean(this.field_selection_vector_z)) return false;
  if(!w.boolean(this.field_selection_vector_rx)) return false;
  if(!w.boolean(this.field_selection_vector_ry)) return false;
  if(!w.boolean(this.field_selection_vector_rz)) return false;
  if(!this.field_wrench.writeFields(w)) return false;
  if(!w.integer(this.field_type)) return false;
  if(!this.field_speed_limits.writeFields(w)) return false;
  foreach(ref e; this.field_deviation_limits) {
  if(!w.float32(e)) return false;
  }
  if(!w.float32(this.field_damping_factor)) return false;
  if(!w.float32(this.field_gain_scaling)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/SetForceModeRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsSetForceModeRequest value) {
  value=Ros1Ur_msgsSetForceModeRequest.init;
  if(!Ros1Geometry_msgsPoseStamped.readFields(r,arena,value.field_task_frame)) return false;
  if(!r.boolean(value.field_selection_vector_x)) return false;
  if(!r.boolean(value.field_selection_vector_y)) return false;
  if(!r.boolean(value.field_selection_vector_z)) return false;
  if(!r.boolean(value.field_selection_vector_rx)) return false;
  if(!r.boolean(value.field_selection_vector_ry)) return false;
  if(!r.boolean(value.field_selection_vector_rz)) return false;
  if(!Ros1Geometry_msgsWrench.readFields(r,arena,value.field_wrench)) return false;
  if(!r.integer(value.field_type)) return false;
  if(!Ros1Geometry_msgsTwist.readFields(r,arena,value.field_speed_limits)) return false;
  foreach(ref e; value.field_deviation_limits) {
  if(!r.float32(e)) return false;
  }
  if(!r.float32(value.field_damping_factor)) return false;
  if(!r.float32(value.field_gain_scaling)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/SetForceModeRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/SetForceModeRequest value.
 /// @details Require the complete 207..335-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a
 /// successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetForceModeRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsSetForceModeRequest value) {
  if(bytes.length<207 || bytes.length>335) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/SetForceModeResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is identified by
/// UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsSetForceModeResponse {
 /// @brief Maximum canonical extent of ur_msgs/SetForceModeResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of ur_msgs/SetForceModeResponse.
 /// @details Exact identity UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c";
 /// @brief Original ROS type name for ur_msgs/SetForceModeResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/SetForceModeResponse";
 /// @brief Selected original native identity for ur_msgs/SetForceModeResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/SetForceModeResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_msgs/SetForceModeResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/SetForceModeResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsSetForceModeResponse value) {
  value=Ros1Ur_msgsSetForceModeResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/SetForceModeResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/SetForceModeResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetForceModeResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsSetForceModeResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/SetIORequest value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 6..6 bytes and is identified by
/// UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsSetIORequest {
 /// @brief Maximum canonical extent of ur_msgs/SetIORequest in bytes.
 /// @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=6;
 /// @brief Canonical codec identity of ur_msgs/SetIORequest.
 /// @details Exact identity UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872";
 /// @brief Original ROS type name for ur_msgs/SetIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/SetIORequest";
 /// @brief Selected original native identity for ur_msgs/SetIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/SetIORequest.PIN_AOUT0: original int8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_AOUT0=0;
 /// @brief ur_msgs/SetIORequest.PIN_AOUT1: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_AOUT1=1;
 /// @brief ur_msgs/SetIORequest.PIN_DOUT0: original int8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_DOUT0=0;
 /// @brief ur_msgs/SetIORequest.PIN_DOUT1: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_DOUT1=1;
 /// @brief ur_msgs/SetIORequest.PIN_DOUT2: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_DOUT2=2;
 /// @brief ur_msgs/SetIORequest.PIN_DOUT3: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_DOUT3=3;
 /// @brief ur_msgs/SetIORequest.PIN_DOUT4: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_DOUT4=4;
 /// @brief ur_msgs/SetIORequest.PIN_DOUT5: original int8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_DOUT5=5;
 /// @brief ur_msgs/SetIORequest.PIN_DOUT6: original int8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_DOUT6=6;
 /// @brief ur_msgs/SetIORequest.PIN_DOUT7: original int8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_DOUT7=7;
 /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT0: original int8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_CONF_OUT0=8;
 /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT1: original int8 constant.
 /// @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_CONF_OUT1=9;
 /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT2: original int8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_CONF_OUT2=10;
 /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT3: original int8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_CONF_OUT3=11;
 /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT4: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_CONF_OUT4=12;
 /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT5: original int8 constant.
 /// @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_CONF_OUT5=13;
 /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT6: original int8 constant.
 /// @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_CONF_OUT6=14;
 /// @brief ur_msgs/SetIORequest.PIN_CONF_OUT7: original int8 constant.
 /// @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_CONF_OUT7=15;
 /// @brief ur_msgs/SetIORequest.PIN_TOOL_DOUT0: original int8 constant.
 /// @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_TOOL_DOUT0=16;
 /// @brief ur_msgs/SetIORequest.PIN_TOOL_DOUT1: original int8 constant.
 /// @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_PIN_TOOL_DOUT1=17;
 /// @brief ur_msgs/SetIORequest.FUN_SET_DIGITAL_OUT: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_FUN_SET_DIGITAL_OUT=1;
 /// @brief ur_msgs/SetIORequest.FUN_SET_FLAG: original int8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_FUN_SET_FLAG=2;
 /// @brief ur_msgs/SetIORequest.FUN_SET_ANALOG_OUT: original int8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_FUN_SET_ANALOG_OUT=3;
 /// @brief ur_msgs/SetIORequest.FUN_SET_TOOL_VOLTAGE: original int8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_FUN_SET_TOOL_VOLTAGE=4;
 /// @brief ur_msgs/SetIORequest.STATE_OFF: original int8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_STATE_OFF=0;
 /// @brief ur_msgs/SetIORequest.STATE_ON: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_STATE_ON=1;
 /// @brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_0V: original int8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_STATE_TOOL_VOLTAGE_0V=0;
 /// @brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_12V: original int8 constant.
 /// @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_STATE_TOOL_VOLTAGE_12V=12;
 /// @brief ur_msgs/SetIORequest.STATE_TOOL_VOLTAGE_24V: original int8 constant.
 /// @details Exact admitted value 24. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 enum byte field_STATE_TOOL_VOLTAGE_24V=24;
 /// @brief ur_msgs/SetIORequest.fun: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 byte field_fun=0;
 /// @brief ur_msgs/SetIORequest.pin: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 byte field_pin=0;
 /// @brief ur_msgs/SetIORequest.state: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 float field_state=0;
 /// @brief Append every canonical field of ur_msgs/SetIORequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_fun)) return false;
  if(!w.integer(this.field_pin)) return false;
  if(!w.float32(this.field_state)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/SetIORequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsSetIORequest value) {
  value=Ros1Ur_msgsSetIORequest.init;
  if(!r.integer(value.field_fun)) return false;
  if(!r.integer(value.field_pin)) return false;
  if(!r.float32(value.field_state)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/SetIORequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/SetIORequest value.
 /// @details Require the complete 6..6-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetIORequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsSetIORequest value) {
  if(bytes.length<6 || bytes.length>6) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/SetIOResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is identified by
/// UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsSetIOResponse {
 /// @brief Maximum canonical extent of ur_msgs/SetIOResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of ur_msgs/SetIOResponse.
 /// @details Exact identity UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61";
 /// @brief Original ROS type name for ur_msgs/SetIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/SetIOResponse";
 /// @brief Selected original native identity for ur_msgs/SetIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/SetIOResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_msgs/SetIOResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/SetIOResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsSetIOResponse value) {
  value=Ros1Ur_msgsSetIOResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/SetIOResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/SetIOResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetIOResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsSetIOResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/SetPayloadRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..28 bytes and is identified by
/// UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsSetPayloadRequest {
 /// @brief Maximum canonical extent of ur_msgs/SetPayloadRequest in bytes.
 /// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=28;
 /// @brief Canonical codec identity of ur_msgs/SetPayloadRequest.
 /// @details Exact identity UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3";
 /// @brief Original ROS type name for ur_msgs/SetPayloadRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/SetPayloadRequest";
 /// @brief Selected original native identity for ur_msgs/SetPayloadRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/SetPayloadRequest.mass: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mass=0;
 /// @brief ur_msgs/SetPayloadRequest.center_of_gravity: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsVector3 field_center_of_gravity=Ros1Geometry_msgsVector3.init;
 /// @brief Append every canonical field of ur_msgs/SetPayloadRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_mass)) return false;
  if(!this.field_center_of_gravity.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/SetPayloadRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsSetPayloadRequest value) {
  value=Ros1Ur_msgsSetPayloadRequest.init;
  if(!r.float32(value.field_mass)) return false;
  if(!Ros1Geometry_msgsVector3.readFields(r,arena,value.field_center_of_gravity)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/SetPayloadRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/SetPayloadRequest value.
 /// @details Require the complete 28..28-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetPayloadRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsSetPayloadRequest value) {
  if(bytes.length<28 || bytes.length>28) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/SetPayloadResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is identified by
/// UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsSetPayloadResponse {
 /// @brief Maximum canonical extent of ur_msgs/SetPayloadResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of ur_msgs/SetPayloadResponse.
 /// @details Exact identity UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73";
 /// @brief Original ROS type name for ur_msgs/SetPayloadResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/SetPayloadResponse";
 /// @brief Selected original native identity for ur_msgs/SetPayloadResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/SetPayloadResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_msgs/SetPayloadResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/SetPayloadResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsSetPayloadResponse value) {
  value=Ros1Ur_msgsSetPayloadResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/SetPayloadResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/SetPayloadResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetPayloadResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsSetPayloadResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/SetSpeedSliderFractionRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is identified by
/// UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsSetSpeedSliderFractionRequest {
 /// @brief Maximum canonical extent of ur_msgs/SetSpeedSliderFractionRequest in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of ur_msgs/SetSpeedSliderFractionRequest.
 /// @details Exact identity UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32";
 /// @brief Original ROS type name for ur_msgs/SetSpeedSliderFractionRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/SetSpeedSliderFractionRequest";
 /// @brief Selected original native identity for ur_msgs/SetSpeedSliderFractionRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/SetSpeedSliderFractionRequest.speed_slider_fraction: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/d/API-CONTRACT.md
 double field_speed_slider_fraction=0;
 /// @brief Append every canonical field of ur_msgs/SetSpeedSliderFractionRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_speed_slider_fraction)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/SetSpeedSliderFractionRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsSetSpeedSliderFractionRequest value) {
  value=Ros1Ur_msgsSetSpeedSliderFractionRequest.init;
  if(!r.float64(value.field_speed_slider_fraction)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/SetSpeedSliderFractionRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/SetSpeedSliderFractionRequest value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsSetSpeedSliderFractionRequest value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/SetSpeedSliderFractionResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes and is identified by
/// UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsSetSpeedSliderFractionResponse {
 /// @brief Maximum canonical extent of ur_msgs/SetSpeedSliderFractionResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of ur_msgs/SetSpeedSliderFractionResponse.
 /// @details Exact identity UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0";
 /// @brief Original ROS type name for ur_msgs/SetSpeedSliderFractionResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/SetSpeedSliderFractionResponse";
 /// @brief Selected original native identity for ur_msgs/SetSpeedSliderFractionResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/SetSpeedSliderFractionResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of ur_msgs/SetSpeedSliderFractionResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/SetSpeedSliderFractionResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsSetSpeedSliderFractionResponse value) {
  value=Ros1Ur_msgsSetSpeedSliderFractionResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/SetSpeedSliderFractionResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/SetSpeedSliderFractionResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsSetSpeedSliderFractionResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsSetSpeedSliderFractionResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 ur_msgs/ToolDataMsg value.
/// @details All 9 declared fields are retained in source order. The canonical representation occupies 32..32 bytes and is identified by
/// UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Ur_msgsToolDataMsg {
 /// @brief Maximum canonical extent of ur_msgs/ToolDataMsg in bytes.
 /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=32;
 /// @brief Canonical codec identity of ur_msgs/ToolDataMsg.
 /// @details Exact identity UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390 binds field order, shape and bounds. It does not
 /// replace the native type identity.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390";
 /// @brief Original ROS type name for ur_msgs/ToolDataMsg.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="ur_msgs/ToolDataMsg";
 /// @brief Selected original native identity for ur_msgs/ToolDataMsg.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief ur_msgs/ToolDataMsg.ANALOG_INPUT_RANGE_CURRENT: original int8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum byte field_ANALOG_INPUT_RANGE_CURRENT=0;
 /// @brief ur_msgs/ToolDataMsg.ANALOG_INPUT_RANGE_VOLTAGE: original int8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum byte field_ANALOG_INPUT_RANGE_VOLTAGE=1;
 /// @brief ur_msgs/ToolDataMsg.TOOL_BOOTLOADER_MODE: original uint8 constant.
 /// @details Exact admitted value 249. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_TOOL_BOOTLOADER_MODE=249;
 /// @brief ur_msgs/ToolDataMsg.TOOL_RUNNING_MODE: original uint8 constant.
 /// @details Exact admitted value 253. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_TOOL_RUNNING_MODE=253;
 /// @brief ur_msgs/ToolDataMsg.TOOL_IDLE_MODE: original uint8 constant.
 /// @details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 enum ubyte field_TOOL_IDLE_MODE=255;
 /// @brief ur_msgs/ToolDataMsg.analog_input_range2: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 byte field_analog_input_range2=0;
 /// @brief ur_msgs/ToolDataMsg.analog_input_range3: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 byte field_analog_input_range3=0;
 /// @brief ur_msgs/ToolDataMsg.analog_input2: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 double field_analog_input2=0;
 /// @brief ur_msgs/ToolDataMsg.analog_input3: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 double field_analog_input3=0;
 /// @brief ur_msgs/ToolDataMsg.tool_voltage_48v: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 float field_tool_voltage_48v=0;
 /// @brief ur_msgs/ToolDataMsg.tool_output_voltage: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 ubyte field_tool_output_voltage=0;
 /// @brief ur_msgs/ToolDataMsg.tool_current: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 float field_tool_current=0;
 /// @brief ur_msgs/ToolDataMsg.tool_temperature: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 float field_tool_temperature=0;
 /// @brief ur_msgs/ToolDataMsg.tool_mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original field position and signedness;
 /// invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator ownership follow the enclosing
 /// decode function.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 ubyte field_tool_mode=0;
 /// @brief Append every canonical field of ur_msgs/ToolDataMsg.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested operation does not promise rollback of a
 /// partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during synchronous encoding; do not share mutable
 /// cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_analog_input_range2)) return false;
  if(!w.integer(this.field_analog_input_range3)) return false;
  if(!w.float64(this.field_analog_input2)) return false;
  if(!w.float64(this.field_analog_input3)) return false;
  if(!w.float32(this.field_tool_voltage_48v)) return false;
  if(!w.integer(this.field_tool_output_voltage)) return false;
  if(!w.float32(this.field_tool_current)) return false;
  if(!w.float32(this.field_tool_temperature)) return false;
  if(!w.integer(this.field_tool_mode)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of ur_msgs/ToolDataMsg.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves subsequent enclosing fields unread; discard
 /// partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Ur_msgsToolDataMsg value) {
  value=Ros1Ur_msgsToolDataMsg.init;
  if(!r.integer(value.field_analog_input_range2)) return false;
  if(!r.integer(value.field_analog_input_range3)) return false;
  if(!r.float64(value.field_analog_input2)) return false;
  if(!r.float64(value.field_analog_input3)) return false;
  if(!r.float32(value.field_tool_voltage_48v)) return false;
  if(!r.integer(value.field_tool_output_voltage)) return false;
  if(!r.float32(value.field_tool_current)) return false;
  if(!r.float32(value.field_tool_temperature)) return false;
  if(!r.integer(value.field_tool_mode)) return false;
  return true;
 }
 /// @brief Encode one complete ur_msgs/ToolDataMsg value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile. Validate all finite bounds; never
 /// silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer. Retain it unchanged while using
 /// encoded bytes. Input value/backing storage remains stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete ur_msgs/ToolDataMsg value.
 /// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields and trailing bytes before publishing a successful
 /// value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and out-values are unusable after refusal.
 /// Allocation traps and runtime exceptions follow the actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the caller allocator/arena; keep both
 /// alive while using the value. Use an arena region and discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Ur_msgsToolDataMsg; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Ur_msgsToolDataMsg value) {
  if(bytes.length<32 || bytes.length>32) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
