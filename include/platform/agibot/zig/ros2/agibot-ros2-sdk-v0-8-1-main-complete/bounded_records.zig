// @file bounded_records.zig
// @brief Full agibot zig codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_8_1_main values in zig. 72 original records retain 227 fields and 55
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
//! Generated complete bounded values; all allocation is explicit.
const std=@import("std");
const wire=@import("roswire");
/// @brief Complete ROS 2 aimdk_msgs/msg/AgentPropertyIdType value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgAgentPropertyIdType=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/AgentPropertyIdType in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1;
 /// @brief Canonical codec identity of aimdk_msgs/msg/AgentPropertyIdType.
 /// @details Exact identity UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b";
 /// @brief Original ROS type name for aimdk_msgs/msg/AgentPropertyIdType.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/AgentPropertyIdType";
 /// @brief Selected original native identity for aimdk_msgs/msg/AgentPropertyIdType.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_UNDEFINED: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AGENT_PROPERTY_UNDEFINED: u8=0;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_LANGUAGE: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AGENT_PROPERTY_LANGUAGE: u8=1;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_RUN_MODE: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AGENT_PROPERTY_RUN_MODE: u8=2;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_GREET: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AGENT_PROPERTY_GREET: u8=3;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_HEAD_FOLLOW: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AGENT_PROPERTY_HEAD_FOLLOW: u8=4;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_DUPLEX_TIMEOUT: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AGENT_PROPERTY_DUPLEX_TIMEOUT: u8=5;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_ENVIRONMENT_SWITCH: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AGENT_PROPERTY_ENVIRONMENT_SWITCH: u8=6;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.AGENT_PROPERTY_WELCOME_STATUS: original uint8 constant.
 /// @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AGENT_PROPERTY_WELCOME_STATUS: u8=7;
 /// @brief aimdk_msgs/msg/AgentPropertyIdType.value: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 field_value: u8=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/AgentPropertyIdType.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/AgentPropertyIdType.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_value=try r.integer(u8);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/AgentPropertyIdType value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/AgentPropertyIdType value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertyIdType; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<1 or bytes.len>1) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/AgentPropertiesValue value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 5..133 bytes
/// and is identified by UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgAgentPropertiesValue=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/AgentPropertiesValue in bytes.
 /// @details The inclusive bound is 133 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=133;
 /// @brief Canonical codec identity of aimdk_msgs/msg/AgentPropertiesValue.
 /// @details Exact identity UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a";
 /// @brief Original ROS type name for aimdk_msgs/msg/AgentPropertiesValue.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/AgentPropertiesValue";
 /// @brief Selected original native identity for aimdk_msgs/msg/AgentPropertiesValue.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/AgentPropertiesValue.key: aimdk_msgs/msg/AgentPropertyIdType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/zig/API-CONTRACT.md
 field_key: Ros2Aimdk_msgsMsgAgentPropertyIdType=.{},
 /// @brief aimdk_msgs/msg/AgentPropertiesValue.value: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/zig/API-CONTRACT.md
 field_value: []const u8=&.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/AgentPropertiesValue.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_key.writeFields(w);
  try w.string(self.field_value,128,false);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/AgentPropertiesValue.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_key=try Ros2Aimdk_msgsMsgAgentPropertyIdType.readFields(r,allocator);
  value.field_value=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/AgentPropertiesValue value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/AgentPropertiesValue value.
 /// @details Require the complete 5..133-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentPropertiesValue; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<5 or bytes.len>133) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/AgentProperties value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..536 bytes
/// and is identified by UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgAgentProperties=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/AgentProperties in bytes.
 /// @details The inclusive bound is 536 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=536;
 /// @brief Canonical codec identity of aimdk_msgs/msg/AgentProperties.
 /// @details Exact identity UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f";
 /// @brief Original ROS type name for aimdk_msgs/msg/AgentProperties.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/AgentProperties";
 /// @brief Selected original native identity for aimdk_msgs/msg/AgentProperties.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/AgentProperties.properties: aimdk_msgs/msg/AgentPropertiesValue; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/zig/API-CONTRACT.md
 field_properties: []Ros2Aimdk_msgsMsgAgentPropertiesValue=&.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/AgentProperties.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_properties.len>4) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_properties.len)));
  for(self.field_properties) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/AgentProperties.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  const count0=try r.integer(u32); if(count0>4) return error.Invalid;
  value.field_properties=try allocator.alloc(Ros2Aimdk_msgsMsgAgentPropertiesValue,count0);
  for(value.field_properties) |*e| {
  e.*=try Ros2Aimdk_msgsMsgAgentPropertiesValue.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/AgentProperties value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/AgentProperties value.
 /// @details Require the complete 4..536-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAgentProperties; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>536) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/AudioVadStateType value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgAudioVadStateType=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/AudioVadStateType in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1;
 /// @brief Canonical codec identity of aimdk_msgs/msg/AudioVadStateType.
 /// @details Exact identity UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526";
 /// @brief Original ROS type name for aimdk_msgs/msg/AudioVadStateType.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/AudioVadStateType";
 /// @brief Selected original native identity for aimdk_msgs/msg/AudioVadStateType.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/AudioVadStateType.AUDIO_VAD_STATE_NONE: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AUDIO_VAD_STATE_NONE: u8=0;
 /// @brief aimdk_msgs/msg/AudioVadStateType.AUDIO_VAD_STATE_BEGIN: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AUDIO_VAD_STATE_BEGIN: u8=1;
 /// @brief aimdk_msgs/msg/AudioVadStateType.AUDIO_VAD_STATE_PROCESSING: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AUDIO_VAD_STATE_PROCESSING: u8=2;
 /// @brief aimdk_msgs/msg/AudioVadStateType.AUDIO_VAD_STATE_END: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_AUDIO_VAD_STATE_END: u8=3;
 /// @brief aimdk_msgs/msg/AudioVadStateType.value: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 field_value: u8=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/AudioVadStateType.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/AudioVadStateType.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_value=try r.integer(u8);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/AudioVadStateType value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/AudioVadStateType value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgAudioVadStateType; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<1 or bytes.len>1) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Builtin_interfacesMsgTime=struct {
 /// @brief Maximum canonical extent of builtin_interfaces/msg/Time in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of builtin_interfaces/msg/Time.
 /// @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
 /// @brief Original ROS type name for builtin_interfaces/msg/Time.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="builtin_interfaces/msg/Time";
 /// @brief Selected original native identity for builtin_interfaces/msg/Time.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief builtin_interfaces/msg/Time.sec: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
 field_sec: i32=0,
 /// @brief builtin_interfaces/msg/Time.nanosec: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
 field_nanosec: u32=0,
 /// @brief Append every canonical field of builtin_interfaces/msg/Time.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  if(self.field_nanosec >= 1000000000) return error.Invalid;
  try w.integer(self.field_sec);
  try w.integer(self.field_nanosec);
 }
 /// @brief Read the ordered canonical fields of builtin_interfaces/msg/Time.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_sec=try r.integer(i32);
  value.field_nanosec=try r.integer(u32);
  if(value.field_nanosec >= 1000000000) return error.Invalid;
  return value;
 }
 /// @brief Encode one complete builtin_interfaces/msg/Time value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete builtin_interfaces/msg/Time value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Builtin_interfacesMsgTime; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/RequestHeader value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgRequestHeader=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/RequestHeader in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of aimdk_msgs/msg/RequestHeader.
 /// @details Exact identity UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000";
 /// @brief Original ROS type name for aimdk_msgs/msg/RequestHeader.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/RequestHeader";
 /// @brief Selected original native identity for aimdk_msgs/msg/RequestHeader.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/RequestHeader.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/zig/API-CONTRACT.md
 field_stamp: Ros2Builtin_interfacesMsgTime=.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/RequestHeader.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_stamp.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/RequestHeader.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_stamp=try Ros2Builtin_interfacesMsgTime.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/RequestHeader value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/RequestHeader value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgRequestHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/CommonRequest value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgCommonRequest=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/CommonRequest in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of aimdk_msgs/msg/CommonRequest.
 /// @details Exact identity UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7";
 /// @brief Original ROS type name for aimdk_msgs/msg/CommonRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/CommonRequest";
 /// @brief Selected original native identity for aimdk_msgs/msg/CommonRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/CommonRequest.header: aimdk_msgs/msg/RequestHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgRequestHeader=.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/CommonRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/CommonRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgRequestHeader.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/CommonRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/CommonRequest value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonRequest; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/ResponseHeader value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..16 bytes
/// and is identified by UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgResponseHeader=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/ResponseHeader in bytes.
 /// @details The inclusive bound is 16 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=16;
 /// @brief Canonical codec identity of aimdk_msgs/msg/ResponseHeader.
 /// @details Exact identity UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90";
 /// @brief Original ROS type name for aimdk_msgs/msg/ResponseHeader.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/ResponseHeader";
 /// @brief Selected original native identity for aimdk_msgs/msg/ResponseHeader.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/ResponseHeader.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/zig/API-CONTRACT.md
 field_stamp: Ros2Builtin_interfacesMsgTime=.{},
 /// @brief aimdk_msgs/msg/ResponseHeader.code: int64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/zig/API-CONTRACT.md
 field_code: i64=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/ResponseHeader.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_stamp.writeFields(w);
  try w.integer(self.field_code);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/ResponseHeader.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_stamp=try Ros2Builtin_interfacesMsgTime.readFields(r,allocator);
  value.field_code=try r.integer(i64);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/ResponseHeader value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/ResponseHeader value.
 /// @details Require the complete 16..16-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgResponseHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>16) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/CommonState value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgCommonState=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/CommonState in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=4;
 /// @brief Canonical codec identity of aimdk_msgs/msg/CommonState.
 /// @details Exact identity UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e";
 /// @brief Original ROS type name for aimdk_msgs/msg/CommonState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/CommonState";
 /// @brief Selected original native identity for aimdk_msgs/msg/CommonState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/CommonState.UNKNOWN: original int32 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_UNKNOWN: i32=0;
 /// @brief aimdk_msgs/msg/CommonState.SUCCESS: original int32 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_SUCCESS: i32=1;
 /// @brief aimdk_msgs/msg/CommonState.FAILURE: original int32 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_FAILURE: i32=2;
 /// @brief aimdk_msgs/msg/CommonState.ABORTED: original int32 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_ABORTED: i32=3;
 /// @brief aimdk_msgs/msg/CommonState.TIMEOUT: original int32 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_TIMEOUT: i32=4;
 /// @brief aimdk_msgs/msg/CommonState.INVALID: original int32 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INVALID: i32=5;
 /// @brief aimdk_msgs/msg/CommonState.IN_MANUAL: original int32 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_IN_MANUAL: i32=6;
 /// @brief aimdk_msgs/msg/CommonState.NOT_READY: original int32 constant.
 /// @details Exact admitted value 100. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_NOT_READY: i32=100;
 /// @brief aimdk_msgs/msg/CommonState.PENDING: original int32 constant.
 /// @details Exact admitted value 200. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_PENDING: i32=200;
 /// @brief aimdk_msgs/msg/CommonState.CREATED: original int32 constant.
 /// @details Exact admitted value 300. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_CREATED: i32=300;
 /// @brief aimdk_msgs/msg/CommonState.RUNNING: original int32 constant.
 /// @details Exact admitted value 400. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_RUNNING: i32=400;
 /// @brief aimdk_msgs/msg/CommonState.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 field_value: i32=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/CommonState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/CommonState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_value=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/CommonState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/CommonState value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonState; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>4) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/CommonResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
/// and is identified by UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgCommonResponse=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/CommonResponse in bytes.
 /// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=152;
 /// @brief Canonical codec identity of aimdk_msgs/msg/CommonResponse.
 /// @details Exact identity UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6";
 /// @brief Original ROS type name for aimdk_msgs/msg/CommonResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/CommonResponse";
 /// @brief Selected original native identity for aimdk_msgs/msg/CommonResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/CommonResponse.header: aimdk_msgs/msg/ResponseHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgResponseHeader=.{},
 /// @brief aimdk_msgs/msg/CommonResponse.status: aimdk_msgs/msg/CommonState.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/zig/API-CONTRACT.md
 field_status: Ros2Aimdk_msgsMsgCommonState=.{},
 /// @brief aimdk_msgs/msg/CommonResponse.message: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/zig/API-CONTRACT.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/CommonResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try self.field_status.writeFields(w);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/CommonResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgResponseHeader.readFields(r,allocator);
  value.field_status=try Ros2Aimdk_msgsMsgCommonState.readFields(r,allocator);
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/CommonResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/CommonResponse value.
 /// @details Require the complete 24..152-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonResponse; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>152) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/CommonTaskResponse value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 28..28 bytes
/// and is identified by UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgCommonTaskResponse=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/CommonTaskResponse in bytes.
 /// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=28;
 /// @brief Canonical codec identity of aimdk_msgs/msg/CommonTaskResponse.
 /// @details Exact identity UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2";
 /// @brief Original ROS type name for aimdk_msgs/msg/CommonTaskResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/CommonTaskResponse";
 /// @brief Selected original native identity for aimdk_msgs/msg/CommonTaskResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/CommonTaskResponse.header: aimdk_msgs/msg/ResponseHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgResponseHeader=.{},
 /// @brief aimdk_msgs/msg/CommonTaskResponse.task_id: uint64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/zig/API-CONTRACT.md
 field_task_id: u64=0,
 /// @brief aimdk_msgs/msg/CommonTaskResponse.state: aimdk_msgs/msg/CommonState.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/zig/API-CONTRACT.md
 field_state: Ros2Aimdk_msgsMsgCommonState=.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/CommonTaskResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try w.integer(self.field_task_id);
  try self.field_state.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/CommonTaskResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgResponseHeader.readFields(r,allocator);
  value.field_task_id=try r.integer(u64);
  value.field_state=try Ros2Aimdk_msgsMsgCommonState.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/CommonTaskResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/CommonTaskResponse value.
 /// @details Require the complete 28..28-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgCommonTaskResponse; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>28) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/MessageHeader value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
