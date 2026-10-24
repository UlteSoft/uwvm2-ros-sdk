// Generated complete bounded values; BetterC, caller buffers, no authority.
module roswasm.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 1 geometry_msgs/Point value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
/// and is identified by UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Geometry_msgsPoint {
 /// @brief Maximum canonical extent of geometry_msgs/Point in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of geometry_msgs/Point.
 /// @details Exact identity UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
 /// @brief Original ROS type name for geometry_msgs/Point.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/Point";
 /// @brief Selected original native identity for geometry_msgs/Point.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Point.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/d/API.md
 double field_x=0;
 /// @brief geometry_msgs/Point.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/d/API.md
 double field_y=0;
 /// @brief geometry_msgs/Point.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/d/API.md
 double field_z=0;
 /// @brief Append every canonical field of geometry_msgs/Point.
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
 /// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Point.
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
 /// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsPoint value) {
  value=Ros1Geometry_msgsPoint.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Point value.
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
 /// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Point value.
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
 /// @see Ros1Geometry_msgsPoint; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsPoint value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Quaternion value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 32..32 bytes
/// and is identified by UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Geometry_msgsQuaternion {
 /// @brief Maximum canonical extent of geometry_msgs/Quaternion in bytes.
 /// @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=32;
 /// @brief Canonical codec identity of geometry_msgs/Quaternion.
 /// @details Exact identity UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
 /// @brief Original ROS type name for geometry_msgs/Quaternion.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/Quaternion";
 /// @brief Selected original native identity for geometry_msgs/Quaternion.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Quaternion.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/d/API.md
 double field_x=0;
 /// @brief geometry_msgs/Quaternion.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/d/API.md
 double field_y=0;
 /// @brief geometry_msgs/Quaternion.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/d/API.md
 double field_z=0;
 /// @brief geometry_msgs/Quaternion.w: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/d/API.md
 double field_w=0;
 /// @brief Append every canonical field of geometry_msgs/Quaternion.
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
 /// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  if(!w.float64(this.field_w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Quaternion.
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
 /// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsQuaternion value) {
  value=Ros1Geometry_msgsQuaternion.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  if(!r.float64(value.field_w)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Quaternion value.
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
 /// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Quaternion value.
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
 /// @see Ros1Geometry_msgsQuaternion; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsQuaternion value) {
  if(bytes.length<32 || bytes.length>32) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Pose value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
/// and is identified by UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Geometry_msgsPose {
 /// @brief Maximum canonical extent of geometry_msgs/Pose in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of geometry_msgs/Pose.
 /// @details Exact identity UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
 /// @brief Original ROS type name for geometry_msgs/Pose.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/Pose";
 /// @brief Selected original native identity for geometry_msgs/Pose.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Pose.position: geometry_msgs/Point.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsPoint field_position=Ros1Geometry_msgsPoint.init;
 /// @brief geometry_msgs/Pose.orientation: geometry_msgs/Quaternion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsQuaternion field_orientation=Ros1Geometry_msgsQuaternion.init;
 /// @brief Append every canonical field of geometry_msgs/Pose.
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
 /// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_position.writeFields(w)) return false;
  if(!this.field_orientation.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Pose.
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
 /// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsPose value) {
  value=Ros1Geometry_msgsPose.init;
  if(!Ros1Geometry_msgsPoint.readFields(r,arena,value.field_position)) return false;
  if(!Ros1Geometry_msgsQuaternion.readFields(r,arena,value.field_orientation)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Pose value.
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
 /// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Pose value.
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
 /// @see Ros1Geometry_msgsPose; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsPose value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/PoseWithCovariance value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 344..344
/// bytes and is identified by UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Geometry_msgsPoseWithCovariance {
 /// @brief Maximum canonical extent of geometry_msgs/PoseWithCovariance in bytes.
 /// @details The inclusive bound is 344 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=344;
 /// @brief Canonical codec identity of geometry_msgs/PoseWithCovariance.
 /// @details Exact identity UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf";
 /// @brief Original ROS type name for geometry_msgs/PoseWithCovariance.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/PoseWithCovariance";
 /// @brief Selected original native identity for geometry_msgs/PoseWithCovariance.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/PoseWithCovariance.pose: geometry_msgs/Pose.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsPose field_pose=Ros1Geometry_msgsPose.init;
 /// @brief geometry_msgs/PoseWithCovariance.covariance: float64; exactly 36 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 double[36] field_covariance=0;
 /// @brief Append every canonical field of geometry_msgs/PoseWithCovariance.
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
 /// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_pose.writeFields(w)) return false;
  foreach(ref e; this.field_covariance) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/PoseWithCovariance.
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
 /// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsPoseWithCovariance value) {
  value=Ros1Geometry_msgsPoseWithCovariance.init;
  if(!Ros1Geometry_msgsPose.readFields(r,arena,value.field_pose)) return false;
  foreach(ref e; value.field_covariance) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete geometry_msgs/PoseWithCovariance value.
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
 /// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/PoseWithCovariance value.
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
 /// @see Ros1Geometry_msgsPoseWithCovariance; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsPoseWithCovariance value) {
  if(bytes.length<344 || bytes.length>344) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Vector3 value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
/// and is identified by UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Geometry_msgsVector3 {
 /// @brief Maximum canonical extent of geometry_msgs/Vector3 in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of geometry_msgs/Vector3.
 /// @details Exact identity UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";
 /// @brief Original ROS type name for geometry_msgs/Vector3.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/Vector3";
 /// @brief Selected original native identity for geometry_msgs/Vector3.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Vector3.x: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/d/API.md
 double field_x=0;
 /// @brief geometry_msgs/Vector3.y: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/d/API.md
 double field_y=0;
 /// @brief geometry_msgs/Vector3.z: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/d/API.md
 double field_z=0;
 /// @brief Append every canonical field of geometry_msgs/Vector3.
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
 /// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.float64(this.field_x)) return false;
  if(!w.float64(this.field_y)) return false;
  if(!w.float64(this.field_z)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Vector3.
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
 /// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsVector3 value) {
  value=Ros1Geometry_msgsVector3.init;
  if(!r.float64(value.field_x)) return false;
  if(!r.float64(value.field_y)) return false;
  if(!r.float64(value.field_z)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Vector3 value.
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
 /// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Vector3 value.
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
 /// @see Ros1Geometry_msgsVector3; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsVector3 value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Transform value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 56..56 bytes
/// and is identified by UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Geometry_msgsTransform {
 /// @brief Maximum canonical extent of geometry_msgs/Transform in bytes.
 /// @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=56;
 /// @brief Canonical codec identity of geometry_msgs/Transform.
 /// @details Exact identity UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085";
 /// @brief Original ROS type name for geometry_msgs/Transform.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/Transform";
 /// @brief Selected original native identity for geometry_msgs/Transform.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Transform.translation: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsVector3 field_translation=Ros1Geometry_msgsVector3.init;
 /// @brief geometry_msgs/Transform.rotation: geometry_msgs/Quaternion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsQuaternion field_rotation=Ros1Geometry_msgsQuaternion.init;
 /// @brief Append every canonical field of geometry_msgs/Transform.
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
 /// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_translation.writeFields(w)) return false;
  if(!this.field_rotation.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Transform.
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
 /// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsTransform value) {
  value=Ros1Geometry_msgsTransform.init;
  if(!Ros1Geometry_msgsVector3.readFields(r,arena,value.field_translation)) return false;
  if(!Ros1Geometry_msgsQuaternion.readFields(r,arena,value.field_rotation)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Transform value.
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
 /// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Transform value.
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
 /// @see Ros1Geometry_msgsTransform; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsTransform value) {
  if(bytes.length<56 || bytes.length>56) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 time value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Time {
 /// @brief Maximum canonical extent of time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Time; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of time.
 /// @details Exact identity UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Time; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
 /// @brief Original ROS type name for time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Time; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="time";
 /// @brief Selected original native identity for time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Time; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief time.sec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Time; document/platform/robotis/en_US/language/d/API.md
 uint field_sec=0;
 /// @brief time.nsec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Time; document/platform/robotis/en_US/language/d/API.md
 uint field_nsec=0;
 /// @brief Append every canonical field of time.
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
 /// @see Ros1Time; document/platform/robotis/en_US/language/d/API.md
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
 /// @see Ros1Time; document/platform/robotis/en_US/language/d/API.md
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
 /// @see Ros1Time; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete time value.
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
 /// @see Ros1Time; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Time value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 std_msgs/Header value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..144 bytes
/// and is identified by UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Std_msgsHeader {
 /// @brief Maximum canonical extent of std_msgs/Header in bytes.
 /// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=144;
 /// @brief Canonical codec identity of std_msgs/Header.
 /// @details Exact identity UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
 /// @brief Original ROS type name for std_msgs/Header.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="std_msgs/Header";
 /// @brief Selected original native identity for std_msgs/Header.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief std_msgs/Header.seq: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/d/API.md
 uint field_seq=0;
 /// @brief std_msgs/Header.stamp: time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/d/API.md
 Ros1Time field_stamp=Ros1Time.init;
 /// @brief std_msgs/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_frame_id=null;
 /// @brief Append every canonical field of std_msgs/Header.
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
 /// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_seq)) return false;
  if(!this.field_stamp.writeFields(w)) return false;
  if(!w.text(this.field_frame_id,128)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_msgs/Header.
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
 /// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Std_msgsHeader value) {
  value=Ros1Std_msgsHeader.init;
  if(!r.integer(value.field_seq)) return false;
  if(!Ros1Time.readFields(r,arena,value.field_stamp)) return false;
  if(!r.text(value.field_frame_id,128)) return false;
  return true;
 }
 /// @brief Encode one complete std_msgs/Header value.
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
 /// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_msgs/Header value.
 /// @details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Std_msgsHeader; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Std_msgsHeader value) {
  if(bytes.length<16 || bytes.length>144) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/TransformStamped value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 76..460 bytes
/// and is identified by UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Geometry_msgsTransformStamped {
 /// @brief Maximum canonical extent of geometry_msgs/TransformStamped in bytes.
 /// @details The inclusive bound is 460 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=460;
 /// @brief Canonical codec identity of geometry_msgs/TransformStamped.
 /// @details Exact identity UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a";
 /// @brief Original ROS type name for geometry_msgs/TransformStamped.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/TransformStamped";
 /// @brief Selected original native identity for geometry_msgs/TransformStamped.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/TransformStamped.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/d/API.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief geometry_msgs/TransformStamped.child_frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_child_frame_id=null;
 /// @brief geometry_msgs/TransformStamped.transform: geometry_msgs/Transform.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsTransform field_transform=Ros1Geometry_msgsTransform.init;
 /// @brief Append every canonical field of geometry_msgs/TransformStamped.
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
 /// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.text(this.field_child_frame_id,256)) return false;
  if(!this.field_transform.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/TransformStamped.
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
 /// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsTransformStamped value) {
  value=Ros1Geometry_msgsTransformStamped.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.text(value.field_child_frame_id,256)) return false;
  if(!Ros1Geometry_msgsTransform.readFields(r,arena,value.field_transform)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/TransformStamped value.
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
 /// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/TransformStamped value.
 /// @details Require the complete 76..460-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Geometry_msgsTransformStamped; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsTransformStamped value) {
  if(bytes.length<76 || bytes.length>460) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/Twist value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 48..48 bytes
/// and is identified by UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Geometry_msgsTwist {
 /// @brief Maximum canonical extent of geometry_msgs/Twist in bytes.
 /// @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=48;
 /// @brief Canonical codec identity of geometry_msgs/Twist.
 /// @details Exact identity UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921";
 /// @brief Original ROS type name for geometry_msgs/Twist.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/Twist";
 /// @brief Selected original native identity for geometry_msgs/Twist.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/Twist.linear: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsVector3 field_linear=Ros1Geometry_msgsVector3.init;
 /// @brief geometry_msgs/Twist.angular: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsVector3 field_angular=Ros1Geometry_msgsVector3.init;
 /// @brief Append every canonical field of geometry_msgs/Twist.
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
 /// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_linear.writeFields(w)) return false;
  if(!this.field_angular.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/Twist.
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
 /// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsTwist value) {
  value=Ros1Geometry_msgsTwist.init;
  if(!Ros1Geometry_msgsVector3.readFields(r,arena,value.field_linear)) return false;
  if(!Ros1Geometry_msgsVector3.readFields(r,arena,value.field_angular)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/Twist value.
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
 /// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/Twist value.
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
 /// @see Ros1Geometry_msgsTwist; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsTwist value) {
  if(bytes.length<48 || bytes.length>48) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/TwistStamped value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 64..192 bytes
/// and is identified by UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Geometry_msgsTwistStamped {
 /// @brief Maximum canonical extent of geometry_msgs/TwistStamped in bytes.
 /// @details The inclusive bound is 192 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=192;
 /// @brief Canonical codec identity of geometry_msgs/TwistStamped.
 /// @details Exact identity UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7";
 /// @brief Original ROS type name for geometry_msgs/TwistStamped.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/TwistStamped";
 /// @brief Selected original native identity for geometry_msgs/TwistStamped.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/TwistStamped.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/d/API.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief geometry_msgs/TwistStamped.twist: geometry_msgs/Twist.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsTwist field_twist=Ros1Geometry_msgsTwist.init;
 /// @brief Append every canonical field of geometry_msgs/TwistStamped.
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
 /// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_twist.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/TwistStamped.
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
 /// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsTwistStamped value) {
  value=Ros1Geometry_msgsTwistStamped.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros1Geometry_msgsTwist.readFields(r,arena,value.field_twist)) return false;
  return true;
 }
 /// @brief Encode one complete geometry_msgs/TwistStamped value.
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
 /// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/TwistStamped value.
 /// @details Require the complete 64..192-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Geometry_msgsTwistStamped; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsTwistStamped value) {
  if(bytes.length<64 || bytes.length>192) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 geometry_msgs/TwistWithCovariance value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 336..336
/// bytes and is identified by UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Geometry_msgsTwistWithCovariance {
 /// @brief Maximum canonical extent of geometry_msgs/TwistWithCovariance in bytes.
 /// @details The inclusive bound is 336 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=336;
 /// @brief Canonical codec identity of geometry_msgs/TwistWithCovariance.
 /// @details Exact identity UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf";
 /// @brief Original ROS type name for geometry_msgs/TwistWithCovariance.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="geometry_msgs/TwistWithCovariance";
 /// @brief Selected original native identity for geometry_msgs/TwistWithCovariance.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief geometry_msgs/TwistWithCovariance.twist: geometry_msgs/Twist.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsTwist field_twist=Ros1Geometry_msgsTwist.init;
 /// @brief geometry_msgs/TwistWithCovariance.covariance: float64; exactly 36 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 double[36] field_covariance=0;
 /// @brief Append every canonical field of geometry_msgs/TwistWithCovariance.
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
 /// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_twist.writeFields(w)) return false;
  foreach(ref e; this.field_covariance) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of geometry_msgs/TwistWithCovariance.
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
 /// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Geometry_msgsTwistWithCovariance value) {
  value=Ros1Geometry_msgsTwistWithCovariance.init;
  if(!Ros1Geometry_msgsTwist.readFields(r,arena,value.field_twist)) return false;
  foreach(ref e; value.field_covariance) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete geometry_msgs/TwistWithCovariance value.
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
 /// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete geometry_msgs/TwistWithCovariance value.
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
 /// @see Ros1Geometry_msgsTwistWithCovariance; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Geometry_msgsTwistWithCovariance value) {
  if(bytes.length<336 || bytes.length>336) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 nav_msgs/Odometry value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 700..1084
/// bytes and is identified by UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Nav_msgsOdometry {
 /// @brief Maximum canonical extent of nav_msgs/Odometry in bytes.
 /// @details The inclusive bound is 1084 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=1084;
 /// @brief Canonical codec identity of nav_msgs/Odometry.
 /// @details Exact identity UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0";
 /// @brief Original ROS type name for nav_msgs/Odometry.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="nav_msgs/Odometry";
 /// @brief Selected original native identity for nav_msgs/Odometry.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief nav_msgs/Odometry.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/d/API.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief nav_msgs/Odometry.child_frame_id: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_child_frame_id=null;
 /// @brief nav_msgs/Odometry.pose: geometry_msgs/PoseWithCovariance.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsPoseWithCovariance field_pose=Ros1Geometry_msgsPoseWithCovariance.init;
 /// @brief nav_msgs/Odometry.twist: geometry_msgs/TwistWithCovariance.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsTwistWithCovariance field_twist=Ros1Geometry_msgsTwistWithCovariance.init;
 /// @brief Append every canonical field of nav_msgs/Odometry.
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
 /// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!w.text(this.field_child_frame_id,256)) return false;
  if(!this.field_pose.writeFields(w)) return false;
  if(!this.field_twist.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of nav_msgs/Odometry.
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
 /// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Nav_msgsOdometry value) {
  value=Ros1Nav_msgsOdometry.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
  if(!r.text(value.field_child_frame_id,256)) return false;
  if(!Ros1Geometry_msgsPoseWithCovariance.readFields(r,arena,value.field_pose)) return false;
  if(!Ros1Geometry_msgsTwistWithCovariance.readFields(r,arena,value.field_twist)) return false;
  return true;
 }
 /// @brief Encode one complete nav_msgs/Odometry value.
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
 /// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete nav_msgs/Odometry value.
 /// @details Require the complete 700..1084-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Nav_msgsOdometry; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Nav_msgsOdometry value) {
  if(bytes.length<700 || bytes.length>1084) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 sensor_msgs/BatteryState value.
/// @details All 16 declared fields are retained in source order. The canonical representation occupies 64..832
/// bytes and is identified by UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Sensor_msgsBatteryState {
 /// @brief Maximum canonical extent of sensor_msgs/BatteryState in bytes.
 /// @details The inclusive bound is 832 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=832;
 /// @brief Canonical codec identity of sensor_msgs/BatteryState.
 /// @details Exact identity UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441";
 /// @brief Original ROS type name for sensor_msgs/BatteryState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="sensor_msgs/BatteryState";
 /// @brief Selected original native identity for sensor_msgs/BatteryState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_STATUS_UNKNOWN: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_STATUS_UNKNOWN=0;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_STATUS_CHARGING: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_STATUS_CHARGING=1;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_STATUS_DISCHARGING: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_STATUS_DISCHARGING=2;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_STATUS_NOT_CHARGING: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_STATUS_NOT_CHARGING=3;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_STATUS_FULL: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_STATUS_FULL=4;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_UNKNOWN: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_UNKNOWN=0;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_GOOD: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_GOOD=1;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_OVERHEAT: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_OVERHEAT=2;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_DEAD: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_DEAD=3;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_OVERVOLTAGE: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_OVERVOLTAGE=4;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_UNSPEC_FAILURE: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE=5;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_COLD: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_COLD=6;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE: original uint8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE=7;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE: original uint8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE=8;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_UNKNOWN: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_UNKNOWN=0;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_NIMH: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_NIMH=1;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_LION: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_LION=2;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_LIPO: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_LIPO=3;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_LIFE: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_LIFE=4;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_NICD: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_NICD=5;
 /// @brief sensor_msgs/BatteryState.POWER_SUPPLY_TECHNOLOGY_LIMN: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_POWER_SUPPLY_TECHNOLOGY_LIMN=6;
 /// @brief sensor_msgs/BatteryState.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief sensor_msgs/BatteryState.voltage: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_voltage=0;
 /// @brief sensor_msgs/BatteryState.temperature: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_temperature=0;
 /// @brief sensor_msgs/BatteryState.current: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_current=0;
 /// @brief sensor_msgs/BatteryState.charge: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_charge=0;
 /// @brief sensor_msgs/BatteryState.capacity: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_capacity=0;
 /// @brief sensor_msgs/BatteryState.design_capacity: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_design_capacity=0;
 /// @brief sensor_msgs/BatteryState.percentage: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 float field_percentage=0;
 /// @brief sensor_msgs/BatteryState.power_supply_status: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 ubyte field_power_supply_status=0;
 /// @brief sensor_msgs/BatteryState.power_supply_health: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 ubyte field_power_supply_health=0;
 /// @brief sensor_msgs/BatteryState.power_supply_technology: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 ubyte field_power_supply_technology=0;
 /// @brief sensor_msgs/BatteryState.present: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 bool field_present=false;
 /// @brief sensor_msgs/BatteryState.cell_voltage: float32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 float[] field_cell_voltage=null;
 /// @brief sensor_msgs/BatteryState.cell_temperature: float32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 float[] field_cell_temperature=null;
 /// @brief sensor_msgs/BatteryState.location: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_location=null;
 /// @brief sensor_msgs/BatteryState.serial_number: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_serial_number=null;
 /// @brief Append every canonical field of sensor_msgs/BatteryState.
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
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
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
 /// @brief Read the ordered canonical fields of sensor_msgs/BatteryState.
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
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Sensor_msgsBatteryState value) {
  value=Ros1Sensor_msgsBatteryState.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
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
 /// @brief Encode one complete sensor_msgs/BatteryState value.
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
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete sensor_msgs/BatteryState value.
 /// @details Require the complete 64..832-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Sensor_msgsBatteryState; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Sensor_msgsBatteryState value) {
  if(bytes.length<64 || bytes.length>832) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 sensor_msgs/Imu value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 312..440
/// bytes and is identified by UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Sensor_msgsImu {
 /// @brief Maximum canonical extent of sensor_msgs/Imu in bytes.
 /// @details The inclusive bound is 440 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=440;
 /// @brief Canonical codec identity of sensor_msgs/Imu.
 /// @details Exact identity UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3";
 /// @brief Original ROS type name for sensor_msgs/Imu.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="sensor_msgs/Imu";
 /// @brief Selected original native identity for sensor_msgs/Imu.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief sensor_msgs/Imu.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief sensor_msgs/Imu.orientation: geometry_msgs/Quaternion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsQuaternion field_orientation=Ros1Geometry_msgsQuaternion.init;
 /// @brief sensor_msgs/Imu.orientation_covariance: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 double[9] field_orientation_covariance=0;
 /// @brief sensor_msgs/Imu.angular_velocity: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsVector3 field_angular_velocity=Ros1Geometry_msgsVector3.init;
 /// @brief sensor_msgs/Imu.angular_velocity_covariance: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 double[9] field_angular_velocity_covariance=0;
 /// @brief sensor_msgs/Imu.linear_acceleration: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsVector3 field_linear_acceleration=Ros1Geometry_msgsVector3.init;
 /// @brief sensor_msgs/Imu.linear_acceleration_covariance: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 double[9] field_linear_acceleration_covariance=0;
 /// @brief Append every canonical field of sensor_msgs/Imu.
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
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
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
 /// @brief Read the ordered canonical fields of sensor_msgs/Imu.
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
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Sensor_msgsImu value) {
  value=Ros1Sensor_msgsImu.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros1Geometry_msgsQuaternion.readFields(r,arena,value.field_orientation)) return false;
  foreach(ref e; value.field_orientation_covariance) {
  if(!r.float64(e)) return false;
  }
  if(!Ros1Geometry_msgsVector3.readFields(r,arena,value.field_angular_velocity)) return false;
  foreach(ref e; value.field_angular_velocity_covariance) {
  if(!r.float64(e)) return false;
  }
  if(!Ros1Geometry_msgsVector3.readFields(r,arena,value.field_linear_acceleration)) return false;
  foreach(ref e; value.field_linear_acceleration_covariance) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete sensor_msgs/Imu value.
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
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete sensor_msgs/Imu value.
 /// @details Require the complete 312..440-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Sensor_msgsImu; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Sensor_msgsImu value) {
  if(bytes.length<312 || bytes.length>440) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 sensor_msgs/JointState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 32..472 bytes
/// and is identified by UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Sensor_msgsJointState {
 /// @brief Maximum canonical extent of sensor_msgs/JointState in bytes.
 /// @details The inclusive bound is 472 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=472;
 /// @brief Canonical codec identity of sensor_msgs/JointState.
 /// @details Exact identity UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e";
 /// @brief Original ROS type name for sensor_msgs/JointState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="sensor_msgs/JointState";
 /// @brief Selected original native identity for sensor_msgs/JointState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief sensor_msgs/JointState.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief sensor_msgs/JointState.name: string; 0..2 elements; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[][] field_name=null;
 /// @brief sensor_msgs/JointState.position: float64; 0..2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
 double[] field_position=null;
 /// @brief sensor_msgs/JointState.velocity: float64; 0..2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
 double[] field_velocity=null;
 /// @brief sensor_msgs/JointState.effort: float64; 0..2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
 double[] field_effort=null;
 /// @brief Append every canonical field of sensor_msgs/JointState.
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
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
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
 /// @brief Read the ordered canonical fields of sensor_msgs/JointState.
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
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Sensor_msgsJointState value) {
  value=Ros1Sensor_msgsJointState.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
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
 /// @brief Encode one complete sensor_msgs/JointState value.
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
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete sensor_msgs/JointState value.
 /// @details Require the complete 32..472-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Sensor_msgsJointState; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Sensor_msgsJointState value) {
  if(bytes.length<32 || bytes.length>472) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 sensor_msgs/LaserScan value.
/// @details All 10 declared fields are retained in source order. The canonical representation occupies 52..8372
/// bytes and is identified by UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Sensor_msgsLaserScan {
 /// @brief Maximum canonical extent of sensor_msgs/LaserScan in bytes.
 /// @details The inclusive bound is 8372 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=8372;
 /// @brief Canonical codec identity of sensor_msgs/LaserScan.
 /// @details Exact identity UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b";
 /// @brief Original ROS type name for sensor_msgs/LaserScan.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="sensor_msgs/LaserScan";
 /// @brief Selected original native identity for sensor_msgs/LaserScan.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief sensor_msgs/LaserScan.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief sensor_msgs/LaserScan.angle_min: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_angle_min=0;
 /// @brief sensor_msgs/LaserScan.angle_max: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_angle_max=0;
 /// @brief sensor_msgs/LaserScan.angle_increment: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_angle_increment=0;
 /// @brief sensor_msgs/LaserScan.time_increment: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_time_increment=0;
 /// @brief sensor_msgs/LaserScan.scan_time: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_scan_time=0;
 /// @brief sensor_msgs/LaserScan.range_min: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_range_min=0;
 /// @brief sensor_msgs/LaserScan.range_max: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 float field_range_max=0;
 /// @brief sensor_msgs/LaserScan.ranges: float32; 0..1024 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 float[] field_ranges=null;
 /// @brief sensor_msgs/LaserScan.intensities: float32; 0..1024 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 float[] field_intensities=null;
 /// @brief Append every canonical field of sensor_msgs/LaserScan.
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
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
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
 /// @brief Read the ordered canonical fields of sensor_msgs/LaserScan.
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
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Sensor_msgsLaserScan value) {
  value=Ros1Sensor_msgsLaserScan.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
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
 /// @brief Encode one complete sensor_msgs/LaserScan value.
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
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete sensor_msgs/LaserScan value.
 /// @details Require the complete 52..8372-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Sensor_msgsLaserScan; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Sensor_msgsLaserScan value) {
  if(bytes.length<52 || bytes.length>8372) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 sensor_msgs/MagneticField value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 112..240
/// bytes and is identified by UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Sensor_msgsMagneticField {
 /// @brief Maximum canonical extent of sensor_msgs/MagneticField in bytes.
 /// @details The inclusive bound is 240 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=240;
 /// @brief Canonical codec identity of sensor_msgs/MagneticField.
 /// @details Exact identity UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe";
 /// @brief Original ROS type name for sensor_msgs/MagneticField.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="sensor_msgs/MagneticField";
 /// @brief Selected original native identity for sensor_msgs/MagneticField.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief sensor_msgs/MagneticField.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/d/API.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief sensor_msgs/MagneticField.magnetic_field: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsVector3 field_magnetic_field=Ros1Geometry_msgsVector3.init;
 /// @brief sensor_msgs/MagneticField.magnetic_field_covariance: float64; exactly 9 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/d/API.md
 double[9] field_magnetic_field_covariance=0;
 /// @brief Append every canonical field of sensor_msgs/MagneticField.
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
 /// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_header.writeFields(w)) return false;
  if(!this.field_magnetic_field.writeFields(w)) return false;
  foreach(ref e; this.field_magnetic_field_covariance) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of sensor_msgs/MagneticField.
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
 /// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Sensor_msgsMagneticField value) {
  value=Ros1Sensor_msgsMagneticField.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
  if(!Ros1Geometry_msgsVector3.readFields(r,arena,value.field_magnetic_field)) return false;
  foreach(ref e; value.field_magnetic_field_covariance) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete sensor_msgs/MagneticField value.
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
 /// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete sensor_msgs/MagneticField value.
 /// @details Require the complete 112..240-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Sensor_msgsMagneticField; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Sensor_msgsMagneticField value) {
  if(bytes.length<112 || bytes.length>240) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 std_srvs/SetBoolRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Std_srvsSetBoolRequest {
 /// @brief Maximum canonical extent of std_srvs/SetBoolRequest in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of std_srvs/SetBoolRequest.
 /// @details Exact identity UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac";
 /// @brief Original ROS type name for std_srvs/SetBoolRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="std_srvs/SetBoolRequest";
 /// @brief Selected original native identity for std_srvs/SetBoolRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief std_srvs/SetBoolRequest.data: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/d/API.md
 bool field_data=false;
 /// @brief Append every canonical field of std_srvs/SetBoolRequest.
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
 /// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_data)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_srvs/SetBoolRequest.
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
 /// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Std_srvsSetBoolRequest value) {
  value=Ros1Std_srvsSetBoolRequest.init;
  if(!r.boolean(value.field_data)) return false;
  return true;
 }
 /// @brief Encode one complete std_srvs/SetBoolRequest value.
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
 /// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_srvs/SetBoolRequest value.
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
 /// @see Ros1Std_srvsSetBoolRequest; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Std_srvsSetBoolRequest value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 std_srvs/SetBoolResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
/// and is identified by UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Std_srvsSetBoolResponse {
 /// @brief Maximum canonical extent of std_srvs/SetBoolResponse in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of std_srvs/SetBoolResponse.
 /// @details Exact identity UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6";
 /// @brief Original ROS type name for std_srvs/SetBoolResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="std_srvs/SetBoolResponse";
 /// @brief Selected original native identity for std_srvs/SetBoolResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief std_srvs/SetBoolResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/d/API.md
 bool field_success=false;
 /// @brief std_srvs/SetBoolResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of std_srvs/SetBoolResponse.
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
 /// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_srvs/SetBoolResponse.
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
 /// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Std_srvsSetBoolResponse value) {
  value=Ros1Std_srvsSetBoolResponse.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete std_srvs/SetBoolResponse value.
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
 /// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_srvs/SetBoolResponse value.
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
 /// @see Ros1Std_srvsSetBoolResponse; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Std_srvsSetBoolResponse value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 std_srvs/TriggerRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies 0..0 bytes
/// and is identified by UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Std_srvsTriggerRequest {
 /// @brief Maximum canonical extent of std_srvs/TriggerRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of std_srvs/TriggerRequest.
 /// @details Exact identity UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e";
 /// @brief Original ROS type name for std_srvs/TriggerRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="std_srvs/TriggerRequest";
 /// @brief Selected original native identity for std_srvs/TriggerRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of std_srvs/TriggerRequest.
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
 /// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of std_srvs/TriggerRequest.
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
 /// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Std_srvsTriggerRequest value) {
  value=Ros1Std_srvsTriggerRequest.init;
  return true;
 }
 /// @brief Encode one complete std_srvs/TriggerRequest value.
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
 /// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_srvs/TriggerRequest value.
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
 /// @see Ros1Std_srvsTriggerRequest; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Std_srvsTriggerRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 std_srvs/TriggerResponse value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..261 bytes
/// and is identified by UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Std_srvsTriggerResponse {
 /// @brief Maximum canonical extent of std_srvs/TriggerResponse in bytes.
 /// @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=261;
 /// @brief Canonical codec identity of std_srvs/TriggerResponse.
 /// @details Exact identity UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d";
 /// @brief Original ROS type name for std_srvs/TriggerResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="std_srvs/TriggerResponse";
 /// @brief Selected original native identity for std_srvs/TriggerResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief std_srvs/TriggerResponse.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/d/API.md
 bool field_success=false;
 /// @brief std_srvs/TriggerResponse.message: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_message=null;
 /// @brief Append every canonical field of std_srvs/TriggerResponse.
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
 /// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_success)) return false;
  if(!w.text(this.field_message,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of std_srvs/TriggerResponse.
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
 /// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Std_srvsTriggerResponse value) {
  value=Ros1Std_srvsTriggerResponse.init;
  if(!r.boolean(value.field_success)) return false;
  if(!r.text(value.field_message,256)) return false;
  return true;
 }
 /// @brief Encode one complete std_srvs/TriggerResponse value.
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
 /// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete std_srvs/TriggerResponse value.
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
 /// @see Ros1Std_srvsTriggerResponse; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Std_srvsTriggerResponse value) {
  if(bytes.length<5 || bytes.length>261) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 turtlebot3_example/Turtlebot3Goal value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 24..24 bytes
/// and is identified by UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Turtlebot3_exampleTurtlebot3Goal {
 /// @brief Maximum canonical extent of turtlebot3_example/Turtlebot3Goal in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of turtlebot3_example/Turtlebot3Goal.
 /// @details Exact identity UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5";
 /// @brief Original ROS type name for turtlebot3_example/Turtlebot3Goal.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_example/Turtlebot3Goal";
 /// @brief Selected original native identity for turtlebot3_example/Turtlebot3Goal.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_example/Turtlebot3Goal.goal: geometry_msgs/Vector3.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/d/API.md
 Ros1Geometry_msgsVector3 field_goal=Ros1Geometry_msgsVector3.init;
 /// @brief Append every canonical field of turtlebot3_example/Turtlebot3Goal.
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
 /// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!this.field_goal.writeFields(w)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_example/Turtlebot3Goal.
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
 /// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Turtlebot3_exampleTurtlebot3Goal value) {
  value=Ros1Turtlebot3_exampleTurtlebot3Goal.init;
  if(!Ros1Geometry_msgsVector3.readFields(r,arena,value.field_goal)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_example/Turtlebot3Goal value.
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
 /// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_example/Turtlebot3Goal value.
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
 /// @see Ros1Turtlebot3_exampleTurtlebot3Goal; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Turtlebot3_exampleTurtlebot3Goal value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 turtlebot3_example/Turtlebot3Result value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
/// and is identified by UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Turtlebot3_exampleTurtlebot3Result {
 /// @brief Maximum canonical extent of turtlebot3_example/Turtlebot3Result in bytes.
 /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=260;
 /// @brief Canonical codec identity of turtlebot3_example/Turtlebot3Result.
 /// @details Exact identity UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528";
 /// @brief Original ROS type name for turtlebot3_example/Turtlebot3Result.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_example/Turtlebot3Result";
 /// @brief Selected original native identity for turtlebot3_example/Turtlebot3Result.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_example/Turtlebot3Result.result: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_result=null;
 /// @brief Append every canonical field of turtlebot3_example/Turtlebot3Result.
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
 /// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_result,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_example/Turtlebot3Result.
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
 /// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Turtlebot3_exampleTurtlebot3Result value) {
  value=Ros1Turtlebot3_exampleTurtlebot3Result.init;
  if(!r.text(value.field_result,256)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_example/Turtlebot3Result value.
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
 /// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_example/Turtlebot3Result value.
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
 /// @see Ros1Turtlebot3_exampleTurtlebot3Result; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Turtlebot3_exampleTurtlebot3Result value) {
  if(bytes.length<4 || bytes.length>260) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 turtlebot3_example/Turtlebot3Feedback value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..260 bytes
/// and is identified by UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Turtlebot3_exampleTurtlebot3Feedback {
 /// @brief Maximum canonical extent of turtlebot3_example/Turtlebot3Feedback in bytes.
 /// @details The inclusive bound is 260 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=260;
 /// @brief Canonical codec identity of turtlebot3_example/Turtlebot3Feedback.
 /// @details Exact identity UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8";
 /// @brief Original ROS type name for turtlebot3_example/Turtlebot3Feedback.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_example/Turtlebot3Feedback";
 /// @brief Selected original native identity for turtlebot3_example/Turtlebot3Feedback.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_example/Turtlebot3Feedback.state: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_state=null;
 /// @brief Append every canonical field of turtlebot3_example/Turtlebot3Feedback.
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
 /// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_state,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_example/Turtlebot3Feedback.
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
 /// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Turtlebot3_exampleTurtlebot3Feedback value) {
  value=Ros1Turtlebot3_exampleTurtlebot3Feedback.init;
  if(!r.text(value.field_state,256)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_example/Turtlebot3Feedback value.
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
 /// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_example/Turtlebot3Feedback value.
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
 /// @see Ros1Turtlebot3_exampleTurtlebot3Feedback; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Turtlebot3_exampleTurtlebot3Feedback value) {
  if(bytes.length<4 || bytes.length>260) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 turtlebot3_msgs/SensorState value.
/// @details All 11 declared fields are retained in source order. The canonical representation occupies 44..172
/// bytes and is identified by UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Turtlebot3_msgsSensorState {
 /// @brief Maximum canonical extent of turtlebot3_msgs/SensorState in bytes.
 /// @details The inclusive bound is 172 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=172;
 /// @brief Canonical codec identity of turtlebot3_msgs/SensorState.
 /// @details Exact identity UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f";
 /// @brief Original ROS type name for turtlebot3_msgs/SensorState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/SensorState";
 /// @brief Selected original native identity for turtlebot3_msgs/SensorState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/SensorState.BUMPER_FORWARD: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_BUMPER_FORWARD=1;
 /// @brief turtlebot3_msgs/SensorState.BUMPER_BACKWARD: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_BUMPER_BACKWARD=2;
 /// @brief turtlebot3_msgs/SensorState.CLIFF: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_CLIFF=1;
 /// @brief turtlebot3_msgs/SensorState.SONAR: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_SONAR=1;
 /// @brief turtlebot3_msgs/SensorState.ILLUMINATION: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_ILLUMINATION=1;
 /// @brief turtlebot3_msgs/SensorState.BUTTON0: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_BUTTON0=1;
 /// @brief turtlebot3_msgs/SensorState.BUTTON1: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_BUTTON1=2;
 /// @brief turtlebot3_msgs/SensorState.ERROR_LEFT_MOTOR: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_ERROR_LEFT_MOTOR=1;
 /// @brief turtlebot3_msgs/SensorState.ERROR_RIGHT_MOTOR: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_ERROR_RIGHT_MOTOR=2;
 /// @brief turtlebot3_msgs/SensorState.TORQUE_ON: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_TORQUE_ON=1;
 /// @brief turtlebot3_msgs/SensorState.TORQUE_OFF: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_TORQUE_OFF=2;
 /// @brief turtlebot3_msgs/SensorState.header: std_msgs/Header.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 Ros1Std_msgsHeader field_header=Ros1Std_msgsHeader.init;
 /// @brief turtlebot3_msgs/SensorState.bumper: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 ubyte field_bumper=0;
 /// @brief turtlebot3_msgs/SensorState.cliff: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 float field_cliff=0;
 /// @brief turtlebot3_msgs/SensorState.sonar: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 float field_sonar=0;
 /// @brief turtlebot3_msgs/SensorState.illumination: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 float field_illumination=0;
 /// @brief turtlebot3_msgs/SensorState.led: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 ubyte field_led=0;
 /// @brief turtlebot3_msgs/SensorState.button: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 ubyte field_button=0;
 /// @brief turtlebot3_msgs/SensorState.torque: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 bool field_torque=false;
 /// @brief turtlebot3_msgs/SensorState.left_encoder: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 int field_left_encoder=0;
 /// @brief turtlebot3_msgs/SensorState.right_encoder: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 int field_right_encoder=0;
 /// @brief turtlebot3_msgs/SensorState.battery: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 float field_battery=0;
 /// @brief Append every canonical field of turtlebot3_msgs/SensorState.
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
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
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
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/SensorState.
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
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Turtlebot3_msgsSensorState value) {
  value=Ros1Turtlebot3_msgsSensorState.init;
  if(!Ros1Std_msgsHeader.readFields(r,arena,value.field_header)) return false;
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
 /// @brief Encode one complete turtlebot3_msgs/SensorState value.
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
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/SensorState value.
 /// @details Require the complete 44..172-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Turtlebot3_msgsSensorState; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Turtlebot3_msgsSensorState value) {
  if(bytes.length<44 || bytes.length>172) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 turtlebot3_msgs/Sound value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Turtlebot3_msgsSound {
 /// @brief Maximum canonical extent of turtlebot3_msgs/Sound in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of turtlebot3_msgs/Sound.
 /// @details Exact identity UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a";
 /// @brief Original ROS type name for turtlebot3_msgs/Sound.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/Sound";
 /// @brief Selected original native identity for turtlebot3_msgs/Sound.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/Sound.OFF: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_OFF=0;
 /// @brief turtlebot3_msgs/Sound.ON: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_ON=1;
 /// @brief turtlebot3_msgs/Sound.LOW_BATTERY: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_LOW_BATTERY=2;
 /// @brief turtlebot3_msgs/Sound.ERROR: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_ERROR=3;
 /// @brief turtlebot3_msgs/Sound.BUTTON1: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_BUTTON1=4;
 /// @brief turtlebot3_msgs/Sound.BUTTON2: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 enum ubyte field_BUTTON2=5;
 /// @brief turtlebot3_msgs/Sound.value: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 ubyte field_value=0;
 /// @brief Append every canonical field of turtlebot3_msgs/Sound.
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
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_value)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/Sound.
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
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Turtlebot3_msgsSound value) {
  value=Ros1Turtlebot3_msgsSound.init;
  if(!r.integer(value.field_value)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/Sound value.
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
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/Sound value.
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
 /// @see Ros1Turtlebot3_msgsSound; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Turtlebot3_msgsSound value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 turtlebot3_msgs/VersionInfo value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..780 bytes
/// and is identified by UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see document/platform/robotis/en_US/language/d/API.md
struct Ros1Turtlebot3_msgsVersionInfo {
 /// @brief Maximum canonical extent of turtlebot3_msgs/VersionInfo in bytes.
 /// @details The inclusive bound is 780 bytes for this selected profile; it is not a native sizeof or a queue reservation.
 /// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/d/API.md
 enum size_t maximumWireBytes=780;
 /// @brief Canonical codec identity of turtlebot3_msgs/VersionInfo.
 /// @details Exact identity UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/d/API.md
 enum codecIdentity="UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a";
 /// @brief Original ROS type name for turtlebot3_msgs/VersionInfo.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/d/API.md
 enum nativeType="turtlebot3_msgs/VersionInfo";
 /// @brief Selected original native identity for turtlebot3_msgs/VersionInfo.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/d/API.md
 enum nativeIdentity="";
 /// @brief turtlebot3_msgs/VersionInfo.hardware: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_hardware=null;
 /// @brief turtlebot3_msgs/VersionInfo.firmware: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_firmware=null;
 /// @brief turtlebot3_msgs/VersionInfo.software: string; each string is 0..256 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/d/API.md
 const(ubyte)[] field_software=null;
 /// @brief Append every canonical field of turtlebot3_msgs/VersionInfo.
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
 /// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/d/API.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_hardware,256)) return false;
  if(!w.text(this.field_firmware,256)) return false;
  if(!w.text(this.field_software,256)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of turtlebot3_msgs/VersionInfo.
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
 /// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/d/API.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Turtlebot3_msgsVersionInfo value) {
  value=Ros1Turtlebot3_msgsVersionInfo.init;
  if(!r.text(value.field_hardware,256)) return false;
  if(!r.text(value.field_firmware,256)) return false;
  if(!r.text(value.field_software,256)) return false;
  return true;
 }
 /// @brief Encode one complete turtlebot3_msgs/VersionInfo value.
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
 /// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/d/API.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete turtlebot3_msgs/VersionInfo value.
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
 /// @see Ros1Turtlebot3_msgsVersionInfo; document/platform/robotis/en_US/language/d/API.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Turtlebot3_msgsVersionInfo value) {
  if(bytes.length<12 || bytes.length>780) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
