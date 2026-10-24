// @file records.odin
// @brief Complete owned original boston_dynamics ROS 2 records and codecs.
// @details No generated record owns a native ROS object or grants a capability.
package records
import wire "native:odin/wire"

/// @brief Complete original uwvm_spot_bridge/srv/State_Request value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 24..24 bytes.
Ros2Uwvm_spot_bridgeSrvState_Request :: struct {
    /// @brief Original uwvm_spot_bridge/srv/State_Request.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64,
    /// @brief Original uwvm_spot_bridge/srv/State_Request.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64,
    /// @brief Original uwvm_spot_bridge/srv/State_Request.budget_ns field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_budget_ns: u64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Uwvm_spot_bridgeSrvState_Request :: proc "contextless"() -> Ros2Uwvm_spot_bridgeSrvState_Request {
    result: Ros2Uwvm_spot_bridgeSrvState_Request
    return result
}
/// @brief Original complete uwvm_spot_bridge/srv/State_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvState_Request_Minimum_Wire_Bytes :: 24
/// @brief Original complete uwvm_spot_bridge/srv/State_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvState_Request_Maximum_Wire_Bytes :: 24
/// @brief Original complete uwvm_spot_bridge/srv/State_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvState_Request_Codec_Identity :: "UWVMROS1_9becf278bc168ed6d5b15fe7f1ec35b83e274de8a5173cb2335948306bc7a47e"
/// @brief Traverse every original field of complete uwvm_spot_bridge/srv/State_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Uwvm_spot_bridgeSrvState_Request :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvState_Request, cursor: ^wire.Cursor)
{
    value.field_token = u64(wire.number(cursor, u64(value.field_token), 8))
    value.field_nonce = u64(wire.number(cursor, u64(value.field_nonce), 8))
    value.field_budget_ns = u64(wire.number(cursor, u64(value.field_budget_ns), 8))
}
/// @brief Encode every complete original uwvm_spot_bridge/srv/State_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Uwvm_spot_bridgeSrvState_Request :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvState_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 24)], writing = true}
    fields_Ros2Uwvm_spot_bridgeSrvState_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original uwvm_spot_bridge/srv/State_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Uwvm_spot_bridgeSrvState_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Uwvm_spot_bridgeSrvState_Request, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 24 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Uwvm_spot_bridgeSrvState_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original uwvm_spot_bridge/srv/State_Response value.