/// and is identified by UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgMessageHeader=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/MessageHeader in bytes.
 /// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=152;
 /// @brief Canonical codec identity of aimdk_msgs/msg/MessageHeader.
 /// @details Exact identity UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496";
 /// @brief Original ROS type name for aimdk_msgs/msg/MessageHeader.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/MessageHeader";
 /// @brief Selected original native identity for aimdk_msgs/msg/MessageHeader.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/MessageHeader.stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/zig/API-CONTRACT.md
 field_stamp: Ros2Builtin_interfacesMsgTime=.{},
 /// @brief aimdk_msgs/msg/MessageHeader.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/zig/API-CONTRACT.md
 field_frame_id: []const u8=&.{},
 /// @brief aimdk_msgs/msg/MessageHeader.sequence: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/zig/API-CONTRACT.md
 field_sequence: u32=0,
 /// @brief aimdk_msgs/msg/MessageHeader.meas_stamp: builtin_interfaces/msg/Time.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/zig/API-CONTRACT.md
 field_meas_stamp: Ros2Builtin_interfacesMsgTime=.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/MessageHeader.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_stamp.writeFields(w);
  try w.string(self.field_frame_id,128,false);
  try w.integer(self.field_sequence);
  try self.field_meas_stamp.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/MessageHeader.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_stamp=try Ros2Builtin_interfacesMsgTime.readFields(r,allocator);
  value.field_frame_id=try r.string(128,false);
  value.field_sequence=try r.integer(u32);
  value.field_meas_stamp=try Ros2Builtin_interfacesMsgTime.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/MessageHeader value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/MessageHeader value.
 /// @details Require the complete 24..152-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMessageHeader; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>152) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/FaceEmojiStatus value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 47..2415
/// bytes and is identified by UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgFaceEmojiStatus=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/FaceEmojiStatus in bytes.
 /// @details The inclusive bound is 2415 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=2415;
 /// @brief Canonical codec identity of aimdk_msgs/msg/FaceEmojiStatus.
 /// @details Exact identity UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7";
 /// @brief Original ROS type name for aimdk_msgs/msg/FaceEmojiStatus.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/FaceEmojiStatus";
 /// @brief Selected original native identity for aimdk_msgs/msg/FaceEmojiStatus.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_IDLE: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const field_STATUS_IDLE: u8=0;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_START: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const field_STATUS_START: u8=1;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_RUNNING: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const field_STATUS_RUNNING: u8=2;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_FINISHED: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const field_STATUS_FINISHED: u8=3;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.STATUS_STOPPED: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const field_STATUS_STOPPED: u8=4;
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader=.{},
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.e_path: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 field_e_path: []const u8=&.{},
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.e_path_list: string; 0..16 elements; each string is 0..128 bytes; strict
 /// UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 field_e_path_list: [][]const u8=&.{},
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.e_id: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 field_e_id: u8=0,
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 field_mode: u8=0,
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.priority: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 field_priority: i32=0,
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.status: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 field_status: u8=0,
 /// @brief aimdk_msgs/msg/FaceEmojiStatus.time_to_end_ms: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 field_time_to_end_ms: f64=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/FaceEmojiStatus.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try w.string(self.field_e_path,128,false);
  if(self.field_e_path_list.len>16) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_e_path_list.len)));
  for(self.field_e_path_list) |e| {
  try w.string(e,128,false);
  }
  try w.integer(self.field_e_id);
  try w.integer(self.field_mode);
  try w.integer(self.field_priority);
  try w.integer(self.field_status);
  try w.float64(self.field_time_to_end_ms);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/FaceEmojiStatus.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgMessageHeader.readFields(r,allocator);
  value.field_e_path=try r.string(128,false);
  const count2=try r.integer(u32); if(count2>16) return error.Invalid;
  value.field_e_path_list=try allocator.alloc([]const u8,count2);
  for(value.field_e_path_list) |*e| {
  e.*=try r.string(128,false);
  }
  value.field_e_id=try r.integer(u8);
  value.field_mode=try r.integer(u8);
  value.field_priority=try r.integer(i32);
  value.field_status=try r.integer(u8);
  value.field_time_to_end_ms=try r.float64();
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/FaceEmojiStatus value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/FaceEmojiStatus value.
 /// @details Require the complete 47..2415-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgFaceEmojiStatus; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<47 or bytes.len>2415) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/HandCommand value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 44..172 bytes
/// and is identified by UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgHandCommand=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/HandCommand in bytes.
 /// @details The inclusive bound is 172 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=172;
 /// @brief Canonical codec identity of aimdk_msgs/msg/HandCommand.
 /// @details Exact identity UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8";
 /// @brief Original ROS type name for aimdk_msgs/msg/HandCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/HandCommand";
 /// @brief Selected original native identity for aimdk_msgs/msg/HandCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/HandCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 field_name: []const u8=&.{},
 /// @brief aimdk_msgs/msg/HandCommand.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 field_position: f64=0,
 /// @brief aimdk_msgs/msg/HandCommand.velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 field_velocity: f64=0,
 /// @brief aimdk_msgs/msg/HandCommand.acceleration: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 field_acceleration: f64=0,
 /// @brief aimdk_msgs/msg/HandCommand.deceleration: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 field_deceleration: f64=0,
 /// @brief aimdk_msgs/msg/HandCommand.effort: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 field_effort: f64=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/HandCommand.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_name,128,false);
  try w.float64(self.field_position);
  try w.float64(self.field_velocity);
  try w.float64(self.field_acceleration);
  try w.float64(self.field_deceleration);
  try w.float64(self.field_effort);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandCommand.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_name=try r.string(128,false);
  value.field_position=try r.float64();
  value.field_velocity=try r.float64();
  value.field_acceleration=try r.float64();
  value.field_deceleration=try r.float64();
  value.field_effort=try r.float64();
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/HandCommand value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/HandCommand value.
 /// @details Require the complete 44..172-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<44 or bytes.len>172) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/HandType value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgHandType=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/HandType in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1;
 /// @brief Canonical codec identity of aimdk_msgs/msg/HandType.
 /// @details Exact identity UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6";
 /// @brief Original ROS type name for aimdk_msgs/msg/HandType.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/HandType";
 /// @brief Selected original native identity for aimdk_msgs/msg/HandType.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/HandType.NONE: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_NONE: u8=0;
 /// @brief aimdk_msgs/msg/HandType.NIMBLE_HANDS: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_NIMBLE_HANDS: u8=1;
 /// @brief aimdk_msgs/msg/HandType.CLAW: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_CLAW: u8=2;
 /// @brief aimdk_msgs/msg/HandType.ERROR: original uint8 constant.
 /// @details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 pub const field_ERROR: u8=255;
 /// @brief aimdk_msgs/msg/HandType.value: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 field_value: u8=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/HandType.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandType.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_value=try r.integer(u8);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/HandType value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/HandType value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandType; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<1 or bytes.len>1) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/HandCommandArray value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 34..1538
