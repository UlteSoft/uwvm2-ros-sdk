// ! Generated complete bounded values; all allocation is explicit.
const std=@import("std");
const wire=@import("roswire");
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeMsgRGBFrame=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/msg/RGBFrame in bytes.
 /// @details The inclusive bound is 860 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=860;
 /// @brief Canonical codec identity of uwvm_groot_bridge/msg/RGBFrame.
 /// @details Exact identity UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364";
 /// @brief Original ROS type name for uwvm_groot_bridge/msg/RGBFrame.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/msg/RGBFrame";
 /// @brief Selected original native identity for uwvm_groot_bridge/msg/RGBFrame.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/msg/RGBFrame.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/zig/API-CONTRACT.md
 field_key: []const u8=&.{},
 /// @brief uwvm_groot_bridge/msg/RGBFrame.shape: uint32; exactly 5 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/zig/API-CONTRACT.md
 field_shape: [5]u32=[_]u32{0} ** 5,
 /// @brief uwvm_groot_bridge/msg/RGBFrame.pixels: uint8; 0..768 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/zig/API-CONTRACT.md
 field_pixels: []u8=&.{},
 /// @brief Append every canonical field of uwvm_groot_bridge/msg/RGBFrame.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_key,64,false);
  for(self.field_shape) |e| {
  try w.integer(e);
  }
  if(self.field_pixels.len>768) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_pixels.len)));
  for(self.field_pixels) |e| {
  try w.integer(e);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/msg/RGBFrame.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_key=try r.string(64,false);
  for(&value.field_shape) |*e| {
  e.*=try r.integer(u32);
  }
  const count2=try r.integer(u32); if(count2>768) return error.Invalid;
  value.field_pixels=try allocator.alloc(u8,count2);
  for(value.field_pixels) |*e| {
  e.*=try r.integer(u8);
  }
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/msg/RGBFrame value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/msg/RGBFrame value.
 /// @details Require the complete 28..860-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBFrame; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>860) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeMsgFloatTensor=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/msg/FloatTensor in bytes.
 /// @details The inclusive bound is 1364 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1364;
 /// @brief Canonical codec identity of uwvm_groot_bridge/msg/FloatTensor.
 /// @details Exact identity UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae";
 /// @brief Original ROS type name for uwvm_groot_bridge/msg/FloatTensor.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/msg/FloatTensor";
 /// @brief Selected original native identity for uwvm_groot_bridge/msg/FloatTensor.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/msg/FloatTensor.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/zig/API-CONTRACT.md
 field_key: []const u8=&.{},
 /// @brief uwvm_groot_bridge/msg/FloatTensor.shape: uint32; exactly 3 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/zig/API-CONTRACT.md
 field_shape: [3]u32=[_]u32{0} ** 3,
 /// @brief uwvm_groot_bridge/msg/FloatTensor.values: float32; 0..320 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/zig/API-CONTRACT.md
 field_values: []f32=&.{},
 /// @brief Append every canonical field of uwvm_groot_bridge/msg/FloatTensor.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_key,64,false);
  for(self.field_shape) |e| {
  try w.integer(e);
  }
  if(self.field_values.len>320) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_values.len)));
  for(self.field_values) |e| {
  try w.float32(e);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/msg/FloatTensor.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_key=try r.string(64,false);
  for(&value.field_shape) |*e| {
  e.*=try r.integer(u32);
  }
  const count2=try r.integer(u32); if(count2>320) return error.Invalid;
  value.field_values=try allocator.alloc(f32,count2);
  for(value.field_values) |*e| {
  e.*=try r.float32();
  }
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/msg/FloatTensor value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/msg/FloatTensor value.
 /// @details Require the complete 20..1364-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgFloatTensor; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<20 or bytes.len>1364) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeMsgTextSequence=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/msg/TextSequence in bytes.
 /// @details The inclusive bound is 1120 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1120;
 /// @brief Canonical codec identity of uwvm_groot_bridge/msg/TextSequence.
 /// @details Exact identity UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d";
 /// @brief Original ROS type name for uwvm_groot_bridge/msg/TextSequence.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/msg/TextSequence";
 /// @brief Selected original native identity for uwvm_groot_bridge/msg/TextSequence.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/msg/TextSequence.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/zig/API-CONTRACT.md
 field_key: []const u8=&.{},
 /// @brief uwvm_groot_bridge/msg/TextSequence.shape: uint32; exactly 2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/zig/API-CONTRACT.md
 field_shape: [2]u32=[_]u32{0} ** 2,
 /// @brief uwvm_groot_bridge/msg/TextSequence.texts: string; 0..4 elements; each string is 0..256 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/zig/API-CONTRACT.md
 field_texts: [][]const u8=&.{},
 /// @brief Append every canonical field of uwvm_groot_bridge/msg/TextSequence.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_key,64,false);
  for(self.field_shape) |e| {
  try w.integer(e);
  }
  if(self.field_texts.len>4) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_texts.len)));
  for(self.field_texts) |e| {
  try w.string(e,256,false);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/msg/TextSequence.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_key=try r.string(64,false);
  for(&value.field_shape) |*e| {
  e.*=try r.integer(u32);
  }
  const count2=try r.integer(u32); if(count2>4) return error.Invalid;
  value.field_texts=try allocator.alloc([]const u8,count2);
  for(value.field_texts) |*e| {
  e.*=try r.string(256,false);
  }
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/msg/TextSequence value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/msg/TextSequence value.
 /// @details Require the complete 16..1120-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgTextSequence; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>1120) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeSrvInferAction_Request=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/InferAction_Request in bytes.
 /// @details The inclusive bound is 10296 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=10296;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/InferAction_Request.
 /// @details Exact identity UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/InferAction_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/srv/InferAction_Request";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/InferAction_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/srv/InferAction_Request.application_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/zig/API-CONTRACT.md
 field_application_nonce: u64=0,
 /// @brief uwvm_groot_bridge/srv/InferAction_Request.video: uwvm_groot_bridge/msg/RGBFrame; 0..3 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/zig/API-CONTRACT.md
 field_video: []Ros2Uwvm_groot_bridgeMsgRGBFrame=&.{},
 /// @brief uwvm_groot_bridge/srv/InferAction_Request.state: uwvm_groot_bridge/msg/FloatTensor; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/zig/API-CONTRACT.md
 field_state: []Ros2Uwvm_groot_bridgeMsgFloatTensor=&.{},
 /// @brief uwvm_groot_bridge/srv/InferAction_Request.language: uwvm_groot_bridge/msg/TextSequence; 0..2 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/zig/API-CONTRACT.md
 field_language: []Ros2Uwvm_groot_bridgeMsgTextSequence=&.{},
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/InferAction_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_application_nonce);
  if(self.field_video.len>3) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_video.len)));
  for(self.field_video) |e| {
  try e.writeFields(w);
  }
  if(self.field_state.len>4) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_state.len)));
  for(self.field_state) |e| {
  try e.writeFields(w);
  }
  if(self.field_language.len>2) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_language.len)));
  for(self.field_language) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/InferAction_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_application_nonce=try r.integer(u64);
  const count1=try r.integer(u32); if(count1>3) return error.Invalid;
  value.field_video=try allocator.alloc(Ros2Uwvm_groot_bridgeMsgRGBFrame,count1);
  for(value.field_video) |*e| {
  e.*=try Ros2Uwvm_groot_bridgeMsgRGBFrame.readFields(r,allocator);
  }
  const count2=try r.integer(u32); if(count2>4) return error.Invalid;
  value.field_state=try allocator.alloc(Ros2Uwvm_groot_bridgeMsgFloatTensor,count2);
  for(value.field_state) |*e| {
  e.*=try Ros2Uwvm_groot_bridgeMsgFloatTensor.readFields(r,allocator);
  }
  const count3=try r.integer(u32); if(count3>2) return error.Invalid;
  value.field_language=try allocator.alloc(Ros2Uwvm_groot_bridgeMsgTextSequence,count3);
  for(value.field_language) |*e| {
  e.*=try Ros2Uwvm_groot_bridgeMsgTextSequence.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/InferAction_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/InferAction_Request value.
 /// @details Require the complete 20..10296-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<20 or bytes.len>10296) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeSrvInferAction_Response=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/InferAction_Response in bytes.
 /// @details The inclusive bound is 10929 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=10929;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/InferAction_Response.
 /// @details Exact identity UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/InferAction_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/srv/InferAction_Response";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/InferAction_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/srv/InferAction_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_groot_bridge/srv/InferAction_Response.application_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/zig/API-CONTRACT.md
 field_application_nonce: u64=0,
 /// @brief uwvm_groot_bridge/srv/InferAction_Response.action: uwvm_groot_bridge/msg/FloatTensor; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/zig/API-CONTRACT.md
 field_action: []Ros2Uwvm_groot_bridgeMsgFloatTensor=&.{},
 /// @brief uwvm_groot_bridge/srv/InferAction_Response.info_is_empty: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/zig/API-CONTRACT.md
 field_info_is_empty: bool=false,
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/InferAction_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.integer(self.field_application_nonce);
  if(self.field_action.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_action.len)));
  for(self.field_action) |e| {
  try e.writeFields(w);
  }
  try w.boolean(self.field_info_is_empty);
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/InferAction_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_status=try r.integer(u32);
  value.field_application_nonce=try r.integer(u64);
  const count2=try r.integer(u32); if(count2>8) return error.Invalid;
  value.field_action=try allocator.alloc(Ros2Uwvm_groot_bridgeMsgFloatTensor,count2);
  for(value.field_action) |*e| {
  e.*=try Ros2Uwvm_groot_bridgeMsgFloatTensor.readFields(r,allocator);
  }
  value.field_info_is_empty=try r.boolean();
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/InferAction_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/InferAction_Response value.
 /// @details Require the complete 17..10929-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<17 or bytes.len>10929) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeMsgRGBDescriptor=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/msg/RGBDescriptor in bytes.
 /// @details The inclusive bound is 88 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=88;
 /// @brief Canonical codec identity of uwvm_groot_bridge/msg/RGBDescriptor.
 /// @details Exact identity UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40";
 /// @brief Original ROS type name for uwvm_groot_bridge/msg/RGBDescriptor.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/msg/RGBDescriptor";
 /// @brief Selected original native identity for uwvm_groot_bridge/msg/RGBDescriptor.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/msg/RGBDescriptor.key: string; each string is 0..64 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/zig/API-CONTRACT.md
 field_key: []const u8=&.{},
 /// @brief uwvm_groot_bridge/msg/RGBDescriptor.shape: uint32; exactly 5 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/zig/API-CONTRACT.md
 field_shape: [5]u32=[_]u32{0} ** 5,
 /// @brief Append every canonical field of uwvm_groot_bridge/msg/RGBDescriptor.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_key,64,false);
  for(self.field_shape) |e| {
  try w.integer(e);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/msg/RGBDescriptor.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_key=try r.string(64,false);
  for(&value.field_shape) |*e| {
  e.*=try r.integer(u32);
  }
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/msg/RGBDescriptor value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/msg/RGBDescriptor value.
 /// @details Require the complete 24..88-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeMsgRGBDescriptor; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>88) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeSrvBeginObservation_Request=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/BeginObservation_Request in bytes.
 /// @details The inclusive bound is 276 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=276;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/BeginObservation_Request.
 /// @details Exact identity UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/BeginObservation_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/srv/BeginObservation_Request";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/BeginObservation_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/srv/BeginObservation_Request.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 field_observation_nonce: u64=0,
 /// @brief uwvm_groot_bridge/srv/BeginObservation_Request.video: uwvm_groot_bridge/msg/RGBDescriptor; 0..3 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 field_video: []Ros2Uwvm_groot_bridgeMsgRGBDescriptor=&.{},
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/BeginObservation_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_observation_nonce);
  if(self.field_video.len>3) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_video.len)));
  for(self.field_video) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/BeginObservation_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_observation_nonce=try r.integer(u64);
  const count1=try r.integer(u32); if(count1>3) return error.Invalid;
  value.field_video=try allocator.alloc(Ros2Uwvm_groot_bridgeMsgRGBDescriptor,count1);
  for(value.field_video) |*e| {
  e.*=try Ros2Uwvm_groot_bridgeMsgRGBDescriptor.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/BeginObservation_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/BeginObservation_Request value.
 /// @details Require the complete 12..276-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>276) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeSrvBeginObservation_Response=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/BeginObservation_Response in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=12;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/BeginObservation_Response.
 /// @details Exact identity UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/BeginObservation_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/srv/BeginObservation_Response";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/BeginObservation_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/srv/BeginObservation_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_groot_bridge/srv/BeginObservation_Response.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 field_observation_nonce: u64=0,
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/BeginObservation_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.integer(self.field_observation_nonce);
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/BeginObservation_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_observation_nonce=try r.integer(u64);
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/BeginObservation_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/BeginObservation_Response value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>12) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/WriteRGBChunk_Request in bytes.
 /// @details The inclusive bound is 852 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=852;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/WriteRGBChunk_Request.
 /// @details Exact identity UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/WriteRGBChunk_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/srv/WriteRGBChunk_Request";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/WriteRGBChunk_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/zig/API-CONTRACT.md
 field_observation_nonce: u64=0,
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.key: string; each string is 0..64 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/zig/API-CONTRACT.md
 field_key: []const u8=&.{},
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.offset: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/zig/API-CONTRACT.md
 field_offset: u32=0,
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Request.pixels: uint8; 0..768 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/zig/API-CONTRACT.md
 field_pixels: []u8=&.{},
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/WriteRGBChunk_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_observation_nonce);
  try w.string(self.field_key,64,false);
  try w.integer(self.field_offset);
  if(self.field_pixels.len>768) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_pixels.len)));
  for(self.field_pixels) |e| {
  try w.integer(e);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/WriteRGBChunk_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_observation_nonce=try r.integer(u64);
  value.field_key=try r.string(64,false);
  value.field_offset=try r.integer(u32);
  const count3=try r.integer(u32); if(count3>768) return error.Invalid;
  value.field_pixels=try allocator.alloc(u8,count3);
  for(value.field_pixels) |*e| {
  e.*=try r.integer(u8);
  }
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/WriteRGBChunk_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/WriteRGBChunk_Request value.
 /// @details Require the complete 20..852-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<20 or bytes.len>852) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/WriteRGBChunk_Response in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=16;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/WriteRGBChunk_Response.
 /// @details Exact identity UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/WriteRGBChunk_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/srv/WriteRGBChunk_Response";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/WriteRGBChunk_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Response.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/zig/API-CONTRACT.md
 field_observation_nonce: u64=0,
 /// @brief uwvm_groot_bridge/srv/WriteRGBChunk_Response.accepted_bytes: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/zig/API-CONTRACT.md
 field_accepted_bytes: u32=0,
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/WriteRGBChunk_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.integer(self.field_observation_nonce);
  try w.integer(self.field_accepted_bytes);
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/WriteRGBChunk_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_observation_nonce=try r.integer(u64);
  value.field_accepted_bytes=try r.integer(u32);
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/WriteRGBChunk_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/WriteRGBChunk_Response value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>16) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/ReleaseObservation_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/ReleaseObservation_Request.
 /// @details Exact identity UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/ReleaseObservation_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/srv/ReleaseObservation_Request";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/ReleaseObservation_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/srv/ReleaseObservation_Request.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 field_observation_nonce: u64=0,
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/ReleaseObservation_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_observation_nonce);
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/ReleaseObservation_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_observation_nonce=try r.integer(u64);
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/ReleaseObservation_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/ReleaseObservation_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/ReleaseObservation_Response in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=12;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/ReleaseObservation_Response.
 /// @details Exact identity UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/ReleaseObservation_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/srv/ReleaseObservation_Response";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/ReleaseObservation_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/srv/ReleaseObservation_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_groot_bridge/srv/ReleaseObservation_Response.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 field_observation_nonce: u64=0,
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/ReleaseObservation_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.integer(self.field_observation_nonce);
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/ReleaseObservation_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_status=try r.integer(u32);
  value.field_observation_nonce=try r.integer(u64);
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/ReleaseObservation_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/ReleaseObservation_Response value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and trailing
 /// bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>12) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/InferUploadedAction_Request in bytes.
 /// @details The inclusive bound is 7720 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=7720;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/InferUploadedAction_Request.
 /// @details Exact identity UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/InferUploadedAction_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/srv/InferUploadedAction_Request";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/InferUploadedAction_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Request.application_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/zig/API-CONTRACT.md
 field_application_nonce: u64=0,
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Request.observation_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/zig/API-CONTRACT.md
 field_observation_nonce: u64=0,
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Request.state: uwvm_groot_bridge/msg/FloatTensor; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/zig/API-CONTRACT.md
 field_state: []Ros2Uwvm_groot_bridgeMsgFloatTensor=&.{},
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Request.language: uwvm_groot_bridge/msg/TextSequence; 0..2
 /// elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/zig/API-CONTRACT.md
 field_language: []Ros2Uwvm_groot_bridgeMsgTextSequence=&.{},
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/InferUploadedAction_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_application_nonce);
  try w.integer(self.field_observation_nonce);
  if(self.field_state.len>4) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_state.len)));
  for(self.field_state) |e| {
  try e.writeFields(w);
  }
  if(self.field_language.len>2) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_language.len)));
  for(self.field_language) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/InferUploadedAction_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_application_nonce=try r.integer(u64);
  value.field_observation_nonce=try r.integer(u64);
  const count2=try r.integer(u32); if(count2>4) return error.Invalid;
  value.field_state=try allocator.alloc(Ros2Uwvm_groot_bridgeMsgFloatTensor,count2);
  for(value.field_state) |*e| {
  e.*=try Ros2Uwvm_groot_bridgeMsgFloatTensor.readFields(r,allocator);
  }
  const count3=try r.integer(u32); if(count3>2) return error.Invalid;
  value.field_language=try allocator.alloc(Ros2Uwvm_groot_bridgeMsgTextSequence,count3);
  for(value.field_language) |*e| {
  e.*=try Ros2Uwvm_groot_bridgeMsgTextSequence.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/InferUploadedAction_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/InferUploadedAction_Request value.
 /// @details Require the complete 24..7720-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>7720) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response=struct {
 /// @brief Maximum canonical extent of uwvm_groot_bridge/srv/InferUploadedAction_Response in bytes.
 /// @details The inclusive bound is 10929 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=10929;
 /// @brief Canonical codec identity of uwvm_groot_bridge/srv/InferUploadedAction_Response.
 /// @details Exact identity UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e";
 /// @brief Original ROS type name for uwvm_groot_bridge/srv/InferUploadedAction_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="uwvm_groot_bridge/srv/InferUploadedAction_Response";
 /// @brief Selected original native identity for uwvm_groot_bridge/srv/InferUploadedAction_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Response.status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status: u32=0,
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Response.application_nonce: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/zig/API-CONTRACT.md
 field_application_nonce: u64=0,
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Response.action: uwvm_groot_bridge/msg/FloatTensor; 0..8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/zig/API-CONTRACT.md
 field_action: []Ros2Uwvm_groot_bridgeMsgFloatTensor=&.{},
 /// @brief uwvm_groot_bridge/srv/InferUploadedAction_Response.info_is_empty: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
 /// field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
 /// conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
 /// ownership follow the enclosing decode function.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/zig/API-CONTRACT.md
 field_info_is_empty: bool=false,
 /// @brief Append every canonical field of uwvm_groot_bridge/srv/InferUploadedAction_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_status);
  try w.integer(self.field_application_nonce);
  if(self.field_action.len>8) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_action.len)));
  for(self.field_action) |e| {
  try e.writeFields(w);
  }
  try w.boolean(self.field_info_is_empty);
 }
 /// @brief Read the ordered canonical fields of uwvm_groot_bridge/srv/InferUploadedAction_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_status=try r.integer(u32);
  value.field_application_nonce=try r.integer(u64);
  const count2=try r.integer(u32); if(count2>8) return error.Invalid;
  value.field_action=try allocator.alloc(Ros2Uwvm_groot_bridgeMsgFloatTensor,count2);
  for(value.field_action) |*e| {
  e.*=try Ros2Uwvm_groot_bridgeMsgFloatTensor.readFields(r,allocator);
  }
  value.field_info_is_empty=try r.boolean();
  return value;
 }
 /// @brief Encode one complete uwvm_groot_bridge/srv/InferUploadedAction_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that buffer.
 /// Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until synchronous return;
 /// no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete uwvm_groot_bridge/srv/InferUploadedAction_Response value.
 /// @details Require the complete 17..10929-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers and
 /// out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language runtime;
 /// not every failure is a recoverable codec status. No Host, network or asynchronous side effect is issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to the
 /// caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any failed
 /// decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<17 or bytes.len>10929) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