/// @details Retain all 12 original fields and 0 constants. Wire extent 57..21433 bytes.
Ros2Uwvm_spot_bridgeSrvState_Response :: struct {
    /// @brief Original uwvm_spot_bridge/srv/State_Response.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.error field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error: u32,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.unknown field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_unknown: bool,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.acquisition_sec field.
    /// @details Original type int64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_acquisition_sec: i64,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.acquisition_nsec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_acquisition_nsec: u32,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.joint_names field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Shape sequence;
    /// bound/count 32 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names: wire.Sequence(wire.Text(128, false), 32),
    /// @brief Original uwvm_spot_bridge/srv/State_Response.joint_position field.
    /// @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_joint_position: wire.Sequence(f64, 32),
    /// @brief Original uwvm_spot_bridge/srv/State_Response.joint_velocity field.
    /// @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_joint_velocity: wire.Sequence(f64, 32),
    /// @brief Original uwvm_spot_bridge/srv/State_Response.joint_load field.
    /// @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_joint_load: wire.Sequence(f64, 32),
    /// @brief Original uwvm_spot_bridge/srv/State_Response.motor_power_state field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motor_power_state: u32,
    /// @brief Original uwvm_spot_bridge/srv/State_Response.native_proto field.
    /// @details Original type uint8. Shape sequence; bound/count 16384 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_native_proto: wire.Sequence(u8, 16384),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Uwvm_spot_bridgeSrvState_Response :: proc "contextless"() -> Ros2Uwvm_spot_bridgeSrvState_Response {
    result: Ros2Uwvm_spot_bridgeSrvState_Response
    return result
}
/// @brief Original complete uwvm_spot_bridge/srv/State_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvState_Response_Minimum_Wire_Bytes :: 57
/// @brief Original complete uwvm_spot_bridge/srv/State_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvState_Response_Maximum_Wire_Bytes :: 21433
/// @brief Original complete uwvm_spot_bridge/srv/State_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvState_Response_Codec_Identity :: "UWVMROS1_ab07340e952c2ff63f35dad37e9d4837a280eee9ce477ac5be4a05f82408ce0a"
/// @brief Traverse every original field of complete uwvm_spot_bridge/srv/State_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Uwvm_spot_bridgeSrvState_Response :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvState_Response, cursor: ^wire.Cursor)
{
    value.field_token = u64(wire.number(cursor, u64(value.field_token), 8))
    value.field_nonce = u64(wire.number(cursor, u64(value.field_nonce), 8))
    value.field_error = u32(wire.number(cursor, u64(value.field_error), 4))
    value.field_unknown = wire.boolean(cursor, value.field_unknown)
    value.field_acquisition_sec = transmute(i64)u64(wire.number(cursor, u64(transmute(u64)value.field_acquisition_sec), 8))
    value.field_acquisition_nsec = u32(wire.number(cursor, u64(value.field_acquisition_nsec), 4))
    value.field_joint_names.size = u32(wire.number(cursor, u64(value.field_joint_names.size), 4))
    if value.field_joint_names.size > 32 { cursor.code = 22; return }
    for index in 0..<int(value.field_joint_names.size) {
        wire.text(cursor, &value.field_joint_names.items[index])
    }
    value.field_joint_position.size = u32(wire.number(cursor, u64(value.field_joint_position.size), 4))
    if value.field_joint_position.size > 32 { cursor.code = 22; return }
    for index in 0..<int(value.field_joint_position.size) {
        value.field_joint_position.items[index] = wire.float64(cursor, value.field_joint_position.items[index])
    }
    value.field_joint_velocity.size = u32(wire.number(cursor, u64(value.field_joint_velocity.size), 4))
    if value.field_joint_velocity.size > 32 { cursor.code = 22; return }
    for index in 0..<int(value.field_joint_velocity.size) {
        value.field_joint_velocity.items[index] = wire.float64(cursor, value.field_joint_velocity.items[index])
    }
    value.field_joint_load.size = u32(wire.number(cursor, u64(value.field_joint_load.size), 4))
    if value.field_joint_load.size > 32 { cursor.code = 22; return }
    for index in 0..<int(value.field_joint_load.size) {
        value.field_joint_load.items[index] = wire.float64(cursor, value.field_joint_load.items[index])
    }
    value.field_motor_power_state = u32(wire.number(cursor, u64(value.field_motor_power_state), 4))
    value.field_native_proto.size = u32(wire.number(cursor, u64(value.field_native_proto.size), 4))
    if value.field_native_proto.size > 16384 { cursor.code = 22; return }
    for index in 0..<int(value.field_native_proto.size) {
        value.field_native_proto.items[index] = u8(wire.number(cursor, u64(value.field_native_proto.items[index]), 1))
    }
}
/// @brief Encode every complete original uwvm_spot_bridge/srv/State_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Uwvm_spot_bridgeSrvState_Response :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvState_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 21433)], writing = true}
    fields_Ros2Uwvm_spot_bridgeSrvState_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original uwvm_spot_bridge/srv/State_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Uwvm_spot_bridgeSrvState_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Uwvm_spot_bridgeSrvState_Response, code: u32)
{
    if len(bytes) < 57 || len(bytes) > 21433 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Uwvm_spot_bridgeSrvState_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original uwvm_spot_bridge/srv/Lease_Request value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 24..24 bytes.
Ros2Uwvm_spot_bridgeSrvLease_Request :: struct {
    /// @brief Original uwvm_spot_bridge/srv/Lease_Request.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64,
    /// @brief Original uwvm_spot_bridge/srv/Lease_Request.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64,
    /// @brief Original uwvm_spot_bridge/srv/Lease_Request.budget_ns field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_budget_ns: u64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Uwvm_spot_bridgeSrvLease_Request :: proc "contextless"() -> Ros2Uwvm_spot_bridgeSrvLease_Request {
    result: Ros2Uwvm_spot_bridgeSrvLease_Request
    return result
}
/// @brief Original complete uwvm_spot_bridge/srv/Lease_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvLease_Request_Minimum_Wire_Bytes :: 24
/// @brief Original complete uwvm_spot_bridge/srv/Lease_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvLease_Request_Maximum_Wire_Bytes :: 24
/// @brief Original complete uwvm_spot_bridge/srv/Lease_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvLease_Request_Codec_Identity :: "UWVMROS1_a9aacd78dc6ae9d18fb6bb0d185797c6463c882edadf251eb5c21e3aa3c538a1"
/// @brief Traverse every original field of complete uwvm_spot_bridge/srv/Lease_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Uwvm_spot_bridgeSrvLease_Request :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvLease_Request, cursor: ^wire.Cursor)
{
    value.field_token = u64(wire.number(cursor, u64(value.field_token), 8))
    value.field_nonce = u64(wire.number(cursor, u64(value.field_nonce), 8))
    value.field_budget_ns = u64(wire.number(cursor, u64(value.field_budget_ns), 8))
}
/// @brief Encode every complete original uwvm_spot_bridge/srv/Lease_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Uwvm_spot_bridgeSrvLease_Request :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvLease_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 24)], writing = true}
    fields_Ros2Uwvm_spot_bridgeSrvLease_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original uwvm_spot_bridge/srv/Lease_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Uwvm_spot_bridgeSrvLease_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Uwvm_spot_bridgeSrvLease_Request, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 24 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Uwvm_spot_bridgeSrvLease_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original uwvm_spot_bridge/srv/Lease_Response value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 22..22 bytes.
Ros2Uwvm_spot_bridgeSrvLease_Response :: struct {
    /// @brief Original uwvm_spot_bridge/srv/Lease_Response.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64,
    /// @brief Original uwvm_spot_bridge/srv/Lease_Response.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64,
    /// @brief Original uwvm_spot_bridge/srv/Lease_Response.error field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error: u32,
    /// @brief Original uwvm_spot_bridge/srv/Lease_Response.unknown field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_unknown: bool,
    /// @brief Original uwvm_spot_bridge/srv/Lease_Response.provider_holds_body_lease field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_provider_holds_body_lease: bool,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Uwvm_spot_bridgeSrvLease_Response :: proc "contextless"() -> Ros2Uwvm_spot_bridgeSrvLease_Response {
    result: Ros2Uwvm_spot_bridgeSrvLease_Response
    return result
}
/// @brief Original complete uwvm_spot_bridge/srv/Lease_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvLease_Response_Minimum_Wire_Bytes :: 22
/// @brief Original complete uwvm_spot_bridge/srv/Lease_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvLease_Response_Maximum_Wire_Bytes :: 22
/// @brief Original complete uwvm_spot_bridge/srv/Lease_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvLease_Response_Codec_Identity :: "UWVMROS1_ce875eb701b607c01f8a19dc8fcff607829824ad99276f906c7fc8fc5567f6d3"
/// @brief Traverse every original field of complete uwvm_spot_bridge/srv/Lease_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Uwvm_spot_bridgeSrvLease_Response :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvLease_Response, cursor: ^wire.Cursor)
{
    value.field_token = u64(wire.number(cursor, u64(value.field_token), 8))
    value.field_nonce = u64(wire.number(cursor, u64(value.field_nonce), 8))
    value.field_error = u32(wire.number(cursor, u64(value.field_error), 4))
    value.field_unknown = wire.boolean(cursor, value.field_unknown)
    value.field_provider_holds_body_lease = wire.boolean(cursor, value.field_provider_holds_body_lease)
}
/// @brief Encode every complete original uwvm_spot_bridge/srv/Lease_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Uwvm_spot_bridgeSrvLease_Response :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvLease_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 22)], writing = true}
    fields_Ros2Uwvm_spot_bridgeSrvLease_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original uwvm_spot_bridge/srv/Lease_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Uwvm_spot_bridgeSrvLease_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Uwvm_spot_bridgeSrvLease_Response, code: u32)
{
    if len(bytes) < 22 || len(bytes) > 22 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Uwvm_spot_bridgeSrvLease_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original uwvm_spot_bridge/srv/Command_Request value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 24..24 bytes.
Ros2Uwvm_spot_bridgeSrvCommand_Request :: struct {
    /// @brief Original uwvm_spot_bridge/srv/Command_Request.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64,
    /// @brief Original uwvm_spot_bridge/srv/Command_Request.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64,
    /// @brief Original uwvm_spot_bridge/srv/Command_Request.budget_ns field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_budget_ns: u64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Uwvm_spot_bridgeSrvCommand_Request :: proc "contextless"() -> Ros2Uwvm_spot_bridgeSrvCommand_Request {
    result: Ros2Uwvm_spot_bridgeSrvCommand_Request
    return result
}
/// @brief Original complete uwvm_spot_bridge/srv/Command_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvCommand_Request_Minimum_Wire_Bytes :: 24
/// @brief Original complete uwvm_spot_bridge/srv/Command_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvCommand_Request_Maximum_Wire_Bytes :: 24
/// @brief Original complete uwvm_spot_bridge/srv/Command_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvCommand_Request_Codec_Identity :: "UWVMROS1_29996d4dacb4ea847c5d629cb634d4aa5e2451627d2469d6cdf301cc007968f8"
/// @brief Traverse every original field of complete uwvm_spot_bridge/srv/Command_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Uwvm_spot_bridgeSrvCommand_Request :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvCommand_Request, cursor: ^wire.Cursor)
{
    value.field_token = u64(wire.number(cursor, u64(value.field_token), 8))
    value.field_nonce = u64(wire.number(cursor, u64(value.field_nonce), 8))
    value.field_budget_ns = u64(wire.number(cursor, u64(value.field_budget_ns), 8))
}
/// @brief Encode every complete original uwvm_spot_bridge/srv/Command_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Uwvm_spot_bridgeSrvCommand_Request :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvCommand_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 24)], writing = true}
    fields_Ros2Uwvm_spot_bridgeSrvCommand_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original uwvm_spot_bridge/srv/Command_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Uwvm_spot_bridgeSrvCommand_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Uwvm_spot_bridgeSrvCommand_Request, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 24 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Uwvm_spot_bridgeSrvCommand_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original uwvm_spot_bridge/srv/Command_Response value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 26..26 bytes.
Ros2Uwvm_spot_bridgeSrvCommand_Response :: struct {
    /// @brief Original uwvm_spot_bridge/srv/Command_Response.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64,
    /// @brief Original uwvm_spot_bridge/srv/Command_Response.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64,
    /// @brief Original uwvm_spot_bridge/srv/Command_Response.error field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error: u32,
    /// @brief Original uwvm_spot_bridge/srv/Command_Response.unknown field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_unknown: bool,
    /// @brief Original uwvm_spot_bridge/srv/Command_Response.native_accepted field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_native_accepted: bool,
    /// @brief Original uwvm_spot_bridge/srv/Command_Response.native_command_id field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_native_command_id: u32,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Uwvm_spot_bridgeSrvCommand_Response :: proc "contextless"() -> Ros2Uwvm_spot_bridgeSrvCommand_Response {
    result: Ros2Uwvm_spot_bridgeSrvCommand_Response
    return result
}
/// @brief Original complete uwvm_spot_bridge/srv/Command_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvCommand_Response_Minimum_Wire_Bytes :: 26
/// @brief Original complete uwvm_spot_bridge/srv/Command_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvCommand_Response_Maximum_Wire_Bytes :: 26
/// @brief Original complete uwvm_spot_bridge/srv/Command_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvCommand_Response_Codec_Identity :: "UWVMROS1_e35556e7439c8d5ca79cb0f4ad23cf73c85a8a79d1382cde398dd85082dd1733"
/// @brief Traverse every original field of complete uwvm_spot_bridge/srv/Command_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Uwvm_spot_bridgeSrvCommand_Response :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvCommand_Response, cursor: ^wire.Cursor)
{
    value.field_token = u64(wire.number(cursor, u64(value.field_token), 8))
    value.field_nonce = u64(wire.number(cursor, u64(value.field_nonce), 8))
    value.field_error = u32(wire.number(cursor, u64(value.field_error), 4))
    value.field_unknown = wire.boolean(cursor, value.field_unknown)
    value.field_native_accepted = wire.boolean(cursor, value.field_native_accepted)
    value.field_native_command_id = u32(wire.number(cursor, u64(value.field_native_command_id), 4))
}
/// @brief Encode every complete original uwvm_spot_bridge/srv/Command_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Uwvm_spot_bridgeSrvCommand_Response :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvCommand_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 26)], writing = true}
    fields_Ros2Uwvm_spot_bridgeSrvCommand_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original uwvm_spot_bridge/srv/Command_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Uwvm_spot_bridgeSrvCommand_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Uwvm_spot_bridgeSrvCommand_Response, code: u32)
{
    if len(bytes) < 26 || len(bytes) > 26 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Uwvm_spot_bridgeSrvCommand_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original uwvm_spot_bridge/srv/Velocity_Request value.
/// @details Retain all 7 original fields and 0 constants. Wire extent 56..56 bytes.
Ros2Uwvm_spot_bridgeSrvVelocity_Request :: struct {
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.budget_ns field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_budget_ns: u64,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.x_mps field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x_mps: f64,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.y_mps field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y_mps: f64,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.yaw_rps field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yaw_rps: f64,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Request.duration_ns field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_duration_ns: u64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Uwvm_spot_bridgeSrvVelocity_Request :: proc "contextless"() -> Ros2Uwvm_spot_bridgeSrvVelocity_Request {
    result: Ros2Uwvm_spot_bridgeSrvVelocity_Request
    return result
}
/// @brief Original complete uwvm_spot_bridge/srv/Velocity_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvVelocity_Request_Minimum_Wire_Bytes :: 56
/// @brief Original complete uwvm_spot_bridge/srv/Velocity_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvVelocity_Request_Maximum_Wire_Bytes :: 56
/// @brief Original complete uwvm_spot_bridge/srv/Velocity_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvVelocity_Request_Codec_Identity :: "UWVMROS1_ffe3b1dec91a25cd84d221ba4ebeae576bd7d6b96f258579c0b3d280cad79f8d"
/// @brief Traverse every original field of complete uwvm_spot_bridge/srv/Velocity_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Uwvm_spot_bridgeSrvVelocity_Request :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvVelocity_Request, cursor: ^wire.Cursor)
{
    value.field_token = u64(wire.number(cursor, u64(value.field_token), 8))
    value.field_nonce = u64(wire.number(cursor, u64(value.field_nonce), 8))
    value.field_budget_ns = u64(wire.number(cursor, u64(value.field_budget_ns), 8))
    value.field_x_mps = wire.float64(cursor, value.field_x_mps)
    value.field_y_mps = wire.float64(cursor, value.field_y_mps)
    value.field_yaw_rps = wire.float64(cursor, value.field_yaw_rps)
    value.field_duration_ns = u64(wire.number(cursor, u64(value.field_duration_ns), 8))
}
/// @brief Encode every complete original uwvm_spot_bridge/srv/Velocity_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Uwvm_spot_bridgeSrvVelocity_Request :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvVelocity_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 56)], writing = true}
    fields_Ros2Uwvm_spot_bridgeSrvVelocity_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original uwvm_spot_bridge/srv/Velocity_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Uwvm_spot_bridgeSrvVelocity_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Uwvm_spot_bridgeSrvVelocity_Request, code: u32)
{
    if len(bytes) < 56 || len(bytes) > 56 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Uwvm_spot_bridgeSrvVelocity_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original uwvm_spot_bridge/srv/Velocity_Response value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 26..26 bytes.
Ros2Uwvm_spot_bridgeSrvVelocity_Response :: struct {
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.error field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error: u32,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.unknown field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_unknown: bool,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.native_accepted field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_native_accepted: bool,
    /// @brief Original uwvm_spot_bridge/srv/Velocity_Response.native_command_id field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_native_command_id: u32,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Uwvm_spot_bridgeSrvVelocity_Response :: proc "contextless"() -> Ros2Uwvm_spot_bridgeSrvVelocity_Response {
    result: Ros2Uwvm_spot_bridgeSrvVelocity_Response
    return result
}
/// @brief Original complete uwvm_spot_bridge/srv/Velocity_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvVelocity_Response_Minimum_Wire_Bytes :: 26
/// @brief Original complete uwvm_spot_bridge/srv/Velocity_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvVelocity_Response_Maximum_Wire_Bytes :: 26
/// @brief Original complete uwvm_spot_bridge/srv/Velocity_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvVelocity_Response_Codec_Identity :: "UWVMROS1_031f37beeb5a03c4e65d4be8fd70bc680408d110a020e066bea593d86498401a"
/// @brief Traverse every original field of complete uwvm_spot_bridge/srv/Velocity_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Uwvm_spot_bridgeSrvVelocity_Response :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvVelocity_Response, cursor: ^wire.Cursor)
{
    value.field_token = u64(wire.number(cursor, u64(value.field_token), 8))
    value.field_nonce = u64(wire.number(cursor, u64(value.field_nonce), 8))
    value.field_error = u32(wire.number(cursor, u64(value.field_error), 4))
    value.field_unknown = wire.boolean(cursor, value.field_unknown)
    value.field_native_accepted = wire.boolean(cursor, value.field_native_accepted)
    value.field_native_command_id = u32(wire.number(cursor, u64(value.field_native_command_id), 4))
}
/// @brief Encode every complete original uwvm_spot_bridge/srv/Velocity_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Uwvm_spot_bridgeSrvVelocity_Response :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvVelocity_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 26)], writing = true}
    fields_Ros2Uwvm_spot_bridgeSrvVelocity_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original uwvm_spot_bridge/srv/Velocity_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Uwvm_spot_bridgeSrvVelocity_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Uwvm_spot_bridgeSrvVelocity_Response, code: u32)
{
    if len(bytes) < 26 || len(bytes) > 26 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Uwvm_spot_bridgeSrvVelocity_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original uwvm_spot_bridge/srv/Feedback_Request value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 32..32 bytes.
Ros2Uwvm_spot_bridgeSrvFeedback_Request :: struct {
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Request.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Request.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Request.budget_ns field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_budget_ns: u64,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Request.command_token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_command_token: u64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Uwvm_spot_bridgeSrvFeedback_Request :: proc "contextless"() -> Ros2Uwvm_spot_bridgeSrvFeedback_Request {
    result: Ros2Uwvm_spot_bridgeSrvFeedback_Request
    return result
}
/// @brief Original complete uwvm_spot_bridge/srv/Feedback_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvFeedback_Request_Minimum_Wire_Bytes :: 32
/// @brief Original complete uwvm_spot_bridge/srv/Feedback_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvFeedback_Request_Maximum_Wire_Bytes :: 32
/// @brief Original complete uwvm_spot_bridge/srv/Feedback_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvFeedback_Request_Codec_Identity :: "UWVMROS1_de64ce283f49f5c324912ec262f7d15b6fd828879c01039d455c765743c45ba3"
/// @brief Traverse every original field of complete uwvm_spot_bridge/srv/Feedback_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Uwvm_spot_bridgeSrvFeedback_Request :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvFeedback_Request, cursor: ^wire.Cursor)
{
    value.field_token = u64(wire.number(cursor, u64(value.field_token), 8))
    value.field_nonce = u64(wire.number(cursor, u64(value.field_nonce), 8))
    value.field_budget_ns = u64(wire.number(cursor, u64(value.field_budget_ns), 8))
    value.field_command_token = u64(wire.number(cursor, u64(value.field_command_token), 8))
}
/// @brief Encode every complete original uwvm_spot_bridge/srv/Feedback_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Uwvm_spot_bridgeSrvFeedback_Request :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvFeedback_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 32)], writing = true}
    fields_Ros2Uwvm_spot_bridgeSrvFeedback_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original uwvm_spot_bridge/srv/Feedback_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Uwvm_spot_bridgeSrvFeedback_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Uwvm_spot_bridgeSrvFeedback_Request, code: u32)
{
    if len(bytes) < 32 || len(bytes) > 32 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Uwvm_spot_bridgeSrvFeedback_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original uwvm_spot_bridge/srv/Feedback_Response value.
/// @details Retain all 13 original fields and 0 constants. Wire extent 45..16429 bytes.
Ros2Uwvm_spot_bridgeSrvFeedback_Response :: struct {
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.token field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_token: u64,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.nonce field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nonce: u64,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.error field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error: u32,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.unknown field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_unknown: bool,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.native_command_id field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_native_command_id: u32,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_full_body_feedback field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_has_full_body_feedback: bool,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.full_body_status field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_full_body_status: u32,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_mobility_feedback field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_has_mobility_feedback: bool,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.mobility_status field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mobility_status: u32,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.feedback_kind field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_feedback_kind: u8,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_subcommand_status field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_has_subcommand_status: bool,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.subcommand_status field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_subcommand_status: u32,
    /// @brief Original uwvm_spot_bridge/srv/Feedback_Response.native_proto field.
    /// @details Original type uint8. Shape sequence; bound/count 16384 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_native_proto: wire.Sequence(u8, 16384),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Uwvm_spot_bridgeSrvFeedback_Response :: proc "contextless"() -> Ros2Uwvm_spot_bridgeSrvFeedback_Response {
    result: Ros2Uwvm_spot_bridgeSrvFeedback_Response
    return result
}
/// @brief Original complete uwvm_spot_bridge/srv/Feedback_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvFeedback_Response_Minimum_Wire_Bytes :: 45
/// @brief Original complete uwvm_spot_bridge/srv/Feedback_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvFeedback_Response_Maximum_Wire_Bytes :: 16429
/// @brief Original complete uwvm_spot_bridge/srv/Feedback_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Uwvm_spot_bridgeSrvFeedback_Response_Codec_Identity :: "UWVMROS1_4a19efe7f64fe0d7f6f13abe8980fb55503d3b897af64abc73bbd236587adfe8"
/// @brief Traverse every original field of complete uwvm_spot_bridge/srv/Feedback_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Uwvm_spot_bridgeSrvFeedback_Response :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvFeedback_Response, cursor: ^wire.Cursor)
{
    value.field_token = u64(wire.number(cursor, u64(value.field_token), 8))
    value.field_nonce = u64(wire.number(cursor, u64(value.field_nonce), 8))
    value.field_error = u32(wire.number(cursor, u64(value.field_error), 4))
    value.field_unknown = wire.boolean(cursor, value.field_unknown)
    value.field_native_command_id = u32(wire.number(cursor, u64(value.field_native_command_id), 4))
    value.field_has_full_body_feedback = wire.boolean(cursor, value.field_has_full_body_feedback)
    value.field_full_body_status = u32(wire.number(cursor, u64(value.field_full_body_status), 4))
    value.field_has_mobility_feedback = wire.boolean(cursor, value.field_has_mobility_feedback)
    value.field_mobility_status = u32(wire.number(cursor, u64(value.field_mobility_status), 4))
    value.field_feedback_kind = u8(wire.number(cursor, u64(value.field_feedback_kind), 1))
    value.field_has_subcommand_status = wire.boolean(cursor, value.field_has_subcommand_status)
    value.field_subcommand_status = u32(wire.number(cursor, u64(value.field_subcommand_status), 4))
    value.field_native_proto.size = u32(wire.number(cursor, u64(value.field_native_proto.size), 4))
    if value.field_native_proto.size > 16384 { cursor.code = 22; return }
    for index in 0..<int(value.field_native_proto.size) {
        value.field_native_proto.items[index] = u8(wire.number(cursor, u64(value.field_native_proto.items[index]), 1))
    }
}
/// @brief Encode every complete original uwvm_spot_bridge/srv/Feedback_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Uwvm_spot_bridgeSrvFeedback_Response :: proc "contextless"(
    value: ^Ros2Uwvm_spot_bridgeSrvFeedback_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 16429)], writing = true}
    fields_Ros2Uwvm_spot_bridgeSrvFeedback_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original uwvm_spot_bridge/srv/Feedback_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Uwvm_spot_bridgeSrvFeedback_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Uwvm_spot_bridgeSrvFeedback_Response, code: u32)
{
    if len(bytes) < 45 || len(bytes) > 16429 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Uwvm_spot_bridgeSrvFeedback_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