/// bytes and is identified by UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgHandCommandArray=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/HandCommandArray in bytes.
 /// @details The inclusive bound is 1538 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1538;
 /// @brief Canonical codec identity of aimdk_msgs/msg/HandCommandArray.
 /// @details Exact identity UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e";
 /// @brief Original ROS type name for aimdk_msgs/msg/HandCommandArray.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/HandCommandArray";
 /// @brief Selected original native identity for aimdk_msgs/msg/HandCommandArray.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/HandCommandArray.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader=.{},
 /// @brief aimdk_msgs/msg/HandCommandArray.left_hand_type: aimdk_msgs/msg/HandType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 field_left_hand_type: Ros2Aimdk_msgsMsgHandType=.{},
 /// @brief aimdk_msgs/msg/HandCommandArray.left_hands: aimdk_msgs/msg/HandCommand; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 field_left_hands: []Ros2Aimdk_msgsMsgHandCommand=&.{},
 /// @brief aimdk_msgs/msg/HandCommandArray.right_hand_type: aimdk_msgs/msg/HandType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 field_right_hand_type: Ros2Aimdk_msgsMsgHandType=.{},
 /// @brief aimdk_msgs/msg/HandCommandArray.right_hands: aimdk_msgs/msg/HandCommand; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 field_right_hands: []Ros2Aimdk_msgsMsgHandCommand=&.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/HandCommandArray.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try self.field_left_hand_type.writeFields(w);
  if(self.field_left_hands.len>4) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_left_hands.len)));
  for(self.field_left_hands) |e| {
  try e.writeFields(w);
  }
  try self.field_right_hand_type.writeFields(w);
  if(self.field_right_hands.len>4) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_right_hands.len)));
  for(self.field_right_hands) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandCommandArray.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgMessageHeader.readFields(r,allocator);
  value.field_left_hand_type=try Ros2Aimdk_msgsMsgHandType.readFields(r,allocator);
  const count2=try r.integer(u32); if(count2>4) return error.Invalid;
  value.field_left_hands=try allocator.alloc(Ros2Aimdk_msgsMsgHandCommand,count2);
  for(value.field_left_hands) |*e| {
  e.*=try Ros2Aimdk_msgsMsgHandCommand.readFields(r,allocator);
  }
  value.field_right_hand_type=try Ros2Aimdk_msgsMsgHandType.readFields(r,allocator);
  const count4=try r.integer(u32); if(count4>4) return error.Invalid;
  value.field_right_hands=try allocator.alloc(Ros2Aimdk_msgsMsgHandCommand,count4);
  for(value.field_right_hands) |*e| {
  e.*=try Ros2Aimdk_msgsMsgHandCommand.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/HandCommandArray value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/HandCommandArray value.
 /// @details Require the complete 34..1538-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<34 or bytes.len>1538) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/HandState value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 36..164 bytes
/// and is identified by UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgHandState=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/HandState in bytes.
 /// @details The inclusive bound is 164 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=164;
 /// @brief Canonical codec identity of aimdk_msgs/msg/HandState.
 /// @details Exact identity UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c";
 /// @brief Original ROS type name for aimdk_msgs/msg/HandState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/HandState";
 /// @brief Selected original native identity for aimdk_msgs/msg/HandState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/HandState.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 field_name: []const u8=&.{},
 /// @brief aimdk_msgs/msg/HandState.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 field_position: f64=0,
 /// @brief aimdk_msgs/msg/HandState.velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 field_velocity: f64=0,
 /// @brief aimdk_msgs/msg/HandState.effort: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 field_effort: f64=0,
 /// @brief aimdk_msgs/msg/HandState.state: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 field_state: i32=0,
 /// @brief aimdk_msgs/msg/HandState.faultcode: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 field_faultcode: i32=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/HandState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_name,128,false);
  try w.float64(self.field_position);
  try w.float64(self.field_velocity);
  try w.float64(self.field_effort);
  try w.integer(self.field_state);
  try w.integer(self.field_faultcode);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_name=try r.string(128,false);
  value.field_position=try r.float64();
  value.field_velocity=try r.float64();
  value.field_effort=try r.float64();
  value.field_state=try r.integer(i32);
  value.field_faultcode=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/HandState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/HandState value.
 /// @details Require the complete 36..164-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandState; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<36 or bytes.len>164) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/HandStateArray value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 34..1474
/// bytes and is identified by UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgHandStateArray=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/HandStateArray in bytes.
 /// @details The inclusive bound is 1474 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1474;
 /// @brief Canonical codec identity of aimdk_msgs/msg/HandStateArray.
 /// @details Exact identity UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d";
 /// @brief Original ROS type name for aimdk_msgs/msg/HandStateArray.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/HandStateArray";
 /// @brief Selected original native identity for aimdk_msgs/msg/HandStateArray.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/HandStateArray.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader=.{},
 /// @brief aimdk_msgs/msg/HandStateArray.left_hand_type: aimdk_msgs/msg/HandType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 field_left_hand_type: Ros2Aimdk_msgsMsgHandType=.{},
 /// @brief aimdk_msgs/msg/HandStateArray.left_hands: aimdk_msgs/msg/HandState; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 field_left_hands: []Ros2Aimdk_msgsMsgHandState=&.{},
 /// @brief aimdk_msgs/msg/HandStateArray.right_hand_type: aimdk_msgs/msg/HandType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 field_right_hand_type: Ros2Aimdk_msgsMsgHandType=.{},
 /// @brief aimdk_msgs/msg/HandStateArray.right_hands: aimdk_msgs/msg/HandState; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 field_right_hands: []Ros2Aimdk_msgsMsgHandState=&.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/HandStateArray.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try self.field_left_hand_type.writeFields(w);
  if(self.field_left_hands.len>4) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_left_hands.len)));
  for(self.field_left_hands) |e| {
  try e.writeFields(w);
  }
  try self.field_right_hand_type.writeFields(w);
  if(self.field_right_hands.len>4) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_right_hands.len)));
  for(self.field_right_hands) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/HandStateArray.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgMessageHeader.readFields(r,allocator);
  value.field_left_hand_type=try Ros2Aimdk_msgsMsgHandType.readFields(r,allocator);
  const count2=try r.integer(u32); if(count2>4) return error.Invalid;
  value.field_left_hands=try allocator.alloc(Ros2Aimdk_msgsMsgHandState,count2);
  for(value.field_left_hands) |*e| {
  e.*=try Ros2Aimdk_msgsMsgHandState.readFields(r,allocator);
  }
  value.field_right_hand_type=try Ros2Aimdk_msgsMsgHandType.readFields(r,allocator);
  const count4=try r.integer(u32); if(count4>4) return error.Invalid;
  value.field_right_hands=try allocator.alloc(Ros2Aimdk_msgsMsgHandState,count4);
  for(value.field_right_hands) |*e| {
  e.*=try Ros2Aimdk_msgsMsgHandState.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/HandStateArray value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/HandStateArray value.
 /// @details Require the complete 34..1474-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgHandStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<34 or bytes.len>1474) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/JointCommand value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 44..172 bytes
/// and is identified by UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgJointCommand=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/JointCommand in bytes.
 /// @details The inclusive bound is 172 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=172;
 /// @brief Canonical codec identity of aimdk_msgs/msg/JointCommand.
 /// @details Exact identity UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f";
 /// @brief Original ROS type name for aimdk_msgs/msg/JointCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/JointCommand";
 /// @brief Selected original native identity for aimdk_msgs/msg/JointCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/JointCommand.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 field_name: []const u8=&.{},
 /// @brief aimdk_msgs/msg/JointCommand.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 field_position: f64=0,
 /// @brief aimdk_msgs/msg/JointCommand.velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 field_velocity: f64=0,
 /// @brief aimdk_msgs/msg/JointCommand.effort: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 field_effort: f64=0,
 /// @brief aimdk_msgs/msg/JointCommand.stiffness: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 field_stiffness: f64=0,
 /// @brief aimdk_msgs/msg/JointCommand.damping: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 field_damping: f64=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/JointCommand.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_name,128,false);
  try w.float64(self.field_position);
  try w.float64(self.field_velocity);
  try w.float64(self.field_effort);
  try w.float64(self.field_stiffness);
  try w.float64(self.field_damping);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/JointCommand.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_name=try r.string(128,false);
  value.field_position=try r.float64();
  value.field_velocity=try r.float64();
  value.field_effort=try r.float64();
  value.field_stiffness=try r.float64();
  value.field_damping=try r.float64();
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/JointCommand value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/JointCommand value.
 /// @details Require the complete 44..172-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<44 or bytes.len>172) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/JointCommandArray value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..11164
/// bytes and is identified by UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgJointCommandArray=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/JointCommandArray in bytes.
 /// @details The inclusive bound is 11164 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=11164;
 /// @brief Canonical codec identity of aimdk_msgs/msg/JointCommandArray.
 /// @details Exact identity UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6";
 /// @brief Original ROS type name for aimdk_msgs/msg/JointCommandArray.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/JointCommandArray";
 /// @brief Selected original native identity for aimdk_msgs/msg/JointCommandArray.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/JointCommandArray.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader=.{},
 /// @brief aimdk_msgs/msg/JointCommandArray.joints: aimdk_msgs/msg/JointCommand; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/zig/API-CONTRACT.md
 field_joints: []Ros2Aimdk_msgsMsgJointCommand=&.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/JointCommandArray.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  if(self.field_joints.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joints.len)));
  for(self.field_joints) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/JointCommandArray.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgMessageHeader.readFields(r,allocator);
  const count1=try r.integer(u32); if(count1>64) return error.Invalid;
  value.field_joints=try allocator.alloc(Ros2Aimdk_msgsMsgJointCommand,count1);
  for(value.field_joints) |*e| {
  e.*=try Ros2Aimdk_msgsMsgJointCommand.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/JointCommandArray value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/JointCommandArray value.
 /// @details Require the complete 28..11164-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointCommandArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>11164) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/JointState value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 31..159 bytes
/// and is identified by UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgJointState=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/JointState in bytes.
 /// @details The inclusive bound is 159 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=159;
 /// @brief Canonical codec identity of aimdk_msgs/msg/JointState.
 /// @details Exact identity UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f";
 /// @brief Original ROS type name for aimdk_msgs/msg/JointState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/JointState";
 /// @brief Selected original native identity for aimdk_msgs/msg/JointState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/JointState.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 field_name: []const u8=&.{},
 /// @brief aimdk_msgs/msg/JointState.position: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 field_position: f64=0,
 /// @brief aimdk_msgs/msg/JointState.velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 field_velocity: f64=0,
 /// @brief aimdk_msgs/msg/JointState.effort: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 field_effort: f64=0,
 /// @brief aimdk_msgs/msg/JointState.coil_temp: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 field_coil_temp: u8=0,
 /// @brief aimdk_msgs/msg/JointState.motor_temp: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 field_motor_temp: u8=0,
 /// @brief aimdk_msgs/msg/JointState.motor_vol: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 field_motor_vol: u8=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/JointState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_name,128,false);
  try w.float64(self.field_position);
  try w.float64(self.field_velocity);
  try w.float64(self.field_effort);
  try w.integer(self.field_coil_temp);
  try w.integer(self.field_motor_temp);
  try w.integer(self.field_motor_vol);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/JointState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_name=try r.string(128,false);
  value.field_position=try r.float64();
  value.field_velocity=try r.float64();
  value.field_effort=try r.float64();
  value.field_coil_temp=try r.integer(u8);
  value.field_motor_temp=try r.integer(u8);
  value.field_motor_vol=try r.integer(u8);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/JointState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/JointState value.
 /// @details Require the complete 31..159-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointState; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<31 or bytes.len>159) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/JointStateArray value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..10332
/// bytes and is identified by UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgJointStateArray=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/JointStateArray in bytes.
 /// @details The inclusive bound is 10332 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=10332;
 /// @brief Canonical codec identity of aimdk_msgs/msg/JointStateArray.
 /// @details Exact identity UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa";
 /// @brief Original ROS type name for aimdk_msgs/msg/JointStateArray.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/JointStateArray";
 /// @brief Selected original native identity for aimdk_msgs/msg/JointStateArray.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/JointStateArray.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader=.{},
 /// @brief aimdk_msgs/msg/JointStateArray.joints: aimdk_msgs/msg/JointState; 0..64 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/zig/API-CONTRACT.md
 field_joints: []Ros2Aimdk_msgsMsgJointState=&.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/JointStateArray.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  if(self.field_joints.len>64) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_joints.len)));
  for(self.field_joints) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/JointStateArray.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgMessageHeader.readFields(r,allocator);
  const count1=try r.integer(u32); if(count1>64) return error.Invalid;
  value.field_joints=try allocator.alloc(Ros2Aimdk_msgsMsgJointState,count1);
  for(value.field_joints) |*e| {
  e.*=try Ros2Aimdk_msgsMsgJointState.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/JointStateArray value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/JointStateArray value.
 /// @details Require the complete 28..10332-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgJointStateArray; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>10332) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/McAction value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgMcAction=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McAction in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=4;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McAction.
 /// @details Exact identity UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b";
 /// @brief Original ROS type name for aimdk_msgs/msg/McAction.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/McAction";
 /// @brief Selected original native identity for aimdk_msgs/msg/McAction.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/McAction.PASSIVE_DEFAULT: original int32 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_PASSIVE_DEFAULT: i32=1;
 /// @brief aimdk_msgs/msg/McAction.SOFT_EMERGENCY_STOP: original int32 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_SOFT_EMERGENCY_STOP: i32=2;
 /// @brief aimdk_msgs/msg/McAction.DAMPING_DEFAULT: original int32 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_DAMPING_DEFAULT: i32=3;
 /// @brief aimdk_msgs/msg/McAction.ZERO_TORQUE_DEFAULT: original int32 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_ZERO_TORQUE_DEFAULT: i32=4;
 /// @brief aimdk_msgs/msg/McAction.JOINT_DEFAULT: original int32 constant.
 /// @details Exact admitted value 100. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_JOINT_DEFAULT: i32=100;
 /// @brief aimdk_msgs/msg/McAction.JOINT_FREEZE: original int32 constant.
 /// @details Exact admitted value 101. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_JOINT_FREEZE: i32=101;
 /// @brief aimdk_msgs/msg/McAction.STAND_DEFAULT: original int32 constant.
 /// @details Exact admitted value 200. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_STAND_DEFAULT: i32=200;
 /// @brief aimdk_msgs/msg/McAction.STAND_BODY_CONTROL: original int32 constant.
 /// @details Exact admitted value 201. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_STAND_BODY_CONTROL: i32=201;
 /// @brief aimdk_msgs/msg/McAction.LOCOMOTION_DEFAULT: original int32 constant.
 /// @details Exact admitted value 300. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_LOCOMOTION_DEFAULT: i32=300;
 /// @brief aimdk_msgs/msg/McAction.RUN_DEFAULT: original int32 constant.
 /// @details Exact admitted value 301. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_RUN_DEFAULT: i32=301;
 /// @brief aimdk_msgs/msg/McAction.LOCOMOTION_STEP: original int32 constant.
 /// @details Exact admitted value 302. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_LOCOMOTION_STEP: i32=302;
 /// @brief aimdk_msgs/msg/McAction.VR_REMOTE_CONTROLLER: original int32 constant.
 /// @details Exact admitted value 400. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_VR_REMOTE_CONTROLLER: i32=400;
 /// @brief aimdk_msgs/msg/McAction.SIT_DOWN_DEFAULT: original int32 constant.
 /// @details Exact admitted value 2000. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_SIT_DOWN_DEFAULT: i32=2000;
 /// @brief aimdk_msgs/msg/McAction.CROUCH_DOWN_DEFAULT: original int32 constant.
 /// @details Exact admitted value 2002. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_CROUCH_DOWN_DEFAULT: i32=2002;
 /// @brief aimdk_msgs/msg/McAction.LIE_DOWN_DEFAULT: original int32 constant.
 /// @details Exact admitted value 2004. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_LIE_DOWN_DEFAULT: i32=2004;
 /// @brief aimdk_msgs/msg/McAction.STAND_UP_DEFAULT: original int32 constant.
 /// @details Exact admitted value 2005. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_STAND_UP_DEFAULT: i32=2005;
 /// @brief aimdk_msgs/msg/McAction.ASCEND_STAIRS: original int32 constant.
 /// @details Exact admitted value 2006. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_ASCEND_STAIRS: i32=2006;
 /// @brief aimdk_msgs/msg/McAction.DESCEND_STAIRS: original int32 constant.
 /// @details Exact admitted value 2008. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_DESCEND_STAIRS: i32=2008;
 /// @brief aimdk_msgs/msg/McAction.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 field_value: i32=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/McAction.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McAction.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_value=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McAction value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/McAction value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcAction; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>4) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/McActionCommand value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 8..136 bytes
/// and is identified by UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgMcActionCommand=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McActionCommand in bytes.
 /// @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=136;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McActionCommand.
 /// @details Exact identity UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648";
 /// @brief Original ROS type name for aimdk_msgs/msg/McActionCommand.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/McActionCommand";
 /// @brief Selected original native identity for aimdk_msgs/msg/McActionCommand.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/McActionCommand.action: aimdk_msgs/msg/McAction.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/zig/API-CONTRACT.md
 field_action: Ros2Aimdk_msgsMsgMcAction=.{},
 /// @brief aimdk_msgs/msg/McActionCommand.action_desc: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/zig/API-CONTRACT.md
 field_action_desc: []const u8=&.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/McActionCommand.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_action.writeFields(w);
  try w.string(self.field_action_desc,128,false);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McActionCommand.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_action=try Ros2Aimdk_msgsMsgMcAction.readFields(r,allocator);
  value.field_action_desc=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McActionCommand value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/McActionCommand value.
 /// @details Require the complete 8..136-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionCommand; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>136) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/McActionStatus value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgMcActionStatus=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McActionStatus in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=4;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McActionStatus.
 /// @details Exact identity UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48";
 /// @brief Original ROS type name for aimdk_msgs/msg/McActionStatus.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/McActionStatus";
 /// @brief Selected original native identity for aimdk_msgs/msg/McActionStatus.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/McActionStatus.IDLE: original int32 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const field_IDLE: i32=0;
 /// @brief aimdk_msgs/msg/McActionStatus.RUNNING: original int32 constant.
 /// @details Exact admitted value 100. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const field_RUNNING: i32=100;
 /// @brief aimdk_msgs/msg/McActionStatus.TRANSITION: original int32 constant.
 /// @details Exact admitted value 200. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/zig/API-CONTRACT.md
 pub const field_TRANSITION: i32=200;
 /// @brief aimdk_msgs/msg/McActionStatus.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/zig/API-CONTRACT.md
 field_value: i32=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/McActionStatus.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McActionStatus.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_value=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McActionStatus value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/McActionStatus value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionStatus; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>4) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/McActionInfo value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgMcActionInfo=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McActionInfo in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=140;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McActionInfo.
 /// @details Exact identity UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9";
 /// @brief Original ROS type name for aimdk_msgs/msg/McActionInfo.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/McActionInfo";
 /// @brief Selected original native identity for aimdk_msgs/msg/McActionInfo.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/McActionInfo.current_action: aimdk_msgs/msg/McAction.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/zig/API-CONTRACT.md
 field_current_action: Ros2Aimdk_msgsMsgMcAction=.{},
 /// @brief aimdk_msgs/msg/McActionInfo.action_desc: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/zig/API-CONTRACT.md
 field_action_desc: []const u8=&.{},
 /// @brief aimdk_msgs/msg/McActionInfo.status: aimdk_msgs/msg/McActionStatus.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/zig/API-CONTRACT.md
 field_status: Ros2Aimdk_msgsMsgMcActionStatus=.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/McActionInfo.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_current_action.writeFields(w);
  try w.string(self.field_action_desc,128,false);
  try self.field_status.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McActionInfo.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_current_action=try Ros2Aimdk_msgsMsgMcAction.readFields(r,allocator);
  value.field_action_desc=try r.string(128,false);
  value.field_status=try Ros2Aimdk_msgsMsgMcActionStatus.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McActionInfo value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/McActionInfo value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcActionInfo; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>140) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/McControlArea value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgMcControlArea=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McControlArea in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=4;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McControlArea.
 /// @details Exact identity UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9";
 /// @brief Original ROS type name for aimdk_msgs/msg/McControlArea.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/McControlArea";
 /// @brief Selected original native identity for aimdk_msgs/msg/McControlArea.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/McControlArea.NONE: original int32 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub const field_NONE: i32=0;
 /// @brief aimdk_msgs/msg/McControlArea.LEFT_HAND: original int32 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub const field_LEFT_HAND: i32=1;
 /// @brief aimdk_msgs/msg/McControlArea.RIGHT_HAND: original int32 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub const field_RIGHT_HAND: i32=2;
 /// @brief aimdk_msgs/msg/McControlArea.HEAD: original int32 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub const field_HEAD: i32=4;
 /// @brief aimdk_msgs/msg/McControlArea.WAIST: original int32 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub const field_WAIST: i32=8;
 /// @brief aimdk_msgs/msg/McControlArea.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 field_value: i32=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/McControlArea.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McControlArea.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_value=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McControlArea value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/McControlArea value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcControlArea; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>4) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/McInputAction value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgMcInputAction=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McInputAction in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=4;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McInputAction.
 /// @details Exact identity UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9";
 /// @brief Original ROS type name for aimdk_msgs/msg/McInputAction.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/McInputAction";
 /// @brief Selected original native identity for aimdk_msgs/msg/McInputAction.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_ADD: original int32 constant.
 /// @details Exact admitted value 1001. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INPUTACTION_ADD: i32=1001;
 /// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_MODIFY: original int32 constant.
 /// @details Exact admitted value 1002. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INPUTACTION_MODIFY: i32=1002;
 /// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_DELETE: original int32 constant.
 /// @details Exact admitted value 1003. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INPUTACTION_DELETE: i32=1003;
 /// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_ENABLE: original int32 constant.
 /// @details Exact admitted value 2001. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INPUTACTION_ENABLE: i32=2001;
 /// @brief aimdk_msgs/msg/McInputAction.INPUTACTION_DISABLE: original int32 constant.
 /// @details Exact admitted value 2002. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INPUTACTION_DISABLE: i32=2002;
 /// @brief aimdk_msgs/msg/McInputAction.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 field_value: i32=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/McInputAction.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McInputAction.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_value=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McInputAction value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/McInputAction value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputAction; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>4) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/McInputSource value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 12..140 bytes
