// Generated complete bounded values; BetterC, caller buffers, no authority.
module roswasm.records;
import roswasm.wire;
@nogc nothrow:
/// @brief Complete ROS 2 uwvm_groot_bridge/msg/RGBFrame value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..860 bytes and
/// is identified by UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeMsgRGBFrame {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/msg/RGBFrame in bytes.
 /// @details The inclusive bound is 860 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=860;
 /// @brief Canonical codec identity of uwvm_groot_bridge/msg/RGBFrame.
 /// @details Exact identity UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364";
 /// @brief Original ROS type name for uwvm_groot_bridge/msg/RGBFrame.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/msg/RGBFrame";
 /// @brief Selected original native identity for uwvm_groot_bridge/msg/RGBFrame.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/msg/RGBFrame.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_key=null;
 /// @brief uwvm_groot_bridge/msg/RGBFrame.shape: uint32; exactly 5 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/d/API-CONTRACT.md
 uint[5] field_shape=0;
 /// @brief uwvm_groot_bridge/msg/RGBFrame.pixels: uint8; 0..768 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/d/API-CONTRACT.md
 ubyte[] field_pixels=null;
 /// @brief Append every canonical field of uwvm_groot_bridge/msg/RGBFrame.
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
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_key,64)) return false;
  foreach(ref e; this.field_shape) {
  if(!w.integer(e)) return false;
  }
  if(this.field_pixels.length>768) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_pixels.length)) return false;
  foreach(ref e; this.field_pixels) {
  if(!w.integer(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/msg/RGBFrame.
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
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeMsgRGBFrame value) {
  value=Ros2Uwvm_groot_bridgeMsgRGBFrame.init;
  if(!r.text(value.field_key,64)) return false;
  foreach(ref e; value.field_shape) {
  if(!r.integer(e)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>768) {
       r.code=22;
       return false;
  }
  value.field_pixels=arena.allocate!(ubyte)(count2);
  if(value.field_pixels.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_pixels) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/msg/RGBFrame value.
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
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/msg/RGBFrame value.
 /// @details Require the complete 28..860-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Uwvm_groot_bridgeMsgRGBFrame value) {
  if(bytes.length<28 || bytes.length>860) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/msg/FloatTensor value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 20..1364 bytes
/// and is identified by UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeMsgFloatTensor {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/msg/FloatTensor in bytes.
 /// @details The inclusive bound is 1364 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1364;
 /// @brief Canonical codec identity of uwvm_groot_bridge/msg/FloatTensor.
 /// @details Exact identity UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae";
 /// @brief Original ROS type name for uwvm_groot_bridge/msg/FloatTensor.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/msg/FloatTensor";
 /// @brief Selected original native identity for uwvm_groot_bridge/msg/FloatTensor.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/msg/FloatTensor.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_key=null;
 /// @brief uwvm_groot_bridge/msg/FloatTensor.shape: uint32; exactly 3 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/d/API-CONTRACT.md
 uint[3] field_shape=0;
 /// @brief uwvm_groot_bridge/msg/FloatTensor.values: float32; 0..320 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/d/API-CONTRACT.md
 float[] field_values=null;
 /// @brief Append every canonical field of uwvm_groot_bridge/msg/FloatTensor.
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
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_key,64)) return false;
  foreach(ref e; this.field_shape) {
  if(!w.integer(e)) return false;
  }
  if(this.field_values.length>320) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_values.length)) return false;
  foreach(ref e; this.field_values) {
  if(!w.float32(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/msg/FloatTensor.
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
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeMsgFloatTensor value) {
  value=Ros2Uwvm_groot_bridgeMsgFloatTensor.init;
  if(!r.text(value.field_key,64)) return false;
  foreach(ref e; value.field_shape) {
  if(!r.integer(e)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>320) {
       r.code=22;
       return false;
  }
  value.field_values=arena.allocate!(float)(count2);
  if(value.field_values.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_values) {
  if(!r.float32(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/msg/FloatTensor value.
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
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/msg/FloatTensor value.
 /// @details Require the complete 20..1364-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Uwvm_groot_bridgeMsgFloatTensor value) {
  if(bytes.length<20 || bytes.length>1364) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/msg/TextSequence value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..1120 bytes
/// and is identified by UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeMsgTextSequence {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/msg/TextSequence in bytes.
 /// @details The inclusive bound is 1120 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=1120;
 /// @brief Canonical codec identity of uwvm_groot_bridge/msg/TextSequence.
 /// @details Exact identity UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d";
 /// @brief Original ROS type name for uwvm_groot_bridge/msg/TextSequence.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/msg/TextSequence";
 /// @brief Selected original native identity for uwvm_groot_bridge/msg/TextSequence.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/msg/TextSequence.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_key=null;
 /// @brief uwvm_groot_bridge/msg/TextSequence.shape: uint32; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/d/API-CONTRACT.md
 uint[2] field_shape=0;
 /// @brief uwvm_groot_bridge/msg/TextSequence.texts: string; 0..4 elements; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[][] field_texts=null;
 /// @brief Append every canonical field of uwvm_groot_bridge/msg/TextSequence.
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
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_key,64)) return false;
  foreach(ref e; this.field_shape) {
  if(!w.integer(e)) return false;
  }
  if(this.field_texts.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_texts.length)) return false;
  foreach(ref e; this.field_texts) {
  if(!w.text(e,256)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/msg/TextSequence.
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
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeMsgTextSequence value) {
  value=Ros2Uwvm_groot_bridgeMsgTextSequence.init;
  if(!r.text(value.field_key,64)) return false;
  foreach(ref e; value.field_shape) {
  if(!r.integer(e)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>4) {
       r.code=22;
       return false;
  }
  value.field_texts=arena.allocate!(const(ubyte)[])(count2);
  if(value.field_texts.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_texts) {
  if(!r.text(e,256)) return false;
  }
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/msg/TextSequence value.
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
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/msg/TextSequence value.
 /// @details Require the complete 16..1120-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Uwvm_groot_bridgeMsgTextSequence value) {
  if(bytes.length<16 || bytes.length>1120) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/srv/InferAction_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 20..10296 bytes
/// and is identified by UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeSrvInferAction_Request {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/InferAction_Request in bytes.
 /// @details The inclusive bound is 10296 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=10296;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/InferAction_Request.
 /// @details Exact identity UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/InferAction_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/srv/InferAction_Request";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/InferAction_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/srv/InferAction_Request.application_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/d/API-CONTRACT.md
 ulong field_application_nonce=0;
 /// @brief uwvm_groot_bridge/srv/InferAction_Request.video: uwvm_groot_bridge/msg/RGBFrame; 0..3 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Uwvm_groot_bridgeMsgRGBFrame[] field_video=null;
 /// @brief uwvm_groot_bridge/srv/InferAction_Request.state: uwvm_groot_bridge/msg/FloatTensor; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Uwvm_groot_bridgeMsgFloatTensor[] field_state=null;
 /// @brief uwvm_groot_bridge/srv/InferAction_Request.language: uwvm_groot_bridge/msg/TextSequence; 0..2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Uwvm_groot_bridgeMsgTextSequence[] field_language=null;
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/InferAction_Request.
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_application_nonce)) return false;
  if(this.field_video.length>3) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_video.length)) return false;
  foreach(ref e; this.field_video) {
  if(!e.writeFields(w)) return false;
  }
  if(this.field_state.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_state.length)) return false;
  foreach(ref e; this.field_state) {
  if(!e.writeFields(w)) return false;
  }
  if(this.field_language.length>2) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_language.length)) return false;
  foreach(ref e; this.field_language) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/InferAction_Request.
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvInferAction_Request value) {
  value=Ros2Uwvm_groot_bridgeSrvInferAction_Request.init;
  if(!r.integer(value.field_application_nonce)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>3) {
       r.code=22;
       return false;
  }
  value.field_video=arena.allocate!(Ros2Uwvm_groot_bridgeMsgRGBFrame)(count1);
  if(value.field_video.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_video) {
  if(!Ros2Uwvm_groot_bridgeMsgRGBFrame.readFields(r,arena,e)) return false;
  }
  uint count2; if(!r.integer(count2)) return false;
  if(count2>4) {
       r.code=22;
       return false;
  }
  value.field_state=arena.allocate!(Ros2Uwvm_groot_bridgeMsgFloatTensor)(count2);
  if(value.field_state.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_state) {
  if(!Ros2Uwvm_groot_bridgeMsgFloatTensor.readFields(r,arena,e)) return false;
  }
  uint count3; if(!r.integer(count3)) return false;
  if(count3>2) {
       r.code=22;
       return false;
  }
  value.field_language=arena.allocate!(Ros2Uwvm_groot_bridgeMsgTextSequence)(count3);
  if(value.field_language.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_language) {
  if(!Ros2Uwvm_groot_bridgeMsgTextSequence.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/InferAction_Request value.
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/InferAction_Request value.
 /// @details Require the complete 20..10296-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvInferAction_Request value) {
  if(bytes.length<20 || bytes.length>10296) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/srv/InferAction_Response value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 17..10929 bytes
/// and is identified by UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeSrvInferAction_Response {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/InferAction_Response in bytes.
 /// @details The inclusive bound is 10929 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=10929;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/InferAction_Response.
 /// @details Exact identity UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/InferAction_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/srv/InferAction_Response";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/InferAction_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/srv/InferAction_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/d/API-CONTRACT.md
 uint field_status=0;
 /// @brief uwvm_groot_bridge/srv/InferAction_Response.application_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/d/API-CONTRACT.md
 ulong field_application_nonce=0;
 /// @brief uwvm_groot_bridge/srv/InferAction_Response.action: uwvm_groot_bridge/msg/FloatTensor; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Uwvm_groot_bridgeMsgFloatTensor[] field_action=null;
 /// @brief uwvm_groot_bridge/srv/InferAction_Response.info_is_empty: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_info_is_empty=false;
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/InferAction_Response.
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_status)) return false;
  if(!w.integer(this.field_application_nonce)) return false;
  if(this.field_action.length>8) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_action.length)) return false;
  foreach(ref e; this.field_action) {
  if(!e.writeFields(w)) return false;
  }
  if(!w.boolean(this.field_info_is_empty)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/InferAction_Response.
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvInferAction_Response value) {
  value=Ros2Uwvm_groot_bridgeSrvInferAction_Response.init;
  if(!r.integer(value.field_status)) return false;
  if(!r.integer(value.field_application_nonce)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>8) {
       r.code=22;
       return false;
  }
  value.field_action=arena.allocate!(Ros2Uwvm_groot_bridgeMsgFloatTensor)(count2);
  if(value.field_action.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_action) {
  if(!Ros2Uwvm_groot_bridgeMsgFloatTensor.readFields(r,arena,e)) return false;
  }
  if(!r.boolean(value.field_info_is_empty)) return false;
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/InferAction_Response value.
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/InferAction_Response value.
 /// @details Require the complete 17..10929-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvInferAction_Response value) {
  if(bytes.length<17 || bytes.length>10929) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/msg/RGBDescriptor value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 24..88 bytes and
/// is identified by UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeMsgRGBDescriptor {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/msg/RGBDescriptor in bytes.
 /// @details The inclusive bound is 88 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=88;
 /// @brief Canonical codec identity of uwvm_groot_bridge/msg/RGBDescriptor.
 /// @details Exact identity UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40";
 /// @brief Original ROS type name for uwvm_groot_bridge/msg/RGBDescriptor.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/msg/RGBDescriptor";
 /// @brief Selected original native identity for uwvm_groot_bridge/msg/RGBDescriptor.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/msg/RGBDescriptor.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_key=null;
 /// @brief uwvm_groot_bridge/msg/RGBDescriptor.shape: uint32; exactly 5 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/d/API-CONTRACT.md
 uint[5] field_shape=0;
 /// @brief Append every canonical field of uwvm_groot_bridge/msg/RGBDescriptor.
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
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.text(this.field_key,64)) return false;
  foreach(ref e; this.field_shape) {
  if(!w.integer(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/msg/RGBDescriptor.
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
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeMsgRGBDescriptor value) {
  value=Ros2Uwvm_groot_bridgeMsgRGBDescriptor.init;
  if(!r.text(value.field_key,64)) return false;
  foreach(ref e; value.field_shape) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/msg/RGBDescriptor value.
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
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/msg/RGBDescriptor value.
 /// @details Require the complete 24..88-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Uwvm_groot_bridgeMsgRGBDescriptor value) {
  if(bytes.length<24 || bytes.length>88) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/srv/BeginObservation_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..276 bytes and
/// is identified by UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeSrvBeginObservation_Request {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/BeginObservation_Request in bytes.
 /// @details The inclusive bound is 276 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=276;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/BeginObservation_Request.
 /// @details Exact identity UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/BeginObservation_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/srv/BeginObservation_Request";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/BeginObservation_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/srv/BeginObservation_Request.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/d/API-CONTRACT.md
 ulong field_observation_nonce=0;
 /// @brief uwvm_groot_bridge/srv/BeginObservation_Request.video: uwvm_groot_bridge/msg/RGBDescriptor; 0..3 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Uwvm_groot_bridgeMsgRGBDescriptor[] field_video=null;
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/BeginObservation_Request.
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
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_observation_nonce)) return false;
  if(this.field_video.length>3) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_video.length)) return false;
  foreach(ref e; this.field_video) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/BeginObservation_Request.
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
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvBeginObservation_Request value) {
  value=Ros2Uwvm_groot_bridgeSrvBeginObservation_Request.init;
  if(!r.integer(value.field_observation_nonce)) return false;
  uint count1; if(!r.integer(count1)) return false;
  if(count1>3) {
       r.code=22;
       return false;
  }
  value.field_video=arena.allocate!(Ros2Uwvm_groot_bridgeMsgRGBDescriptor)(count1);
  if(value.field_video.length!=count1) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_video) {
  if(!Ros2Uwvm_groot_bridgeMsgRGBDescriptor.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/BeginObservation_Request value.
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
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/BeginObservation_Request value.
 /// @details Require the complete 12..276-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvBeginObservation_Request value) {
  if(bytes.length<12 || bytes.length>276) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/srv/BeginObservation_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes and
/// is identified by UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeSrvBeginObservation_Response {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/BeginObservation_Response in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=12;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/BeginObservation_Response.
 /// @details Exact identity UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/BeginObservation_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/srv/BeginObservation_Response";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/BeginObservation_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/srv/BeginObservation_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/d/API-CONTRACT.md
 uint field_status=0;
 /// @brief uwvm_groot_bridge/srv/BeginObservation_Response.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/d/API-CONTRACT.md
 ulong field_observation_nonce=0;
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/BeginObservation_Response.
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
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_status)) return false;
  if(!w.integer(this.field_observation_nonce)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/BeginObservation_Response.
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
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvBeginObservation_Response value) {
  value=Ros2Uwvm_groot_bridgeSrvBeginObservation_Response.init;
  if(!r.integer(value.field_status)) return false;
  if(!r.integer(value.field_observation_nonce)) return false;
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/BeginObservation_Response value.
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
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/BeginObservation_Response value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena,
     out Ros2Uwvm_groot_bridgeSrvBeginObservation_Response value) {
  if(bytes.length<12 || bytes.length>12) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/srv/WriteRGBChunk_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 20..852 bytes and
/// is identified by UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/WriteRGBChunk_Request in bytes.
 /// @details The inclusive bound is 852 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=852;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/WriteRGBChunk_Request.
 /// @details Exact identity UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/WriteRGBChunk_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/srv/WriteRGBChunk_Request";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/WriteRGBChunk_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/d/API-CONTRACT.md
 ulong field_observation_nonce=0;
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.key: string; each string is 0..64 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/d/API-CONTRACT.md
 const(ubyte)[] field_key=null;
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.offset: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/d/API-CONTRACT.md
 uint field_offset=0;
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.pixels: uint8; 0..768 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/d/API-CONTRACT.md
 ubyte[] field_pixels=null;
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/WriteRGBChunk_Request.
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
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_observation_nonce)) return false;
  if(!w.text(this.field_key,64)) return false;
  if(!w.integer(this.field_offset)) return false;
  if(this.field_pixels.length>768) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_pixels.length)) return false;
  foreach(ref e; this.field_pixels) {
  if(!w.integer(e)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/WriteRGBChunk_Request.
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
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request value) {
  value=Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request.init;
  if(!r.integer(value.field_observation_nonce)) return false;
  if(!r.text(value.field_key,64)) return false;
  if(!r.integer(value.field_offset)) return false;
  uint count3; if(!r.integer(count3)) return false;
  if(count3>768) {
       r.code=22;
       return false;
  }
  value.field_pixels=arena.allocate!(ubyte)(count3);
  if(value.field_pixels.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_pixels) {
  if(!r.integer(e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/WriteRGBChunk_Request value.
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
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/WriteRGBChunk_Request value.
 /// @details Require the complete 20..852-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request value) {
  if(bytes.length<20 || bytes.length>852) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/srv/WriteRGBChunk_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 16..16 bytes and
/// is identified by UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/WriteRGBChunk_Response in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=16;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/WriteRGBChunk_Response.
 /// @details Exact identity UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/WriteRGBChunk_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/srv/WriteRGBChunk_Response";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/WriteRGBChunk_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/d/API-CONTRACT.md
 uint field_status=0;
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Response.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/d/API-CONTRACT.md
 ulong field_observation_nonce=0;
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Response.accepted_bytes: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/d/API-CONTRACT.md
 uint field_accepted_bytes=0;
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/WriteRGBChunk_Response.
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
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_status)) return false;
  if(!w.integer(this.field_observation_nonce)) return false;
  if(!w.integer(this.field_accepted_bytes)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/WriteRGBChunk_Response.
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
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response value) {
  value=Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response.init;
  if(!r.integer(value.field_status)) return false;
  if(!r.integer(value.field_observation_nonce)) return false;
  if(!r.integer(value.field_accepted_bytes)) return false;
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/WriteRGBChunk_Response value.
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
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/WriteRGBChunk_Response value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response value) {
  if(bytes.length<16 || bytes.length>16) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/srv/ReleaseObservation_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes and is
/// identified by UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/ReleaseObservation_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=8;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/ReleaseObservation_Request.
 /// @details Exact identity UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/ReleaseObservation_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/srv/ReleaseObservation_Request";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/ReleaseObservation_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/srv/ReleaseObservation_Request.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/d/API-CONTRACT.md
 ulong field_observation_nonce=0;
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/ReleaseObservation_Request.
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
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_observation_nonce)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/ReleaseObservation_Request.
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
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request value) {
  value=Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request.init;
  if(!r.integer(value.field_observation_nonce)) return false;
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/ReleaseObservation_Request value.
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
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/ReleaseObservation_Request value.
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
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena,
     out Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request value) {
  if(bytes.length<8 || bytes.length>8) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/srv/ReleaseObservation_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes and
/// is identified by UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/ReleaseObservation_Response in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=12;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/ReleaseObservation_Response.
 /// @details Exact identity UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/ReleaseObservation_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/srv/ReleaseObservation_Response";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/ReleaseObservation_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/srv/ReleaseObservation_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/d/API-CONTRACT.md
 uint field_status=0;
 /// @brief uwvm_groot_bridge/srv/ReleaseObservation_Response.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/d/API-CONTRACT.md
 ulong field_observation_nonce=0;
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/ReleaseObservation_Response.
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
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_status)) return false;
  if(!w.integer(this.field_observation_nonce)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/ReleaseObservation_Response.
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
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response value) {
  value=Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response.init;
  if(!r.integer(value.field_status)) return false;
  if(!r.integer(value.field_observation_nonce)) return false;
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/ReleaseObservation_Response value.
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
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/ReleaseObservation_Response value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and trailing
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
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena,
     out Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response value) {
  if(bytes.length<12 || bytes.length>12) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/srv/InferUploadedAction_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 24..7720 bytes
/// and is identified by UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/InferUploadedAction_Request in bytes.
 /// @details The inclusive bound is 7720 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=7720;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/InferUploadedAction_Request.
 /// @details Exact identity UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/InferUploadedAction_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/srv/InferUploadedAction_Request";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/InferUploadedAction_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Request.application_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/d/API-CONTRACT.md
 ulong field_application_nonce=0;
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Request.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/d/API-CONTRACT.md
 ulong field_observation_nonce=0;
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Request.state: uwvm_groot_bridge/msg/FloatTensor; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Uwvm_groot_bridgeMsgFloatTensor[] field_state=null;
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Request.language: uwvm_groot_bridge/msg/TextSequence; 0..2
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/d/API-CONTRACT.md
 Ros2Uwvm_groot_bridgeMsgTextSequence[] field_language=null;
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/InferUploadedAction_Request.
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_application_nonce)) return false;
  if(!w.integer(this.field_observation_nonce)) return false;
  if(this.field_state.length>4) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_state.length)) return false;
  foreach(ref e; this.field_state) {
  if(!e.writeFields(w)) return false;
  }
  if(this.field_language.length>2) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_language.length)) return false;
  foreach(ref e; this.field_language) {
  if(!e.writeFields(w)) return false;
  }
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/InferUploadedAction_Request.
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request value) {
  value=Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request.init;
  if(!r.integer(value.field_application_nonce)) return false;
  if(!r.integer(value.field_observation_nonce)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>4) {
       r.code=22;
       return false;
  }
  value.field_state=arena.allocate!(Ros2Uwvm_groot_bridgeMsgFloatTensor)(count2);
  if(value.field_state.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_state) {
  if(!Ros2Uwvm_groot_bridgeMsgFloatTensor.readFields(r,arena,e)) return false;
  }
  uint count3; if(!r.integer(count3)) return false;
  if(count3>2) {
       r.code=22;
       return false;
  }
  value.field_language=arena.allocate!(Ros2Uwvm_groot_bridgeMsgTextSequence)(count3);
  if(value.field_language.length!=count3) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_language) {
  if(!Ros2Uwvm_groot_bridgeMsgTextSequence.readFields(r,arena,e)) return false;
  }
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/InferUploadedAction_Request value.
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/InferUploadedAction_Request value.
 /// @details Require the complete 24..7720-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena,
     out Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request value) {
  if(bytes.length<24 || bytes.length>7720) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
/// @brief Complete ROS 2 uwvm_groot_bridge/srv/InferUploadedAction_Response value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 17..10929 bytes
/// and is identified by UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/d/API-CONTRACT.md
struct Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/InferUploadedAction_Response in bytes.
 /// @details The inclusive bound is 10929 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum size_t maximumWireBytes=10929;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/InferUploadedAction_Response.
 /// @details Exact identity UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum codecIdentity="UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/InferUploadedAction_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeType="uwvm_groot_bridge/srv/InferUploadedAction_Response";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/InferUploadedAction_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/d/API-CONTRACT.md
 enum nativeIdentity="";
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/d/API-CONTRACT.md
 uint field_status=0;
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Response.application_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/d/API-CONTRACT.md
 ulong field_application_nonce=0;
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Response.action: uwvm_groot_bridge/msg/FloatTensor; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/d/API-CONTRACT.md
 Ros2Uwvm_groot_bridgeMsgFloatTensor[] field_action=null;
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Response.info_is_empty: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/d/API-CONTRACT.md
 bool field_info_is_empty=false;
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/InferUploadedAction_Response.
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/d/API-CONTRACT.md
 bool writeFields(ref Writer w) const {
  if(!w.integer(this.field_status)) return false;
  if(!w.integer(this.field_application_nonce)) return false;
  if(this.field_action.length>8) {
       w.code=22;
       return false;
  }
  if(!w.integer(cast(uint)this.field_action.length)) return false;
  foreach(ref e; this.field_action) {
  if(!e.writeFields(w)) return false;
  }
  if(!w.boolean(this.field_info_is_empty)) return false;
  return true;
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/InferUploadedAction_Response.
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/d/API-CONTRACT.md
 static bool readFields(ref Reader r, ref Arena arena, out Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response value) {
  value=Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response.init;
  if(!r.integer(value.field_status)) return false;
  if(!r.integer(value.field_application_nonce)) return false;
  uint count2; if(!r.integer(count2)) return false;
  if(count2>8) {
       r.code=22;
       return false;
  }
  value.field_action=arena.allocate!(Ros2Uwvm_groot_bridgeMsgFloatTensor)(count2);
  if(value.field_action.length!=count2) {
       r.code=90;
       return false;
  }
  foreach(ref e; value.field_action) {
  if(!Ros2Uwvm_groot_bridgeMsgFloatTensor.readFields(r,arena,e)) return false;
  }
  if(!r.boolean(value.field_info_is_empty)) return false;
  return true;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/InferUploadedAction_Response value.
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/d/API-CONTRACT.md
 uint encode(ubyte[] output, out size_t length) const {
  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;
  if(!writeFields(measure)) return measure.code;
  if(output.length<measure.position) return 90;
  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;
  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;
 }
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/InferUploadedAction_Response value.
 /// @details Require the complete 17..10929-byte canonical representation. Reject truncation, invalid fields and
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
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/d/API-CONTRACT.md
 static uint decode(const(ubyte)[] bytes, ref Arena arena,
     out Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response value) {
  if(bytes.length<17 || bytes.length>10929) return 22;
  Reader reader; reader.storage=bytes;
  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;
  return 0;
 }
}
