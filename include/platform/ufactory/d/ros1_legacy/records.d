/**
 * @file records.d
 * @brief Preserve the complete original ufactory/ros1_legacy canonical value domain.
 * @details The selected domain contains 29 complete record/components and 67 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
// Generated complete bounded values; BetterC, caller buffers, no authority.
module ufactory.d.ros1_legacy.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 1 geometry_msgs/Point value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 24..24 bytes and is identified by
/// UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsPoint {
 /// @brief Maximum canonical extent of geometry_msgs/Point in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of geometry_msgs/Point.
 /// @details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b
 /// binds field order, shape and bounds. It does not replace the native type identity.
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
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 double field_x=0;
 /// @brief geometry_msgs/Point.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 double field_y=0;
 /// @brief geometry_msgs/Point.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 double field_z=0;
 /// @brief Append every canonical field of geometry_msgs/Point.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPoint; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Point.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
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
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
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
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
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
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 32..32 bytes and is identified by
/// UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsQuaternion {
 /// @brief Maximum canonical extent of geometry_msgs/Quaternion in bytes.
 /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=32;
 /// @brief Canonical codec identity of geometry_msgs/Quaternion.
 /// @details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934
 /// binds field order, shape and bounds. It does not replace the native type identity.
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
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_x=0;
 /// @brief geometry_msgs/Quaternion.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_y=0;
 /// @brief geometry_msgs/Quaternion.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_z=0;
 /// @brief geometry_msgs/Quaternion.w: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; share/platform/ros/d/API-CONTRACT.md
 double field_w=0;
 /// @brief Append every canonical field of geometry_msgs/Quaternion.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
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
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
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
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
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
 /// @details Require the complete 32..32-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
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
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 56..56 bytes and is identified by
/// UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Geometry_msgsPose {
 /// @brief Maximum canonical extent of geometry_msgs/Pose in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of geometry_msgs/Pose.
 /// @details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471
 /// binds field order, shape and bounds. It does not replace the native type identity.
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
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsPoint field_position=Ros1Geometry_msgsPoint.init;
 /// @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsQuaternion field_orientation=Ros1Geometry_msgsQuaternion.init;
 /// @brief Append every canonical field of geometry_msgs/Pose.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_position.writeFields(w)) return false;
  if(!this.field_orientation.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Pose.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsPose value) {
  value=Ros1Geometry_msgsPose.init;
  if(!Ros1Geometry_msgsPoint.readFields(r,arena,value.field_position)) return false;
  if(!Ros1Geometry_msgsQuaternion.readFields(r,arena,value.field_orientation)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Pose value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
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
 /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Geometry_msgsPose; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsPose value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/IOState value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 16..16 bytes and is identified by
/// UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsIOState {
 /// @brief Maximum canonical extent of xarm_msgs/IOState in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of xarm_msgs/IOState.
 /// @details Exact identity UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
 /// @brief Original ROS type name for xarm_msgs/IOState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/IOState";
 /// @brief Selected original native identity for xarm_msgs/IOState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/IOState.digital_1: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 int field_digital_1=0;
 /// @brief xarm_msgs/IOState.digital_2: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 int field_digital_2=0;
 /// @brief xarm_msgs/IOState.analog_1: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 float field_analog_1=0;
 /// @brief xarm_msgs/IOState.analog_2: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 float field_analog_2=0;
 /// @brief Append every canonical field of xarm_msgs/IOState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_digital_1)) return false;
  if(!w.integer(this.field_digital_2)) return false;
  if(!w.float32(this.field_analog_1)) return false;
  if(!w.float32(this.field_analog_2)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/IOState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsIOState value) {
  value=Ros1Xarm_msgsIOState.init;
  if(!r.integer(value.field_digital_1)) return false;
  if(!r.integer(value.field_digital_2)) return false;
  if(!r.float32(value.field_analog_1)) return false;
  if(!r.float32(value.field_analog_2)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/IOState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/IOState value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsIOState; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsIOState value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/RobotMsg value.
/// @details All 10 declared fields are retained in source order. The canonical representation occupies
/// 66..94 bytes and is identified by
/// UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsRobotMsg {
 /// @brief Maximum canonical extent of xarm_msgs/RobotMsg in bytes.
 /// @details The inclusive bound is 94 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=94;
 /// @brief Canonical codec identity of xarm_msgs/RobotMsg.
 /// @details Exact identity UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7";
 /// @brief Original ROS type name for xarm_msgs/RobotMsg.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/RobotMsg";
 /// @brief Selected original native identity for xarm_msgs/RobotMsg.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/RobotMsg.state: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_state=0;
 /// @brief xarm_msgs/RobotMsg.mode: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_mode=0;
 /// @brief xarm_msgs/RobotMsg.cmdnum: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_cmdnum=0;
 /// @brief xarm_msgs/RobotMsg.mt_brake: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_mt_brake=0;
 /// @brief xarm_msgs/RobotMsg.mt_able: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_mt_able=0;
 /// @brief xarm_msgs/RobotMsg.err: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_err=0;
 /// @brief xarm_msgs/RobotMsg.warn: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 short field_warn=0;
 /// @brief xarm_msgs/RobotMsg.angle: float32; 0..7 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 float[] field_angle=null;
 /// @brief xarm_msgs/RobotMsg.pose: float32; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 float[6] field_pose=0;
 /// @brief xarm_msgs/RobotMsg.offset: float32; exactly 6 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 float[6] field_offset=0;
 /// @brief Append every canonical field of xarm_msgs/RobotMsg.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_state)) return false;
  if(!w.integer(this.field_mode)) return false;
  if(!w.integer(this.field_cmdnum)) return false;
  if(!w.integer(this.field_mt_brake)) return false;
  if(!w.integer(this.field_mt_able)) return false;
  if(!w.integer(this.field_err)) return false;
  if(!w.integer(this.field_warn)) return false;
  if(this.field_angle.length>7) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_angle.length)) return false;
  foreach(ref e; this.field_angle) {
  if(!w.float32(e)) return false;
  }
  foreach(ref e; this.field_pose) {
  if(!w.float32(e)) return false;
  }
  foreach(ref e; this.field_offset) {
  if(!w.float32(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/RobotMsg.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsRobotMsg value) {
  value=Ros1Xarm_msgsRobotMsg.init;
  if(!r.integer(value.field_state)) return false;
  if(!r.integer(value.field_mode)) return false;
  if(!r.integer(value.field_cmdnum)) return false;
  if(!r.integer(value.field_mt_brake)) return false;
  if(!r.integer(value.field_mt_able)) return false;
  if(!r.integer(value.field_err)) return false;
  if(!r.integer(value.field_warn)) return false;
  uint count7; if(!r.integer(count7)) return false;
  if(count7>7) {
       r.code=22;
       return false;
  }
  value.field_angle=arena.allocate!(float)(count7);
  if(value.field_angle.length!=count7) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_angle) {
  if(!r.float32(e)) return false;
  }
  foreach(ref e; value.field_pose) {
  if(!r.float32(e)) return false;
  }
  foreach(ref e; value.field_offset) {
  if(!r.float32(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete xarm_msgs/RobotMsg value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/RobotMsg value.
 /// @details Require the complete 66..94-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsRobotMsg; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsRobotMsg value) {
  if(bytes.length<66 || bytes.length>94) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/ClearErrRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsClearErrRequest {
 /// @brief Maximum canonical extent of xarm_msgs/ClearErrRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/ClearErrRequest.
 /// @details Exact identity UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
 /// @brief Original ROS type name for xarm_msgs/ClearErrRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/ClearErrRequest";
 /// @brief Selected original native identity for xarm_msgs/ClearErrRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/ClearErrRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ClearErrRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsClearErrRequest value) {
  value=Ros1Xarm_msgsClearErrRequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/ClearErrRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/ClearErrRequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsClearErrRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/ClearErrResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsClearErrResponse {
 /// @brief Maximum canonical extent of xarm_msgs/ClearErrResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/ClearErrResponse.
 /// @details Exact identity UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054";
 /// @brief Original ROS type name for xarm_msgs/ClearErrResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/ClearErrResponse";
 /// @brief Selected original native identity for xarm_msgs/ClearErrResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/ClearErrResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/ClearErrResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/ClearErrResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/ClearErrResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsClearErrResponse value) {
  value=Ros1Xarm_msgsClearErrResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/ClearErrResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/ClearErrResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsClearErrResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsClearErrResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetAnalogIORequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 2..2 bytes and is identified by
/// UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetAnalogIORequest {
 /// @brief Maximum canonical extent of xarm_msgs/GetAnalogIORequest in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=2;
 /// @brief Canonical codec identity of xarm_msgs/GetAnalogIORequest.
 /// @details Exact identity UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
 /// @brief Original ROS type name for xarm_msgs/GetAnalogIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetAnalogIORequest";
 /// @brief Selected original native identity for xarm_msgs/GetAnalogIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetAnalogIORequest.port_num: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 short field_port_num=0;
 /// @brief Append every canonical field of xarm_msgs/GetAnalogIORequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_port_num)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetAnalogIORequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetAnalogIORequest value) {
  value=Ros1Xarm_msgsGetAnalogIORequest.init;
  if(!r.integer(value.field_port_num)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetAnalogIORequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetAnalogIORequest value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIORequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetAnalogIORequest value) {
  if(bytes.length<2 || bytes.length>2) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetAnalogIOResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 10..266 bytes and is identified by
/// UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetAnalogIOResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GetAnalogIOResponse in bytes.
 /// @details The inclusive bound is 266 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=266;
 /// @brief Canonical codec identity of xarm_msgs/GetAnalogIOResponse.
 /// @details Exact identity UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835";
 /// @brief Original ROS type name for xarm_msgs/GetAnalogIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetAnalogIOResponse";
 /// @brief Selected original native identity for xarm_msgs/GetAnalogIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetAnalogIOResponse.analog_value: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 float field_analog_value=0;
 /// @brief xarm_msgs/GetAnalogIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/GetAnalogIOResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GetAnalogIOResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_analog_value)) return false;
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetAnalogIOResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetAnalogIOResponse value) {
  value=Ros1Xarm_msgsGetAnalogIOResponse.init;
  if(!r.float32(value.field_analog_value)) return false;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetAnalogIOResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetAnalogIOResponse value.
 /// @details Require the complete 10..266-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetAnalogIOResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetAnalogIOResponse value) {
  if(bytes.length<10 || bytes.length>266) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetDigitalIORequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetDigitalIORequest {
 /// @brief Maximum canonical extent of xarm_msgs/GetDigitalIORequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of xarm_msgs/GetDigitalIORequest.
 /// @details Exact identity UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
 /// @brief Original ROS type name for xarm_msgs/GetDigitalIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetDigitalIORequest";
 /// @brief Selected original native identity for xarm_msgs/GetDigitalIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of xarm_msgs/GetDigitalIORequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetDigitalIORequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetDigitalIORequest value) {
  value=Ros1Xarm_msgsGetDigitalIORequest.init;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetDigitalIORequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetDigitalIORequest value.
 /// @details Require the complete 0..0-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetDigitalIORequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/GetDigitalIOResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 14..270 bytes and is identified by
/// UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsGetDigitalIOResponse {
 /// @brief Maximum canonical extent of xarm_msgs/GetDigitalIOResponse in bytes.
 /// @details The inclusive bound is 270 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=270;
 /// @brief Canonical codec identity of xarm_msgs/GetDigitalIOResponse.
 /// @details Exact identity UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498";
 /// @brief Original ROS type name for xarm_msgs/GetDigitalIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/GetDigitalIOResponse";
 /// @brief Selected original native identity for xarm_msgs/GetDigitalIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/GetDigitalIOResponse.digital_1: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 int field_digital_1=0;
 /// @brief xarm_msgs/GetDigitalIOResponse.digital_2: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 int field_digital_2=0;
 /// @brief xarm_msgs/GetDigitalIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/GetDigitalIOResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/GetDigitalIOResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_digital_1)) return false;
  if(!w.integer(this.field_digital_2)) return false;
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/GetDigitalIOResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsGetDigitalIOResponse value) {
  value=Ros1Xarm_msgsGetDigitalIOResponse.init;
  if(!r.integer(value.field_digital_1)) return false;
  if(!r.integer(value.field_digital_2)) return false;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/GetDigitalIOResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/GetDigitalIOResponse value.
 /// @details Require the complete 14..270-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsGetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsGetDigitalIOResponse value) {
  if(bytes.length<14 || bytes.length>270) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/MoveRequest value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies
/// 20..148 bytes and is identified by
/// UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsMoveRequest {
 /// @brief Maximum canonical extent of xarm_msgs/MoveRequest in bytes.
 /// @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=148;
 /// @brief Canonical codec identity of xarm_msgs/MoveRequest.
 /// @details Exact identity UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced";
 /// @brief Original ROS type name for xarm_msgs/MoveRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/MoveRequest";
 /// @brief Selected original native identity for xarm_msgs/MoveRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/MoveRequest.pose: float32; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 float[] field_pose=null;
 /// @brief xarm_msgs/MoveRequest.mvvelo: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mvvelo=0;
 /// @brief xarm_msgs/MoveRequest.mvacc: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mvacc=0;
 /// @brief xarm_msgs/MoveRequest.mvtime: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mvtime=0;
 /// @brief xarm_msgs/MoveRequest.mvradii: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 float field_mvradii=0;
 /// @brief Append every canonical field of xarm_msgs/MoveRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_pose.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_pose.length)) return false;
  foreach(ref e; this.field_pose) {
  if(!w.float32(e)) return false;
  }
  if(!w.float32(this.field_mvvelo)) return false;
  if(!w.float32(this.field_mvacc)) return false;
  if(!w.float32(this.field_mvtime)) return false;
  if(!w.float32(this.field_mvradii)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsMoveRequest value) {
  value=Ros1Xarm_msgsMoveRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>32) {
       r.code=22;
       return false;
  }
  value.field_pose=arena.allocate!(float)(count0);
  if(value.field_pose.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_pose) {
  if(!r.float32(e)) return false;
  }
  if(!r.float32(value.field_mvvelo)) return false;
  if(!r.float32(value.field_mvacc)) return false;
  if(!r.float32(value.field_mvtime)) return false;
  if(!r.float32(value.field_mvradii)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/MoveRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/MoveRequest value.
 /// @details Require the complete 20..148-byte canonical representation. Reject truncation, invalid
 /// fields and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsMoveRequest value) {
  if(bytes.length<20 || bytes.length>148) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/MoveResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsMoveResponse {
 /// @brief Maximum canonical extent of xarm_msgs/MoveResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/MoveResponse.
 /// @details Exact identity UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d";
 /// @brief Original ROS type name for xarm_msgs/MoveResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/MoveResponse";
 /// @brief Selected original native identity for xarm_msgs/MoveResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/MoveResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/MoveResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/MoveResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/MoveResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsMoveResponse value) {
  value=Ros1Xarm_msgsMoveResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/MoveResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/MoveResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsMoveResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsMoveResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetAxisRequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 4..4 bytes and is identified by
/// UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetAxisRequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetAxisRequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of xarm_msgs/SetAxisRequest.
 /// @details Exact identity UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
 /// @brief Original ROS type name for xarm_msgs/SetAxisRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetAxisRequest";
 /// @brief Selected original native identity for xarm_msgs/SetAxisRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetAxisRequest.id: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 short field_id=0;
 /// @brief xarm_msgs/SetAxisRequest.data: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 short field_data=0;
 /// @brief Append every canonical field of xarm_msgs/SetAxisRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_id)) return false;
  if(!w.integer(this.field_data)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetAxisRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetAxisRequest value) {
  value=Ros1Xarm_msgsSetAxisRequest.init;
  if(!r.integer(value.field_id)) return false;
  if(!r.integer(value.field_data)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetAxisRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetAxisRequest value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetAxisRequest value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetAxisResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetAxisResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetAxisResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetAxisResponse.
 /// @details Exact identity UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27";
 /// @brief Original ROS type name for xarm_msgs/SetAxisResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetAxisResponse";
 /// @brief Selected original native identity for xarm_msgs/SetAxisResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetAxisResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/SetAxisResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetAxisResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetAxisResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetAxisResponse value) {
  value=Ros1Xarm_msgsSetAxisResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetAxisResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetAxisResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetAxisResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetAxisResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetDigitalIORequest value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 4..4 bytes and is identified by
/// UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetDigitalIORequest {
 /// @brief Maximum canonical extent of xarm_msgs/SetDigitalIORequest in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=4;
 /// @brief Canonical codec identity of xarm_msgs/SetDigitalIORequest.
 /// @details Exact identity UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
 /// @brief Original ROS type name for xarm_msgs/SetDigitalIORequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetDigitalIORequest";
 /// @brief Selected original native identity for xarm_msgs/SetDigitalIORequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetDigitalIORequest.io_num: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 short field_io_num=0;
 /// @brief xarm_msgs/SetDigitalIORequest.value: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 short field_value=0;
 /// @brief Append every canonical field of xarm_msgs/SetDigitalIORequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_io_num)) return false;
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetDigitalIORequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetDigitalIORequest value) {
  value=Ros1Xarm_msgsSetDigitalIORequest.init;
  if(!r.integer(value.field_io_num)) return false;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetDigitalIORequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetDigitalIORequest value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIORequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetDigitalIORequest value) {
  if(bytes.length<4 || bytes.length>4) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetDigitalIOResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetDigitalIOResponse {
 /// @brief Maximum canonical extent of xarm_msgs/SetDigitalIOResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetDigitalIOResponse.
 /// @details Exact identity UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a";
 /// @brief Original ROS type name for xarm_msgs/SetDigitalIOResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetDigitalIOResponse";
 /// @brief Selected original native identity for xarm_msgs/SetDigitalIOResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetDigitalIOResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/SetDigitalIOResponse.message: string; each string is 0..256 bytes; strict UTF-8 with
 /// no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetDigitalIOResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetDigitalIOResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetDigitalIOResponse value) {
  value=Ros1Xarm_msgsSetDigitalIOResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetDigitalIOResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetDigitalIOResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetDigitalIOResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetDigitalIOResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetInt16Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 2..2 bytes and is identified by
/// UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetInt16Request {
 /// @brief Maximum canonical extent of xarm_msgs/SetInt16Request in bytes.
 /// @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=2;
 /// @brief Canonical codec identity of xarm_msgs/SetInt16Request.
 /// @details Exact identity UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
 /// @brief Original ROS type name for xarm_msgs/SetInt16Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetInt16Request";
 /// @brief Selected original native identity for xarm_msgs/SetInt16Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetInt16Request.data: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 short field_data=0;
 /// @brief Append every canonical field of xarm_msgs/SetInt16Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_data)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetInt16Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetInt16Request value) {
  value=Ros1Xarm_msgsSetInt16Request.init;
  if(!r.integer(value.field_data)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetInt16Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetInt16Request value.
 /// @details Require the complete 2..2-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetInt16Request value) {
  if(bytes.length<2 || bytes.length>2) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/SetInt16Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsSetInt16Response {
 /// @brief Maximum canonical extent of xarm_msgs/SetInt16Response in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/SetInt16Response.
 /// @details Exact identity UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656";
 /// @brief Original ROS type name for xarm_msgs/SetInt16Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/SetInt16Response";
 /// @brief Selected original native identity for xarm_msgs/SetInt16Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/SetInt16Response.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/SetInt16Response.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/SetInt16Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/SetInt16Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsSetInt16Response value) {
  value=Ros1Xarm_msgsSetInt16Response.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/SetInt16Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/SetInt16Response value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsSetInt16Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsSetInt16Response value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/TCPOffsetRequest value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies
/// 24..24 bytes and is identified by
/// UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsTCPOffsetRequest {
 /// @brief Maximum canonical extent of xarm_msgs/TCPOffsetRequest in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of xarm_msgs/TCPOffsetRequest.
 /// @details Exact identity UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
 /// @brief Original ROS type name for xarm_msgs/TCPOffsetRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/TCPOffsetRequest";
 /// @brief Selected original native identity for xarm_msgs/TCPOffsetRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/TCPOffsetRequest.x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 float field_x=0;
 /// @brief xarm_msgs/TCPOffsetRequest.y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 float field_y=0;
 /// @brief xarm_msgs/TCPOffsetRequest.z: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 float field_z=0;
 /// @brief xarm_msgs/TCPOffsetRequest.roll: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 float field_roll=0;
 /// @brief xarm_msgs/TCPOffsetRequest.pitch: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 float field_pitch=0;
 /// @brief xarm_msgs/TCPOffsetRequest.yaw: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 float field_yaw=0;
 /// @brief Append every canonical field of xarm_msgs/TCPOffsetRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_x)) return false;
  if(!w.float32(this.field_y)) return false;
  if(!w.float32(this.field_z)) return false;
  if(!w.float32(this.field_roll)) return false;
  if(!w.float32(this.field_pitch)) return false;
  if(!w.float32(this.field_yaw)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/TCPOffsetRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsTCPOffsetRequest value) {
  value=Ros1Xarm_msgsTCPOffsetRequest.init;
  if(!r.float32(value.field_x)) return false;
  if(!r.float32(value.field_y)) return false;
  if(!r.float32(value.field_z)) return false;
  if(!r.float32(value.field_roll)) return false;
  if(!r.float32(value.field_pitch)) return false;
  if(!r.float32(value.field_yaw)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/TCPOffsetRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/TCPOffsetRequest value.
 /// @details Require the complete 24..24-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsTCPOffsetRequest value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_msgs/TCPOffsetResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies
/// 6..262 bytes and is identified by
/// UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_msgsTCPOffsetResponse {
 /// @brief Maximum canonical extent of xarm_msgs/TCPOffsetResponse in bytes.
 /// @details The inclusive bound is 262 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=262;
 /// @brief Canonical codec identity of xarm_msgs/TCPOffsetResponse.
 /// @details Exact identity UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d";
 /// @brief Original ROS type name for xarm_msgs/TCPOffsetResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_msgs/TCPOffsetResponse";
 /// @brief Selected original native identity for xarm_msgs/TCPOffsetResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_msgs/TCPOffsetResponse.ret: int16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 short field_ret=0;
 /// @brief xarm_msgs/TCPOffsetResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of xarm_msgs/TCPOffsetResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_ret)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_msgs/TCPOffsetResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_msgsTCPOffsetResponse value) {
  value=Ros1Xarm_msgsTCPOffsetResponse.init;
  if(!r.integer(value.field_ret)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_msgs/TCPOffsetResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_msgs/TCPOffsetResponse value.
 /// @details Require the complete 6..262-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_msgsTCPOffsetResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_msgsTCPOffsetResponse value) {
  if(bytes.length<6 || bytes.length>262) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/exec_planRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerExec_planRequest {
 /// @brief Maximum canonical extent of xarm_planner/exec_planRequest in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of xarm_planner/exec_planRequest.
 /// @details Exact identity UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3";
 /// @brief Original ROS type name for xarm_planner/exec_planRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/exec_planRequest";
 /// @brief Selected original native identity for xarm_planner/exec_planRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/exec_planRequest.exec: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_exec=false;
 /// @brief Append every canonical field of xarm_planner/exec_planRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_exec)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/exec_planRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerExec_planRequest value) {
  value=Ros1Xarm_plannerExec_planRequest.init;
  if(!r.boolean(value.field_exec)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/exec_planRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/exec_planRequest value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerExec_planRequest value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/exec_planResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerExec_planResponse {
 /// @brief Maximum canonical extent of xarm_planner/exec_planResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of xarm_planner/exec_planResponse.
 /// @details Exact identity UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625";
 /// @brief Original ROS type name for xarm_planner/exec_planResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/exec_planResponse";
 /// @brief Selected original native identity for xarm_planner/exec_planResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/exec_planResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of xarm_planner/exec_planResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/exec_planResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerExec_planResponse value) {
  value=Ros1Xarm_plannerExec_planResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/exec_planResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/exec_planResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerExec_planResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerExec_planResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/joint_planRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 4..260 bytes and is identified by
/// UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerJoint_planRequest {
 /// @brief Maximum canonical extent of xarm_planner/joint_planRequest in bytes.
 /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=260;
 /// @brief Canonical codec identity of xarm_planner/joint_planRequest.
 /// @details Exact identity UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9";
 /// @brief Original ROS type name for xarm_planner/joint_planRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/joint_planRequest";
 /// @brief Selected original native identity for xarm_planner/joint_planRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/joint_planRequest.target: float64; 0..32 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 double[] field_target=null;
 /// @brief Append every canonical field of xarm_planner/joint_planRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_target.length>32) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_target.length)) return false;
  foreach(ref e; this.field_target) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/joint_planRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerJoint_planRequest value) {
  value=Ros1Xarm_plannerJoint_planRequest.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>32) {
       r.code=22;
       return false;
  }
  value.field_target=arena.allocate!(double)(count0);
  if(value.field_target.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_target) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete xarm_planner/joint_planRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/joint_planRequest value.
 /// @details Require the complete 4..260-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerJoint_planRequest value) {
  if(bytes.length<4 || bytes.length>260) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/joint_planResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerJoint_planResponse {
 /// @brief Maximum canonical extent of xarm_planner/joint_planResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of xarm_planner/joint_planResponse.
 /// @details Exact identity UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668";
 /// @brief Original ROS type name for xarm_planner/joint_planResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/joint_planResponse";
 /// @brief Selected original native identity for xarm_planner/joint_planResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/joint_planResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of xarm_planner/joint_planResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/joint_planResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerJoint_planResponse value) {
  value=Ros1Xarm_plannerJoint_planResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/joint_planResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/joint_planResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerJoint_planResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerJoint_planResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/pose_planRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 56..56 bytes and is identified by
/// UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerPose_planRequest {
 /// @brief Maximum canonical extent of xarm_planner/pose_planRequest in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of xarm_planner/pose_planRequest.
 /// @details Exact identity UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22";
 /// @brief Original ROS type name for xarm_planner/pose_planRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/pose_planRequest";
 /// @brief Selected original native identity for xarm_planner/pose_planRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/pose_planRequest.target: geometry_msgs/Pose.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsPose field_target=Ros1Geometry_msgsPose.init;
 /// @brief Append every canonical field of xarm_planner/pose_planRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_target.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/pose_planRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerPose_planRequest value) {
  value=Ros1Xarm_plannerPose_planRequest.init;
  if(!Ros1Geometry_msgsPose.readFields(r,arena,value.field_target)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/pose_planRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/pose_planRequest value.
 /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerPose_planRequest value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/pose_planResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerPose_planResponse {
 /// @brief Maximum canonical extent of xarm_planner/pose_planResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of xarm_planner/pose_planResponse.
 /// @details Exact identity UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113";
 /// @brief Original ROS type name for xarm_planner/pose_planResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/pose_planResponse";
 /// @brief Selected original native identity for xarm_planner/pose_planResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/pose_planResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of xarm_planner/pose_planResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/pose_planResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerPose_planResponse value) {
  value=Ros1Xarm_plannerPose_planResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/pose_planResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/pose_planResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerPose_planResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerPose_planResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/single_straight_planRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 56..56 bytes and is identified by
/// UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerSingle_straight_planRequest {
 /// @brief Maximum canonical extent of xarm_planner/single_straight_planRequest in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of xarm_planner/single_straight_planRequest.
 /// @details Exact identity UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f";
 /// @brief Original ROS type name for xarm_planner/single_straight_planRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/single_straight_planRequest";
 /// @brief Selected original native identity for xarm_planner/single_straight_planRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/single_straight_planRequest.target: geometry_msgs/Pose.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 Ros1Geometry_msgsPose field_target=Ros1Geometry_msgsPose.init;
 /// @brief Append every canonical field of xarm_planner/single_straight_planRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!this.field_target.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/single_straight_planRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerSingle_straight_planRequest value) {
  value=Ros1Xarm_plannerSingle_straight_planRequest.init;
  if(!Ros1Geometry_msgsPose.readFields(r,arena,value.field_target)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/single_straight_planRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/single_straight_planRequest value.
 /// @details Require the complete 56..56-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerSingle_straight_planRequest value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 xarm_planner/single_straight_planResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Xarm_plannerSingle_straight_planResponse {
 /// @brief Maximum canonical extent of xarm_planner/single_straight_planResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of xarm_planner/single_straight_planResponse.
 /// @details Exact identity UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd";
 /// @brief Original ROS type name for xarm_planner/single_straight_planResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="xarm_planner/single_straight_planResponse";
 /// @brief Selected original native identity for xarm_planner/single_straight_planResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief xarm_planner/single_straight_planResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_success=false;
 /// @brief Append every canonical field of xarm_planner/single_straight_planResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer.
 /// This nested operation does not promise rollback of a partially advanced writer.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return True after all fields were appended; false preserves the writer error code.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable
 /// during synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of xarm_planner/single_straight_planResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately
 /// leaves subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return True with the complete out-value, or false with the reader error code; discard partial
 /// out-values.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Xarm_plannerSingle_straight_planResponse value) {
  value=Ros1Xarm_plannerSingle_straight_planResponse.init;
  if(!r.boolean(value.field_success)) return false;
  return true;
 }
 /// @brief Encode one complete xarm_planner/single_straight_planResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the
 /// profile. Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @param[out] length Initialized output extent in bytes, meaningful only on successful status 0.
 /// @return Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow
 /// that buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains
 /// stable until synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete xarm_planner/single_straight_planResponse value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields
 /// and trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in,out] arena Dedicated caller arena region for decoded sequence/nested storage; discard after
 /// partial failure.
 /// @param[out] value Decoded record; inspect only after a successful return.
 /// @return Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors,
 /// buffers and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the
 /// actual language runtime; not every failure is a recoverable codec status. No Host, network or
 /// asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations
 /// belong to the caller allocator/arena; keep both alive while using the value. Use an arena region and
 /// discard it after any failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros1Xarm_plannerSingle_straight_planResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Xarm_plannerSingle_straight_planResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