/// and is identified by UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgMcInputSource=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McInputSource in bytes.
 /// @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=140;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McInputSource.
 /// @details Exact identity UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd";
 /// @brief Original ROS type name for aimdk_msgs/msg/McInputSource.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/McInputSource";
 /// @brief Selected original native identity for aimdk_msgs/msg/McInputSource.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/McInputSource.name: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/zig/API-CONTRACT.md
 field_name: []const u8=&.{},
 /// @brief aimdk_msgs/msg/McInputSource.priority: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/zig/API-CONTRACT.md
 field_priority: i32=0,
 /// @brief aimdk_msgs/msg/McInputSource.timeout: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/zig/API-CONTRACT.md
 field_timeout: i32=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/McInputSource.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_name,128,false);
  try w.integer(self.field_priority);
  try w.integer(self.field_timeout);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McInputSource.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_name=try r.string(128,false);
  value.field_priority=try r.integer(i32);
  value.field_timeout=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McInputSource value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/McInputSource value.
 /// @details Require the complete 12..140-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcInputSource; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>140) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/McLocomotionVelocity value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 52..308 bytes
/// and is identified by UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgMcLocomotionVelocity=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McLocomotionVelocity in bytes.
 /// @details The inclusive bound is 308 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=308;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McLocomotionVelocity.
 /// @details Exact identity UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00";
 /// @brief Original ROS type name for aimdk_msgs/msg/McLocomotionVelocity.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/McLocomotionVelocity";
 /// @brief Selected original native identity for aimdk_msgs/msg/McLocomotionVelocity.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/McLocomotionVelocity.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader=.{},
 /// @brief aimdk_msgs/msg/McLocomotionVelocity.source: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 field_source: []const u8=&.{},
 /// @brief aimdk_msgs/msg/McLocomotionVelocity.forward_velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 field_forward_velocity: f64=0,
 /// @brief aimdk_msgs/msg/McLocomotionVelocity.lateral_velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 field_lateral_velocity: f64=0,
 /// @brief aimdk_msgs/msg/McLocomotionVelocity.angular_velocity: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 field_angular_velocity: f64=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/McLocomotionVelocity.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try w.string(self.field_source,128,false);
  try w.float64(self.field_forward_velocity);
  try w.float64(self.field_lateral_velocity);
  try w.float64(self.field_angular_velocity);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McLocomotionVelocity.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgMessageHeader.readFields(r,allocator);
  value.field_source=try r.string(128,false);
  value.field_forward_velocity=try r.float64();
  value.field_lateral_velocity=try r.float64();
  value.field_angular_velocity=try r.float64();
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McLocomotionVelocity value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/McLocomotionVelocity value.
 /// @details Require the complete 52..308-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcLocomotionVelocity; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<52 or bytes.len>308) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/McPresetMotion value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 4..4 bytes
/// and is identified by UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgMcPresetMotion=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/McPresetMotion in bytes.
 /// @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=4;
 /// @brief Canonical codec identity of aimdk_msgs/msg/McPresetMotion.
 /// @details Exact identity UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153";
 /// @brief Original ROS type name for aimdk_msgs/msg/McPresetMotion.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/McPresetMotion";
 /// @brief Selected original native identity for aimdk_msgs/msg/McPresetMotion.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/McPresetMotion.RAISE_HAND: original int32 constant.
 /// @details Exact admitted value 1001. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_RAISE_HAND: i32=1001;
 /// @brief aimdk_msgs/msg/McPresetMotion.WAVE_HAND: original int32 constant.
 /// @details Exact admitted value 1002. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_WAVE_HAND: i32=1002;
 /// @brief aimdk_msgs/msg/McPresetMotion.SHAKE_HAND: original int32 constant.
 /// @details Exact admitted value 1003. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_SHAKE_HAND: i32=1003;
 /// @brief aimdk_msgs/msg/McPresetMotion.FLYING_KISS_HAND: original int32 constant.
 /// @details Exact admitted value 1004. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_FLYING_KISS_HAND: i32=1004;
 /// @brief aimdk_msgs/msg/McPresetMotion.CLAP_HAND: original int32 constant.
 /// @details Exact admitted value 1008. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_CLAP_HAND: i32=1008;
 /// @brief aimdk_msgs/msg/McPresetMotion.TURN_WAVE_HAND: original int32 constant.
 /// @details Exact admitted value 2001. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_TURN_WAVE_HAND: i32=2001;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_BOW: original int32 constant.
 /// @details Exact admitted value 3001. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_BOW: i32=3001;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_LIKE: original int32 constant.
 /// @details Exact admitted value 3002. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_LIKE: i32=3002;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_YE: original int32 constant.
 /// @details Exact admitted value 3003. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_YE: i32=3003;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_SWEATHEART: original int32 constant.
 /// @details Exact admitted value 3004. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_SWEATHEART: i32=3004;
 /// @brief aimdk_msgs/msg/McPresetMotion.SALUTE: original int32 constant.
 /// @details Exact admitted value 1013. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_SALUTE: i32=1013;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_SAD: original int32 constant.
 /// @details Exact admitted value 3006. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_SAD: i32=3006;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_LIGHTWAVE: original int32 constant.
 /// @details Exact admitted value 3007. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_LIGHTWAVE: i32=3007;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_HUG: original int32 constant.
 /// @details Exact admitted value 3008. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_HUG: i32=3008;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_HANDX: original int32 constant.
 /// @details Exact admitted value 3009. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_HANDX: i32=3009;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_CHESTWAVE: original int32 constant.
 /// @details Exact admitted value 3010. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_CHESTWAVE: i32=3010;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_CHEER: original int32 constant.
 /// @details Exact admitted value 3011. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_CHEER: i32=3011;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_BLOWKISS: original int32 constant.
 /// @details Exact admitted value 3012. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_BLOWKISS: i32=3012;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_BASSDANCE1: original int32 constant.
 /// @details Exact admitted value 3013. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_BASSDANCE1: i32=3013;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_BASSDANCE2: original int32 constant.
 /// @details Exact admitted value 3014. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_BASSDANCE2: i32=3014;
 /// @brief aimdk_msgs/msg/McPresetMotion.HITCLAP: original int32 constant.
 /// @details Exact admitted value 3015. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_HITCLAP: i32=3015;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_SPEAK: original int32 constant.
 /// @details Exact admitted value 3016. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_SPEAK: i32=3016;
 /// @brief aimdk_msgs/msg/McPresetMotion.CLIPFIST: original int32 constant.
 /// @details Exact admitted value 1009. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_CLIPFIST: i32=1009;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_PHOTOPOSTURE: original int32 constant.
 /// @details Exact admitted value 3018. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_PHOTOPOSTURE: i32=3018;
 /// @brief aimdk_msgs/msg/McPresetMotion.INTERACTION_PHOTOTRIPPLEPOSTURE: original int32 constant.
 /// @details Exact admitted value 3019. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_PHOTOTRIPPLEPOSTURE: i32=3019;
 /// @brief aimdk_msgs/msg/McPresetMotion.POINT_HEAD: original int32 constant.
 /// @details Exact admitted value 4001. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_POINT_HEAD: i32=4001;
 /// @brief aimdk_msgs/msg/McPresetMotion.SHAKE_HEAD: original int32 constant.
 /// @details Exact admitted value 4002. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub const field_SHAKE_HEAD: i32=4002;
 /// @brief aimdk_msgs/msg/McPresetMotion.value: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 field_value: i32=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/McPresetMotion.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/McPresetMotion.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_value=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/McPresetMotion value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/McPresetMotion value.
 /// @details Require the complete 4..4-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgMcPresetMotion; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<4 or bytes.len>4) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/TtsPriorityLevel value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 1..1 bytes
/// and is identified by UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgTtsPriorityLevel=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/TtsPriorityLevel in bytes.
 /// @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1;
 /// @brief Canonical codec identity of aimdk_msgs/msg/TtsPriorityLevel.
 /// @details Exact identity UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a";
 /// @brief Original ROS type name for aimdk_msgs/msg/TtsPriorityLevel.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/TtsPriorityLevel";
 /// @brief Selected original native identity for aimdk_msgs/msg/TtsPriorityLevel.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.UNKNOWN: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub const field_UNKNOWN: u8=0;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.BACKGROUND_L1: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub const field_BACKGROUND_L1: u8=1;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.SERVICE_L2: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub const field_SERVICE_L2: u8=2;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.MISSION_L4: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub const field_MISSION_L4: u8=4;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.INTERACTION_L6: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub const field_INTERACTION_L6: u8=6;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.WARNING_L8: original uint8 constant.
 /// @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub const field_WARNING_L8: u8=8;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.SAFETY_L10: original uint8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub const field_SAFETY_L10: u8=10;
 /// @brief aimdk_msgs/msg/TtsPriorityLevel.value: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 field_value: u8=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/TtsPriorityLevel.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.integer(self.field_value);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/TtsPriorityLevel.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_value=try r.integer(u8);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/TtsPriorityLevel value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/TtsPriorityLevel value.
 /// @details Require the complete 1..1-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTtsPriorityLevel; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<1 or bytes.len>1) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/PlayMediaFileRequest value.
/// @details All 7 declared fields are retained in source order. The canonical representation occupies 22..406 bytes
/// and is identified by UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgPlayMediaFileRequest=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/PlayMediaFileRequest in bytes.
 /// @details The inclusive bound is 406 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=406;
 /// @brief Canonical codec identity of aimdk_msgs/msg/PlayMediaFileRequest.
 /// @details Exact identity UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254";
 /// @brief Original ROS type name for aimdk_msgs/msg/PlayMediaFileRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/PlayMediaFileRequest";
 /// @brief Selected original native identity for aimdk_msgs/msg/PlayMediaFileRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.file_name: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 field_file_name: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.sample_rate: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 field_sample_rate: u32=0,
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.priority_level: aimdk_msgs/msg/TtsPriorityLevel.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 field_priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel=.{},
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.priority_weight: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 field_priority_weight: u32=0,
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.domain: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 field_domain: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.trace_id: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 field_trace_id: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PlayMediaFileRequest.is_interrupted: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 field_is_interrupted: bool=false,
 /// @brief Append every canonical field of aimdk_msgs/msg/PlayMediaFileRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_file_name,128,false);
  try w.integer(self.field_sample_rate);
  try self.field_priority_level.writeFields(w);
  try w.integer(self.field_priority_weight);
  try w.string(self.field_domain,128,false);
  try w.string(self.field_trace_id,128,false);
  try w.boolean(self.field_is_interrupted);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/PlayMediaFileRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_file_name=try r.string(128,false);
  value.field_sample_rate=try r.integer(u32);
  value.field_priority_level=try Ros2Aimdk_msgsMsgTtsPriorityLevel.readFields(r,allocator);
  value.field_priority_weight=try r.integer(u32);
  value.field_domain=try r.string(128,false);
  value.field_trace_id=try r.string(128,false);
  value.field_is_interrupted=try r.boolean();
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/PlayMediaFileRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/PlayMediaFileRequest value.
 /// @details Require the complete 22..406-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayMediaFileRequest; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<22 or bytes.len>406) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/PlayTtsRequest value.
