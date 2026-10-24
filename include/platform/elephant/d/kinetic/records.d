/**
 * @file records.d
 * @brief Preserve the complete original elephant/kinetic canonical value domain.
 * @details The selected domain contains 36 complete record/components and 116 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
// Generated complete bounded values; BetterC, caller buffers, no authority.
module elephant.d.kinetic.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 1 mycobot_communication/MycobotAngles value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies
/// 24..24 bytes and is identified by
/// UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationMycobotAngles {
 /// @brief Maximum canonical extent of mycobot_communication/MycobotAngles in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of mycobot_communication/MycobotAngles.
 /// @details Exact identity UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6";
 /// @brief Original ROS type name for mycobot_communication/MycobotAngles.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/MycobotAngles";
 /// @brief Selected original native identity for mycobot_communication/MycobotAngles.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/MycobotAngles.joint_1: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_1=0;
 /// @brief mycobot_communication/MycobotAngles.joint_2: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_2=0;
 /// @brief mycobot_communication/MycobotAngles.joint_3: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_3=0;
 /// @brief mycobot_communication/MycobotAngles.joint_4: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_4=0;
 /// @brief mycobot_communication/MycobotAngles.joint_5: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_5=0;
 /// @brief mycobot_communication/MycobotAngles.joint_6: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_6=0;
 /// @brief Append every canonical field of mycobot_communication/MycobotAngles.
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
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_joint_1)) return false;
  if(!w.float32(this.field_joint_2)) return false;
  if(!w.float32(this.field_joint_3)) return false;
  if(!w.float32(this.field_joint_4)) return false;
  if(!w.float32(this.field_joint_5)) return false;
  if(!w.float32(this.field_joint_6)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/MycobotAngles.
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
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationMycobotAngles value) {
  value=Ros1Mycobot_communicationMycobotAngles.init;
  if(!r.float32(value.field_joint_1)) return false;
  if(!r.float32(value.field_joint_2)) return false;
  if(!r.float32(value.field_joint_3)) return false;
  if(!r.float32(value.field_joint_4)) return false;
  if(!r.float32(value.field_joint_5)) return false;
  if(!r.float32(value.field_joint_6)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/MycobotAngles value.
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
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/MycobotAngles value.
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
 /// @see Ros1Mycobot_communicationMycobotAngles; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationMycobotAngles value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/MycobotCoords value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies
/// 24..24 bytes and is identified by
/// UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationMycobotCoords {
 /// @brief Maximum canonical extent of mycobot_communication/MycobotCoords in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of mycobot_communication/MycobotCoords.
 /// @details Exact identity UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2";
 /// @brief Original ROS type name for mycobot_communication/MycobotCoords.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/MycobotCoords";
 /// @brief Selected original native identity for mycobot_communication/MycobotCoords.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/MycobotCoords.x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 float field_x=0;
 /// @brief mycobot_communication/MycobotCoords.y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 float field_y=0;
 /// @brief mycobot_communication/MycobotCoords.z: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 float field_z=0;
 /// @brief mycobot_communication/MycobotCoords.rx: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 float field_rx=0;
 /// @brief mycobot_communication/MycobotCoords.ry: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 float field_ry=0;
 /// @brief mycobot_communication/MycobotCoords.rz: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 float field_rz=0;
 /// @brief Append every canonical field of mycobot_communication/MycobotCoords.
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
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_x)) return false;
  if(!w.float32(this.field_y)) return false;
  if(!w.float32(this.field_z)) return false;
  if(!w.float32(this.field_rx)) return false;
  if(!w.float32(this.field_ry)) return false;
  if(!w.float32(this.field_rz)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/MycobotCoords.
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
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationMycobotCoords value) {
  value=Ros1Mycobot_communicationMycobotCoords.init;
  if(!r.float32(value.field_x)) return false;
  if(!r.float32(value.field_y)) return false;
  if(!r.float32(value.field_z)) return false;
  if(!r.float32(value.field_rx)) return false;
  if(!r.float32(value.field_ry)) return false;
  if(!r.float32(value.field_rz)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/MycobotCoords value.
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
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/MycobotCoords value.
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
 /// @see Ros1Mycobot_communicationMycobotCoords; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationMycobotCoords value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/MycobotGripperStatus value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationMycobotGripperStatus {
 /// @brief Maximum canonical extent of mycobot_communication/MycobotGripperStatus in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of mycobot_communication/MycobotGripperStatus.
 /// @details Exact identity UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649";
 /// @brief Original ROS type name for mycobot_communication/MycobotGripperStatus.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/MycobotGripperStatus";
 /// @brief Selected original native identity for mycobot_communication/MycobotGripperStatus.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/MycobotGripperStatus.Status: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/d/API-CONTRACT.md
 bool field_Status=false;
 /// @brief Append every canonical field of mycobot_communication/MycobotGripperStatus.
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
 /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Status)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/MycobotGripperStatus.
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
 /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationMycobotGripperStatus value) {
  value=Ros1Mycobot_communicationMycobotGripperStatus.init;
  if(!r.boolean(value.field_Status)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/MycobotGripperStatus value.
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
 /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/MycobotGripperStatus value.
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
 /// @see Ros1Mycobot_communicationMycobotGripperStatus; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationMycobotGripperStatus value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/MycobotPumpStatus value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 3..3 bytes and is identified by
/// UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationMycobotPumpStatus {
 /// @brief Maximum canonical extent of mycobot_communication/MycobotPumpStatus in bytes.
 /// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=3;
 /// @brief Canonical codec identity of mycobot_communication/MycobotPumpStatus.
 /// @details Exact identity UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd";
 /// @brief Original ROS type name for mycobot_communication/MycobotPumpStatus.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/MycobotPumpStatus";
 /// @brief Selected original native identity for mycobot_communication/MycobotPumpStatus.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/MycobotPumpStatus.Status: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/d/API-CONTRACT.md
 bool field_Status=false;
 /// @brief mycobot_communication/MycobotPumpStatus.Pin1: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/d/API-CONTRACT.md
 byte field_Pin1=0;
 /// @brief mycobot_communication/MycobotPumpStatus.Pin2: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/d/API-CONTRACT.md
 byte field_Pin2=0;
 /// @brief Append every canonical field of mycobot_communication/MycobotPumpStatus.
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
 /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Status)) return false;
  if(!w.integer(this.field_Pin1)) return false;
  if(!w.integer(this.field_Pin2)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/MycobotPumpStatus.
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
 /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationMycobotPumpStatus value) {
  value=Ros1Mycobot_communicationMycobotPumpStatus.init;
  if(!r.boolean(value.field_Status)) return false;
  if(!r.integer(value.field_Pin1)) return false;
  if(!r.integer(value.field_Pin2)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/MycobotPumpStatus value.
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
 /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/MycobotPumpStatus value.
 /// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields
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
 /// @see Ros1Mycobot_communicationMycobotPumpStatus; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationMycobotPumpStatus value) {
  if(bytes.length<3 || bytes.length>3) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/MycobotSetAngles value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies
/// 25..25 bytes and is identified by
/// UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationMycobotSetAngles {
 /// @brief Maximum canonical extent of mycobot_communication/MycobotSetAngles in bytes.
 /// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=25;
 /// @brief Canonical codec identity of mycobot_communication/MycobotSetAngles.
 /// @details Exact identity UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334";
 /// @brief Original ROS type name for mycobot_communication/MycobotSetAngles.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/MycobotSetAngles";
 /// @brief Selected original native identity for mycobot_communication/MycobotSetAngles.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/MycobotSetAngles.joint_1: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_1=0;
 /// @brief mycobot_communication/MycobotSetAngles.joint_2: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_2=0;
 /// @brief mycobot_communication/MycobotSetAngles.joint_3: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_3=0;
 /// @brief mycobot_communication/MycobotSetAngles.joint_4: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_4=0;
 /// @brief mycobot_communication/MycobotSetAngles.joint_5: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_5=0;
 /// @brief mycobot_communication/MycobotSetAngles.joint_6: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_6=0;
 /// @brief mycobot_communication/MycobotSetAngles.speed: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 byte field_speed=0;
 /// @brief Append every canonical field of mycobot_communication/MycobotSetAngles.
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
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_joint_1)) return false;
  if(!w.float32(this.field_joint_2)) return false;
  if(!w.float32(this.field_joint_3)) return false;
  if(!w.float32(this.field_joint_4)) return false;
  if(!w.float32(this.field_joint_5)) return false;
  if(!w.float32(this.field_joint_6)) return false;
  if(!w.integer(this.field_speed)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/MycobotSetAngles.
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
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationMycobotSetAngles value) {
  value=Ros1Mycobot_communicationMycobotSetAngles.init;
  if(!r.float32(value.field_joint_1)) return false;
  if(!r.float32(value.field_joint_2)) return false;
  if(!r.float32(value.field_joint_3)) return false;
  if(!r.float32(value.field_joint_4)) return false;
  if(!r.float32(value.field_joint_5)) return false;
  if(!r.float32(value.field_joint_6)) return false;
  if(!r.integer(value.field_speed)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/MycobotSetAngles value.
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
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/MycobotSetAngles value.
 /// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields
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
 /// @see Ros1Mycobot_communicationMycobotSetAngles; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationMycobotSetAngles value) {
  if(bytes.length<25 || bytes.length>25) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/MycobotSetCoords value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies
/// 26..26 bytes and is identified by
/// UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationMycobotSetCoords {
 /// @brief Maximum canonical extent of mycobot_communication/MycobotSetCoords in bytes.
 /// @details The inclusive bound is 26 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=26;
 /// @brief Canonical codec identity of mycobot_communication/MycobotSetCoords.
 /// @details Exact identity UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9";
 /// @brief Original ROS type name for mycobot_communication/MycobotSetCoords.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/MycobotSetCoords";
 /// @brief Selected original native identity for mycobot_communication/MycobotSetCoords.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/MycobotSetCoords.x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 float field_x=0;
 /// @brief mycobot_communication/MycobotSetCoords.y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 float field_y=0;
 /// @brief mycobot_communication/MycobotSetCoords.z: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 float field_z=0;
 /// @brief mycobot_communication/MycobotSetCoords.rx: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 float field_rx=0;
 /// @brief mycobot_communication/MycobotSetCoords.ry: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 float field_ry=0;
 /// @brief mycobot_communication/MycobotSetCoords.rz: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 float field_rz=0;
 /// @brief mycobot_communication/MycobotSetCoords.speed: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 byte field_speed=0;
 /// @brief mycobot_communication/MycobotSetCoords.model: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 byte field_model=0;
 /// @brief Append every canonical field of mycobot_communication/MycobotSetCoords.
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
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_x)) return false;
  if(!w.float32(this.field_y)) return false;
  if(!w.float32(this.field_z)) return false;
  if(!w.float32(this.field_rx)) return false;
  if(!w.float32(this.field_ry)) return false;
  if(!w.float32(this.field_rz)) return false;
  if(!w.integer(this.field_speed)) return false;
  if(!w.integer(this.field_model)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/MycobotSetCoords.
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
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationMycobotSetCoords value) {
  value=Ros1Mycobot_communicationMycobotSetCoords.init;
  if(!r.float32(value.field_x)) return false;
  if(!r.float32(value.field_y)) return false;
  if(!r.float32(value.field_z)) return false;
  if(!r.float32(value.field_rx)) return false;
  if(!r.float32(value.field_ry)) return false;
  if(!r.float32(value.field_rz)) return false;
  if(!r.integer(value.field_speed)) return false;
  if(!r.integer(value.field_model)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/MycobotSetCoords value.
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
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/MycobotSetCoords value.
 /// @details Require the complete 26..26-byte canonical representation. Reject truncation, invalid fields
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
 /// @see Ros1Mycobot_communicationMycobotSetCoords; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationMycobotSetCoords value) {
  if(bytes.length<26 || bytes.length>26) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/GetAnglesRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationGetAnglesRequest {
 /// @brief Maximum canonical extent of mycobot_communication/GetAnglesRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of mycobot_communication/GetAnglesRequest.
 /// @details Exact identity UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54";
 /// @brief Original ROS type name for mycobot_communication/GetAnglesRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/GetAnglesRequest";
 /// @brief Selected original native identity for mycobot_communication/GetAnglesRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of mycobot_communication/GetAnglesRequest.
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
 /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/GetAnglesRequest.
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
 /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationGetAnglesRequest value) {
  value=Ros1Mycobot_communicationGetAnglesRequest.init;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/GetAnglesRequest value.
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
 /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/GetAnglesRequest value.
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
 /// @see Ros1Mycobot_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationGetAnglesRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/GetAnglesResponse value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies
/// 24..24 bytes and is identified by
/// UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationGetAnglesResponse {
 /// @brief Maximum canonical extent of mycobot_communication/GetAnglesResponse in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of mycobot_communication/GetAnglesResponse.
 /// @details Exact identity UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3";
 /// @brief Original ROS type name for mycobot_communication/GetAnglesResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/GetAnglesResponse";
 /// @brief Selected original native identity for mycobot_communication/GetAnglesResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/GetAnglesResponse.joint_1: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 float field_joint_1=0;
 /// @brief mycobot_communication/GetAnglesResponse.joint_2: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 float field_joint_2=0;
 /// @brief mycobot_communication/GetAnglesResponse.joint_3: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 float field_joint_3=0;
 /// @brief mycobot_communication/GetAnglesResponse.joint_4: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 float field_joint_4=0;
 /// @brief mycobot_communication/GetAnglesResponse.joint_5: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 float field_joint_5=0;
 /// @brief mycobot_communication/GetAnglesResponse.joint_6: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 float field_joint_6=0;
 /// @brief Append every canonical field of mycobot_communication/GetAnglesResponse.
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
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_joint_1)) return false;
  if(!w.float32(this.field_joint_2)) return false;
  if(!w.float32(this.field_joint_3)) return false;
  if(!w.float32(this.field_joint_4)) return false;
  if(!w.float32(this.field_joint_5)) return false;
  if(!w.float32(this.field_joint_6)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/GetAnglesResponse.
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
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationGetAnglesResponse value) {
  value=Ros1Mycobot_communicationGetAnglesResponse.init;
  if(!r.float32(value.field_joint_1)) return false;
  if(!r.float32(value.field_joint_2)) return false;
  if(!r.float32(value.field_joint_3)) return false;
  if(!r.float32(value.field_joint_4)) return false;
  if(!r.float32(value.field_joint_5)) return false;
  if(!r.float32(value.field_joint_6)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/GetAnglesResponse value.
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
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/GetAnglesResponse value.
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
 /// @see Ros1Mycobot_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationGetAnglesResponse value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/GetCoordsRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationGetCoordsRequest {
 /// @brief Maximum canonical extent of mycobot_communication/GetCoordsRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of mycobot_communication/GetCoordsRequest.
 /// @details Exact identity UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876";
 /// @brief Original ROS type name for mycobot_communication/GetCoordsRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/GetCoordsRequest";
 /// @brief Selected original native identity for mycobot_communication/GetCoordsRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of mycobot_communication/GetCoordsRequest.
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
 /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/GetCoordsRequest.
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
 /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationGetCoordsRequest value) {
  value=Ros1Mycobot_communicationGetCoordsRequest.init;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/GetCoordsRequest value.
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
 /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/GetCoordsRequest value.
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
 /// @see Ros1Mycobot_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationGetCoordsRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/GetCoordsResponse value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies
/// 24..24 bytes and is identified by
/// UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationGetCoordsResponse {
 /// @brief Maximum canonical extent of mycobot_communication/GetCoordsResponse in bytes.
 /// @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=24;
 /// @brief Canonical codec identity of mycobot_communication/GetCoordsResponse.
 /// @details Exact identity UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107";
 /// @brief Original ROS type name for mycobot_communication/GetCoordsResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/GetCoordsResponse";
 /// @brief Selected original native identity for mycobot_communication/GetCoordsResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/GetCoordsResponse.x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 float field_x=0;
 /// @brief mycobot_communication/GetCoordsResponse.y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 float field_y=0;
 /// @brief mycobot_communication/GetCoordsResponse.z: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 float field_z=0;
 /// @brief mycobot_communication/GetCoordsResponse.rx: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 float field_rx=0;
 /// @brief mycobot_communication/GetCoordsResponse.ry: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 float field_ry=0;
 /// @brief mycobot_communication/GetCoordsResponse.rz: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 float field_rz=0;
 /// @brief Append every canonical field of mycobot_communication/GetCoordsResponse.
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
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_x)) return false;
  if(!w.float32(this.field_y)) return false;
  if(!w.float32(this.field_z)) return false;
  if(!w.float32(this.field_rx)) return false;
  if(!w.float32(this.field_ry)) return false;
  if(!w.float32(this.field_rz)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/GetCoordsResponse.
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
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationGetCoordsResponse value) {
  value=Ros1Mycobot_communicationGetCoordsResponse.init;
  if(!r.float32(value.field_x)) return false;
  if(!r.float32(value.field_y)) return false;
  if(!r.float32(value.field_z)) return false;
  if(!r.float32(value.field_rx)) return false;
  if(!r.float32(value.field_ry)) return false;
  if(!r.float32(value.field_rz)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/GetCoordsResponse value.
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
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/GetCoordsResponse value.
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
 /// @see Ros1Mycobot_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationGetCoordsResponse value) {
  if(bytes.length<24 || bytes.length>24) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/GripperStatusRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationGripperStatusRequest {
 /// @brief Maximum canonical extent of mycobot_communication/GripperStatusRequest in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of mycobot_communication/GripperStatusRequest.
 /// @details Exact identity UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585";
 /// @brief Original ROS type name for mycobot_communication/GripperStatusRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/GripperStatusRequest";
 /// @brief Selected original native identity for mycobot_communication/GripperStatusRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/GripperStatusRequest.Status: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_Status=false;
 /// @brief Append every canonical field of mycobot_communication/GripperStatusRequest.
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
 /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Status)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/GripperStatusRequest.
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
 /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationGripperStatusRequest value) {
  value=Ros1Mycobot_communicationGripperStatusRequest.init;
  if(!r.boolean(value.field_Status)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/GripperStatusRequest value.
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
 /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/GripperStatusRequest value.
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
 /// @see Ros1Mycobot_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationGripperStatusRequest value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/GripperStatusResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationGripperStatusResponse {
 /// @brief Maximum canonical extent of mycobot_communication/GripperStatusResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of mycobot_communication/GripperStatusResponse.
 /// @details Exact identity UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664";
 /// @brief Original ROS type name for mycobot_communication/GripperStatusResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/GripperStatusResponse";
 /// @brief Selected original native identity for mycobot_communication/GripperStatusResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/GripperStatusResponse.Flag: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_Flag=false;
 /// @brief Append every canonical field of mycobot_communication/GripperStatusResponse.
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
 /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Flag)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/GripperStatusResponse.
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
 /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationGripperStatusResponse value) {
  value=Ros1Mycobot_communicationGripperStatusResponse.init;
  if(!r.boolean(value.field_Flag)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/GripperStatusResponse value.
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
 /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/GripperStatusResponse value.
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
 /// @see Ros1Mycobot_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationGripperStatusResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/PumpStatusRequest value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 3..3 bytes and is identified by
/// UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationPumpStatusRequest {
 /// @brief Maximum canonical extent of mycobot_communication/PumpStatusRequest in bytes.
 /// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=3;
 /// @brief Canonical codec identity of mycobot_communication/PumpStatusRequest.
 /// @details Exact identity UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c";
 /// @brief Original ROS type name for mycobot_communication/PumpStatusRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/PumpStatusRequest";
 /// @brief Selected original native identity for mycobot_communication/PumpStatusRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/PumpStatusRequest.Status: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_Status=false;
 /// @brief mycobot_communication/PumpStatusRequest.Pin1: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 byte field_Pin1=0;
 /// @brief mycobot_communication/PumpStatusRequest.Pin2: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 byte field_Pin2=0;
 /// @brief Append every canonical field of mycobot_communication/PumpStatusRequest.
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
 /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Status)) return false;
  if(!w.integer(this.field_Pin1)) return false;
  if(!w.integer(this.field_Pin2)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/PumpStatusRequest.
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
 /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationPumpStatusRequest value) {
  value=Ros1Mycobot_communicationPumpStatusRequest.init;
  if(!r.boolean(value.field_Status)) return false;
  if(!r.integer(value.field_Pin1)) return false;
  if(!r.integer(value.field_Pin2)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/PumpStatusRequest value.
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
 /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/PumpStatusRequest value.
 /// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields
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
 /// @see Ros1Mycobot_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationPumpStatusRequest value) {
  if(bytes.length<3 || bytes.length>3) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/PumpStatusResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationPumpStatusResponse {
 /// @brief Maximum canonical extent of mycobot_communication/PumpStatusResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of mycobot_communication/PumpStatusResponse.
 /// @details Exact identity UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd";
 /// @brief Original ROS type name for mycobot_communication/PumpStatusResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/PumpStatusResponse";
 /// @brief Selected original native identity for mycobot_communication/PumpStatusResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/PumpStatusResponse.Flag: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_Flag=false;
 /// @brief Append every canonical field of mycobot_communication/PumpStatusResponse.
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
 /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Flag)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/PumpStatusResponse.
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
 /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationPumpStatusResponse value) {
  value=Ros1Mycobot_communicationPumpStatusResponse.init;
  if(!r.boolean(value.field_Flag)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/PumpStatusResponse value.
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
 /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/PumpStatusResponse value.
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
 /// @see Ros1Mycobot_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationPumpStatusResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/SetAnglesRequest value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies
/// 25..25 bytes and is identified by
/// UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationSetAnglesRequest {
 /// @brief Maximum canonical extent of mycobot_communication/SetAnglesRequest in bytes.
 /// @details The inclusive bound is 25 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=25;
 /// @brief Canonical codec identity of mycobot_communication/SetAnglesRequest.
 /// @details Exact identity UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd";
 /// @brief Original ROS type name for mycobot_communication/SetAnglesRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/SetAnglesRequest";
 /// @brief Selected original native identity for mycobot_communication/SetAnglesRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/SetAnglesRequest.joint_1: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 float field_joint_1=0;
 /// @brief mycobot_communication/SetAnglesRequest.joint_2: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 float field_joint_2=0;
 /// @brief mycobot_communication/SetAnglesRequest.joint_3: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 float field_joint_3=0;
 /// @brief mycobot_communication/SetAnglesRequest.joint_4: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 float field_joint_4=0;
 /// @brief mycobot_communication/SetAnglesRequest.joint_5: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 float field_joint_5=0;
 /// @brief mycobot_communication/SetAnglesRequest.joint_6: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 float field_joint_6=0;
 /// @brief mycobot_communication/SetAnglesRequest.speed: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 byte field_speed=0;
 /// @brief Append every canonical field of mycobot_communication/SetAnglesRequest.
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
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_joint_1)) return false;
  if(!w.float32(this.field_joint_2)) return false;
  if(!w.float32(this.field_joint_3)) return false;
  if(!w.float32(this.field_joint_4)) return false;
  if(!w.float32(this.field_joint_5)) return false;
  if(!w.float32(this.field_joint_6)) return false;
  if(!w.integer(this.field_speed)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/SetAnglesRequest.
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
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationSetAnglesRequest value) {
  value=Ros1Mycobot_communicationSetAnglesRequest.init;
  if(!r.float32(value.field_joint_1)) return false;
  if(!r.float32(value.field_joint_2)) return false;
  if(!r.float32(value.field_joint_3)) return false;
  if(!r.float32(value.field_joint_4)) return false;
  if(!r.float32(value.field_joint_5)) return false;
  if(!r.float32(value.field_joint_6)) return false;
  if(!r.integer(value.field_speed)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/SetAnglesRequest value.
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
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/SetAnglesRequest value.
 /// @details Require the complete 25..25-byte canonical representation. Reject truncation, invalid fields
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
 /// @see Ros1Mycobot_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationSetAnglesRequest value) {
  if(bytes.length<25 || bytes.length>25) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/SetAnglesResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationSetAnglesResponse {
 /// @brief Maximum canonical extent of mycobot_communication/SetAnglesResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of mycobot_communication/SetAnglesResponse.
 /// @details Exact identity UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2";
 /// @brief Original ROS type name for mycobot_communication/SetAnglesResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/SetAnglesResponse";
 /// @brief Selected original native identity for mycobot_communication/SetAnglesResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/SetAnglesResponse.Flag: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_Flag=false;
 /// @brief Append every canonical field of mycobot_communication/SetAnglesResponse.
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
 /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Flag)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/SetAnglesResponse.
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
 /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationSetAnglesResponse value) {
  value=Ros1Mycobot_communicationSetAnglesResponse.init;
  if(!r.boolean(value.field_Flag)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/SetAnglesResponse value.
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
 /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/SetAnglesResponse value.
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
 /// @see Ros1Mycobot_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationSetAnglesResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/SetCoordsRequest value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies
/// 26..26 bytes and is identified by
/// UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationSetCoordsRequest {
 /// @brief Maximum canonical extent of mycobot_communication/SetCoordsRequest in bytes.
 /// @details The inclusive bound is 26 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=26;
 /// @brief Canonical codec identity of mycobot_communication/SetCoordsRequest.
 /// @details Exact identity UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a";
 /// @brief Original ROS type name for mycobot_communication/SetCoordsRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/SetCoordsRequest";
 /// @brief Selected original native identity for mycobot_communication/SetCoordsRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/SetCoordsRequest.x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 float field_x=0;
 /// @brief mycobot_communication/SetCoordsRequest.y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 float field_y=0;
 /// @brief mycobot_communication/SetCoordsRequest.z: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 float field_z=0;
 /// @brief mycobot_communication/SetCoordsRequest.rx: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 float field_rx=0;
 /// @brief mycobot_communication/SetCoordsRequest.ry: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 float field_ry=0;
 /// @brief mycobot_communication/SetCoordsRequest.rz: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 float field_rz=0;
 /// @brief mycobot_communication/SetCoordsRequest.speed: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 byte field_speed=0;
 /// @brief mycobot_communication/SetCoordsRequest.model: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 byte field_model=0;
 /// @brief Append every canonical field of mycobot_communication/SetCoordsRequest.
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
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_x)) return false;
  if(!w.float32(this.field_y)) return false;
  if(!w.float32(this.field_z)) return false;
  if(!w.float32(this.field_rx)) return false;
  if(!w.float32(this.field_ry)) return false;
  if(!w.float32(this.field_rz)) return false;
  if(!w.integer(this.field_speed)) return false;
  if(!w.integer(this.field_model)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/SetCoordsRequest.
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
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationSetCoordsRequest value) {
  value=Ros1Mycobot_communicationSetCoordsRequest.init;
  if(!r.float32(value.field_x)) return false;
  if(!r.float32(value.field_y)) return false;
  if(!r.float32(value.field_z)) return false;
  if(!r.float32(value.field_rx)) return false;
  if(!r.float32(value.field_ry)) return false;
  if(!r.float32(value.field_rz)) return false;
  if(!r.integer(value.field_speed)) return false;
  if(!r.integer(value.field_model)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/SetCoordsRequest value.
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
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/SetCoordsRequest value.
 /// @details Require the complete 26..26-byte canonical representation. Reject truncation, invalid fields
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
 /// @see Ros1Mycobot_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationSetCoordsRequest value) {
  if(bytes.length<26 || bytes.length>26) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mycobot_communication/SetCoordsResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mycobot_communicationSetCoordsResponse {
 /// @brief Maximum canonical extent of mycobot_communication/SetCoordsResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of mycobot_communication/SetCoordsResponse.
 /// @details Exact identity UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af";
 /// @brief Original ROS type name for mycobot_communication/SetCoordsResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mycobot_communication/SetCoordsResponse";
 /// @brief Selected original native identity for mycobot_communication/SetCoordsResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mycobot_communication/SetCoordsResponse.Flag: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_Flag=false;
 /// @brief Append every canonical field of mycobot_communication/SetCoordsResponse.
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
 /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Flag)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mycobot_communication/SetCoordsResponse.
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
 /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mycobot_communicationSetCoordsResponse value) {
  value=Ros1Mycobot_communicationSetCoordsResponse.init;
  if(!r.boolean(value.field_Flag)) return false;
  return true;
 }
 /// @brief Encode one complete mycobot_communication/SetCoordsResponse value.
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
 /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mycobot_communication/SetCoordsResponse value.
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
 /// @see Ros1Mycobot_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mycobot_communicationSetCoordsResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/MypalAngles value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 16..16 bytes and is identified by
/// UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationMypalAngles {
 /// @brief Maximum canonical extent of mypalletizer_communication/MypalAngles in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of mypalletizer_communication/MypalAngles.
 /// @details Exact identity UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9";
 /// @brief Original ROS type name for mypalletizer_communication/MypalAngles.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/MypalAngles";
 /// @brief Selected original native identity for mypalletizer_communication/MypalAngles.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/MypalAngles.joint_1: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_1=0;
 /// @brief mypalletizer_communication/MypalAngles.joint_2: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_2=0;
 /// @brief mypalletizer_communication/MypalAngles.joint_3: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_3=0;
 /// @brief mypalletizer_communication/MypalAngles.joint_4: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_4=0;
 /// @brief Append every canonical field of mypalletizer_communication/MypalAngles.
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
 /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_joint_1)) return false;
  if(!w.float32(this.field_joint_2)) return false;
  if(!w.float32(this.field_joint_3)) return false;
  if(!w.float32(this.field_joint_4)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/MypalAngles.
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
 /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationMypalAngles value) {
  value=Ros1Mypalletizer_communicationMypalAngles.init;
  if(!r.float32(value.field_joint_1)) return false;
  if(!r.float32(value.field_joint_2)) return false;
  if(!r.float32(value.field_joint_3)) return false;
  if(!r.float32(value.field_joint_4)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/MypalAngles value.
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
 /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/MypalAngles value.
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
 /// @see Ros1Mypalletizer_communicationMypalAngles; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationMypalAngles value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/MypalCoords value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 16..16 bytes and is identified by
/// UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationMypalCoords {
 /// @brief Maximum canonical extent of mypalletizer_communication/MypalCoords in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of mypalletizer_communication/MypalCoords.
 /// @details Exact identity UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80";
 /// @brief Original ROS type name for mypalletizer_communication/MypalCoords.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/MypalCoords";
 /// @brief Selected original native identity for mypalletizer_communication/MypalCoords.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/MypalCoords.x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/d/API-CONTRACT.md
 float field_x=0;
 /// @brief mypalletizer_communication/MypalCoords.y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/d/API-CONTRACT.md
 float field_y=0;
 /// @brief mypalletizer_communication/MypalCoords.z: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/d/API-CONTRACT.md
 float field_z=0;
 /// @brief mypalletizer_communication/MypalCoords.rx: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/d/API-CONTRACT.md
 float field_rx=0;
 /// @brief Append every canonical field of mypalletizer_communication/MypalCoords.
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
 /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_x)) return false;
  if(!w.float32(this.field_y)) return false;
  if(!w.float32(this.field_z)) return false;
  if(!w.float32(this.field_rx)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/MypalCoords.
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
 /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationMypalCoords value) {
  value=Ros1Mypalletizer_communicationMypalCoords.init;
  if(!r.float32(value.field_x)) return false;
  if(!r.float32(value.field_y)) return false;
  if(!r.float32(value.field_z)) return false;
  if(!r.float32(value.field_rx)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/MypalCoords value.
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
 /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/MypalCoords value.
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
 /// @see Ros1Mypalletizer_communicationMypalCoords; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationMypalCoords value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/MypalGripperStatus value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationMypalGripperStatus {
 /// @brief Maximum canonical extent of mypalletizer_communication/MypalGripperStatus in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of mypalletizer_communication/MypalGripperStatus.
 /// @details Exact identity UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6";
 /// @brief Original ROS type name for mypalletizer_communication/MypalGripperStatus.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/MypalGripperStatus";
 /// @brief Selected original native identity for mypalletizer_communication/MypalGripperStatus.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/MypalGripperStatus.Status: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/d/API-CONTRACT.md
 bool field_Status=false;
 /// @brief Append every canonical field of mypalletizer_communication/MypalGripperStatus.
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
 /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Status)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/MypalGripperStatus.
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
 /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationMypalGripperStatus value) {
  value=Ros1Mypalletizer_communicationMypalGripperStatus.init;
  if(!r.boolean(value.field_Status)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/MypalGripperStatus value.
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
 /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/MypalGripperStatus value.
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
 /// @see Ros1Mypalletizer_communicationMypalGripperStatus; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationMypalGripperStatus value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/MypalPumpStatus value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 3..3 bytes and is identified by
/// UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationMypalPumpStatus {
 /// @brief Maximum canonical extent of mypalletizer_communication/MypalPumpStatus in bytes.
 /// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=3;
 /// @brief Canonical codec identity of mypalletizer_communication/MypalPumpStatus.
 /// @details Exact identity UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc";
 /// @brief Original ROS type name for mypalletizer_communication/MypalPumpStatus.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/MypalPumpStatus";
 /// @brief Selected original native identity for mypalletizer_communication/MypalPumpStatus.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/MypalPumpStatus.Status: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/d/API-CONTRACT.md
 bool field_Status=false;
 /// @brief mypalletizer_communication/MypalPumpStatus.Pin1: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/d/API-CONTRACT.md
 byte field_Pin1=0;
 /// @brief mypalletizer_communication/MypalPumpStatus.Pin2: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/d/API-CONTRACT.md
 byte field_Pin2=0;
 /// @brief Append every canonical field of mypalletizer_communication/MypalPumpStatus.
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
 /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Status)) return false;
  if(!w.integer(this.field_Pin1)) return false;
  if(!w.integer(this.field_Pin2)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/MypalPumpStatus.
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
 /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationMypalPumpStatus value) {
  value=Ros1Mypalletizer_communicationMypalPumpStatus.init;
  if(!r.boolean(value.field_Status)) return false;
  if(!r.integer(value.field_Pin1)) return false;
  if(!r.integer(value.field_Pin2)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/MypalPumpStatus value.
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
 /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/MypalPumpStatus value.
 /// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields
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
 /// @see Ros1Mypalletizer_communicationMypalPumpStatus; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationMypalPumpStatus value) {
  if(bytes.length<3 || bytes.length>3) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/MypalSetAngles value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies
/// 17..17 bytes and is identified by
/// UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationMypalSetAngles {
 /// @brief Maximum canonical extent of mypalletizer_communication/MypalSetAngles in bytes.
 /// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=17;
 /// @brief Canonical codec identity of mypalletizer_communication/MypalSetAngles.
 /// @details Exact identity UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98";
 /// @brief Original ROS type name for mypalletizer_communication/MypalSetAngles.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/MypalSetAngles";
 /// @brief Selected original native identity for mypalletizer_communication/MypalSetAngles.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/MypalSetAngles.joint_1: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_1=0;
 /// @brief mypalletizer_communication/MypalSetAngles.joint_2: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_2=0;
 /// @brief mypalletizer_communication/MypalSetAngles.joint_3: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_3=0;
 /// @brief mypalletizer_communication/MypalSetAngles.joint_4: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 float field_joint_4=0;
 /// @brief mypalletizer_communication/MypalSetAngles.speed: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 byte field_speed=0;
 /// @brief Append every canonical field of mypalletizer_communication/MypalSetAngles.
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
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_joint_1)) return false;
  if(!w.float32(this.field_joint_2)) return false;
  if(!w.float32(this.field_joint_3)) return false;
  if(!w.float32(this.field_joint_4)) return false;
  if(!w.integer(this.field_speed)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/MypalSetAngles.
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
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationMypalSetAngles value) {
  value=Ros1Mypalletizer_communicationMypalSetAngles.init;
  if(!r.float32(value.field_joint_1)) return false;
  if(!r.float32(value.field_joint_2)) return false;
  if(!r.float32(value.field_joint_3)) return false;
  if(!r.float32(value.field_joint_4)) return false;
  if(!r.integer(value.field_speed)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/MypalSetAngles value.
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
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/MypalSetAngles value.
 /// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields
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
 /// @see Ros1Mypalletizer_communicationMypalSetAngles; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationMypalSetAngles value) {
  if(bytes.length<17 || bytes.length>17) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/MypalSetCoords value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies
/// 18..18 bytes and is identified by
/// UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationMypalSetCoords {
 /// @brief Maximum canonical extent of mypalletizer_communication/MypalSetCoords in bytes.
 /// @details The inclusive bound is 18 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=18;
 /// @brief Canonical codec identity of mypalletizer_communication/MypalSetCoords.
 /// @details Exact identity UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448";
 /// @brief Original ROS type name for mypalletizer_communication/MypalSetCoords.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/MypalSetCoords";
 /// @brief Selected original native identity for mypalletizer_communication/MypalSetCoords.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/MypalSetCoords.x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 float field_x=0;
 /// @brief mypalletizer_communication/MypalSetCoords.y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 float field_y=0;
 /// @brief mypalletizer_communication/MypalSetCoords.z: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 float field_z=0;
 /// @brief mypalletizer_communication/MypalSetCoords.rx: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 float field_rx=0;
 /// @brief mypalletizer_communication/MypalSetCoords.speed: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 byte field_speed=0;
 /// @brief mypalletizer_communication/MypalSetCoords.model: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 byte field_model=0;
 /// @brief Append every canonical field of mypalletizer_communication/MypalSetCoords.
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
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_x)) return false;
  if(!w.float32(this.field_y)) return false;
  if(!w.float32(this.field_z)) return false;
  if(!w.float32(this.field_rx)) return false;
  if(!w.integer(this.field_speed)) return false;
  if(!w.integer(this.field_model)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/MypalSetCoords.
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
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationMypalSetCoords value) {
  value=Ros1Mypalletizer_communicationMypalSetCoords.init;
  if(!r.float32(value.field_x)) return false;
  if(!r.float32(value.field_y)) return false;
  if(!r.float32(value.field_z)) return false;
  if(!r.float32(value.field_rx)) return false;
  if(!r.integer(value.field_speed)) return false;
  if(!r.integer(value.field_model)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/MypalSetCoords value.
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
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/MypalSetCoords value.
 /// @details Require the complete 18..18-byte canonical representation. Reject truncation, invalid fields
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
 /// @see Ros1Mypalletizer_communicationMypalSetCoords; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationMypalSetCoords value) {
  if(bytes.length<18 || bytes.length>18) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/GetAnglesRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationGetAnglesRequest {
 /// @brief Maximum canonical extent of mypalletizer_communication/GetAnglesRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of mypalletizer_communication/GetAnglesRequest.
 /// @details Exact identity UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8";
 /// @brief Original ROS type name for mypalletizer_communication/GetAnglesRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/GetAnglesRequest";
 /// @brief Selected original native identity for mypalletizer_communication/GetAnglesRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of mypalletizer_communication/GetAnglesRequest.
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
 /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/GetAnglesRequest.
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
 /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationGetAnglesRequest value) {
  value=Ros1Mypalletizer_communicationGetAnglesRequest.init;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/GetAnglesRequest value.
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
 /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/GetAnglesRequest value.
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
 /// @see Ros1Mypalletizer_communicationGetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationGetAnglesRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/GetAnglesResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 16..16 bytes and is identified by
/// UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationGetAnglesResponse {
 /// @brief Maximum canonical extent of mypalletizer_communication/GetAnglesResponse in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of mypalletizer_communication/GetAnglesResponse.
 /// @details Exact identity UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745";
 /// @brief Original ROS type name for mypalletizer_communication/GetAnglesResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/GetAnglesResponse";
 /// @brief Selected original native identity for mypalletizer_communication/GetAnglesResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/GetAnglesResponse.joint_1: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 float field_joint_1=0;
 /// @brief mypalletizer_communication/GetAnglesResponse.joint_2: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 float field_joint_2=0;
 /// @brief mypalletizer_communication/GetAnglesResponse.joint_3: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 float field_joint_3=0;
 /// @brief mypalletizer_communication/GetAnglesResponse.joint_4: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 float field_joint_4=0;
 /// @brief Append every canonical field of mypalletizer_communication/GetAnglesResponse.
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
 /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_joint_1)) return false;
  if(!w.float32(this.field_joint_2)) return false;
  if(!w.float32(this.field_joint_3)) return false;
  if(!w.float32(this.field_joint_4)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/GetAnglesResponse.
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
 /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationGetAnglesResponse value) {
  value=Ros1Mypalletizer_communicationGetAnglesResponse.init;
  if(!r.float32(value.field_joint_1)) return false;
  if(!r.float32(value.field_joint_2)) return false;
  if(!r.float32(value.field_joint_3)) return false;
  if(!r.float32(value.field_joint_4)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/GetAnglesResponse value.
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
 /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/GetAnglesResponse value.
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
 /// @see Ros1Mypalletizer_communicationGetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationGetAnglesResponse value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/GetCoordsRequest value.
/// @details All 0 declared fields are retained in source order. The canonical representation occupies
/// 0..0 bytes and is identified by
/// UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationGetCoordsRequest {
 /// @brief Maximum canonical extent of mypalletizer_communication/GetCoordsRequest in bytes.
 /// @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=0;
 /// @brief Canonical codec identity of mypalletizer_communication/GetCoordsRequest.
 /// @details Exact identity UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8";
 /// @brief Original ROS type name for mypalletizer_communication/GetCoordsRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/GetCoordsRequest";
 /// @brief Selected original native identity for mypalletizer_communication/GetCoordsRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief Append every canonical field of mypalletizer_communication/GetCoordsRequest.
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
 /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/GetCoordsRequest.
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
 /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationGetCoordsRequest value) {
  value=Ros1Mypalletizer_communicationGetCoordsRequest.init;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/GetCoordsRequest value.
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
 /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/GetCoordsRequest value.
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
 /// @see Ros1Mypalletizer_communicationGetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationGetCoordsRequest value) {
  if(bytes.length<0 || bytes.length>0) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/GetCoordsResponse value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies
/// 16..16 bytes and is identified by
/// UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationGetCoordsResponse {
 /// @brief Maximum canonical extent of mypalletizer_communication/GetCoordsResponse in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of mypalletizer_communication/GetCoordsResponse.
 /// @details Exact identity UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb";
 /// @brief Original ROS type name for mypalletizer_communication/GetCoordsResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/GetCoordsResponse";
 /// @brief Selected original native identity for mypalletizer_communication/GetCoordsResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/GetCoordsResponse.x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 float field_x=0;
 /// @brief mypalletizer_communication/GetCoordsResponse.y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 float field_y=0;
 /// @brief mypalletizer_communication/GetCoordsResponse.z: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 float field_z=0;
 /// @brief mypalletizer_communication/GetCoordsResponse.rx: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 float field_rx=0;
 /// @brief Append every canonical field of mypalletizer_communication/GetCoordsResponse.
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
 /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_x)) return false;
  if(!w.float32(this.field_y)) return false;
  if(!w.float32(this.field_z)) return false;
  if(!w.float32(this.field_rx)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/GetCoordsResponse.
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
 /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationGetCoordsResponse value) {
  value=Ros1Mypalletizer_communicationGetCoordsResponse.init;
  if(!r.float32(value.field_x)) return false;
  if(!r.float32(value.field_y)) return false;
  if(!r.float32(value.field_z)) return false;
  if(!r.float32(value.field_rx)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/GetCoordsResponse value.
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
 /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/GetCoordsResponse value.
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
 /// @see Ros1Mypalletizer_communicationGetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationGetCoordsResponse value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/GripperStatusRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationGripperStatusRequest {
 /// @brief Maximum canonical extent of mypalletizer_communication/GripperStatusRequest in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of mypalletizer_communication/GripperStatusRequest.
 /// @details Exact identity UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709";
 /// @brief Original ROS type name for mypalletizer_communication/GripperStatusRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/GripperStatusRequest";
 /// @brief Selected original native identity for mypalletizer_communication/GripperStatusRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/GripperStatusRequest.Status: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_Status=false;
 /// @brief Append every canonical field of mypalletizer_communication/GripperStatusRequest.
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
 /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Status)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/GripperStatusRequest.
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
 /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationGripperStatusRequest value) {
  value=Ros1Mypalletizer_communicationGripperStatusRequest.init;
  if(!r.boolean(value.field_Status)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/GripperStatusRequest value.
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
 /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/GripperStatusRequest value.
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
 /// @see Ros1Mypalletizer_communicationGripperStatusRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationGripperStatusRequest value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/GripperStatusResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationGripperStatusResponse {
 /// @brief Maximum canonical extent of mypalletizer_communication/GripperStatusResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of mypalletizer_communication/GripperStatusResponse.
 /// @details Exact identity UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b";
 /// @brief Original ROS type name for mypalletizer_communication/GripperStatusResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/GripperStatusResponse";
 /// @brief Selected original native identity for mypalletizer_communication/GripperStatusResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/GripperStatusResponse.Flag: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_Flag=false;
 /// @brief Append every canonical field of mypalletizer_communication/GripperStatusResponse.
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
 /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Flag)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/GripperStatusResponse.
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
 /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationGripperStatusResponse value) {
  value=Ros1Mypalletizer_communicationGripperStatusResponse.init;
  if(!r.boolean(value.field_Flag)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/GripperStatusResponse value.
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
 /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/GripperStatusResponse value.
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
 /// @see Ros1Mypalletizer_communicationGripperStatusResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationGripperStatusResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/PumpStatusRequest value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies
/// 3..3 bytes and is identified by
/// UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationPumpStatusRequest {
 /// @brief Maximum canonical extent of mypalletizer_communication/PumpStatusRequest in bytes.
 /// @details The inclusive bound is 3 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=3;
 /// @brief Canonical codec identity of mypalletizer_communication/PumpStatusRequest.
 /// @details Exact identity UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636";
 /// @brief Original ROS type name for mypalletizer_communication/PumpStatusRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/PumpStatusRequest";
 /// @brief Selected original native identity for mypalletizer_communication/PumpStatusRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/PumpStatusRequest.Status: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 bool field_Status=false;
 /// @brief mypalletizer_communication/PumpStatusRequest.Pin1: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 byte field_Pin1=0;
 /// @brief mypalletizer_communication/PumpStatusRequest.Pin2: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 byte field_Pin2=0;
 /// @brief Append every canonical field of mypalletizer_communication/PumpStatusRequest.
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
 /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Status)) return false;
  if(!w.integer(this.field_Pin1)) return false;
  if(!w.integer(this.field_Pin2)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/PumpStatusRequest.
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
 /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationPumpStatusRequest value) {
  value=Ros1Mypalletizer_communicationPumpStatusRequest.init;
  if(!r.boolean(value.field_Status)) return false;
  if(!r.integer(value.field_Pin1)) return false;
  if(!r.integer(value.field_Pin2)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/PumpStatusRequest value.
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
 /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/PumpStatusRequest value.
 /// @details Require the complete 3..3-byte canonical representation. Reject truncation, invalid fields
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
 /// @see Ros1Mypalletizer_communicationPumpStatusRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationPumpStatusRequest value) {
  if(bytes.length<3 || bytes.length>3) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/PumpStatusResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationPumpStatusResponse {
 /// @brief Maximum canonical extent of mypalletizer_communication/PumpStatusResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of mypalletizer_communication/PumpStatusResponse.
 /// @details Exact identity UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5";
 /// @brief Original ROS type name for mypalletizer_communication/PumpStatusResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/PumpStatusResponse";
 /// @brief Selected original native identity for mypalletizer_communication/PumpStatusResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/PumpStatusResponse.Flag: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_Flag=false;
 /// @brief Append every canonical field of mypalletizer_communication/PumpStatusResponse.
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
 /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Flag)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/PumpStatusResponse.
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
 /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationPumpStatusResponse value) {
  value=Ros1Mypalletizer_communicationPumpStatusResponse.init;
  if(!r.boolean(value.field_Flag)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/PumpStatusResponse value.
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
 /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/PumpStatusResponse value.
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
 /// @see Ros1Mypalletizer_communicationPumpStatusResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationPumpStatusResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/SetAnglesRequest value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies
/// 17..17 bytes and is identified by
/// UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationSetAnglesRequest {
 /// @brief Maximum canonical extent of mypalletizer_communication/SetAnglesRequest in bytes.
 /// @details The inclusive bound is 17 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=17;
 /// @brief Canonical codec identity of mypalletizer_communication/SetAnglesRequest.
 /// @details Exact identity UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d";
 /// @brief Original ROS type name for mypalletizer_communication/SetAnglesRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/SetAnglesRequest";
 /// @brief Selected original native identity for mypalletizer_communication/SetAnglesRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/SetAnglesRequest.joint_1: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 float field_joint_1=0;
 /// @brief mypalletizer_communication/SetAnglesRequest.joint_2: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 float field_joint_2=0;
 /// @brief mypalletizer_communication/SetAnglesRequest.joint_3: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 float field_joint_3=0;
 /// @brief mypalletizer_communication/SetAnglesRequest.joint_4: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 float field_joint_4=0;
 /// @brief mypalletizer_communication/SetAnglesRequest.speed: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 byte field_speed=0;
 /// @brief Append every canonical field of mypalletizer_communication/SetAnglesRequest.
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
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_joint_1)) return false;
  if(!w.float32(this.field_joint_2)) return false;
  if(!w.float32(this.field_joint_3)) return false;
  if(!w.float32(this.field_joint_4)) return false;
  if(!w.integer(this.field_speed)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/SetAnglesRequest.
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
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationSetAnglesRequest value) {
  value=Ros1Mypalletizer_communicationSetAnglesRequest.init;
  if(!r.float32(value.field_joint_1)) return false;
  if(!r.float32(value.field_joint_2)) return false;
  if(!r.float32(value.field_joint_3)) return false;
  if(!r.float32(value.field_joint_4)) return false;
  if(!r.integer(value.field_speed)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/SetAnglesRequest value.
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
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/SetAnglesRequest value.
 /// @details Require the complete 17..17-byte canonical representation. Reject truncation, invalid fields
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
 /// @see Ros1Mypalletizer_communicationSetAnglesRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationSetAnglesRequest value) {
  if(bytes.length<17 || bytes.length>17) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/SetAnglesResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationSetAnglesResponse {
 /// @brief Maximum canonical extent of mypalletizer_communication/SetAnglesResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of mypalletizer_communication/SetAnglesResponse.
 /// @details Exact identity UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c";
 /// @brief Original ROS type name for mypalletizer_communication/SetAnglesResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/SetAnglesResponse";
 /// @brief Selected original native identity for mypalletizer_communication/SetAnglesResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/SetAnglesResponse.Flag: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_Flag=false;
 /// @brief Append every canonical field of mypalletizer_communication/SetAnglesResponse.
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
 /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Flag)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/SetAnglesResponse.
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
 /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationSetAnglesResponse value) {
  value=Ros1Mypalletizer_communicationSetAnglesResponse.init;
  if(!r.boolean(value.field_Flag)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/SetAnglesResponse value.
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
 /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/SetAnglesResponse value.
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
 /// @see Ros1Mypalletizer_communicationSetAnglesResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationSetAnglesResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/SetCoordsRequest value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies
/// 18..18 bytes and is identified by
/// UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationSetCoordsRequest {
 /// @brief Maximum canonical extent of mypalletizer_communication/SetCoordsRequest in bytes.
 /// @details The inclusive bound is 18 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=18;
 /// @brief Canonical codec identity of mypalletizer_communication/SetCoordsRequest.
 /// @details Exact identity UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1";
 /// @brief Original ROS type name for mypalletizer_communication/SetCoordsRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/SetCoordsRequest";
 /// @brief Selected original native identity for mypalletizer_communication/SetCoordsRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/SetCoordsRequest.x: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 float field_x=0;
 /// @brief mypalletizer_communication/SetCoordsRequest.y: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 float field_y=0;
 /// @brief mypalletizer_communication/SetCoordsRequest.z: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 float field_z=0;
 /// @brief mypalletizer_communication/SetCoordsRequest.rx: float32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 float field_rx=0;
 /// @brief mypalletizer_communication/SetCoordsRequest.speed: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 byte field_speed=0;
 /// @brief mypalletizer_communication/SetCoordsRequest.model: int8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 byte field_model=0;
 /// @brief Append every canonical field of mypalletizer_communication/SetCoordsRequest.
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
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.float32(this.field_x)) return false;
  if(!w.float32(this.field_y)) return false;
  if(!w.float32(this.field_z)) return false;
  if(!w.float32(this.field_rx)) return false;
  if(!w.integer(this.field_speed)) return false;
  if(!w.integer(this.field_model)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/SetCoordsRequest.
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
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationSetCoordsRequest value) {
  value=Ros1Mypalletizer_communicationSetCoordsRequest.init;
  if(!r.float32(value.field_x)) return false;
  if(!r.float32(value.field_y)) return false;
  if(!r.float32(value.field_z)) return false;
  if(!r.float32(value.field_rx)) return false;
  if(!r.integer(value.field_speed)) return false;
  if(!r.integer(value.field_model)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/SetCoordsRequest value.
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
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/SetCoordsRequest value.
 /// @details Require the complete 18..18-byte canonical representation. Reject truncation, invalid fields
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
 /// @see Ros1Mypalletizer_communicationSetCoordsRequest; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationSetCoordsRequest value) {
  if(bytes.length<18 || bytes.length>18) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 mypalletizer_communication/SetCoordsResponse value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies
/// 1..1 bytes and is identified by
/// UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no
/// publisher, subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback;
/// mutable readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Mypalletizer_communicationSetCoordsResponse {
 /// @brief Maximum canonical extent of mypalletizer_communication/SetCoordsResponse in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a
 /// queue reservation.
 /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1;
 /// @brief Canonical codec identity of mypalletizer_communication/SetCoordsResponse.
 /// @details Exact identity UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308
 /// binds field order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308";
 /// @brief Original ROS type name for mypalletizer_communication/SetCoordsResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="mypalletizer_communication/SetCoordsResponse";
 /// @brief Selected original native identity for mypalletizer_communication/SetCoordsResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief mypalletizer_communication/SetCoordsResponse.Flag: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding
 /// preserves the original field position and signedness; invalid bounds fail instead of truncating the
 /// value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no
 /// scaling, frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing
 /// and allocator ownership follow the enclosing decode function.
 /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 bool field_Flag=false;
 /// @brief Append every canonical field of mypalletizer_communication/SetCoordsResponse.
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
 /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.boolean(this.field_Flag)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of mypalletizer_communication/SetCoordsResponse.
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
 /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Mypalletizer_communicationSetCoordsResponse value) {
  value=Ros1Mypalletizer_communicationSetCoordsResponse.init;
  if(!r.boolean(value.field_Flag)) return false;
  return true;
 }
 /// @brief Encode one complete mypalletizer_communication/SetCoordsResponse value.
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
 /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete mypalletizer_communication/SetCoordsResponse value.
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
 /// @see Ros1Mypalletizer_communicationSetCoordsResponse; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Mypalletizer_communicationSetCoordsResponse value) {
  if(bytes.length<1 || bytes.length>1) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
