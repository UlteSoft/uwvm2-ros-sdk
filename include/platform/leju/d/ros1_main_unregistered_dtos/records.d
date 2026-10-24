// @file records.d
// @brief Full leju d codecs and original record metadata.
// @details Complete leju ros1_main_unregistered_dtos values in d. 2 original records retain 5 fields and 2
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
// Generated complete bounded values; BetterC, caller buffers, no authority.
module leju.d.ros1_main_unregistered_dtos.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 1 kuavo_sdk/qv value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..132 bytes
/// and is identified by UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Kuavo_sdkQv {
 /// @brief Maximum canonical extent of kuavo_sdk/qv in bytes.
 /// @details The inclusive bound is 132 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=132;
 /// @brief Canonical codec identity of kuavo_sdk/qv.
 /// @details Exact identity UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32";
 /// @brief Original ROS type name for kuavo_sdk/qv.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="kuavo_sdk/qv";
 /// @brief Selected original native identity for kuavo_sdk/qv.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief kuavo_sdk/qv.value: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/d/API-CONTRACT.md
 double[] field_value=null;
 /// @brief Append every canonical field of kuavo_sdk/qv.
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
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_value.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_value.length)) return false;
  foreach(ref e; this.field_value) {
  if(!w.float64(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of kuavo_sdk/qv.
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
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Kuavo_sdkQv value) {
  value=Ros1Kuavo_sdkQv.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>16) {
       r.code=22;
       return false;
  }
  value.field_value=arena.allocate!(double)(count0);
  if(value.field_value.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_value) {
  if(!r.float64(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete kuavo_sdk/qv value.
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
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete kuavo_sdk/qv value.
 /// @details Require the complete 4..132-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Kuavo_sdkQv; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Kuavo_sdkQv value) {
  if(bytes.length<4 || bytes.length>132) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 1 kuavo_sdk/fullBodyTargetTrajectories value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 16..2320
/// bytes and is identified by UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros1Kuavo_sdkFullBodyTargetTrajectories {
 /// @brief Maximum canonical extent of kuavo_sdk/fullBodyTargetTrajectories in bytes.
 /// @details The inclusive bound is 2320 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=2320;
 /// @brief Canonical codec identity of kuavo_sdk/fullBodyTargetTrajectories.
 /// @details Exact identity UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32";
 /// @brief Original ROS type name for kuavo_sdk/fullBodyTargetTrajectories.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="kuavo_sdk/fullBodyTargetTrajectories";
 /// @brief Selected original native identity for kuavo_sdk/fullBodyTargetTrajectories.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief kuavo_sdk/fullBodyTargetTrajectories.timeTrajectory: float64; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/d/API-CONTRACT.md
 double[] field_timeTrajectory=null;
 /// @brief kuavo_sdk/fullBodyTargetTrajectories.footIndexTrajectory: int32; 0..16 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/d/API-CONTRACT.md
 int[] field_footIndexTrajectory=null;
 /// @brief kuavo_sdk/fullBodyTargetTrajectories.fullBodyQTrajectory: kuavo_sdk/qv; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/d/API-CONTRACT.md
 Ros1Kuavo_sdkQv[] field_fullBodyQTrajectory=null;
 /// @brief kuavo_sdk/fullBodyTargetTrajectories.fullBodyVTrajectory: kuavo_sdk/qv; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/d/API-CONTRACT.md
 Ros1Kuavo_sdkQv[] field_fullBodyVTrajectory=null;
 /// @brief Append every canonical field of kuavo_sdk/fullBodyTargetTrajectories.
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
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(this.field_timeTrajectory.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_timeTrajectory.length)) return false;
  foreach(ref e; this.field_timeTrajectory) {
  if(!w.float64(e)) return false;
  }
  if(this.field_footIndexTrajectory.length>16) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_footIndexTrajectory.length)) return false;
  foreach(ref e; this.field_footIndexTrajectory) {
  if(!w.integer(e)) return false;
  }
  if(this.field_fullBodyQTrajectory.length>8) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_fullBodyQTrajectory.length)) return false;
  foreach(ref e; this.field_fullBodyQTrajectory) {
  if(!e.writeFields(w)) return false;
  }
  if(this.field_fullBodyVTrajectory.length>8) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_fullBodyVTrajectory.length)) return false;
  foreach(ref e; this.field_fullBodyVTrajectory) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of kuavo_sdk/fullBodyTargetTrajectories.
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
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros1Kuavo_sdkFullBodyTargetTrajectories value) {
  value=Ros1Kuavo_sdkFullBodyTargetTrajectories.init;
  uint count0; if(!r.integer(count0)) return false;
  if(count0>16) {
       r.code=22;
       return false;
  }
  value.field_timeTrajectory=arena.allocate!(double)(count0);
  if(value.field_timeTrajectory.length!=count0) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_timeTrajectory) {
  if(!r.float64(e)) return false;
  }
  uint count1; if(!r.integer(count1)) return false;
  if(count1>16) {
       r.code=22;
       return false;
  }
  value.field_footIndexTrajectory=arena.allocate!(int)(count1);
  if(value.field_footIndexTrajectory.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_footIndexTrajectory) {
  if(!r.integer(e)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>8) {
       r.code=22;
       return false;
  }
  value.field_fullBodyQTrajectory=arena.allocate!(Ros1Kuavo_sdkQv)(count2);
  if(value.field_fullBodyQTrajectory.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_fullBodyQTrajectory) {
  if(!Ros1Kuavo_sdkQv.readFields(r,arena,e)) return false;
  }
  uint count3; if(!r.integer(count3)) return false;
  if(count3>8) {
       r.code=22;
       return false;
  }
  value.field_fullBodyVTrajectory=arena.allocate!(Ros1Kuavo_sdkQv)(count3);
  if(value.field_fullBodyVTrajectory.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_fullBodyVTrajectory) {
  if(!Ros1Kuavo_sdkQv.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete kuavo_sdk/fullBodyTargetTrajectories value.
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
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete kuavo_sdk/fullBodyTargetTrajectories value.
 /// @details Require the complete 16..2320-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros1Kuavo_sdkFullBodyTargetTrajectories; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros1Kuavo_sdkFullBodyTargetTrajectories value) {
  if(bytes.length<16 || bytes.length>2320) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