/// @details All 6 declared fields are retained in source order. The canonical representation occupies 18..402 bytes
/// and is identified by UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgPlayTtsRequest=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/PlayTtsRequest in bytes.
 /// @details The inclusive bound is 402 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=402;
 /// @brief Canonical codec identity of aimdk_msgs/msg/PlayTtsRequest.
 /// @details Exact identity UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd";
 /// @brief Original ROS type name for aimdk_msgs/msg/PlayTtsRequest.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/PlayTtsRequest";
 /// @brief Selected original native identity for aimdk_msgs/msg/PlayTtsRequest.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/PlayTtsRequest.text: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 field_text: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PlayTtsRequest.priority_level: aimdk_msgs/msg/TtsPriorityLevel.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 field_priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel=.{},
 /// @brief aimdk_msgs/msg/PlayTtsRequest.priority_weight: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 field_priority_weight: u32=0,
 /// @brief aimdk_msgs/msg/PlayTtsRequest.domain: string; each string is 0..128 bytes; strict UTF-8 with no embedded
 /// NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 field_domain: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PlayTtsRequest.trace_id: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 field_trace_id: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PlayTtsRequest.is_interrupted: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 field_is_interrupted: bool=false,
 /// @brief Append every canonical field of aimdk_msgs/msg/PlayTtsRequest.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_text,128,false);
  try self.field_priority_level.writeFields(w);
  try w.integer(self.field_priority_weight);
  try w.string(self.field_domain,128,false);
  try w.string(self.field_trace_id,128,false);
  try w.boolean(self.field_is_interrupted);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/PlayTtsRequest.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_text=try r.string(128,false);
  value.field_priority_level=try Ros2Aimdk_msgsMsgTtsPriorityLevel.readFields(r,allocator);
  value.field_priority_weight=try r.integer(u32);
  value.field_domain=try r.string(128,false);
  value.field_trace_id=try r.string(128,false);
  value.field_is_interrupted=try r.boolean();
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/PlayTtsRequest value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/PlayTtsRequest value.
 /// @details Require the complete 18..402-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsRequest; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<18 or bytes.len>402) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/PlayTtsResponse value.
/// @details All 8 declared fields are retained in source order. The canonical representation occupies 26..538 bytes
/// and is identified by UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgPlayTtsResponse=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/PlayTtsResponse in bytes.
 /// @details The inclusive bound is 538 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=538;
 /// @brief Canonical codec identity of aimdk_msgs/msg/PlayTtsResponse.
 /// @details Exact identity UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3";
 /// @brief Original ROS type name for aimdk_msgs/msg/PlayTtsResponse.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/PlayTtsResponse";
 /// @brief Selected original native identity for aimdk_msgs/msg/PlayTtsResponse.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/PlayTtsResponse.text: string; each string is 0..128 bytes; strict UTF-8 with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 field_text: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PlayTtsResponse.priority_level: aimdk_msgs/msg/TtsPriorityLevel.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 field_priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel=.{},
 /// @brief aimdk_msgs/msg/PlayTtsResponse.priority_weight: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 field_priority_weight: u32=0,
 /// @brief aimdk_msgs/msg/PlayTtsResponse.domain: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 field_domain: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PlayTtsResponse.trace_id: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 field_trace_id: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PlayTtsResponse.is_success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 field_is_success: bool=false,
 /// @brief aimdk_msgs/msg/PlayTtsResponse.error_message: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 field_error_message: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PlayTtsResponse.estimated_duration: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 field_estimated_duration: u32=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/PlayTtsResponse.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_text,128,false);
  try self.field_priority_level.writeFields(w);
  try w.integer(self.field_priority_weight);
  try w.string(self.field_domain,128,false);
  try w.string(self.field_trace_id,128,false);
  try w.boolean(self.field_is_success);
  try w.string(self.field_error_message,128,false);
  try w.integer(self.field_estimated_duration);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/PlayTtsResponse.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_text=try r.string(128,false);
  value.field_priority_level=try Ros2Aimdk_msgsMsgTtsPriorityLevel.readFields(r,allocator);
  value.field_priority_weight=try r.integer(u32);
  value.field_domain=try r.string(128,false);
  value.field_trace_id=try r.string(128,false);
  value.field_is_success=try r.boolean();
  value.field_error_message=try r.string(128,false);
  value.field_estimated_duration=try r.integer(u32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/PlayTtsResponse value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/PlayTtsResponse value.
 /// @details Require the complete 26..538-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPlayTtsResponse; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<26 or bytes.len>538) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/PmuState value.
/// @details All 33 declared fields are retained in source order. The canonical representation occupies 201..1097
/// bytes and is identified by UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgPmuState=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/PmuState in bytes.
 /// @details The inclusive bound is 1097 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=1097;
 /// @brief Canonical codec identity of aimdk_msgs/msg/PmuState.
 /// @details Exact identity UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c";
 /// @brief Original ROS type name for aimdk_msgs/msg/PmuState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/PmuState";
 /// @brief Selected original native identity for aimdk_msgs/msg/PmuState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/PmuState.pmu_software_version: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_pmu_software_version: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PmuState.pmu_hardware_version: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_pmu_hardware_version: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PmuState.pmu_protocol_version: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_pmu_protocol_version: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PmuState.pmu_bool_status: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_pmu_bool_status: u32=0,
 /// @brief aimdk_msgs/msg/PmuState.head_power_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_head_power_current: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.output_48v_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_output_48v_current: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.rk3588_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_rk3588_current: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.output_12v_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_output_12v_current: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.bus_48v_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_bus_48v_current: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.orin_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_orin_current: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.bus_48v_pmos_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_bus_48v_pmos_voltage: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.battery_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_battery_voltage: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.fan_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_fan_voltage: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.output_12v_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_output_12v_voltage: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.output_48v_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_output_48v_voltage: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.bus_48v_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_bus_48v_voltage: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.head_power_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_head_power_voltage: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.orin_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_orin_voltage: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.rk3588_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_rk3588_voltage: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.bms_manufacturer: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_bms_manufacturer: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PmuState.bms_serial_number: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_bms_serial_number: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PmuState.bms_hardware_version: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_bms_hardware_version: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PmuState.bms_software_version: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_bms_software_version: []const u8=&.{},
 /// @brief aimdk_msgs/msg/PmuState.bms_status_bits: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_bms_status_bits: u32=0,
 /// @brief aimdk_msgs/msg/PmuState.battery_balance_line_resistance: uint16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_battery_balance_line_resistance: u16=0,
 /// @brief aimdk_msgs/msg/PmuState.battery_pack_voltage: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_battery_pack_voltage: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.battery_current: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_battery_current: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.battery_output_power: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_battery_output_power: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.battery_temperature: float64.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_battery_temperature: f64=0,
 /// @brief aimdk_msgs/msg/PmuState.battery_remaining_capacity: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_battery_remaining_capacity: u32=0,
 /// @brief aimdk_msgs/msg/PmuState.battery_remaining_capacity_percentage: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_battery_remaining_capacity_percentage: u8=0,
 /// @brief aimdk_msgs/msg/PmuState.battery_cycle_count: uint16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_battery_cycle_count: u16=0,
 /// @brief aimdk_msgs/msg/PmuState.battery_cycle_total_capacity: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 field_battery_cycle_total_capacity: u32=0,
 /// @brief Append every canonical field of aimdk_msgs/msg/PmuState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try w.string(self.field_pmu_software_version,128,false);
  try w.string(self.field_pmu_hardware_version,128,false);
  try w.string(self.field_pmu_protocol_version,128,false);
  try w.integer(self.field_pmu_bool_status);
  try w.float64(self.field_head_power_current);
  try w.float64(self.field_output_48v_current);
  try w.float64(self.field_rk3588_current);
  try w.float64(self.field_output_12v_current);
  try w.float64(self.field_bus_48v_current);
  try w.float64(self.field_orin_current);
  try w.float64(self.field_bus_48v_pmos_voltage);
  try w.float64(self.field_battery_voltage);
  try w.float64(self.field_fan_voltage);
  try w.float64(self.field_output_12v_voltage);
  try w.float64(self.field_output_48v_voltage);
  try w.float64(self.field_bus_48v_voltage);
  try w.float64(self.field_head_power_voltage);
  try w.float64(self.field_orin_voltage);
  try w.float64(self.field_rk3588_voltage);
  try w.string(self.field_bms_manufacturer,128,false);
  try w.string(self.field_bms_serial_number,128,false);
  try w.string(self.field_bms_hardware_version,128,false);
  try w.string(self.field_bms_software_version,128,false);
  try w.integer(self.field_bms_status_bits);
  try w.integer(self.field_battery_balance_line_resistance);
  try w.float64(self.field_battery_pack_voltage);
  try w.float64(self.field_battery_current);
  try w.float64(self.field_battery_output_power);
  try w.float64(self.field_battery_temperature);
  try w.integer(self.field_battery_remaining_capacity);
  try w.integer(self.field_battery_remaining_capacity_percentage);
  try w.integer(self.field_battery_cycle_count);
  try w.integer(self.field_battery_cycle_total_capacity);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/PmuState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  _=allocator;
  value.field_pmu_software_version=try r.string(128,false);
  value.field_pmu_hardware_version=try r.string(128,false);
  value.field_pmu_protocol_version=try r.string(128,false);
  value.field_pmu_bool_status=try r.integer(u32);
  value.field_head_power_current=try r.float64();
  value.field_output_48v_current=try r.float64();
  value.field_rk3588_current=try r.float64();
  value.field_output_12v_current=try r.float64();
  value.field_bus_48v_current=try r.float64();
  value.field_orin_current=try r.float64();
  value.field_bus_48v_pmos_voltage=try r.float64();
  value.field_battery_voltage=try r.float64();
  value.field_fan_voltage=try r.float64();
  value.field_output_12v_voltage=try r.float64();
  value.field_output_48v_voltage=try r.float64();
  value.field_bus_48v_voltage=try r.float64();
  value.field_head_power_voltage=try r.float64();
  value.field_orin_voltage=try r.float64();
  value.field_rk3588_voltage=try r.float64();
  value.field_bms_manufacturer=try r.string(128,false);
  value.field_bms_serial_number=try r.string(128,false);
  value.field_bms_hardware_version=try r.string(128,false);
  value.field_bms_software_version=try r.string(128,false);
  value.field_bms_status_bits=try r.integer(u32);
  value.field_battery_balance_line_resistance=try r.integer(u16);
  value.field_battery_pack_voltage=try r.float64();
  value.field_battery_current=try r.float64();
  value.field_battery_output_power=try r.float64();
  value.field_battery_temperature=try r.float64();
  value.field_battery_remaining_capacity=try r.integer(u32);
  value.field_battery_remaining_capacity_percentage=try r.integer(u8);
  value.field_battery_cycle_count=try r.integer(u16);
  value.field_battery_cycle_total_capacity=try r.integer(u32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/PmuState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/PmuState value.
 /// @details Require the complete 201..1097-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgPmuState; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<201 or bytes.len>1097) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/ProcessedAudioOutput value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 33..417 bytes
/// and is identified by UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgProcessedAudioOutput=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/ProcessedAudioOutput in bytes.
 /// @details The inclusive bound is 417 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=417;
 /// @brief Canonical codec identity of aimdk_msgs/msg/ProcessedAudioOutput.
 /// @details Exact identity UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30";
 /// @brief Original ROS type name for aimdk_msgs/msg/ProcessedAudioOutput.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/ProcessedAudioOutput";
 /// @brief Selected original native identity for aimdk_msgs/msg/ProcessedAudioOutput.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/ProcessedAudioOutput.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader=.{},
 /// @brief aimdk_msgs/msg/ProcessedAudioOutput.stream_id: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/zig/API-CONTRACT.md
 field_stream_id: u32=0,
 /// @brief aimdk_msgs/msg/ProcessedAudioOutput.audio_vad_state: aimdk_msgs/msg/AudioVadStateType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/zig/API-CONTRACT.md
 field_audio_vad_state: Ros2Aimdk_msgsMsgAudioVadStateType=.{},
 /// @brief aimdk_msgs/msg/ProcessedAudioOutput.audio_data: uint8; 0..256 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/zig/API-CONTRACT.md
 field_audio_data: []u8=&.{},
 /// @brief Append every canonical field of aimdk_msgs/msg/ProcessedAudioOutput.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try w.integer(self.field_stream_id);
  try self.field_audio_vad_state.writeFields(w);
  if(self.field_audio_data.len>256) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_audio_data.len)));
  for(self.field_audio_data) |e| {
  try w.integer(e);
  }
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/ProcessedAudioOutput.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgMessageHeader.readFields(r,allocator);
  value.field_stream_id=try r.integer(u32);
  value.field_audio_vad_state=try Ros2Aimdk_msgsMsgAudioVadStateType.readFields(r,allocator);
  const count3=try r.integer(u32); if(count3>256) return error.Invalid;
  value.field_audio_data=try allocator.alloc(u8,count3);
  for(value.field_audio_data) |*e| {
  e.*=try r.integer(u8);
  }
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/ProcessedAudioOutput value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/ProcessedAudioOutput value.
 /// @details Require the complete 33..417-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgProcessedAudioOutput; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<33 or bytes.len>417) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/msg/TouchState value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 97..225 bytes
/// and is identified by UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsMsgTouchState=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/msg/TouchState in bytes.
 /// @details The inclusive bound is 225 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=225;
 /// @brief Canonical codec identity of aimdk_msgs/msg/TouchState.
 /// @details Exact identity UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564";
 /// @brief Original ROS type name for aimdk_msgs/msg/TouchState.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/msg/TouchState";
 /// @brief Selected original native identity for aimdk_msgs/msg/TouchState.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/msg/TouchState.UNKNOWN: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_UNKNOWN: u8=0;
 /// @brief aimdk_msgs/msg/TouchState.IDLE: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_IDLE: u8=1;
 /// @brief aimdk_msgs/msg/TouchState.TOUCH: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_TOUCH: u8=2;
 /// @brief aimdk_msgs/msg/TouchState.SLIDE: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_SLIDE: u8=3;
 /// @brief aimdk_msgs/msg/TouchState.PAT_ONCE: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_PAT_ONCE: u8=4;
 /// @brief aimdk_msgs/msg/TouchState.PAT_TWICE: original uint8 constant.
 /// @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_PAT_TWICE: u8=5;
 /// @brief aimdk_msgs/msg/TouchState.PAT_TRIPLE: original uint8 constant.
 /// @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub const field_PAT_TRIPLE: u8=6;
 /// @brief aimdk_msgs/msg/TouchState.header: aimdk_msgs/msg/MessageHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgMessageHeader=.{},
 /// @brief aimdk_msgs/msg/TouchState.event_type: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 field_event_type: u8=0,
 /// @brief aimdk_msgs/msg/TouchState.data: uint32; exactly 8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 field_data: [8]u32=[_]u32{0} ** 8,
 /// @brief aimdk_msgs/msg/TouchState.threshold: uint32; exactly 8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 field_threshold: [8]u32=[_]u32{0} ** 8,
 /// @brief aimdk_msgs/msg/TouchState.is_touched: bool; exactly 8 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 field_is_touched: [8]bool=[_]bool{false} ** 8,
 /// @brief Append every canonical field of aimdk_msgs/msg/TouchState.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try w.integer(self.field_event_type);
  for(self.field_data) |e| {
  try w.integer(e);
  }
  for(self.field_threshold) |e| {
  try w.integer(e);
  }
  for(self.field_is_touched) |e| {
  try w.boolean(e);
  }
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/msg/TouchState.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgMessageHeader.readFields(r,allocator);
  value.field_event_type=try r.integer(u8);
  for(&value.field_data) |*e| {
  e.*=try r.integer(u32);
  }
  for(&value.field_threshold) |*e| {
  e.*=try r.integer(u32);
  }
  for(&value.field_is_touched) |*e| {
  e.*=try r.boolean();
  }
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/msg/TouchState value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/msg/TouchState value.
 /// @details Require the complete 97..225-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsMsgTouchState; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<97 or bytes.len>225) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/GetAllJointState_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvGetAllJointState_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetAllJointState_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetAllJointState_Request.
 /// @details Exact identity UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetAllJointState_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/GetAllJointState_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetAllJointState_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/GetAllJointState_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/zig/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/GetAllJointState_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_request.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetAllJointState_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_request=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetAllJointState_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetAllJointState_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/GetAllJointState_Response value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 40..2712
/// bytes and is identified by UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvGetAllJointState_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetAllJointState_Response in bytes.
 /// @details The inclusive bound is 2712 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=2712;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetAllJointState_Response.
 /// @details Exact identity UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetAllJointState_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/GetAllJointState_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetAllJointState_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/GetAllJointState_Response.reponse: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_reponse: Ros2Aimdk_msgsMsgCommonResponse=.{},
 /// @brief aimdk_msgs/srv/GetAllJointState_Response.head_joints: aimdk_msgs/msg/JointState; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_head_joints: []Ros2Aimdk_msgsMsgJointState=&.{},
 /// @brief aimdk_msgs/srv/GetAllJointState_Response.arm_joints: aimdk_msgs/msg/JointState; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_arm_joints: []Ros2Aimdk_msgsMsgJointState=&.{},
 /// @brief aimdk_msgs/srv/GetAllJointState_Response.waist_joints: aimdk_msgs/msg/JointState; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_waist_joints: []Ros2Aimdk_msgsMsgJointState=&.{},
 /// @brief aimdk_msgs/srv/GetAllJointState_Response.leg_joints: aimdk_msgs/msg/JointState; 0..4 elements.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 field_leg_joints: []Ros2Aimdk_msgsMsgJointState=&.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/GetAllJointState_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_reponse.writeFields(w);
  if(self.field_head_joints.len>4) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_head_joints.len)));
  for(self.field_head_joints) |e| {
  try e.writeFields(w);
  }
  if(self.field_arm_joints.len>4) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_arm_joints.len)));
  for(self.field_arm_joints) |e| {
  try e.writeFields(w);
  }
  if(self.field_waist_joints.len>4) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_waist_joints.len)));
  for(self.field_waist_joints) |e| {
  try e.writeFields(w);
  }
  if(self.field_leg_joints.len>4) return error.Invalid;
  try w.integer(@as(u32,@intCast(self.field_leg_joints.len)));
  for(self.field_leg_joints) |e| {
  try e.writeFields(w);
  }
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetAllJointState_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_reponse=try Ros2Aimdk_msgsMsgCommonResponse.readFields(r,allocator);
  const count1=try r.integer(u32); if(count1>4) return error.Invalid;
  value.field_head_joints=try allocator.alloc(Ros2Aimdk_msgsMsgJointState,count1);
  for(value.field_head_joints) |*e| {
  e.*=try Ros2Aimdk_msgsMsgJointState.readFields(r,allocator);
  }
  const count2=try r.integer(u32); if(count2>4) return error.Invalid;
  value.field_arm_joints=try allocator.alloc(Ros2Aimdk_msgsMsgJointState,count2);
  for(value.field_arm_joints) |*e| {
  e.*=try Ros2Aimdk_msgsMsgJointState.readFields(r,allocator);
  }
  const count3=try r.integer(u32); if(count3>4) return error.Invalid;
  value.field_waist_joints=try allocator.alloc(Ros2Aimdk_msgsMsgJointState,count3);
  for(value.field_waist_joints) |*e| {
  e.*=try Ros2Aimdk_msgsMsgJointState.readFields(r,allocator);
  }
  const count4=try r.integer(u32); if(count4>4) return error.Invalid;
  value.field_leg_joints=try allocator.alloc(Ros2Aimdk_msgsMsgJointState,count4);
  for(value.field_leg_joints) |*e| {
  e.*=try Ros2Aimdk_msgsMsgJointState.readFields(r,allocator);
  }
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetAllJointState_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetAllJointState_Response value.
 /// @details Require the complete 40..2712-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetAllJointState_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<40 or bytes.len>2712) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/GetCurrentInputSource_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvGetCurrentInputSource_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetCurrentInputSource_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetCurrentInputSource_Request.
 /// @details Exact identity UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetCurrentInputSource_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/GetCurrentInputSource_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetCurrentInputSource_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/GetCurrentInputSource_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/GetCurrentInputSource_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_request.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetCurrentInputSource_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_request=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetCurrentInputSource_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetCurrentInputSource_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/GetCurrentInputSource_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 40..168 bytes
/// and is identified by UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvGetCurrentInputSource_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetCurrentInputSource_Response in bytes.
 /// @details The inclusive bound is 168 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=168;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetCurrentInputSource_Response.
 /// @details Exact identity UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetCurrentInputSource_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/GetCurrentInputSource_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetCurrentInputSource_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/GetCurrentInputSource_Response.response: aimdk_msgs/msg/CommonTaskResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 field_response: Ros2Aimdk_msgsMsgCommonTaskResponse=.{},
 /// @brief aimdk_msgs/srv/GetCurrentInputSource_Response.input_source: aimdk_msgs/msg/McInputSource.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 field_input_source: Ros2Aimdk_msgsMsgMcInputSource=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/GetCurrentInputSource_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_response.writeFields(w);
  try self.field_input_source.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetCurrentInputSource_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_response=try Ros2Aimdk_msgsMsgCommonTaskResponse.readFields(r,allocator);
  value.field_input_source=try Ros2Aimdk_msgsMsgMcInputSource.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetCurrentInputSource_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetCurrentInputSource_Response value.
 /// @details Require the complete 40..168-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<40 or bytes.len>168) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/GetHandType_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvGetHandType_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetHandType_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetHandType_Request.
 /// @details Exact identity UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetHandType_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/GetHandType_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetHandType_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/GetHandType_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/zig/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/GetHandType_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_request.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetHandType_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_request=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetHandType_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetHandType_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/GetHandType_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 26..154 bytes
/// and is identified by UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvGetHandType_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetHandType_Response in bytes.
 /// @details The inclusive bound is 154 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=154;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetHandType_Response.
 /// @details Exact identity UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetHandType_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/GetHandType_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetHandType_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/GetHandType_Response.reponse: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/zig/API-CONTRACT.md
 field_reponse: Ros2Aimdk_msgsMsgCommonResponse=.{},
 /// @brief aimdk_msgs/srv/GetHandType_Response.left_hands_type: aimdk_msgs/msg/HandType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/zig/API-CONTRACT.md
 field_left_hands_type: Ros2Aimdk_msgsMsgHandType=.{},
 /// @brief aimdk_msgs/srv/GetHandType_Response.right_hands_type: aimdk_msgs/msg/HandType.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/zig/API-CONTRACT.md
 field_right_hands_type: Ros2Aimdk_msgsMsgHandType=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/GetHandType_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_reponse.writeFields(w);
  try self.field_left_hands_type.writeFields(w);
  try self.field_right_hands_type.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetHandType_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_reponse=try Ros2Aimdk_msgsMsgCommonResponse.readFields(r,allocator);
  value.field_left_hands_type=try Ros2Aimdk_msgsMsgHandType.readFields(r,allocator);
  value.field_right_hands_type=try Ros2Aimdk_msgsMsgHandType.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetHandType_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetHandType_Response value.
 /// @details Require the complete 26..154-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetHandType_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<26 or bytes.len>154) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/GetMcAction_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvGetMcAction_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetMcAction_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetMcAction_Request.
 /// @details Exact identity UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetMcAction_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/GetMcAction_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetMcAction_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/GetMcAction_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/GetMcAction_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_request.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetMcAction_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_request=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetMcAction_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetMcAction_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/GetMcAction_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..156 bytes
/// and is identified by UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvGetMcAction_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetMcAction_Response in bytes.
 /// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=156;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetMcAction_Response.
 /// @details Exact identity UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetMcAction_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/GetMcAction_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetMcAction_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/GetMcAction_Response.header: aimdk_msgs/msg/ResponseHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgResponseHeader=.{},
 /// @brief aimdk_msgs/srv/GetMcAction_Response.info: aimdk_msgs/msg/McActionInfo.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 field_info: Ros2Aimdk_msgsMsgMcActionInfo=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/GetMcAction_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try self.field_info.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetMcAction_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgResponseHeader.readFields(r,allocator);
  value.field_info=try Ros2Aimdk_msgsMsgMcActionInfo.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetMcAction_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetMcAction_Response value.
 /// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>156) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/GetMute_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvGetMute_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetMute_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetMute_Request.
 /// @details Exact identity UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetMute_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/GetMute_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetMute_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/GetMute_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/GetMute_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_request.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetMute_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_request=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetMute_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetMute_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/GetMute_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 25..153 bytes
/// and is identified by UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvGetMute_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetMute_Response in bytes.
 /// @details The inclusive bound is 153 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=153;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetMute_Response.
 /// @details Exact identity UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetMute_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/GetMute_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetMute_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/GetMute_Response.reponse: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 field_reponse: Ros2Aimdk_msgsMsgCommonResponse=.{},
 /// @brief aimdk_msgs/srv/GetMute_Response.is_mute: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 field_is_mute: bool=false,
 /// @brief Append every canonical field of aimdk_msgs/srv/GetMute_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_reponse.writeFields(w);
  try w.boolean(self.field_is_mute);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetMute_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_reponse=try Ros2Aimdk_msgsMsgCommonResponse.readFields(r,allocator);
  value.field_is_mute=try r.boolean();
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetMute_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetMute_Response value.
 /// @details Require the complete 25..153-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<25 or bytes.len>153) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/GetVolume_Request value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 8..8 bytes
/// and is identified by UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvGetVolume_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetVolume_Request in bytes.
 /// @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=8;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetVolume_Request.
 /// @details Exact identity UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetVolume_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/GetVolume_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetVolume_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/GetVolume_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/GetVolume_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_request.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetVolume_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_request=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetVolume_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetVolume_Request value.
 /// @details Require the complete 8..8-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<8 or bytes.len>8) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/GetVolume_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..156 bytes
/// and is identified by UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvGetVolume_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/GetVolume_Response in bytes.
 /// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=156;
 /// @brief Canonical codec identity of aimdk_msgs/srv/GetVolume_Response.
 /// @details Exact identity UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266";
 /// @brief Original ROS type name for aimdk_msgs/srv/GetVolume_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/GetVolume_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/GetVolume_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/GetVolume_Response.reponse: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 field_reponse: Ros2Aimdk_msgsMsgCommonResponse=.{},
 /// @brief aimdk_msgs/srv/GetVolume_Response.audio_volume: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 field_audio_volume: u32=0,
 /// @brief Append every canonical field of aimdk_msgs/srv/GetVolume_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_reponse.writeFields(w);
  try w.integer(self.field_audio_volume);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/GetVolume_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_reponse=try Ros2Aimdk_msgsMsgCommonResponse.readFields(r,allocator);
  value.field_audio_volume=try r.integer(u32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/GetVolume_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/GetVolume_Response value.
 /// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvGetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>156) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/LedStripCommand_Request value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
/// and is identified by UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvLedStripCommand_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/LedStripCommand_Request in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=12;
 /// @brief Canonical codec identity of aimdk_msgs/srv/LedStripCommand_Request.
 /// @details Exact identity UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6";
 /// @brief Original ROS type name for aimdk_msgs/srv/LedStripCommand_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/LedStripCommand_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/LedStripCommand_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_CONSTANT: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_LED_STRIP_MODE_CONSTANT: u8=0;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_BREATH: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_LED_STRIP_MODE_BREATH: u8=1;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_FLASH: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_LED_STRIP_MODE_FLASH: u8=2;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_FLOW: original uint8 constant.
 /// @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_LED_STRIP_MODE_FLOW: u8=3;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.LED_STRIP_MODE_MAX: original uint8 constant.
 /// @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_LED_STRIP_MODE_MAX: u8=4;
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.led_strip_mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 field_led_strip_mode: u8=0,
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.r: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 field_r: u8=0,
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.g: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 field_g: u8=0,
 /// @brief aimdk_msgs/srv/LedStripCommand_Request.b: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 field_b: u8=0,
 /// @brief Append every canonical field of aimdk_msgs/srv/LedStripCommand_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_request.writeFields(w);
  try w.integer(self.field_led_strip_mode);
  try w.integer(self.field_r);
  try w.integer(self.field_g);
  try w.integer(self.field_b);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/LedStripCommand_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_request=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  value.field_led_strip_mode=try r.integer(u8);
  value.field_r=try r.integer(u8);
  value.field_g=try r.integer(u8);
  value.field_b=try r.integer(u8);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/LedStripCommand_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/LedStripCommand_Request value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>12) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/LedStripCommand_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 18..18 bytes
/// and is identified by UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvLedStripCommand_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/LedStripCommand_Response in bytes.
 /// @details The inclusive bound is 18 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=18;
 /// @brief Canonical codec identity of aimdk_msgs/srv/LedStripCommand_Response.
 /// @details Exact identity UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9";
 /// @brief Original ROS type name for aimdk_msgs/srv/LedStripCommand_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/LedStripCommand_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/LedStripCommand_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/LedStripCommand_Response.header: aimdk_msgs/msg/ResponseHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgResponseHeader=.{},
 /// @brief aimdk_msgs/srv/LedStripCommand_Response.status_code: uint16.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 field_status_code: u16=0,
 /// @brief Append every canonical field of aimdk_msgs/srv/LedStripCommand_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try w.integer(self.field_status_code);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/LedStripCommand_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgResponseHeader.readFields(r,allocator);
  value.field_status_code=try r.integer(u16);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/LedStripCommand_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/LedStripCommand_Response value.
 /// @details Require the complete 18..18-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvLedStripCommand_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<18 or bytes.len>18) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayEmoji_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 14..14 bytes
/// and is identified by UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvPlayEmoji_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayEmoji_Request in bytes.
 /// @details The inclusive bound is 14 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=14;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayEmoji_Request.
 /// @details Exact identity UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayEmoji_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/PlayEmoji_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayEmoji_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_UNKNOWN: original uint8 constant.
 /// @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_UNKNOWN: u8=0;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_BLINK: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_IDLE_BLINK: u8=1;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CALM_1: original uint8 constant.
 /// @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_IDLE_CALM_1: u8=10;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CALM_2: original uint8 constant.
 /// @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_IDLE_CALM_2: u8=11;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_GAME: original uint8 constant.
 /// @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_IDLE_GAME: u8=20;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CUTE_1: original uint8 constant.
 /// @details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_IDLE_CUTE_1: u8=30;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CUTE_2: original uint8 constant.
 /// @details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_IDLE_CUTE_2: u8=31;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CUTE_3: original uint8 constant.
 /// @details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_IDLE_CUTE_3: u8=32;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_IDLE_CUTE_4: original uint8 constant.
 /// @details Exact admitted value 33. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_IDLE_CUTE_4: u8=33;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_CLOSE: original uint8 constant.
 /// @details Exact admitted value 40. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_CLOSE: u8=40;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_OPEN: original uint8 constant.
 /// @details Exact admitted value 50. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_OPEN: u8=50;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_BORING_1: original uint8 constant.
 /// @details Exact admitted value 60. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_BORING_1: u8=60;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_ABNORMAL: original uint8 constant.
 /// @details Exact admitted value 70. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_ABNORMAL: u8=70;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SLEEPY: original uint8 constant.
 /// @details Exact admitted value 80. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_SLEEPY: u8=80;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_HAPPY: original uint8 constant.
 /// @details Exact admitted value 90. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_HAPPY: u8=90;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_EXTREMEHAPPY_1: original uint8 constant.
 /// @details Exact admitted value 100. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_EXTREMEHAPPY_1: u8=100;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_EXTREMEHAPPY_2: original uint8 constant.
 /// @details Exact admitted value 101. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_EXTREMEHAPPY_2: u8=101;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SAD: original uint8 constant.
 /// @details Exact admitted value 110. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_SAD: u8=110;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SYMPATHY: original uint8 constant.
 /// @details Exact admitted value 120. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_SYMPATHY: u8=120;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_CONFUSE: original uint8 constant.
 /// @details Exact admitted value 130. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_CONFUSE: u8=130;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SHOCK: original uint8 constant.
 /// @details Exact admitted value 140. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_SHOCK: u8=140;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_ACTCUTE: original uint8 constant.
 /// @details Exact admitted value 150. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_ACTCUTE: u8=150;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_SERIOUS: original uint8 constant.
 /// @details Exact admitted value 160. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_SERIOUS: u8=160;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_THINKING: original uint8 constant.
 /// @details Exact admitted value 170. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_THINKING: u8=170;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_ANGRY: original uint8 constant.
 /// @details Exact admitted value 180. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_ANGRY: u8=180;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_EXTREMEANGRY: original uint8 constant.
 /// @details Exact admitted value 190. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_EXTREMEANGRY: u8=190;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_ADORE: original uint8 constant.
 /// @details Exact admitted value 200. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_ADORE: u8=200;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_EXTREMEADORE: original uint8 constant.
 /// @details Exact admitted value 210. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_EXTREMEADORE: u8=210;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_EYE_CHARGE: original uint8 constant.
 /// @details Exact admitted value 220. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_EYE_CHARGE: u8=220;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_MODE_ONCE: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_MODE_ONCE: u8=1;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.EMOTION_MODE_LOOP: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_MODE_LOOP: u8=2;
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.header: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.emotion_id: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 field_emotion_id: u8=0,
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 field_mode: u8=0,
 /// @brief aimdk_msgs/srv/PlayEmoji_Request.priority: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 field_priority: i32=0,
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayEmoji_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try w.integer(self.field_emotion_id);
  try w.integer(self.field_mode);
  try w.integer(self.field_priority);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayEmoji_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  value.field_emotion_id=try r.integer(u8);
  value.field_mode=try r.integer(u8);
  value.field_priority=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayEmoji_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayEmoji_Request value.
 /// @details Require the complete 14..14-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<14 or bytes.len>14) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayEmoji_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 29..285 bytes
/// and is identified by UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvPlayEmoji_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayEmoji_Response in bytes.
 /// @details The inclusive bound is 285 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=285;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayEmoji_Response.
 /// @details Exact identity UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayEmoji_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/PlayEmoji_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayEmoji_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/PlayEmoji_Response.header: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonResponse=.{},
 /// @brief aimdk_msgs/srv/PlayEmoji_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/zig/API-CONTRACT.md
 field_success: bool=false,
 /// @brief aimdk_msgs/srv/PlayEmoji_Response.message: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/zig/API-CONTRACT.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayEmoji_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try w.boolean(self.field_success);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayEmoji_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgCommonResponse.readFields(r,allocator);
  value.field_success=try r.boolean();
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayEmoji_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayEmoji_Response value.
 /// @details Require the complete 29..285-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayEmoji_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<29 or bytes.len>285) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayMediaFile_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 30..414 bytes
/// and is identified by UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvPlayMediaFile_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayMediaFile_Request in bytes.
 /// @details The inclusive bound is 414 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=414;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayMediaFile_Request.
 /// @details Exact identity UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayMediaFile_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/PlayMediaFile_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayMediaFile_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/PlayMediaFile_Request.header: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief aimdk_msgs/srv/PlayMediaFile_Request.media_file_req: aimdk_msgs/msg/PlayMediaFileRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/zig/API-CONTRACT.md
 field_media_file_req: Ros2Aimdk_msgsMsgPlayMediaFileRequest=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayMediaFile_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try self.field_media_file_req.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayMediaFile_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  value.field_media_file_req=try Ros2Aimdk_msgsMsgPlayMediaFileRequest.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayMediaFile_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayMediaFile_Request value.
 /// @details Require the complete 30..414-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<30 or bytes.len>414) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayMediaFile_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 50..690 bytes
/// and is identified by UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvPlayMediaFile_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayMediaFile_Response in bytes.
 /// @details The inclusive bound is 690 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=690;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayMediaFile_Response.
 /// @details Exact identity UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayMediaFile_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/PlayMediaFile_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayMediaFile_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/PlayMediaFile_Response.header: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonResponse=.{},
 /// @brief aimdk_msgs/srv/PlayMediaFile_Response.tts_resp: aimdk_msgs/msg/PlayTtsResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/zig/API-CONTRACT.md
 field_tts_resp: Ros2Aimdk_msgsMsgPlayTtsResponse=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayMediaFile_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try self.field_tts_resp.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayMediaFile_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgCommonResponse.readFields(r,allocator);
  value.field_tts_resp=try Ros2Aimdk_msgsMsgPlayTtsResponse.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayMediaFile_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayMediaFile_Response value.
 /// @details Require the complete 50..690-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayMediaFile_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<50 or bytes.len>690) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayTts_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 26..410 bytes
/// and is identified by UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvPlayTts_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayTts_Request in bytes.
 /// @details The inclusive bound is 410 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=410;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayTts_Request.
 /// @details Exact identity UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayTts_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/PlayTts_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayTts_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/PlayTts_Request.header: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief aimdk_msgs/srv/PlayTts_Request.tts_req: aimdk_msgs/msg/PlayTtsRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/zig/API-CONTRACT.md
 field_tts_req: Ros2Aimdk_msgsMsgPlayTtsRequest=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayTts_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try self.field_tts_req.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayTts_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  value.field_tts_req=try Ros2Aimdk_msgsMsgPlayTtsRequest.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayTts_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayTts_Request value.
 /// @details Require the complete 26..410-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<26 or bytes.len>410) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayTts_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 50..690 bytes
/// and is identified by UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvPlayTts_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayTts_Response in bytes.
 /// @details The inclusive bound is 690 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=690;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayTts_Response.
 /// @details Exact identity UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayTts_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/PlayTts_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayTts_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/PlayTts_Response.header: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonResponse=.{},
 /// @brief aimdk_msgs/srv/PlayTts_Response.tts_resp: aimdk_msgs/msg/PlayTtsResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/zig/API-CONTRACT.md
 field_tts_resp: Ros2Aimdk_msgsMsgPlayTtsResponse=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayTts_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try self.field_tts_resp.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayTts_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgCommonResponse.readFields(r,allocator);
  value.field_tts_resp=try Ros2Aimdk_msgsMsgPlayTtsResponse.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayTts_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayTts_Response value.
 /// @details Require the complete 50..690-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayTts_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<50 or bytes.len>690) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayVideo_Request value.
/// @details All 4 declared fields are retained in source order. The canonical representation occupies 17..145 bytes
/// and is identified by UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvPlayVideo_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayVideo_Request in bytes.
 /// @details The inclusive bound is 145 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=145;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayVideo_Request.
 /// @details Exact identity UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayVideo_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/PlayVideo_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayVideo_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/PlayVideo_Request.EMOTION_MODE_ONCE: original uint8 constant.
 /// @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_MODE_ONCE: u8=1;
 /// @brief aimdk_msgs/srv/PlayVideo_Request.EMOTION_MODE_LOOP: original uint8 constant.
 /// @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation
 /// selector.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const field_EMOTION_MODE_LOOP: u8=2;
 /// @brief aimdk_msgs/srv/PlayVideo_Request.header: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief aimdk_msgs/srv/PlayVideo_Request.video_path: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 field_video_path: []const u8=&.{},
 /// @brief aimdk_msgs/srv/PlayVideo_Request.mode: uint8.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 field_mode: u8=0,
 /// @brief aimdk_msgs/srv/PlayVideo_Request.priority: int32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 field_priority: i32=0,
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayVideo_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try w.string(self.field_video_path,128,false);
  try w.integer(self.field_mode);
  try w.integer(self.field_priority);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayVideo_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  value.field_video_path=try r.string(128,false);
  value.field_mode=try r.integer(u8);
  value.field_priority=try r.integer(i32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayVideo_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayVideo_Request value.
 /// @details Require the complete 17..145-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<17 or bytes.len>145) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/PlayVideo_Response value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 29..285 bytes
/// and is identified by UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvPlayVideo_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/PlayVideo_Response in bytes.
 /// @details The inclusive bound is 285 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=285;
 /// @brief Canonical codec identity of aimdk_msgs/srv/PlayVideo_Response.
 /// @details Exact identity UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627";
 /// @brief Original ROS type name for aimdk_msgs/srv/PlayVideo_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/PlayVideo_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/PlayVideo_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/PlayVideo_Response.header: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonResponse=.{},
 /// @brief aimdk_msgs/srv/PlayVideo_Response.success: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/zig/API-CONTRACT.md
 field_success: bool=false,
 /// @brief aimdk_msgs/srv/PlayVideo_Response.message: string; each string is 0..128 bytes; strict UTF-8 with no
 /// embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/zig/API-CONTRACT.md
 field_message: []const u8=&.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/PlayVideo_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try w.boolean(self.field_success);
  try w.string(self.field_message,128,false);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/PlayVideo_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgCommonResponse.readFields(r,allocator);
  value.field_success=try r.boolean();
  value.field_message=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/PlayVideo_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/PlayVideo_Response value.
 /// @details Require the complete 29..285-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvPlayVideo_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<29 or bytes.len>285) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/SetAgentPropertiesRequest_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..544 bytes
/// and is identified by UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetAgentPropertiesRequest_Request in bytes.
 /// @details The inclusive bound is 544 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=544;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
 /// @details Exact identity UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/SetAgentPropertiesRequest_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/SetAgentPropertiesRequest_Request.header: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief aimdk_msgs/srv/SetAgentPropertiesRequest_Request.contents: aimdk_msgs/msg/AgentProperties.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/zig/API-CONTRACT.md
 field_contents: Ros2Aimdk_msgsMsgAgentProperties=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try self.field_contents.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetAgentPropertiesRequest_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  value.field_contents=try Ros2Aimdk_msgsMsgAgentProperties.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetAgentPropertiesRequest_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetAgentPropertiesRequest_Request value.
 /// @details Require the complete 12..544-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>544) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/SetAgentPropertiesRequest_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
/// and is identified by UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetAgentPropertiesRequest_Response in bytes.
 /// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=152;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
 /// @details Exact identity UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/SetAgentPropertiesRequest_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/SetAgentPropertiesRequest_Response.header: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgCommonResponse=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetAgentPropertiesRequest_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgCommonResponse.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetAgentPropertiesRequest_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetAgentPropertiesRequest_Response value.
 /// @details Require the complete 24..152-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>152) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMcAction_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 16..144 bytes
/// and is identified by UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvSetMcAction_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcAction_Request in bytes.
 /// @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=144;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMcAction_Request.
 /// @details Exact identity UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMcAction_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/SetMcAction_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMcAction_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/SetMcAction_Request.header: aimdk_msgs/msg/RequestHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgRequestHeader=.{},
 /// @brief aimdk_msgs/srv/SetMcAction_Request.command: aimdk_msgs/msg/McActionCommand.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 field_command: Ros2Aimdk_msgsMsgMcActionCommand=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMcAction_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try self.field_command.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcAction_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgRequestHeader.readFields(r,allocator);
  value.field_command=try Ros2Aimdk_msgsMsgMcActionCommand.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMcAction_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMcAction_Request value.
 /// @details Require the complete 16..144-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<16 or bytes.len>144) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMcAction_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
/// and is identified by UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvSetMcAction_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcAction_Response in bytes.
 /// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=152;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMcAction_Response.
 /// @details Exact identity UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMcAction_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/SetMcAction_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMcAction_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/SetMcAction_Response.response: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 field_response: Ros2Aimdk_msgsMsgCommonResponse=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMcAction_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_response.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcAction_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_response=try Ros2Aimdk_msgsMsgCommonResponse.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMcAction_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMcAction_Response value.
 /// @details Require the complete 24..152-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcAction_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>152) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMcInputSource_Request value.
/// @details All 3 declared fields are retained in source order. The canonical representation occupies 24..152 bytes
/// and is identified by UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvSetMcInputSource_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcInputSource_Request in bytes.
 /// @details The inclusive bound is 152 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=152;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMcInputSource_Request.
 /// @details Exact identity UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMcInputSource_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/SetMcInputSource_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMcInputSource_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/SetMcInputSource_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief aimdk_msgs/srv/SetMcInputSource_Request.action: aimdk_msgs/msg/McInputAction.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 field_action: Ros2Aimdk_msgsMsgMcInputAction=.{},
 /// @brief aimdk_msgs/srv/SetMcInputSource_Request.input_source: aimdk_msgs/msg/McInputSource.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 field_input_source: Ros2Aimdk_msgsMsgMcInputSource=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMcInputSource_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_request.writeFields(w);
  try self.field_action.writeFields(w);
  try self.field_input_source.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcInputSource_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_request=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  value.field_action=try Ros2Aimdk_msgsMsgMcInputAction.readFields(r,allocator);
  value.field_input_source=try Ros2Aimdk_msgsMsgMcInputSource.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMcInputSource_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMcInputSource_Request value.
 /// @details Require the complete 24..152-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<24 or bytes.len>152) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMcInputSource_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 28..28 bytes
/// and is identified by UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvSetMcInputSource_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcInputSource_Response in bytes.
 /// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=28;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMcInputSource_Response.
 /// @details Exact identity UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMcInputSource_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/SetMcInputSource_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMcInputSource_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/SetMcInputSource_Response.response: aimdk_msgs/msg/CommonTaskResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 field_response: Ros2Aimdk_msgsMsgCommonTaskResponse=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMcInputSource_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_response.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcInputSource_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_response=try Ros2Aimdk_msgsMsgCommonTaskResponse.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMcInputSource_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMcInputSource_Response value.
 /// @details Require the complete 28..28-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcInputSource_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>28) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMcPresetMotion_Request value.
/// @details All 5 declared fields are retained in source order. The canonical representation occupies 21..149 bytes
/// and is identified by UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvSetMcPresetMotion_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcPresetMotion_Request in bytes.
 /// @details The inclusive bound is 149 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=149;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMcPresetMotion_Request.
 /// @details Exact identity UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMcPresetMotion_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/SetMcPresetMotion_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMcPresetMotion_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/SetMcPresetMotion_Request.header: aimdk_msgs/msg/RequestHeader.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 field_header: Ros2Aimdk_msgsMsgRequestHeader=.{},
 /// @brief aimdk_msgs/srv/SetMcPresetMotion_Request.area: aimdk_msgs/msg/McControlArea.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 field_area: Ros2Aimdk_msgsMsgMcControlArea=.{},
 /// @brief aimdk_msgs/srv/SetMcPresetMotion_Request.motion: aimdk_msgs/msg/McPresetMotion.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 field_motion: Ros2Aimdk_msgsMsgMcPresetMotion=.{},
 /// @brief aimdk_msgs/srv/SetMcPresetMotion_Request.interrupt: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 field_interrupt: bool=false,
 /// @brief aimdk_msgs/srv/SetMcPresetMotion_Request.ani_path: string; each string is 0..128 bytes; strict UTF-8
 /// with no embedded NUL.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 field_ani_path: []const u8=&.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMcPresetMotion_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_header.writeFields(w);
  try self.field_area.writeFields(w);
  try self.field_motion.writeFields(w);
  try w.boolean(self.field_interrupt);
  try w.string(self.field_ani_path,128,false);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcPresetMotion_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_header=try Ros2Aimdk_msgsMsgRequestHeader.readFields(r,allocator);
  value.field_area=try Ros2Aimdk_msgsMsgMcControlArea.readFields(r,allocator);
  value.field_motion=try Ros2Aimdk_msgsMsgMcPresetMotion.readFields(r,allocator);
  value.field_interrupt=try r.boolean();
  value.field_ani_path=try r.string(128,false);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMcPresetMotion_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMcPresetMotion_Request value.
 /// @details Require the complete 21..149-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<21 or bytes.len>149) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMcPresetMotion_Response value.
/// @details All 1 declared fields are retained in source order. The canonical representation occupies 28..28 bytes
/// and is identified by UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvSetMcPresetMotion_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMcPresetMotion_Response in bytes.
 /// @details The inclusive bound is 28 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=28;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMcPresetMotion_Response.
 /// @details Exact identity UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMcPresetMotion_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/SetMcPresetMotion_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMcPresetMotion_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/SetMcPresetMotion_Response.response: aimdk_msgs/msg/CommonTaskResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/zig/API-CONTRACT.md
 field_response: Ros2Aimdk_msgsMsgCommonTaskResponse=.{},
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMcPresetMotion_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_response.writeFields(w);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMcPresetMotion_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_response=try Ros2Aimdk_msgsMsgCommonTaskResponse.readFields(r,allocator);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMcPresetMotion_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMcPresetMotion_Response value.
 /// @details Require the complete 28..28-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>28) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMute_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 9..9 bytes
/// and is identified by UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvSetMute_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMute_Request in bytes.
 /// @details The inclusive bound is 9 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=9;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMute_Request.
 /// @details Exact identity UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMute_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/SetMute_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMute_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/SetMute_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief aimdk_msgs/srv/SetMute_Request.is_mute: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 field_is_mute: bool=false,
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMute_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_request.writeFields(w);
  try w.boolean(self.field_is_mute);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMute_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_request=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  value.field_is_mute=try r.boolean();
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMute_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMute_Request value.
 /// @details Require the complete 9..9-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<9 or bytes.len>9) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/SetMute_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 25..153 bytes
/// and is identified by UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvSetMute_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetMute_Response in bytes.
 /// @details The inclusive bound is 153 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=153;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetMute_Response.
 /// @details Exact identity UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50 binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetMute_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/SetMute_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetMute_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/SetMute_Response.reponse: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 field_reponse: Ros2Aimdk_msgsMsgCommonResponse=.{},
 /// @brief aimdk_msgs/srv/SetMute_Response.is_mute: bool.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 field_is_mute: bool=false,
 /// @brief Append every canonical field of aimdk_msgs/srv/SetMute_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_reponse.writeFields(w);
  try w.boolean(self.field_is_mute);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetMute_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_reponse=try Ros2Aimdk_msgsMsgCommonResponse.readFields(r,allocator);
  value.field_is_mute=try r.boolean();
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetMute_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetMute_Response value.
 /// @details Require the complete 25..153-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetMute_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<25 or bytes.len>153) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/SetVolume_Request value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 12..12 bytes
/// and is identified by UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvSetVolume_Request=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetVolume_Request in bytes.
 /// @details The inclusive bound is 12 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=12;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetVolume_Request.
 /// @details Exact identity UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetVolume_Request.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/SetVolume_Request";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetVolume_Request.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/SetVolume_Request.request: aimdk_msgs/msg/CommonRequest.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 field_request: Ros2Aimdk_msgsMsgCommonRequest=.{},
 /// @brief aimdk_msgs/srv/SetVolume_Request.audio_volume: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 field_audio_volume: u32=0,
 /// @brief Append every canonical field of aimdk_msgs/srv/SetVolume_Request.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_request.writeFields(w);
  try w.integer(self.field_audio_volume);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetVolume_Request.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_request=try Ros2Aimdk_msgsMsgCommonRequest.readFields(r,allocator);
  value.field_audio_volume=try r.integer(u32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetVolume_Request value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetVolume_Request value.
 /// @details Require the complete 12..12-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Request; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<12 or bytes.len>12) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
/// @brief Complete ROS 2 aimdk_msgs/srv/SetVolume_Response value.
/// @details All 2 declared fields are retained in source order. The canonical representation occupies 28..156 bytes
/// and is identified by UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e.
/// @native No native identity is established by this source record.
/// @ownership This is a Guest value, not a native ROS allocation or capability. Copying it creates no publisher,
/// subscriber, service or Action owner.
/// @thread Ordinary value access needs caller synchronization. The codec creates no task or callback; mutable
/// readers/writers must not be shared during a call.
/// @permissions None for construction or pure encoding; transport needs a separate exact grant.
/// @version The selected finite schema profile fixes field order, bounds and constants.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub const Ros2Aimdk_msgsSrvSetVolume_Response=struct {
 /// @brief Maximum canonical extent of aimdk_msgs/srv/SetVolume_Response in bytes.
 /// @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
 /// reservation.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const maximum_wire_bytes: usize=156;
 /// @brief Canonical codec identity of aimdk_msgs/srv/SetVolume_Response.
 /// @details Exact identity UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e binds field
 /// order, shape and bounds. It does not replace the native type identity.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const codec_identity="UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e";
 /// @brief Original ROS type name for aimdk_msgs/srv/SetVolume_Response.
 /// @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_type="aimdk_msgs/srv/SetVolume_Response";
 /// @brief Selected original native identity for aimdk_msgs/srv/SetVolume_Response.
 /// @details Absent: this source profile establishes no native identity.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub const native_identity: ?[]const u8=null;
 /// @brief aimdk_msgs/srv/SetVolume_Response.reponse: aimdk_msgs/msg/CommonResponse.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 field_reponse: Ros2Aimdk_msgsMsgCommonResponse=.{},
 /// @brief aimdk_msgs/srv/SetVolume_Response.audio_volume: uint32.
 /// @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the
 /// original field position and signedness; invalid bounds fail instead of truncating the value.
 /// @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling,
 /// frame conversion or normalization.
 /// @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and
 /// allocator ownership follow the enclosing decode function.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 field_audio_volume: u32=0,
 /// @brief Append every canonical field of aimdk_msgs/srv/SetVolume_Response.
 /// @details Validate profile invariants and finite element bounds while advancing the caller writer. This nested
 /// operation does not promise rollback of a partially advanced writer.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.
 /// @return No record value. Success appends all selected fields to the caller writer; the language exception/error
 /// contract reports refusal.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Managed decoded values retain/copy their required backing storage. Keep input values stable during
 /// synchronous encoding; do not share mutable cursors during a call.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {
  try self.field_reponse.writeFields(w);
  try w.integer(self.field_audio_volume);
 }
 /// @brief Read the ordered canonical fields of aimdk_msgs/srv/SetVolume_Response.
 /// @details Advance the caller reader and validate the resulting record. Nested decoding deliberately leaves
 /// subsequent enclosing fields unread; discard partial values on any failure.
 /// @param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this record prefix.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {
  var value: @This()=.{};
  value.field_reponse=try Ros2Aimdk_msgsMsgCommonResponse.readFields(r,allocator);
  value.field_audio_volume=try r.integer(u32);
  return value;
 }
 /// @brief Encode one complete aimdk_msgs/srv/SetVolume_Response value.
 /// @details Preserve every declared field, signed integer and floating-point bit pattern allowed by the profile.
 /// Validate all finite bounds; never silently truncate or issue a Host call.
 /// @param[in] self Complete selected record borrowed unchanged during the synchronous codec call.
 /// @param[out] output Caller-owned writable output bytes; keep alive and exclusive until return.
 /// @return Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime The initialized output prefix belongs to the caller output buffer; returned slices borrow that
 /// buffer. Retain it unchanged while using encoded bytes. Input value/backing storage remains stable until
 /// synchronous return; no ownership is transferred to Native.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {
  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};
  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;
  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};
  try self.writeFields(&writer); return output[0..writer.position];
 }
 /// Arena allocator owns every decoded sequence. Strings borrow bytes.
 /// On refusal discard the whole arena region, including partial nested values.
 /// @brief Decode exactly one complete aimdk_msgs/srv/SetVolume_Response value.
 /// @details Require the complete 28..156-byte canonical representation. Reject truncation, invalid fields and
 /// trailing bytes before publishing a successful value.
 /// @param[in] bytes Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.
 /// @param[in] allocator Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.
 /// @return A complete decoded record through the native language value/result/exception/error contract.
 /// @failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial cursors, buffers
 /// and out-values are unusable after refusal. Allocation traps and runtime exceptions follow the actual language
 /// runtime; not every failure is a recoverable codec status. No Host, network or asynchronous side effect is
 /// issued.
 /// @lifetime Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested allocations belong to
 /// the caller allocator/arena; keep both alive while using the value. Use an arena region and discard it after any
 /// failed decode, including partial allocations.
 /// @thread Synchronous caller-thread operation; independent values/cursors may be used independently.
 /// @see Ros2Aimdk_msgsSrvSetVolume_Response; share/platform/ros/zig/API-CONTRACT.md
 pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {
  if(bytes.len<28 or bytes.len>156) return error.Invalid;
  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);
  try reader.finish(); return value;
 }
};
