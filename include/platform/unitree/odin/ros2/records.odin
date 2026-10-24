// @file records.odin
// @brief Complete owned original Unitree ROS 2 records and codecs.
// @details No generated record owns a native ROS object or grants a capability.
package records
import wire "unitree:odin/wire"

/// @brief Complete original unitree_api/msg/RequestIdentity value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..16 bytes.
Ros2Unitree_apiMsgRequestIdentity :: struct {
    /// @brief Original unitree_api/msg/RequestIdentity.id field.
    /// @details Original type int64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_id: i64,
    /// @brief Original unitree_api/msg/RequestIdentity.api_id field.
    /// @details Original type int64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_api_id: i64,
}
/// @brief Original complete unitree_api/msg/RequestIdentity minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequestIdentity_Minimum_Wire_Bytes :: 16
/// @brief Original complete unitree_api/msg/RequestIdentity maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequestIdentity_Maximum_Wire_Bytes :: 16
/// @brief Original complete unitree_api/msg/RequestIdentity codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequestIdentity_Codec_Identity ::
    "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2"
/// @brief Traverse every original field of complete unitree_api/msg/RequestIdentity.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_apiMsgRequestIdentity :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgRequestIdentity, cursor: ^wire.Cursor)
{
    value.field_id = transmute(i64)u64(wire.number(cursor, u64(transmute(u64)value.field_id), 8))
    value.field_api_id = transmute(i64)u64(wire.number(cursor, u64(transmute(u64)value.field_api_id), 8))
}
/// @brief Encode every complete original unitree_api/msg/RequestIdentity field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_apiMsgRequestIdentity :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgRequestIdentity, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 16)], writing = true}
    fields_Ros2Unitree_apiMsgRequestIdentity(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_api/msg/RequestIdentity.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_apiMsgRequestIdentity :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_apiMsgRequestIdentity, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 16 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_apiMsgRequestIdentity(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_api/msg/RequestLease value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Unitree_apiMsgRequestLease :: struct {
    /// @brief Original unitree_api/msg/RequestLease.id field.
    /// @details Original type int64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_id: i64,
}
/// @brief Original complete unitree_api/msg/RequestLease minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequestLease_Minimum_Wire_Bytes :: 8
/// @brief Original complete unitree_api/msg/RequestLease maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequestLease_Maximum_Wire_Bytes :: 8
/// @brief Original complete unitree_api/msg/RequestLease codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequestLease_Codec_Identity ::
    "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e"
/// @brief Traverse every original field of complete unitree_api/msg/RequestLease.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_apiMsgRequestLease :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgRequestLease, cursor: ^wire.Cursor)
{
    value.field_id = transmute(i64)u64(wire.number(cursor, u64(transmute(u64)value.field_id), 8))
}
/// @brief Encode every complete original unitree_api/msg/RequestLease field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_apiMsgRequestLease :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgRequestLease, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Unitree_apiMsgRequestLease(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_api/msg/RequestLease.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_apiMsgRequestLease :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_apiMsgRequestLease, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_apiMsgRequestLease(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_api/msg/RequestPolicy value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..5 bytes.
Ros2Unitree_apiMsgRequestPolicy :: struct {
    /// @brief Original unitree_api/msg/RequestPolicy.priority field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_priority: i32,
    /// @brief Original unitree_api/msg/RequestPolicy.noreply field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_noreply: bool,
}
/// @brief Original complete unitree_api/msg/RequestPolicy minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequestPolicy_Minimum_Wire_Bytes :: 5
/// @brief Original complete unitree_api/msg/RequestPolicy maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequestPolicy_Maximum_Wire_Bytes :: 5
/// @brief Original complete unitree_api/msg/RequestPolicy codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequestPolicy_Codec_Identity ::
    "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8"
/// @brief Traverse every original field of complete unitree_api/msg/RequestPolicy.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_apiMsgRequestPolicy :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgRequestPolicy, cursor: ^wire.Cursor)
{
    value.field_priority = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_priority), 4))
    value.field_noreply = wire.boolean(cursor, value.field_noreply)
}
/// @brief Encode every complete original unitree_api/msg/RequestPolicy field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_apiMsgRequestPolicy :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgRequestPolicy, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5)], writing = true}
    fields_Ros2Unitree_apiMsgRequestPolicy(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_api/msg/RequestPolicy.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_apiMsgRequestPolicy :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_apiMsgRequestPolicy, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 5 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_apiMsgRequestPolicy(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_api/msg/RequestHeader value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 29..29 bytes.
Ros2Unitree_apiMsgRequestHeader :: struct {
    /// @brief Original unitree_api/msg/RequestHeader.identity field.
    /// @details Original type unitree_api/msg/RequestIdentity. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_identity: Ros2Unitree_apiMsgRequestIdentity,
    /// @brief Original unitree_api/msg/RequestHeader.lease field.
    /// @details Original type unitree_api/msg/RequestLease. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_lease: Ros2Unitree_apiMsgRequestLease,
    /// @brief Original unitree_api/msg/RequestHeader.policy field.
    /// @details Original type unitree_api/msg/RequestPolicy. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_policy: Ros2Unitree_apiMsgRequestPolicy,
}
/// @brief Original complete unitree_api/msg/RequestHeader minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequestHeader_Minimum_Wire_Bytes :: 29
/// @brief Original complete unitree_api/msg/RequestHeader maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequestHeader_Maximum_Wire_Bytes :: 29
/// @brief Original complete unitree_api/msg/RequestHeader codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequestHeader_Codec_Identity ::
    "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0"
/// @brief Traverse every original field of complete unitree_api/msg/RequestHeader.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_apiMsgRequestHeader :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgRequestHeader, cursor: ^wire.Cursor)
{
    fields_Ros2Unitree_apiMsgRequestIdentity(&value.field_identity, cursor)
    fields_Ros2Unitree_apiMsgRequestLease(&value.field_lease, cursor)
    fields_Ros2Unitree_apiMsgRequestPolicy(&value.field_policy, cursor)
}
/// @brief Encode every complete original unitree_api/msg/RequestHeader field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_apiMsgRequestHeader :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgRequestHeader, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 29)], writing = true}
    fields_Ros2Unitree_apiMsgRequestHeader(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_api/msg/RequestHeader.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_apiMsgRequestHeader :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_apiMsgRequestHeader, code: u32)
{
    if len(bytes) < 29 || len(bytes) > 29 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_apiMsgRequestHeader(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_api/msg/Request value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 37..4133 bytes.
Ros2Unitree_apiMsgRequest :: struct {
    /// @brief Original unitree_api/msg/Request.header field.
    /// @details Original type unitree_api/msg/RequestHeader. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_header: Ros2Unitree_apiMsgRequestHeader,
    /// @brief Original unitree_api/msg/Request.parameter field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_parameter: wire.Text(2048, false),
    /// @brief Original unitree_api/msg/Request.binary field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_binary: wire.Sequence(u8, 2048),
}
/// @brief Original complete unitree_api/msg/Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequest_Minimum_Wire_Bytes :: 37
/// @brief Original complete unitree_api/msg/Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequest_Maximum_Wire_Bytes :: 4133
/// @brief Original complete unitree_api/msg/Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgRequest_Codec_Identity :: "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192"
/// @brief Traverse every original field of complete unitree_api/msg/Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_apiMsgRequest :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgRequest, cursor: ^wire.Cursor)
{
    fields_Ros2Unitree_apiMsgRequestHeader(&value.field_header, cursor)
    wire.text(cursor, &value.field_parameter)
    value.field_binary.size = u32(wire.number(cursor, u64(value.field_binary.size), 4))
    if value.field_binary.size > 2048 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_binary.size) {
        value.field_binary.items[index] = u8(wire.number(cursor, u64(value.field_binary.items[index]), 1))
    }
}
/// @brief Encode every complete original unitree_api/msg/Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_apiMsgRequest :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4133)], writing = true}
    fields_Ros2Unitree_apiMsgRequest(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_api/msg/Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_apiMsgRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_apiMsgRequest, code: u32)
{
    if len(bytes) < 37 || len(bytes) > 4133 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_apiMsgRequest(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_api/msg/ResponseStatus value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Unitree_apiMsgResponseStatus :: struct {
    /// @brief Original unitree_api/msg/ResponseStatus.code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_code: i32,
}
/// @brief Original complete unitree_api/msg/ResponseStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgResponseStatus_Minimum_Wire_Bytes :: 4
/// @brief Original complete unitree_api/msg/ResponseStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgResponseStatus_Maximum_Wire_Bytes :: 4
/// @brief Original complete unitree_api/msg/ResponseStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgResponseStatus_Codec_Identity ::
    "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1"
/// @brief Traverse every original field of complete unitree_api/msg/ResponseStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_apiMsgResponseStatus :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgResponseStatus, cursor: ^wire.Cursor)
{
    value.field_code = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_code), 4))
}
/// @brief Encode every complete original unitree_api/msg/ResponseStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_apiMsgResponseStatus :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgResponseStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Unitree_apiMsgResponseStatus(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_api/msg/ResponseStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_apiMsgResponseStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_apiMsgResponseStatus, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_apiMsgResponseStatus(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_api/msg/ResponseHeader value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 20..20 bytes.
Ros2Unitree_apiMsgResponseHeader :: struct {
    /// @brief Original unitree_api/msg/ResponseHeader.identity field.
    /// @details Original type unitree_api/msg/RequestIdentity. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_identity: Ros2Unitree_apiMsgRequestIdentity,
    /// @brief Original unitree_api/msg/ResponseHeader.status field.
    /// @details Original type unitree_api/msg/ResponseStatus. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_status: Ros2Unitree_apiMsgResponseStatus,
}
/// @brief Original complete unitree_api/msg/ResponseHeader minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgResponseHeader_Minimum_Wire_Bytes :: 20
/// @brief Original complete unitree_api/msg/ResponseHeader maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgResponseHeader_Maximum_Wire_Bytes :: 20
/// @brief Original complete unitree_api/msg/ResponseHeader codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgResponseHeader_Codec_Identity ::
    "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0"
/// @brief Traverse every original field of complete unitree_api/msg/ResponseHeader.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_apiMsgResponseHeader :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgResponseHeader, cursor: ^wire.Cursor)
{
    fields_Ros2Unitree_apiMsgRequestIdentity(&value.field_identity, cursor)
    fields_Ros2Unitree_apiMsgResponseStatus(&value.field_status, cursor)
}
/// @brief Encode every complete original unitree_api/msg/ResponseHeader field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_apiMsgResponseHeader :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgResponseHeader, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 20)], writing = true}
    fields_Ros2Unitree_apiMsgResponseHeader(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_api/msg/ResponseHeader.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_apiMsgResponseHeader :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_apiMsgResponseHeader, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 20 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_apiMsgResponseHeader(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_api/msg/Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 28..2108 bytes.
Ros2Unitree_apiMsgResponse :: struct {
    /// @brief Original unitree_api/msg/Response.header field.
    /// @details Original type unitree_api/msg/ResponseHeader. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_header: Ros2Unitree_apiMsgResponseHeader,
    /// @brief Original unitree_api/msg/Response.data field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_data: wire.Text(2048, false),
    /// @brief Original unitree_api/msg/Response.binary field.
    /// @details Original type int8. Shape sequence; bound/count 32 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_binary: wire.Sequence(i8, 32),
}
/// @brief Original complete unitree_api/msg/Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgResponse_Minimum_Wire_Bytes :: 28
/// @brief Original complete unitree_api/msg/Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgResponse_Maximum_Wire_Bytes :: 2108
/// @brief Original complete unitree_api/msg/Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_apiMsgResponse_Codec_Identity :: "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f"
/// @brief Traverse every original field of complete unitree_api/msg/Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_apiMsgResponse :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgResponse, cursor: ^wire.Cursor)
{
    fields_Ros2Unitree_apiMsgResponseHeader(&value.field_header, cursor)
    wire.text(cursor, &value.field_data)
    value.field_binary.size = u32(wire.number(cursor, u64(value.field_binary.size), 4))
    if value.field_binary.size > 32 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_binary.size) {
        value.field_binary.items[index] = transmute(i8)u8(wire.number(
            cursor,
            u64(transmute(u8)value.field_binary.items[index]),
            1,
        ))
    }
}
/// @brief Encode every complete original unitree_api/msg/Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_apiMsgResponse :: proc "contextless"(
    value: ^Ros2Unitree_apiMsgResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2108)], writing = true}
    fields_Ros2Unitree_apiMsgResponse(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_api/msg/Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_apiMsgResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_apiMsgResponse, code: u32)
{
    if len(bytes) < 28 || len(bytes) > 2108 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_apiMsgResponse(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/AudioData value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 12..2060 bytes.
Ros2Unitree_goMsgAudioData :: struct {
    /// @brief Original unitree_go/msg/AudioData.time_frame field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_time_frame: u64,
    /// @brief Original unitree_go/msg/AudioData.data field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_data: wire.Sequence(u8, 2048),
}
/// @brief Original complete unitree_go/msg/AudioData minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgAudioData_Minimum_Wire_Bytes :: 12
/// @brief Original complete unitree_go/msg/AudioData maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgAudioData_Maximum_Wire_Bytes :: 2060
/// @brief Original complete unitree_go/msg/AudioData codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgAudioData_Codec_Identity :: "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe"
/// @brief Traverse every original field of complete unitree_go/msg/AudioData.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgAudioData :: proc "contextless"(
    value: ^Ros2Unitree_goMsgAudioData, cursor: ^wire.Cursor)
{
    value.field_time_frame = u64(wire.number(cursor, u64(value.field_time_frame), 8))
    value.field_data.size = u32(wire.number(cursor, u64(value.field_data.size), 4))
    if value.field_data.size > 2048 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_data.size) {
        value.field_data.items[index] = u8(wire.number(cursor, u64(value.field_data.items[index]), 1))
    }
}
/// @brief Encode every complete original unitree_go/msg/AudioData field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgAudioData :: proc "contextless"(
    value: ^Ros2Unitree_goMsgAudioData, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2060)], writing = true}
    fields_Ros2Unitree_goMsgAudioData(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/AudioData.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgAudioData :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgAudioData, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 2060 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgAudioData(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/BmsCmd value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Unitree_goMsgBmsCmd :: struct {
    /// @brief Original unitree_go/msg/BmsCmd.off field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_off: u8,
    /// @brief Original unitree_go/msg/BmsCmd.reserve field.
    /// @details Original type uint8. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [3]u8,
}
/// @brief Original complete unitree_go/msg/BmsCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgBmsCmd_Minimum_Wire_Bytes :: 4
/// @brief Original complete unitree_go/msg/BmsCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgBmsCmd_Maximum_Wire_Bytes :: 4
/// @brief Original complete unitree_go/msg/BmsCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgBmsCmd_Codec_Identity :: "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339"
/// @brief Traverse every original field of complete unitree_go/msg/BmsCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgBmsCmd :: proc "contextless"(
    value: ^Ros2Unitree_goMsgBmsCmd, cursor: ^wire.Cursor)
{
    value.field_off = u8(wire.number(cursor, u64(value.field_off), 1))
    for index in 0..<3 {
        value.field_reserve[index] = u8(wire.number(cursor, u64(value.field_reserve[index]), 1))
    }
}
/// @brief Encode every complete original unitree_go/msg/BmsCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgBmsCmd :: proc "contextless"(
    value: ^Ros2Unitree_goMsgBmsCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Unitree_goMsgBmsCmd(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/BmsCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgBmsCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgBmsCmd, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgBmsCmd(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/BmsState value.
/// @details Retain all 9 original fields and 0 constants. Wire extent 44..44 bytes.
Ros2Unitree_goMsgBmsState :: struct {
    /// @brief Original unitree_go/msg/BmsState.version_high field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_version_high: u8,
    /// @brief Original unitree_go/msg/BmsState.version_low field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_version_low: u8,
    /// @brief Original unitree_go/msg/BmsState.status field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_status: u8,
    /// @brief Original unitree_go/msg/BmsState.soc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_soc: u8,
    /// @brief Original unitree_go/msg/BmsState.current field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: i32,
    /// @brief Original unitree_go/msg/BmsState.cycle field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cycle: u16,
    /// @brief Original unitree_go/msg/BmsState.bq_ntc field.
    /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_bq_ntc: [2]i8,
    /// @brief Original unitree_go/msg/BmsState.mcu_ntc field.
    /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_mcu_ntc: [2]i8,
    /// @brief Original unitree_go/msg/BmsState.cell_vol field.
    /// @details Original type uint16. Shape array; bound/count 15 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_cell_vol: [15]u16,
}
/// @brief Original complete unitree_go/msg/BmsState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgBmsState_Minimum_Wire_Bytes :: 44
/// @brief Original complete unitree_go/msg/BmsState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgBmsState_Maximum_Wire_Bytes :: 44
/// @brief Original complete unitree_go/msg/BmsState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgBmsState_Codec_Identity :: "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0"
/// @brief Traverse every original field of complete unitree_go/msg/BmsState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgBmsState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgBmsState, cursor: ^wire.Cursor)
{
    value.field_version_high = u8(wire.number(cursor, u64(value.field_version_high), 1))
    value.field_version_low = u8(wire.number(cursor, u64(value.field_version_low), 1))
    value.field_status = u8(wire.number(cursor, u64(value.field_status), 1))
    value.field_soc = u8(wire.number(cursor, u64(value.field_soc), 1))
    value.field_current = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_current), 4))
    value.field_cycle = u16(wire.number(cursor, u64(value.field_cycle), 2))
    for index in 0..<2 {
        value.field_bq_ntc[index] = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_bq_ntc[index]), 1))
    }
    for index in 0..<2 {
        value.field_mcu_ntc[index] = transmute(i8)u8(wire.number(
            cursor,
            u64(transmute(u8)value.field_mcu_ntc[index]),
            1,
        ))
    }
    for index in 0..<15 {
        value.field_cell_vol[index] = u16(wire.number(cursor, u64(value.field_cell_vol[index]), 2))
    }
}
/// @brief Encode every complete original unitree_go/msg/BmsState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgBmsState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgBmsState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 44)], writing = true}
    fields_Ros2Unitree_goMsgBmsState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/BmsState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgBmsState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgBmsState, code: u32)
{
    if len(bytes) < 44 || len(bytes) > 44 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgBmsState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/Error value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Unitree_goMsgError :: struct {
    /// @brief Original unitree_go/msg/Error.source field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_source: u32,
    /// @brief Original unitree_go/msg/Error.state field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_state: u32,
}
/// @brief Original complete unitree_go/msg/Error minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgError_Minimum_Wire_Bytes :: 8
/// @brief Original complete unitree_go/msg/Error maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgError_Maximum_Wire_Bytes :: 8
/// @brief Original complete unitree_go/msg/Error codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgError_Codec_Identity :: "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd"
/// @brief Traverse every original field of complete unitree_go/msg/Error.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgError :: proc "contextless"(
    value: ^Ros2Unitree_goMsgError, cursor: ^wire.Cursor)
{
    value.field_source = u32(wire.number(cursor, u64(value.field_source), 4))
    value.field_state = u32(wire.number(cursor, u64(value.field_state), 4))
}
/// @brief Encode every complete original unitree_go/msg/Error field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgError :: proc "contextless"(
    value: ^Ros2Unitree_goMsgError, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Unitree_goMsgError(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/Error.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgError :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgError, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgError(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/Go2FrontVideoData value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 20..6164 bytes.
Ros2Unitree_goMsgGo2FrontVideoData :: struct {
    /// @brief Original unitree_go/msg/Go2FrontVideoData.time_frame field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_time_frame: u64,
    /// @brief Original unitree_go/msg/Go2FrontVideoData.video720p field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_video720p: wire.Sequence(u8, 2048),
    /// @brief Original unitree_go/msg/Go2FrontVideoData.video360p field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_video360p: wire.Sequence(u8, 2048),
    /// @brief Original unitree_go/msg/Go2FrontVideoData.video180p field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_video180p: wire.Sequence(u8, 2048),
}
/// @brief Original complete unitree_go/msg/Go2FrontVideoData minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgGo2FrontVideoData_Minimum_Wire_Bytes :: 20
/// @brief Original complete unitree_go/msg/Go2FrontVideoData maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgGo2FrontVideoData_Maximum_Wire_Bytes :: 6164
/// @brief Original complete unitree_go/msg/Go2FrontVideoData codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgGo2FrontVideoData_Codec_Identity ::
    "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad"
/// @brief Traverse every original field of complete unitree_go/msg/Go2FrontVideoData.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgGo2FrontVideoData :: proc "contextless"(
    value: ^Ros2Unitree_goMsgGo2FrontVideoData, cursor: ^wire.Cursor)
{
    value.field_time_frame = u64(wire.number(cursor, u64(value.field_time_frame), 8))
    value.field_video720p.size = u32(wire.number(cursor, u64(value.field_video720p.size), 4))
    if value.field_video720p.size > 2048 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_video720p.size) {
        value.field_video720p.items[index] = u8(wire.number(cursor, u64(value.field_video720p.items[index]), 1))
    }
    value.field_video360p.size = u32(wire.number(cursor, u64(value.field_video360p.size), 4))
    if value.field_video360p.size > 2048 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_video360p.size) {
        value.field_video360p.items[index] = u8(wire.number(cursor, u64(value.field_video360p.items[index]), 1))
    }
    value.field_video180p.size = u32(wire.number(cursor, u64(value.field_video180p.size), 4))
    if value.field_video180p.size > 2048 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_video180p.size) {
        value.field_video180p.items[index] = u8(wire.number(cursor, u64(value.field_video180p.items[index]), 1))
    }
}
/// @brief Encode every complete original unitree_go/msg/Go2FrontVideoData field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgGo2FrontVideoData :: proc "contextless"(
    value: ^Ros2Unitree_goMsgGo2FrontVideoData, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 6164)], writing = true}
    fields_Ros2Unitree_goMsgGo2FrontVideoData(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/Go2FrontVideoData.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgGo2FrontVideoData :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgGo2FrontVideoData, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 6164 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgGo2FrontVideoData(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/HeightMap value.
/// @details Retain all 7 original fields and 0 constants. Wire extent 36..2212 bytes.
Ros2Unitree_goMsgHeightMap :: struct {
    /// @brief Original unitree_go/msg/HeightMap.stamp field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stamp: f64,
    /// @brief Original unitree_go/msg/HeightMap.frame_id field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_frame_id: wire.Text(2048, false),
    /// @brief Original unitree_go/msg/HeightMap.resolution field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_resolution: f32,
    /// @brief Original unitree_go/msg/HeightMap.width field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_width: u32,
    /// @brief Original unitree_go/msg/HeightMap.height field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_height: u32,
    /// @brief Original unitree_go/msg/HeightMap.origin field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_origin: [2]f32,
    /// @brief Original unitree_go/msg/HeightMap.data field.
    /// @details Original type float32. Shape sequence; bound/count 32 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_data: wire.Sequence(f32, 32),
}
/// @brief Original complete unitree_go/msg/HeightMap minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgHeightMap_Minimum_Wire_Bytes :: 36
/// @brief Original complete unitree_go/msg/HeightMap maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgHeightMap_Maximum_Wire_Bytes :: 2212
/// @brief Original complete unitree_go/msg/HeightMap codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgHeightMap_Codec_Identity :: "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d"
/// @brief Traverse every original field of complete unitree_go/msg/HeightMap.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgHeightMap :: proc "contextless"(
    value: ^Ros2Unitree_goMsgHeightMap, cursor: ^wire.Cursor)
{
    value.field_stamp = wire.float64(cursor, value.field_stamp)
    wire.text(cursor, &value.field_frame_id)
    value.field_resolution = wire.float32(cursor, value.field_resolution)
    value.field_width = u32(wire.number(cursor, u64(value.field_width), 4))
    value.field_height = u32(wire.number(cursor, u64(value.field_height), 4))
    for index in 0..<2 {
        value.field_origin[index] = wire.float32(cursor, value.field_origin[index])
    }
    value.field_data.size = u32(wire.number(cursor, u64(value.field_data.size), 4))
    if value.field_data.size > 32 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_data.size) {
        value.field_data.items[index] = wire.float32(cursor, value.field_data.items[index])
    }
}
/// @brief Encode every complete original unitree_go/msg/HeightMap field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgHeightMap :: proc "contextless"(
    value: ^Ros2Unitree_goMsgHeightMap, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2212)], writing = true}
    fields_Ros2Unitree_goMsgHeightMap(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/HeightMap.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgHeightMap :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgHeightMap, code: u32)
{
    if len(bytes) < 36 || len(bytes) > 2212 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgHeightMap(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/IMUState value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 53..53 bytes.
Ros2Unitree_goMsgIMUState :: struct {
    /// @brief Original unitree_go/msg/IMUState.quaternion field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_quaternion: [4]f32,
    /// @brief Original unitree_go/msg/IMUState.gyroscope field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_gyroscope: [3]f32,
    /// @brief Original unitree_go/msg/IMUState.accelerometer field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_accelerometer: [3]f32,
    /// @brief Original unitree_go/msg/IMUState.rpy field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_rpy: [3]f32,
    /// @brief Original unitree_go/msg/IMUState.temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: i8,
}
/// @brief Original complete unitree_go/msg/IMUState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgIMUState_Minimum_Wire_Bytes :: 53
/// @brief Original complete unitree_go/msg/IMUState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgIMUState_Maximum_Wire_Bytes :: 53
/// @brief Original complete unitree_go/msg/IMUState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgIMUState_Codec_Identity :: "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc"
/// @brief Traverse every original field of complete unitree_go/msg/IMUState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgIMUState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgIMUState, cursor: ^wire.Cursor)
{
    for index in 0..<4 {
        value.field_quaternion[index] = wire.float32(cursor, value.field_quaternion[index])
    }
    for index in 0..<3 {
        value.field_gyroscope[index] = wire.float32(cursor, value.field_gyroscope[index])
    }
    for index in 0..<3 {
        value.field_accelerometer[index] = wire.float32(cursor, value.field_accelerometer[index])
    }
    for index in 0..<3 {
        value.field_rpy[index] = wire.float32(cursor, value.field_rpy[index])
    }
    value.field_temperature = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_temperature), 1))
}
/// @brief Encode every complete original unitree_go/msg/IMUState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgIMUState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgIMUState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 53)], writing = true}
    fields_Ros2Unitree_goMsgIMUState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/IMUState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgIMUState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgIMUState, code: u32)
{
    if len(bytes) < 53 || len(bytes) > 53 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgIMUState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/InterfaceConfig value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Unitree_goMsgInterfaceConfig :: struct {
    /// @brief Original unitree_go/msg/InterfaceConfig.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original unitree_go/msg/InterfaceConfig.value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u8,
    /// @brief Original unitree_go/msg/InterfaceConfig.reserve field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [2]u8,
}
/// @brief Original complete unitree_go/msg/InterfaceConfig minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgInterfaceConfig_Minimum_Wire_Bytes :: 4
/// @brief Original complete unitree_go/msg/InterfaceConfig maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgInterfaceConfig_Maximum_Wire_Bytes :: 4
/// @brief Original complete unitree_go/msg/InterfaceConfig codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgInterfaceConfig_Codec_Identity ::
    "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110"
/// @brief Traverse every original field of complete unitree_go/msg/InterfaceConfig.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgInterfaceConfig :: proc "contextless"(
    value: ^Ros2Unitree_goMsgInterfaceConfig, cursor: ^wire.Cursor)
{
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_value = u8(wire.number(cursor, u64(value.field_value), 1))
    for index in 0..<2 {
        value.field_reserve[index] = u8(wire.number(cursor, u64(value.field_reserve[index]), 1))
    }
}
/// @brief Encode every complete original unitree_go/msg/InterfaceConfig field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgInterfaceConfig :: proc "contextless"(
    value: ^Ros2Unitree_goMsgInterfaceConfig, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Unitree_goMsgInterfaceConfig(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/InterfaceConfig.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgInterfaceConfig :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgInterfaceConfig, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgInterfaceConfig(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/LidarState value.
/// @details Retain all 17 original fields and 0 constants. Wire extent 81..6225 bytes.
Ros2Unitree_goMsgLidarState :: struct {
    /// @brief Original unitree_go/msg/LidarState.stamp field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stamp: f64,
    /// @brief Original unitree_go/msg/LidarState.firmware_version field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_firmware_version: wire.Text(2048, false),
    /// @brief Original unitree_go/msg/LidarState.software_version field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_software_version: wire.Text(2048, false),
    /// @brief Original unitree_go/msg/LidarState.sdk_version field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_sdk_version: wire.Text(2048, false),
    /// @brief Original unitree_go/msg/LidarState.sys_rotation_speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sys_rotation_speed: f32,
    /// @brief Original unitree_go/msg/LidarState.com_rotation_speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_com_rotation_speed: f32,
    /// @brief Original unitree_go/msg/LidarState.error_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_state: u8,
    /// @brief Original unitree_go/msg/LidarState.cloud_frequency field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cloud_frequency: f32,
    /// @brief Original unitree_go/msg/LidarState.cloud_packet_loss_rate field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cloud_packet_loss_rate: f32,
    /// @brief Original unitree_go/msg/LidarState.cloud_size field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cloud_size: u32,
    /// @brief Original unitree_go/msg/LidarState.cloud_scan_num field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cloud_scan_num: u32,
    /// @brief Original unitree_go/msg/LidarState.imu_frequency field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_imu_frequency: f32,
    /// @brief Original unitree_go/msg/LidarState.imu_packet_loss_rate field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_imu_packet_loss_rate: f32,
    /// @brief Original unitree_go/msg/LidarState.imu_rpy field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_imu_rpy: [3]f32,
    /// @brief Original unitree_go/msg/LidarState.serial_recv_stamp field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_serial_recv_stamp: f64,
    /// @brief Original unitree_go/msg/LidarState.serial_buffer_size field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_serial_buffer_size: u32,
    /// @brief Original unitree_go/msg/LidarState.serial_buffer_read field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_serial_buffer_read: u32,
}
/// @brief Original complete unitree_go/msg/LidarState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgLidarState_Minimum_Wire_Bytes :: 81
/// @brief Original complete unitree_go/msg/LidarState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgLidarState_Maximum_Wire_Bytes :: 6225
/// @brief Original complete unitree_go/msg/LidarState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgLidarState_Codec_Identity ::
    "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb"
/// @brief Traverse every original field of complete unitree_go/msg/LidarState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgLidarState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgLidarState, cursor: ^wire.Cursor)
{
    value.field_stamp = wire.float64(cursor, value.field_stamp)
    wire.text(cursor, &value.field_firmware_version)
    wire.text(cursor, &value.field_software_version)
    wire.text(cursor, &value.field_sdk_version)
    value.field_sys_rotation_speed = wire.float32(cursor, value.field_sys_rotation_speed)
    value.field_com_rotation_speed = wire.float32(cursor, value.field_com_rotation_speed)
    value.field_error_state = u8(wire.number(cursor, u64(value.field_error_state), 1))
    value.field_cloud_frequency = wire.float32(cursor, value.field_cloud_frequency)
    value.field_cloud_packet_loss_rate = wire.float32(cursor, value.field_cloud_packet_loss_rate)
    value.field_cloud_size = u32(wire.number(cursor, u64(value.field_cloud_size), 4))
    value.field_cloud_scan_num = u32(wire.number(cursor, u64(value.field_cloud_scan_num), 4))
    value.field_imu_frequency = wire.float32(cursor, value.field_imu_frequency)
    value.field_imu_packet_loss_rate = wire.float32(cursor, value.field_imu_packet_loss_rate)
    for index in 0..<3 {
        value.field_imu_rpy[index] = wire.float32(cursor, value.field_imu_rpy[index])
    }
    value.field_serial_recv_stamp = wire.float64(cursor, value.field_serial_recv_stamp)
    value.field_serial_buffer_size = u32(wire.number(cursor, u64(value.field_serial_buffer_size), 4))
    value.field_serial_buffer_read = u32(wire.number(cursor, u64(value.field_serial_buffer_read), 4))
}
/// @brief Encode every complete original unitree_go/msg/LidarState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgLidarState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgLidarState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 6225)], writing = true}
    fields_Ros2Unitree_goMsgLidarState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/LidarState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgLidarState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgLidarState, code: u32)
{
    if len(bytes) < 81 || len(bytes) > 6225 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgLidarState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/MotorCmd value.
/// @details Retain all 7 original fields and 0 constants. Wire extent 33..33 bytes.
Ros2Unitree_goMsgMotorCmd :: struct {
    /// @brief Original unitree_go/msg/MotorCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original unitree_go/msg/MotorCmd.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q: f32,
    /// @brief Original unitree_go/msg/MotorCmd.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq: f32,
    /// @brief Original unitree_go/msg/MotorCmd.tau field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tau: f32,
    /// @brief Original unitree_go/msg/MotorCmd.kp field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_kp: f32,
    /// @brief Original unitree_go/msg/MotorCmd.kd field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_kd: f32,
    /// @brief Original unitree_go/msg/MotorCmd.reserve field.
    /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [3]u32,
}
/// @brief Original complete unitree_go/msg/MotorCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgMotorCmd_Minimum_Wire_Bytes :: 33
/// @brief Original complete unitree_go/msg/MotorCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgMotorCmd_Maximum_Wire_Bytes :: 33
/// @brief Original complete unitree_go/msg/MotorCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgMotorCmd_Codec_Identity :: "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989"
/// @brief Traverse every original field of complete unitree_go/msg/MotorCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgMotorCmd :: proc "contextless"(
    value: ^Ros2Unitree_goMsgMotorCmd, cursor: ^wire.Cursor)
{
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_q = wire.float32(cursor, value.field_q)
    value.field_dq = wire.float32(cursor, value.field_dq)
    value.field_tau = wire.float32(cursor, value.field_tau)
    value.field_kp = wire.float32(cursor, value.field_kp)
    value.field_kd = wire.float32(cursor, value.field_kd)
    for index in 0..<3 {
        value.field_reserve[index] = u32(wire.number(cursor, u64(value.field_reserve[index]), 4))
    }
}
/// @brief Encode every complete original unitree_go/msg/MotorCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgMotorCmd :: proc "contextless"(
    value: ^Ros2Unitree_goMsgMotorCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 33)], writing = true}
    fields_Ros2Unitree_goMsgMotorCmd(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/MotorCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgMotorCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgMotorCmd, code: u32)
{
    if len(bytes) < 33 || len(bytes) > 33 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgMotorCmd(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/LowCmd value.
/// @details Retain all 14 original fields and 0 constants. Wire extent 749..749 bytes.
Ros2Unitree_goMsgLowCmd :: struct {
    /// @brief Original unitree_go/msg/LowCmd.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_head: [2]u8,
    /// @brief Original unitree_go/msg/LowCmd.level_flag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_level_flag: u8,
    /// @brief Original unitree_go/msg/LowCmd.frame_reserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frame_reserve: u8,
    /// @brief Original unitree_go/msg/LowCmd.sn field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_sn: [2]u32,
    /// @brief Original unitree_go/msg/LowCmd.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32,
    /// @brief Original unitree_go/msg/LowCmd.bandwidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bandwidth: u16,
    /// @brief Original unitree_go/msg/LowCmd.motor_cmd field.
    /// @details Original type unitree_go/msg/MotorCmd. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_cmd: [20]Ros2Unitree_goMsgMotorCmd,
    /// @brief Original unitree_go/msg/LowCmd.bms_cmd field.
    /// @details Original type unitree_go/msg/BmsCmd. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_bms_cmd: Ros2Unitree_goMsgBmsCmd,
    /// @brief Original unitree_go/msg/LowCmd.wireless_remote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wireless_remote: [40]u8,
    /// @brief Original unitree_go/msg/LowCmd.led field.
    /// @details Original type uint8. Shape array; bound/count 12 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_led: [12]u8,
    /// @brief Original unitree_go/msg/LowCmd.fan field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_fan: [2]u8,
    /// @brief Original unitree_go/msg/LowCmd.gpio field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_gpio: u8,
    /// @brief Original unitree_go/msg/LowCmd.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32,
    /// @brief Original unitree_go/msg/LowCmd.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32,
}
/// @brief Original complete unitree_go/msg/LowCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgLowCmd_Minimum_Wire_Bytes :: 749
/// @brief Original complete unitree_go/msg/LowCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgLowCmd_Maximum_Wire_Bytes :: 749
/// @brief Original complete unitree_go/msg/LowCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgLowCmd_Codec_Identity :: "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63"
/// @brief Traverse every original field of complete unitree_go/msg/LowCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgLowCmd :: proc "contextless"(
    value: ^Ros2Unitree_goMsgLowCmd, cursor: ^wire.Cursor)
{
    for index in 0..<2 {
        value.field_head[index] = u8(wire.number(cursor, u64(value.field_head[index]), 1))
    }
    value.field_level_flag = u8(wire.number(cursor, u64(value.field_level_flag), 1))
    value.field_frame_reserve = u8(wire.number(cursor, u64(value.field_frame_reserve), 1))
    for index in 0..<2 {
        value.field_sn[index] = u32(wire.number(cursor, u64(value.field_sn[index]), 4))
    }
    for index in 0..<2 {
        value.field_version[index] = u32(wire.number(cursor, u64(value.field_version[index]), 4))
    }
    value.field_bandwidth = u16(wire.number(cursor, u64(value.field_bandwidth), 2))
    for index in 0..<20 {
        fields_Ros2Unitree_goMsgMotorCmd(&value.field_motor_cmd[index], cursor)
    }
    fields_Ros2Unitree_goMsgBmsCmd(&value.field_bms_cmd, cursor)
    for index in 0..<40 {
        value.field_wireless_remote[index] = u8(wire.number(cursor, u64(value.field_wireless_remote[index]), 1))
    }
    for index in 0..<12 {
        value.field_led[index] = u8(wire.number(cursor, u64(value.field_led[index]), 1))
    }
    for index in 0..<2 {
        value.field_fan[index] = u8(wire.number(cursor, u64(value.field_fan[index]), 1))
    }
    value.field_gpio = u8(wire.number(cursor, u64(value.field_gpio), 1))
    value.field_reserve = u32(wire.number(cursor, u64(value.field_reserve), 4))
    value.field_crc = u32(wire.number(cursor, u64(value.field_crc), 4))
}
/// @brief Encode every complete original unitree_go/msg/LowCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgLowCmd :: proc "contextless"(
    value: ^Ros2Unitree_goMsgLowCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 749)], writing = true}
    fields_Ros2Unitree_goMsgLowCmd(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/LowCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgLowCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgLowCmd, code: u32)
{
    if len(bytes) < 749 || len(bytes) > 749 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgLowCmd(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/MotorState value.
/// @details Retain all 11 original fields and 0 constants. Wire extent 42..42 bytes.
Ros2Unitree_goMsgMotorState :: struct {
    /// @brief Original unitree_go/msg/MotorState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original unitree_go/msg/MotorState.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q: f32,
    /// @brief Original unitree_go/msg/MotorState.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq: f32,
    /// @brief Original unitree_go/msg/MotorState.ddq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ddq: f32,
    /// @brief Original unitree_go/msg/MotorState.tau_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tau_est: f32,
    /// @brief Original unitree_go/msg/MotorState.q_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q_raw: f32,
    /// @brief Original unitree_go/msg/MotorState.dq_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq_raw: f32,
    /// @brief Original unitree_go/msg/MotorState.ddq_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ddq_raw: f32,
    /// @brief Original unitree_go/msg/MotorState.temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: i8,
    /// @brief Original unitree_go/msg/MotorState.lost field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_lost: u32,
    /// @brief Original unitree_go/msg/MotorState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [2]u32,
}
/// @brief Original complete unitree_go/msg/MotorState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgMotorState_Minimum_Wire_Bytes :: 42
/// @brief Original complete unitree_go/msg/MotorState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgMotorState_Maximum_Wire_Bytes :: 42
/// @brief Original complete unitree_go/msg/MotorState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgMotorState_Codec_Identity ::
    "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62"
/// @brief Traverse every original field of complete unitree_go/msg/MotorState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgMotorState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgMotorState, cursor: ^wire.Cursor)
{
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_q = wire.float32(cursor, value.field_q)
    value.field_dq = wire.float32(cursor, value.field_dq)
    value.field_ddq = wire.float32(cursor, value.field_ddq)
    value.field_tau_est = wire.float32(cursor, value.field_tau_est)
    value.field_q_raw = wire.float32(cursor, value.field_q_raw)
    value.field_dq_raw = wire.float32(cursor, value.field_dq_raw)
    value.field_ddq_raw = wire.float32(cursor, value.field_ddq_raw)
    value.field_temperature = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_temperature), 1))
    value.field_lost = u32(wire.number(cursor, u64(value.field_lost), 4))
    for index in 0..<2 {
        value.field_reserve[index] = u32(wire.number(cursor, u64(value.field_reserve[index]), 4))
    }
}
/// @brief Encode every complete original unitree_go/msg/MotorState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgMotorState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgMotorState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 42)], writing = true}
    fields_Ros2Unitree_goMsgMotorState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/MotorState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgMotorState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgMotorState, code: u32)
{
    if len(bytes) < 42 || len(bytes) > 42 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgMotorState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/LowState value.
/// @details Retain all 22 original fields and 0 constants. Wire extent 1050..1050 bytes.
Ros2Unitree_goMsgLowState :: struct {
    /// @brief Original unitree_go/msg/LowState.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_head: [2]u8,
    /// @brief Original unitree_go/msg/LowState.level_flag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_level_flag: u8,
    /// @brief Original unitree_go/msg/LowState.frame_reserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frame_reserve: u8,
    /// @brief Original unitree_go/msg/LowState.sn field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_sn: [2]u32,
    /// @brief Original unitree_go/msg/LowState.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32,
    /// @brief Original unitree_go/msg/LowState.bandwidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bandwidth: u16,
    /// @brief Original unitree_go/msg/LowState.imu_state field.
    /// @details Original type unitree_go/msg/IMUState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_imu_state: Ros2Unitree_goMsgIMUState,
    /// @brief Original unitree_go/msg/LowState.motor_state field.
    /// @details Original type unitree_go/msg/MotorState. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_state: [20]Ros2Unitree_goMsgMotorState,
    /// @brief Original unitree_go/msg/LowState.bms_state field.
    /// @details Original type unitree_go/msg/BmsState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_bms_state: Ros2Unitree_goMsgBmsState,
    /// @brief Original unitree_go/msg/LowState.foot_force field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_foot_force: [4]i16,
    /// @brief Original unitree_go/msg/LowState.foot_force_est field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_foot_force_est: [4]i16,
    /// @brief Original unitree_go/msg/LowState.tick field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tick: u32,
    /// @brief Original unitree_go/msg/LowState.wireless_remote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wireless_remote: [40]u8,
    /// @brief Original unitree_go/msg/LowState.bit_flag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bit_flag: u8,
    /// @brief Original unitree_go/msg/LowState.adc_reel field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_adc_reel: f32,
    /// @brief Original unitree_go/msg/LowState.temperature_ntc1 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature_ntc1: i8,
    /// @brief Original unitree_go/msg/LowState.temperature_ntc2 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature_ntc2: i8,
    /// @brief Original unitree_go/msg/LowState.power_v field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_power_v: f32,
    /// @brief Original unitree_go/msg/LowState.power_a field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_power_a: f32,
    /// @brief Original unitree_go/msg/LowState.fan_frequency field.
    /// @details Original type uint16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_fan_frequency: [4]u16,
    /// @brief Original unitree_go/msg/LowState.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32,
    /// @brief Original unitree_go/msg/LowState.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32,
}
/// @brief Original complete unitree_go/msg/LowState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgLowState_Minimum_Wire_Bytes :: 1050
/// @brief Original complete unitree_go/msg/LowState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgLowState_Maximum_Wire_Bytes :: 1050
/// @brief Original complete unitree_go/msg/LowState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgLowState_Codec_Identity :: "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab"
/// @brief Traverse every original field of complete unitree_go/msg/LowState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgLowState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgLowState, cursor: ^wire.Cursor)
{
    for index in 0..<2 {
        value.field_head[index] = u8(wire.number(cursor, u64(value.field_head[index]), 1))
    }
    value.field_level_flag = u8(wire.number(cursor, u64(value.field_level_flag), 1))
    value.field_frame_reserve = u8(wire.number(cursor, u64(value.field_frame_reserve), 1))
    for index in 0..<2 {
        value.field_sn[index] = u32(wire.number(cursor, u64(value.field_sn[index]), 4))
    }
    for index in 0..<2 {
        value.field_version[index] = u32(wire.number(cursor, u64(value.field_version[index]), 4))
    }
    value.field_bandwidth = u16(wire.number(cursor, u64(value.field_bandwidth), 2))
    fields_Ros2Unitree_goMsgIMUState(&value.field_imu_state, cursor)
    for index in 0..<20 {
        fields_Ros2Unitree_goMsgMotorState(&value.field_motor_state[index], cursor)
    }
    fields_Ros2Unitree_goMsgBmsState(&value.field_bms_state, cursor)
    for index in 0..<4 {
        value.field_foot_force[index] = transmute(i16)u16(wire.number(
            cursor,
            u64(transmute(u16)value.field_foot_force[index]),
            2,
        ))
    }
    for index in 0..<4 {
        value.field_foot_force_est[index] = transmute(i16)u16(wire.number(
            cursor,
            u64(transmute(u16)value.field_foot_force_est[index]),
            2,
        ))
    }
    value.field_tick = u32(wire.number(cursor, u64(value.field_tick), 4))
    for index in 0..<40 {
        value.field_wireless_remote[index] = u8(wire.number(cursor, u64(value.field_wireless_remote[index]), 1))
    }
    value.field_bit_flag = u8(wire.number(cursor, u64(value.field_bit_flag), 1))
    value.field_adc_reel = wire.float32(cursor, value.field_adc_reel)
    value.field_temperature_ntc1 = transmute(i8)u8(wire.number(
        cursor,
        u64(transmute(u8)value.field_temperature_ntc1),
        1,
    ))
    value.field_temperature_ntc2 = transmute(i8)u8(wire.number(
        cursor,
        u64(transmute(u8)value.field_temperature_ntc2),
        1,
    ))
    value.field_power_v = wire.float32(cursor, value.field_power_v)
    value.field_power_a = wire.float32(cursor, value.field_power_a)
    for index in 0..<4 {
        value.field_fan_frequency[index] = u16(wire.number(cursor, u64(value.field_fan_frequency[index]), 2))
    }
    value.field_reserve = u32(wire.number(cursor, u64(value.field_reserve), 4))
    value.field_crc = u32(wire.number(cursor, u64(value.field_crc), 4))
}
/// @brief Encode every complete original unitree_go/msg/LowState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgLowState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgLowState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1050)], writing = true}
    fields_Ros2Unitree_goMsgLowState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/LowState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgLowState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgLowState, code: u32)
{
    if len(bytes) < 1050 || len(bytes) > 1050 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgLowState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/MotorCmds value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..1060 bytes.
Ros2Unitree_goMsgMotorCmds :: struct {
    /// @brief Original unitree_go/msg/MotorCmds.cmds field.
    /// @details Original type unitree_go/msg/MotorCmd. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_cmds: wire.Sequence(Ros2Unitree_goMsgMotorCmd, 32),
}
/// @brief Original complete unitree_go/msg/MotorCmds minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgMotorCmds_Minimum_Wire_Bytes :: 4
/// @brief Original complete unitree_go/msg/MotorCmds maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgMotorCmds_Maximum_Wire_Bytes :: 1060
/// @brief Original complete unitree_go/msg/MotorCmds codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgMotorCmds_Codec_Identity :: "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3"
/// @brief Traverse every original field of complete unitree_go/msg/MotorCmds.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgMotorCmds :: proc "contextless"(
    value: ^Ros2Unitree_goMsgMotorCmds, cursor: ^wire.Cursor)
{
    value.field_cmds.size = u32(wire.number(cursor, u64(value.field_cmds.size), 4))
    if value.field_cmds.size > 32 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_cmds.size) {
        fields_Ros2Unitree_goMsgMotorCmd(&value.field_cmds.items[index], cursor)
    }
}
/// @brief Encode every complete original unitree_go/msg/MotorCmds field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgMotorCmds :: proc "contextless"(
    value: ^Ros2Unitree_goMsgMotorCmds, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1060)], writing = true}
    fields_Ros2Unitree_goMsgMotorCmds(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/MotorCmds.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgMotorCmds :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgMotorCmds, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 1060 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgMotorCmds(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/MotorStates value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..1348 bytes.
Ros2Unitree_goMsgMotorStates :: struct {
    /// @brief Original unitree_go/msg/MotorStates.states field.
    /// @details Original type unitree_go/msg/MotorState. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_states: wire.Sequence(Ros2Unitree_goMsgMotorState, 32),
}
/// @brief Original complete unitree_go/msg/MotorStates minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgMotorStates_Minimum_Wire_Bytes :: 4
/// @brief Original complete unitree_go/msg/MotorStates maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgMotorStates_Maximum_Wire_Bytes :: 1348
/// @brief Original complete unitree_go/msg/MotorStates codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgMotorStates_Codec_Identity ::
    "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e"
/// @brief Traverse every original field of complete unitree_go/msg/MotorStates.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgMotorStates :: proc "contextless"(
    value: ^Ros2Unitree_goMsgMotorStates, cursor: ^wire.Cursor)
{
    value.field_states.size = u32(wire.number(cursor, u64(value.field_states.size), 4))
    if value.field_states.size > 32 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_states.size) {
        fields_Ros2Unitree_goMsgMotorState(&value.field_states.items[index], cursor)
    }
}
/// @brief Encode every complete original unitree_go/msg/MotorStates field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgMotorStates :: proc "contextless"(
    value: ^Ros2Unitree_goMsgMotorStates, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1348)], writing = true}
    fields_Ros2Unitree_goMsgMotorStates(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/MotorStates.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgMotorStates :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgMotorStates, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 1348 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgMotorStates(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/PathPoint value.
/// @details Retain all 7 original fields and 0 constants. Wire extent 28..28 bytes.
Ros2Unitree_goMsgPathPoint :: struct {
    /// @brief Original unitree_go/msg/PathPoint.t_from_start field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_t_from_start: f32,
    /// @brief Original unitree_go/msg/PathPoint.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f32,
    /// @brief Original unitree_go/msg/PathPoint.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f32,
    /// @brief Original unitree_go/msg/PathPoint.yaw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yaw: f32,
    /// @brief Original unitree_go/msg/PathPoint.vx field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_vx: f32,
    /// @brief Original unitree_go/msg/PathPoint.vy field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_vy: f32,
    /// @brief Original unitree_go/msg/PathPoint.vyaw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_vyaw: f32,
}
/// @brief Original complete unitree_go/msg/PathPoint minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgPathPoint_Minimum_Wire_Bytes :: 28
/// @brief Original complete unitree_go/msg/PathPoint maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgPathPoint_Maximum_Wire_Bytes :: 28
/// @brief Original complete unitree_go/msg/PathPoint codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgPathPoint_Codec_Identity :: "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4"
/// @brief Traverse every original field of complete unitree_go/msg/PathPoint.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgPathPoint :: proc "contextless"(
    value: ^Ros2Unitree_goMsgPathPoint, cursor: ^wire.Cursor)
{
    value.field_t_from_start = wire.float32(cursor, value.field_t_from_start)
    value.field_x = wire.float32(cursor, value.field_x)
    value.field_y = wire.float32(cursor, value.field_y)
    value.field_yaw = wire.float32(cursor, value.field_yaw)
    value.field_vx = wire.float32(cursor, value.field_vx)
    value.field_vy = wire.float32(cursor, value.field_vy)
    value.field_vyaw = wire.float32(cursor, value.field_vyaw)
}
/// @brief Encode every complete original unitree_go/msg/PathPoint field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgPathPoint :: proc "contextless"(
    value: ^Ros2Unitree_goMsgPathPoint, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 28)], writing = true}
    fields_Ros2Unitree_goMsgPathPoint(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/PathPoint.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgPathPoint :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgPathPoint, code: u32)
{
    if len(bytes) < 28 || len(bytes) > 28 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgPathPoint(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/Req value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..4104 bytes.
Ros2Unitree_goMsgReq :: struct {
    /// @brief Original unitree_go/msg/Req.uuid field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_uuid: wire.Text(2048, false),
    /// @brief Original unitree_go/msg/Req.body field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_body: wire.Text(2048, false),
}
/// @brief Original complete unitree_go/msg/Req minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgReq_Minimum_Wire_Bytes :: 8
/// @brief Original complete unitree_go/msg/Req maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgReq_Maximum_Wire_Bytes :: 4104
/// @brief Original complete unitree_go/msg/Req codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgReq_Codec_Identity :: "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8"
/// @brief Traverse every original field of complete unitree_go/msg/Req.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgReq :: proc "contextless"(
    value: ^Ros2Unitree_goMsgReq, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_uuid)
    wire.text(cursor, &value.field_body)
}
/// @brief Encode every complete original unitree_go/msg/Req field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgReq :: proc "contextless"(
    value: ^Ros2Unitree_goMsgReq, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4104)], writing = true}
    fields_Ros2Unitree_goMsgReq(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/Req.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgReq :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgReq, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 4104 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgReq(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/Res value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 12..6156 bytes.
Ros2Unitree_goMsgRes :: struct {
    /// @brief Original unitree_go/msg/Res.uuid field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_uuid: wire.Text(2048, false),
    /// @brief Original unitree_go/msg/Res.data field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_data: wire.Sequence(u8, 2048),
    /// @brief Original unitree_go/msg/Res.body field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_body: wire.Text(2048, false),
}
/// @brief Original complete unitree_go/msg/Res minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgRes_Minimum_Wire_Bytes :: 12
/// @brief Original complete unitree_go/msg/Res maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgRes_Maximum_Wire_Bytes :: 6156
/// @brief Original complete unitree_go/msg/Res codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgRes_Codec_Identity :: "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963"
/// @brief Traverse every original field of complete unitree_go/msg/Res.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgRes :: proc "contextless"(
    value: ^Ros2Unitree_goMsgRes, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_uuid)
    value.field_data.size = u32(wire.number(cursor, u64(value.field_data.size), 4))
    if value.field_data.size > 2048 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_data.size) {
        value.field_data.items[index] = u8(wire.number(cursor, u64(value.field_data.items[index]), 1))
    }
    wire.text(cursor, &value.field_body)
}
/// @brief Encode every complete original unitree_go/msg/Res field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgRes :: proc "contextless"(
    value: ^Ros2Unitree_goMsgRes, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 6156)], writing = true}
    fields_Ros2Unitree_goMsgRes(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/Res.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgRes :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgRes, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 6156 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgRes(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/SportModeCmd value.
/// @details Retain all 11 original fields and 0 constants. Wire extent 887..887 bytes.
Ros2Unitree_goMsgSportModeCmd :: struct {
    /// @brief Original unitree_go/msg/SportModeCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original unitree_go/msg/SportModeCmd.gait_type field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_gait_type: u8,
    /// @brief Original unitree_go/msg/SportModeCmd.speed_level field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speed_level: u8,
    /// @brief Original unitree_go/msg/SportModeCmd.foot_raise_height field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_foot_raise_height: f32,
    /// @brief Original unitree_go/msg/SportModeCmd.body_height field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_body_height: f32,
    /// @brief Original unitree_go/msg/SportModeCmd.position field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_position: [2]f32,
    /// @brief Original unitree_go/msg/SportModeCmd.euler field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_euler: [3]f32,
    /// @brief Original unitree_go/msg/SportModeCmd.velocity field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocity: [2]f32,
    /// @brief Original unitree_go/msg/SportModeCmd.yaw_speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yaw_speed: f32,
    /// @brief Original unitree_go/msg/SportModeCmd.bms_cmd field.
    /// @details Original type unitree_go/msg/BmsCmd. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_bms_cmd: Ros2Unitree_goMsgBmsCmd,
    /// @brief Original unitree_go/msg/SportModeCmd.path_point field.
    /// @details Original type unitree_go/msg/PathPoint. Shape array; bound/count 30 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_path_point: [30]Ros2Unitree_goMsgPathPoint,
}
/// @brief Original complete unitree_go/msg/SportModeCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgSportModeCmd_Minimum_Wire_Bytes :: 887
/// @brief Original complete unitree_go/msg/SportModeCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgSportModeCmd_Maximum_Wire_Bytes :: 887
/// @brief Original complete unitree_go/msg/SportModeCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgSportModeCmd_Codec_Identity ::
    "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c"
/// @brief Traverse every original field of complete unitree_go/msg/SportModeCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgSportModeCmd :: proc "contextless"(
    value: ^Ros2Unitree_goMsgSportModeCmd, cursor: ^wire.Cursor)
{
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_gait_type = u8(wire.number(cursor, u64(value.field_gait_type), 1))
    value.field_speed_level = u8(wire.number(cursor, u64(value.field_speed_level), 1))
    value.field_foot_raise_height = wire.float32(cursor, value.field_foot_raise_height)
    value.field_body_height = wire.float32(cursor, value.field_body_height)
    for index in 0..<2 {
        value.field_position[index] = wire.float32(cursor, value.field_position[index])
    }
    for index in 0..<3 {
        value.field_euler[index] = wire.float32(cursor, value.field_euler[index])
    }
    for index in 0..<2 {
        value.field_velocity[index] = wire.float32(cursor, value.field_velocity[index])
    }
    value.field_yaw_speed = wire.float32(cursor, value.field_yaw_speed)
    fields_Ros2Unitree_goMsgBmsCmd(&value.field_bms_cmd, cursor)
    for index in 0..<30 {
        fields_Ros2Unitree_goMsgPathPoint(&value.field_path_point[index], cursor)
    }
}
/// @brief Encode every complete original unitree_go/msg/SportModeCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgSportModeCmd :: proc "contextless"(
    value: ^Ros2Unitree_goMsgSportModeCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 887)], writing = true}
    fields_Ros2Unitree_goMsgSportModeCmd(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/SportModeCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgSportModeCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgSportModeCmd, code: u32)
{
    if len(bytes) < 887 || len(bytes) > 887 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgSportModeCmd(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/TimeSpec value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Unitree_goMsgTimeSpec :: struct {
    /// @brief Original unitree_go/msg/TimeSpec.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sec: i32,
    /// @brief Original unitree_go/msg/TimeSpec.nanosec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nanosec: u32,
}
/// @brief Original complete unitree_go/msg/TimeSpec minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgTimeSpec_Minimum_Wire_Bytes :: 8
/// @brief Original complete unitree_go/msg/TimeSpec maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgTimeSpec_Maximum_Wire_Bytes :: 8
/// @brief Original complete unitree_go/msg/TimeSpec codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgTimeSpec_Codec_Identity :: "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4"
/// @brief Traverse every original field of complete unitree_go/msg/TimeSpec.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgTimeSpec :: proc "contextless"(
    value: ^Ros2Unitree_goMsgTimeSpec, cursor: ^wire.Cursor)
{
    value.field_sec = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sec), 4))
    value.field_nanosec = u32(wire.number(cursor, u64(value.field_nanosec), 4))
}
/// @brief Encode every complete original unitree_go/msg/TimeSpec field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgTimeSpec :: proc "contextless"(
    value: ^Ros2Unitree_goMsgTimeSpec, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Unitree_goMsgTimeSpec(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/TimeSpec.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgTimeSpec :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgTimeSpec, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgTimeSpec(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/SportModeState value.
/// @details Retain all 15 original fields and 0 constants. Wire extent 227..227 bytes.
Ros2Unitree_goMsgSportModeState :: struct {
    /// @brief Original unitree_go/msg/SportModeState.stamp field.
    /// @details Original type unitree_go/msg/TimeSpec. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_stamp: Ros2Unitree_goMsgTimeSpec,
    /// @brief Original unitree_go/msg/SportModeState.error_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_code: u32,
    /// @brief Original unitree_go/msg/SportModeState.imu_state field.
    /// @details Original type unitree_go/msg/IMUState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_imu_state: Ros2Unitree_goMsgIMUState,
    /// @brief Original unitree_go/msg/SportModeState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original unitree_go/msg/SportModeState.progress field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_progress: f32,
    /// @brief Original unitree_go/msg/SportModeState.gait_type field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_gait_type: u8,
    /// @brief Original unitree_go/msg/SportModeState.foot_raise_height field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_foot_raise_height: f32,
    /// @brief Original unitree_go/msg/SportModeState.position field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_position: [3]f32,
    /// @brief Original unitree_go/msg/SportModeState.body_height field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_body_height: f32,
    /// @brief Original unitree_go/msg/SportModeState.velocity field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocity: [3]f32,
    /// @brief Original unitree_go/msg/SportModeState.yaw_speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yaw_speed: f32,
    /// @brief Original unitree_go/msg/SportModeState.range_obstacle field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_range_obstacle: [4]f32,
    /// @brief Original unitree_go/msg/SportModeState.foot_force field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_foot_force: [4]i16,
    /// @brief Original unitree_go/msg/SportModeState.foot_position_body field.
    /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_foot_position_body: [12]f32,
    /// @brief Original unitree_go/msg/SportModeState.foot_speed_body field.
    /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_foot_speed_body: [12]f32,
}
/// @brief Original complete unitree_go/msg/SportModeState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgSportModeState_Minimum_Wire_Bytes :: 227
/// @brief Original complete unitree_go/msg/SportModeState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgSportModeState_Maximum_Wire_Bytes :: 227
/// @brief Original complete unitree_go/msg/SportModeState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgSportModeState_Codec_Identity ::
    "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760"
/// @brief Traverse every original field of complete unitree_go/msg/SportModeState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgSportModeState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgSportModeState, cursor: ^wire.Cursor)
{
    fields_Ros2Unitree_goMsgTimeSpec(&value.field_stamp, cursor)
    value.field_error_code = u32(wire.number(cursor, u64(value.field_error_code), 4))
    fields_Ros2Unitree_goMsgIMUState(&value.field_imu_state, cursor)
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_progress = wire.float32(cursor, value.field_progress)
    value.field_gait_type = u8(wire.number(cursor, u64(value.field_gait_type), 1))
    value.field_foot_raise_height = wire.float32(cursor, value.field_foot_raise_height)
    for index in 0..<3 {
        value.field_position[index] = wire.float32(cursor, value.field_position[index])
    }
    value.field_body_height = wire.float32(cursor, value.field_body_height)
    for index in 0..<3 {
        value.field_velocity[index] = wire.float32(cursor, value.field_velocity[index])
    }
    value.field_yaw_speed = wire.float32(cursor, value.field_yaw_speed)
    for index in 0..<4 {
        value.field_range_obstacle[index] = wire.float32(cursor, value.field_range_obstacle[index])
    }
    for index in 0..<4 {
        value.field_foot_force[index] = transmute(i16)u16(wire.number(
            cursor,
            u64(transmute(u16)value.field_foot_force[index]),
            2,
        ))
    }
    for index in 0..<12 {
        value.field_foot_position_body[index] = wire.float32(cursor, value.field_foot_position_body[index])
    }
    for index in 0..<12 {
        value.field_foot_speed_body[index] = wire.float32(cursor, value.field_foot_speed_body[index])
    }
}
/// @brief Encode every complete original unitree_go/msg/SportModeState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgSportModeState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgSportModeState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 227)], writing = true}
    fields_Ros2Unitree_goMsgSportModeState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/SportModeState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgSportModeState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgSportModeState, code: u32)
{
    if len(bytes) < 227 || len(bytes) > 227 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgSportModeState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/UwbState value.
/// @details Retain all 17 original fields and 0 constants. Wire extent 55..55 bytes.
Ros2Unitree_goMsgUwbState :: struct {
    /// @brief Original unitree_go/msg/UwbState.version field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u8,
    /// @brief Original unitree_go/msg/UwbState.channel field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_channel: u8,
    /// @brief Original unitree_go/msg/UwbState.joy_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_joy_mode: u8,
    /// @brief Original unitree_go/msg/UwbState.orientation_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_orientation_est: f32,
    /// @brief Original unitree_go/msg/UwbState.pitch_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_pitch_est: f32,
    /// @brief Original unitree_go/msg/UwbState.distance_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_distance_est: f32,
    /// @brief Original unitree_go/msg/UwbState.yaw_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yaw_est: f32,
    /// @brief Original unitree_go/msg/UwbState.tag_roll field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tag_roll: f32,
    /// @brief Original unitree_go/msg/UwbState.tag_pitch field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tag_pitch: f32,
    /// @brief Original unitree_go/msg/UwbState.tag_yaw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tag_yaw: f32,
    /// @brief Original unitree_go/msg/UwbState.base_roll field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_base_roll: f32,
    /// @brief Original unitree_go/msg/UwbState.base_pitch field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_base_pitch: f32,
    /// @brief Original unitree_go/msg/UwbState.base_yaw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_base_yaw: f32,
    /// @brief Original unitree_go/msg/UwbState.joystick field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_joystick: [2]f32,
    /// @brief Original unitree_go/msg/UwbState.error_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_state: u8,
    /// @brief Original unitree_go/msg/UwbState.buttons field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_buttons: u8,
    /// @brief Original unitree_go/msg/UwbState.enabled_from_app field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_enabled_from_app: u8,
}
/// @brief Original complete unitree_go/msg/UwbState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgUwbState_Minimum_Wire_Bytes :: 55
/// @brief Original complete unitree_go/msg/UwbState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgUwbState_Maximum_Wire_Bytes :: 55
/// @brief Original complete unitree_go/msg/UwbState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgUwbState_Codec_Identity :: "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34"
/// @brief Traverse every original field of complete unitree_go/msg/UwbState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgUwbState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgUwbState, cursor: ^wire.Cursor)
{
    for index in 0..<2 {
        value.field_version[index] = u8(wire.number(cursor, u64(value.field_version[index]), 1))
    }
    value.field_channel = u8(wire.number(cursor, u64(value.field_channel), 1))
    value.field_joy_mode = u8(wire.number(cursor, u64(value.field_joy_mode), 1))
    value.field_orientation_est = wire.float32(cursor, value.field_orientation_est)
    value.field_pitch_est = wire.float32(cursor, value.field_pitch_est)
    value.field_distance_est = wire.float32(cursor, value.field_distance_est)
    value.field_yaw_est = wire.float32(cursor, value.field_yaw_est)
    value.field_tag_roll = wire.float32(cursor, value.field_tag_roll)
    value.field_tag_pitch = wire.float32(cursor, value.field_tag_pitch)
    value.field_tag_yaw = wire.float32(cursor, value.field_tag_yaw)
    value.field_base_roll = wire.float32(cursor, value.field_base_roll)
    value.field_base_pitch = wire.float32(cursor, value.field_base_pitch)
    value.field_base_yaw = wire.float32(cursor, value.field_base_yaw)
    for index in 0..<2 {
        value.field_joystick[index] = wire.float32(cursor, value.field_joystick[index])
    }
    value.field_error_state = u8(wire.number(cursor, u64(value.field_error_state), 1))
    value.field_buttons = u8(wire.number(cursor, u64(value.field_buttons), 1))
    value.field_enabled_from_app = u8(wire.number(cursor, u64(value.field_enabled_from_app), 1))
}
/// @brief Encode every complete original unitree_go/msg/UwbState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgUwbState :: proc "contextless"(
    value: ^Ros2Unitree_goMsgUwbState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 55)], writing = true}
    fields_Ros2Unitree_goMsgUwbState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/UwbState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgUwbState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgUwbState, code: u32)
{
    if len(bytes) < 55 || len(bytes) > 55 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgUwbState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/UwbSwitch value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Unitree_goMsgUwbSwitch :: struct {
    /// @brief Original unitree_go/msg/UwbSwitch.enabled field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_enabled: u8,
}
/// @brief Original complete unitree_go/msg/UwbSwitch minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgUwbSwitch_Minimum_Wire_Bytes :: 1
/// @brief Original complete unitree_go/msg/UwbSwitch maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgUwbSwitch_Maximum_Wire_Bytes :: 1
/// @brief Original complete unitree_go/msg/UwbSwitch codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgUwbSwitch_Codec_Identity :: "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5"
/// @brief Traverse every original field of complete unitree_go/msg/UwbSwitch.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgUwbSwitch :: proc "contextless"(
    value: ^Ros2Unitree_goMsgUwbSwitch, cursor: ^wire.Cursor)
{
    value.field_enabled = u8(wire.number(cursor, u64(value.field_enabled), 1))
}
/// @brief Encode every complete original unitree_go/msg/UwbSwitch field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgUwbSwitch :: proc "contextless"(
    value: ^Ros2Unitree_goMsgUwbSwitch, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Unitree_goMsgUwbSwitch(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/UwbSwitch.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgUwbSwitch :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgUwbSwitch, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgUwbSwitch(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_go/msg/WirelessController value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 18..18 bytes.
Ros2Unitree_goMsgWirelessController :: struct {
    /// @brief Original unitree_go/msg/WirelessController.lx field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_lx: f32,
    /// @brief Original unitree_go/msg/WirelessController.ly field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ly: f32,
    /// @brief Original unitree_go/msg/WirelessController.rx field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rx: f32,
    /// @brief Original unitree_go/msg/WirelessController.ry field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ry: f32,
    /// @brief Original unitree_go/msg/WirelessController.keys field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_keys: u16,
}
/// @brief Original complete unitree_go/msg/WirelessController minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgWirelessController_Minimum_Wire_Bytes :: 18
/// @brief Original complete unitree_go/msg/WirelessController maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgWirelessController_Maximum_Wire_Bytes :: 18
/// @brief Original complete unitree_go/msg/WirelessController codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_goMsgWirelessController_Codec_Identity ::
    "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438"
/// @brief Traverse every original field of complete unitree_go/msg/WirelessController.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_goMsgWirelessController :: proc "contextless"(
    value: ^Ros2Unitree_goMsgWirelessController, cursor: ^wire.Cursor)
{
    value.field_lx = wire.float32(cursor, value.field_lx)
    value.field_ly = wire.float32(cursor, value.field_ly)
    value.field_rx = wire.float32(cursor, value.field_rx)
    value.field_ry = wire.float32(cursor, value.field_ry)
    value.field_keys = u16(wire.number(cursor, u64(value.field_keys), 2))
}
/// @brief Encode every complete original unitree_go/msg/WirelessController field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_goMsgWirelessController :: proc "contextless"(
    value: ^Ros2Unitree_goMsgWirelessController, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 18)], writing = true}
    fields_Ros2Unitree_goMsgWirelessController(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_go/msg/WirelessController.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_goMsgWirelessController :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_goMsgWirelessController, code: u32)
{
    if len(bytes) < 18 || len(bytes) > 18 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_goMsgWirelessController(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_hg/msg/BmsCmd value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 41..41 bytes.
Ros2Unitree_hgMsgBmsCmd :: struct {
    /// @brief Original unitree_hg/msg/BmsCmd.cmd field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cmd: u8,
    /// @brief Original unitree_hg/msg/BmsCmd.reserve field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [40]u8,
}
/// @brief Original complete unitree_hg/msg/BmsCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgBmsCmd_Minimum_Wire_Bytes :: 41
/// @brief Original complete unitree_hg/msg/BmsCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgBmsCmd_Maximum_Wire_Bytes :: 41
/// @brief Original complete unitree_hg/msg/BmsCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgBmsCmd_Codec_Identity :: "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de"
/// @brief Traverse every original field of complete unitree_hg/msg/BmsCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_hgMsgBmsCmd :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgBmsCmd, cursor: ^wire.Cursor)
{
    value.field_cmd = u8(wire.number(cursor, u64(value.field_cmd), 1))
    for index in 0..<40 {
        value.field_reserve[index] = u8(wire.number(cursor, u64(value.field_reserve[index]), 1))
    }
}
/// @brief Encode every complete original unitree_hg/msg/BmsCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_hgMsgBmsCmd :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgBmsCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 41)], writing = true}
    fields_Ros2Unitree_hgMsgBmsCmd(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_hg/msg/BmsCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_hgMsgBmsCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_hgMsgBmsCmd, code: u32)
{
    if len(bytes) < 41 || len(bytes) > 41 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_hgMsgBmsCmd(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_hg/msg/BmsState value.
/// @details Retain all 13 original fields and 0 constants. Wire extent 161..161 bytes.
Ros2Unitree_hgMsgBmsState :: struct {
    /// @brief Original unitree_hg/msg/BmsState.version_high field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_version_high: u8,
    /// @brief Original unitree_hg/msg/BmsState.version_low field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_version_low: u8,
    /// @brief Original unitree_hg/msg/BmsState.fn field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_fn: u8,
    /// @brief Original unitree_hg/msg/BmsState.cell_vol field.
    /// @details Original type uint16. Shape array; bound/count 40 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_cell_vol: [40]u16,
    /// @brief Original unitree_hg/msg/BmsState.bmsvoltage field.
    /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_bmsvoltage: [3]u32,
    /// @brief Original unitree_hg/msg/BmsState.current field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: i32,
    /// @brief Original unitree_hg/msg/BmsState.soc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_soc: u8,
    /// @brief Original unitree_hg/msg/BmsState.soh field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_soh: u8,
    /// @brief Original unitree_hg/msg/BmsState.temperature field.
    /// @details Original type int16. Shape array; bound/count 12 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_temperature: [12]i16,
    /// @brief Original unitree_hg/msg/BmsState.cycle field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cycle: u16,
    /// @brief Original unitree_hg/msg/BmsState.manufacturer_date field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_manufacturer_date: u16,
    /// @brief Original unitree_hg/msg/BmsState.bmsstate field.
    /// @details Original type uint32. Shape array; bound/count 5 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_bmsstate: [5]u32,
    /// @brief Original unitree_hg/msg/BmsState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [3]u32,
}
/// @brief Original complete unitree_hg/msg/BmsState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgBmsState_Minimum_Wire_Bytes :: 161
/// @brief Original complete unitree_hg/msg/BmsState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgBmsState_Maximum_Wire_Bytes :: 161
/// @brief Original complete unitree_hg/msg/BmsState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgBmsState_Codec_Identity :: "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d"
/// @brief Traverse every original field of complete unitree_hg/msg/BmsState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_hgMsgBmsState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgBmsState, cursor: ^wire.Cursor)
{
    value.field_version_high = u8(wire.number(cursor, u64(value.field_version_high), 1))
    value.field_version_low = u8(wire.number(cursor, u64(value.field_version_low), 1))
    value.field_fn = u8(wire.number(cursor, u64(value.field_fn), 1))
    for index in 0..<40 {
        value.field_cell_vol[index] = u16(wire.number(cursor, u64(value.field_cell_vol[index]), 2))
    }
    for index in 0..<3 {
        value.field_bmsvoltage[index] = u32(wire.number(cursor, u64(value.field_bmsvoltage[index]), 4))
    }
    value.field_current = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_current), 4))
    value.field_soc = u8(wire.number(cursor, u64(value.field_soc), 1))
    value.field_soh = u8(wire.number(cursor, u64(value.field_soh), 1))
    for index in 0..<12 {
        value.field_temperature[index] = transmute(i16)u16(wire.number(
            cursor,
            u64(transmute(u16)value.field_temperature[index]),
            2,
        ))
    }
    value.field_cycle = u16(wire.number(cursor, u64(value.field_cycle), 2))
    value.field_manufacturer_date = u16(wire.number(cursor, u64(value.field_manufacturer_date), 2))
    for index in 0..<5 {
        value.field_bmsstate[index] = u32(wire.number(cursor, u64(value.field_bmsstate[index]), 4))
    }
    for index in 0..<3 {
        value.field_reserve[index] = u32(wire.number(cursor, u64(value.field_reserve[index]), 4))
    }
}
/// @brief Encode every complete original unitree_hg/msg/BmsState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_hgMsgBmsState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgBmsState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 161)], writing = true}
    fields_Ros2Unitree_hgMsgBmsState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_hg/msg/BmsState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_hgMsgBmsState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_hgMsgBmsState, code: u32)
{
    if len(bytes) < 161 || len(bytes) > 161 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_hgMsgBmsState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_hg/msg/MotorCmd value.
/// @details Retain all 7 original fields and 0 constants. Wire extent 25..25 bytes.
Ros2Unitree_hgMsgMotorCmd :: struct {
    /// @brief Original unitree_hg/msg/MotorCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original unitree_hg/msg/MotorCmd.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q: f32,
    /// @brief Original unitree_hg/msg/MotorCmd.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq: f32,
    /// @brief Original unitree_hg/msg/MotorCmd.tau field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tau: f32,
    /// @brief Original unitree_hg/msg/MotorCmd.kp field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_kp: f32,
    /// @brief Original unitree_hg/msg/MotorCmd.kd field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_kd: f32,
    /// @brief Original unitree_hg/msg/MotorCmd.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32,
}
/// @brief Original complete unitree_hg/msg/MotorCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgMotorCmd_Minimum_Wire_Bytes :: 25
/// @brief Original complete unitree_hg/msg/MotorCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgMotorCmd_Maximum_Wire_Bytes :: 25
/// @brief Original complete unitree_hg/msg/MotorCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgMotorCmd_Codec_Identity :: "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb"
/// @brief Traverse every original field of complete unitree_hg/msg/MotorCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_hgMsgMotorCmd :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgMotorCmd, cursor: ^wire.Cursor)
{
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_q = wire.float32(cursor, value.field_q)
    value.field_dq = wire.float32(cursor, value.field_dq)
    value.field_tau = wire.float32(cursor, value.field_tau)
    value.field_kp = wire.float32(cursor, value.field_kp)
    value.field_kd = wire.float32(cursor, value.field_kd)
    value.field_reserve = u32(wire.number(cursor, u64(value.field_reserve), 4))
}
/// @brief Encode every complete original unitree_hg/msg/MotorCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_hgMsgMotorCmd :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgMotorCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 25)], writing = true}
    fields_Ros2Unitree_hgMsgMotorCmd(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_hg/msg/MotorCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_hgMsgMotorCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_hgMsgMotorCmd, code: u32)
{
    if len(bytes) < 25 || len(bytes) > 25 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_hgMsgMotorCmd(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_hg/msg/HandCmd value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 20..820 bytes.
Ros2Unitree_hgMsgHandCmd :: struct {
    /// @brief Original unitree_hg/msg/HandCmd.motor_cmd field.
    /// @details Original type unitree_hg/msg/MotorCmd. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_cmd: wire.Sequence(Ros2Unitree_hgMsgMotorCmd, 32),
    /// @brief Original unitree_hg/msg/HandCmd.reserve field.
    /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [4]u32,
}
/// @brief Original complete unitree_hg/msg/HandCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgHandCmd_Minimum_Wire_Bytes :: 20
/// @brief Original complete unitree_hg/msg/HandCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgHandCmd_Maximum_Wire_Bytes :: 820
/// @brief Original complete unitree_hg/msg/HandCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgHandCmd_Codec_Identity :: "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006"
/// @brief Traverse every original field of complete unitree_hg/msg/HandCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_hgMsgHandCmd :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgHandCmd, cursor: ^wire.Cursor)
{
    value.field_motor_cmd.size = u32(wire.number(cursor, u64(value.field_motor_cmd.size), 4))
    if value.field_motor_cmd.size > 32 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_motor_cmd.size) {
        fields_Ros2Unitree_hgMsgMotorCmd(&value.field_motor_cmd.items[index], cursor)
    }
    for index in 0..<4 {
        value.field_reserve[index] = u32(wire.number(cursor, u64(value.field_reserve[index]), 4))
    }
}
/// @brief Encode every complete original unitree_hg/msg/HandCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_hgMsgHandCmd :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgHandCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 820)], writing = true}
    fields_Ros2Unitree_hgMsgHandCmd(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_hg/msg/HandCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_hgMsgHandCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_hgMsgHandCmd, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 820 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_hgMsgHandCmd(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_hg/msg/MotorState value.
/// @details Retain all 10 original fields and 0 constants. Wire extent 53..53 bytes.
Ros2Unitree_hgMsgMotorState :: struct {
    /// @brief Original unitree_hg/msg/MotorState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original unitree_hg/msg/MotorState.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q: f32,
    /// @brief Original unitree_hg/msg/MotorState.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq: f32,
    /// @brief Original unitree_hg/msg/MotorState.ddq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ddq: f32,
    /// @brief Original unitree_hg/msg/MotorState.tau_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tau_est: f32,
    /// @brief Original unitree_hg/msg/MotorState.temperature field.
    /// @details Original type int16. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_temperature: [2]i16,
    /// @brief Original unitree_hg/msg/MotorState.vol field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_vol: f32,
    /// @brief Original unitree_hg/msg/MotorState.sensor field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_sensor: [2]u32,
    /// @brief Original unitree_hg/msg/MotorState.motorstate field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motorstate: u32,
    /// @brief Original unitree_hg/msg/MotorState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [4]u32,
}
/// @brief Original complete unitree_hg/msg/MotorState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgMotorState_Minimum_Wire_Bytes :: 53
/// @brief Original complete unitree_hg/msg/MotorState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgMotorState_Maximum_Wire_Bytes :: 53
/// @brief Original complete unitree_hg/msg/MotorState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgMotorState_Codec_Identity ::
    "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934"
/// @brief Traverse every original field of complete unitree_hg/msg/MotorState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_hgMsgMotorState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgMotorState, cursor: ^wire.Cursor)
{
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_q = wire.float32(cursor, value.field_q)
    value.field_dq = wire.float32(cursor, value.field_dq)
    value.field_ddq = wire.float32(cursor, value.field_ddq)
    value.field_tau_est = wire.float32(cursor, value.field_tau_est)
    for index in 0..<2 {
        value.field_temperature[index] = transmute(i16)u16(wire.number(
            cursor,
            u64(transmute(u16)value.field_temperature[index]),
            2,
        ))
    }
    value.field_vol = wire.float32(cursor, value.field_vol)
    for index in 0..<2 {
        value.field_sensor[index] = u32(wire.number(cursor, u64(value.field_sensor[index]), 4))
    }
    value.field_motorstate = u32(wire.number(cursor, u64(value.field_motorstate), 4))
    for index in 0..<4 {
        value.field_reserve[index] = u32(wire.number(cursor, u64(value.field_reserve[index]), 4))
    }
}
/// @brief Encode every complete original unitree_hg/msg/MotorState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_hgMsgMotorState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgMotorState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 53)], writing = true}
    fields_Ros2Unitree_hgMsgMotorState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_hg/msg/MotorState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_hgMsgMotorState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_hgMsgMotorState, code: u32)
{
    if len(bytes) < 53 || len(bytes) > 53 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_hgMsgMotorState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_hg/msg/PressSensorState value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 104..104 bytes.
Ros2Unitree_hgMsgPressSensorState :: struct {
    /// @brief Original unitree_hg/msg/PressSensorState.pressure field.
    /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_pressure: [12]f32,
    /// @brief Original unitree_hg/msg/PressSensorState.temperature field.
    /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_temperature: [12]f32,
    /// @brief Original unitree_hg/msg/PressSensorState.lost field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_lost: u32,
    /// @brief Original unitree_hg/msg/PressSensorState.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32,
}
/// @brief Original complete unitree_hg/msg/PressSensorState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgPressSensorState_Minimum_Wire_Bytes :: 104
/// @brief Original complete unitree_hg/msg/PressSensorState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgPressSensorState_Maximum_Wire_Bytes :: 104
/// @brief Original complete unitree_hg/msg/PressSensorState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgPressSensorState_Codec_Identity ::
    "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5"
/// @brief Traverse every original field of complete unitree_hg/msg/PressSensorState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_hgMsgPressSensorState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgPressSensorState, cursor: ^wire.Cursor)
{
    for index in 0..<12 {
        value.field_pressure[index] = wire.float32(cursor, value.field_pressure[index])
    }
    for index in 0..<12 {
        value.field_temperature[index] = wire.float32(cursor, value.field_temperature[index])
    }
    value.field_lost = u32(wire.number(cursor, u64(value.field_lost), 4))
    value.field_reserve = u32(wire.number(cursor, u64(value.field_reserve), 4))
}
/// @brief Encode every complete original unitree_hg/msg/PressSensorState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_hgMsgPressSensorState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgPressSensorState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 104)], writing = true}
    fields_Ros2Unitree_hgMsgPressSensorState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_hg/msg/PressSensorState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_hgMsgPressSensorState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_hgMsgPressSensorState, code: u32)
{
    if len(bytes) < 104 || len(bytes) > 104 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_hgMsgPressSensorState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_hg/msg/IMUState value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 54..54 bytes.
Ros2Unitree_hgMsgIMUState :: struct {
    /// @brief Original unitree_hg/msg/IMUState.quaternion field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_quaternion: [4]f32,
    /// @brief Original unitree_hg/msg/IMUState.gyroscope field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_gyroscope: [3]f32,
    /// @brief Original unitree_hg/msg/IMUState.accelerometer field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_accelerometer: [3]f32,
    /// @brief Original unitree_hg/msg/IMUState.rpy field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_rpy: [3]f32,
    /// @brief Original unitree_hg/msg/IMUState.temperature field.
    /// @details Original type int16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: i16,
}
/// @brief Original complete unitree_hg/msg/IMUState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgIMUState_Minimum_Wire_Bytes :: 54
/// @brief Original complete unitree_hg/msg/IMUState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgIMUState_Maximum_Wire_Bytes :: 54
/// @brief Original complete unitree_hg/msg/IMUState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgIMUState_Codec_Identity :: "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420"
/// @brief Traverse every original field of complete unitree_hg/msg/IMUState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_hgMsgIMUState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgIMUState, cursor: ^wire.Cursor)
{
    for index in 0..<4 {
        value.field_quaternion[index] = wire.float32(cursor, value.field_quaternion[index])
    }
    for index in 0..<3 {
        value.field_gyroscope[index] = wire.float32(cursor, value.field_gyroscope[index])
    }
    for index in 0..<3 {
        value.field_accelerometer[index] = wire.float32(cursor, value.field_accelerometer[index])
    }
    for index in 0..<3 {
        value.field_rpy[index] = wire.float32(cursor, value.field_rpy[index])
    }
    value.field_temperature = transmute(i16)u16(wire.number(cursor, u64(transmute(u16)value.field_temperature), 2))
}
/// @brief Encode every complete original unitree_hg/msg/IMUState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_hgMsgIMUState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgIMUState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 54)], writing = true}
    fields_Ros2Unitree_hgMsgIMUState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_hg/msg/IMUState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_hgMsgIMUState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_hgMsgIMUState, code: u32)
{
    if len(bytes) < 54 || len(bytes) > 54 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_hgMsgIMUState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_hg/msg/HandState value.
/// @details Retain all 9 original fields and 0 constants. Wire extent 94..5118 bytes.
Ros2Unitree_hgMsgHandState :: struct {
    /// @brief Original unitree_hg/msg/HandState.motor_state field.
    /// @details Original type unitree_hg/msg/MotorState. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_state: wire.Sequence(Ros2Unitree_hgMsgMotorState, 32),
    /// @brief Original unitree_hg/msg/HandState.press_sensor_state field.
    /// @details Original type unitree_hg/msg/PressSensorState. Shape sequence; bound/count 32
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_press_sensor_state: wire.Sequence(Ros2Unitree_hgMsgPressSensorState, 32),
    /// @brief Original unitree_hg/msg/HandState.imu_state field.
    /// @details Original type unitree_hg/msg/IMUState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_imu_state: Ros2Unitree_hgMsgIMUState,
    /// @brief Original unitree_hg/msg/HandState.power_v field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_power_v: f32,
    /// @brief Original unitree_hg/msg/HandState.power_a field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_power_a: f32,
    /// @brief Original unitree_hg/msg/HandState.system_v field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_system_v: f32,
    /// @brief Original unitree_hg/msg/HandState.device_v field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_device_v: f32,
    /// @brief Original unitree_hg/msg/HandState.error field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_error: [2]u32,
    /// @brief Original unitree_hg/msg/HandState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [2]u32,
}
/// @brief Original complete unitree_hg/msg/HandState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgHandState_Minimum_Wire_Bytes :: 94
/// @brief Original complete unitree_hg/msg/HandState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgHandState_Maximum_Wire_Bytes :: 5118
/// @brief Original complete unitree_hg/msg/HandState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgHandState_Codec_Identity :: "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6"
/// @brief Traverse every original field of complete unitree_hg/msg/HandState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_hgMsgHandState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgHandState, cursor: ^wire.Cursor)
{
    value.field_motor_state.size = u32(wire.number(cursor, u64(value.field_motor_state.size), 4))
    if value.field_motor_state.size > 32 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_motor_state.size) {
        fields_Ros2Unitree_hgMsgMotorState(&value.field_motor_state.items[index], cursor)
    }
    value.field_press_sensor_state.size = u32(wire.number(cursor, u64(value.field_press_sensor_state.size), 4))
    if value.field_press_sensor_state.size > 32 {
        cursor.code = 22
        return
    }
    for index in 0..<int(value.field_press_sensor_state.size) {
        fields_Ros2Unitree_hgMsgPressSensorState(&value.field_press_sensor_state.items[index], cursor)
    }
    fields_Ros2Unitree_hgMsgIMUState(&value.field_imu_state, cursor)
    value.field_power_v = wire.float32(cursor, value.field_power_v)
    value.field_power_a = wire.float32(cursor, value.field_power_a)
    value.field_system_v = wire.float32(cursor, value.field_system_v)
    value.field_device_v = wire.float32(cursor, value.field_device_v)
    for index in 0..<2 {
        value.field_error[index] = u32(wire.number(cursor, u64(value.field_error[index]), 4))
    }
    for index in 0..<2 {
        value.field_reserve[index] = u32(wire.number(cursor, u64(value.field_reserve[index]), 4))
    }
}
/// @brief Encode every complete original unitree_hg/msg/HandState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_hgMsgHandState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgHandState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5118)], writing = true}
    fields_Ros2Unitree_hgMsgHandState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_hg/msg/HandState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_hgMsgHandState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_hgMsgHandState, code: u32)
{
    if len(bytes) < 94 || len(bytes) > 5118 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_hgMsgHandState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_hg/msg/LowCmd value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 897..897 bytes.
Ros2Unitree_hgMsgLowCmd :: struct {
    /// @brief Original unitree_hg/msg/LowCmd.mode_pr field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode_pr: u8,
    /// @brief Original unitree_hg/msg/LowCmd.mode_machine field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode_machine: u8,
    /// @brief Original unitree_hg/msg/LowCmd.motor_cmd field.
    /// @details Original type unitree_hg/msg/MotorCmd. Shape array; bound/count 35 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_cmd: [35]Ros2Unitree_hgMsgMotorCmd,
    /// @brief Original unitree_hg/msg/LowCmd.reserve field.
    /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [4]u32,
    /// @brief Original unitree_hg/msg/LowCmd.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32,
}
/// @brief Original complete unitree_hg/msg/LowCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgLowCmd_Minimum_Wire_Bytes :: 897
/// @brief Original complete unitree_hg/msg/LowCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgLowCmd_Maximum_Wire_Bytes :: 897
/// @brief Original complete unitree_hg/msg/LowCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgLowCmd_Codec_Identity :: "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461"
/// @brief Traverse every original field of complete unitree_hg/msg/LowCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_hgMsgLowCmd :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgLowCmd, cursor: ^wire.Cursor)
{
    value.field_mode_pr = u8(wire.number(cursor, u64(value.field_mode_pr), 1))
    value.field_mode_machine = u8(wire.number(cursor, u64(value.field_mode_machine), 1))
    for index in 0..<35 {
        fields_Ros2Unitree_hgMsgMotorCmd(&value.field_motor_cmd[index], cursor)
    }
    for index in 0..<4 {
        value.field_reserve[index] = u32(wire.number(cursor, u64(value.field_reserve[index]), 4))
    }
    value.field_crc = u32(wire.number(cursor, u64(value.field_crc), 4))
}
/// @brief Encode every complete original unitree_hg/msg/LowCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_hgMsgLowCmd :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgLowCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 897)], writing = true}
    fields_Ros2Unitree_hgMsgLowCmd(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_hg/msg/LowCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_hgMsgLowCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_hgMsgLowCmd, code: u32)
{
    if len(bytes) < 897 || len(bytes) > 897 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_hgMsgLowCmd(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_hg/msg/LowState value.
/// @details Retain all 9 original fields and 0 constants. Wire extent 1983..1983 bytes.
Ros2Unitree_hgMsgLowState :: struct {
    /// @brief Original unitree_hg/msg/LowState.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32,
    /// @brief Original unitree_hg/msg/LowState.mode_pr field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode_pr: u8,
    /// @brief Original unitree_hg/msg/LowState.mode_machine field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode_machine: u8,
    /// @brief Original unitree_hg/msg/LowState.tick field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tick: u32,
    /// @brief Original unitree_hg/msg/LowState.imu_state field.
    /// @details Original type unitree_hg/msg/IMUState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_imu_state: Ros2Unitree_hgMsgIMUState,
    /// @brief Original unitree_hg/msg/LowState.motor_state field.
    /// @details Original type unitree_hg/msg/MotorState. Shape array; bound/count 35 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_state: [35]Ros2Unitree_hgMsgMotorState,
    /// @brief Original unitree_hg/msg/LowState.wireless_remote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wireless_remote: [40]u8,
    /// @brief Original unitree_hg/msg/LowState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [4]u32,
    /// @brief Original unitree_hg/msg/LowState.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32,
}
/// @brief Original complete unitree_hg/msg/LowState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgLowState_Minimum_Wire_Bytes :: 1983
/// @brief Original complete unitree_hg/msg/LowState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgLowState_Maximum_Wire_Bytes :: 1983
/// @brief Original complete unitree_hg/msg/LowState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgLowState_Codec_Identity :: "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d"
/// @brief Traverse every original field of complete unitree_hg/msg/LowState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_hgMsgLowState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgLowState, cursor: ^wire.Cursor)
{
    for index in 0..<2 {
        value.field_version[index] = u32(wire.number(cursor, u64(value.field_version[index]), 4))
    }
    value.field_mode_pr = u8(wire.number(cursor, u64(value.field_mode_pr), 1))
    value.field_mode_machine = u8(wire.number(cursor, u64(value.field_mode_machine), 1))
    value.field_tick = u32(wire.number(cursor, u64(value.field_tick), 4))
    fields_Ros2Unitree_hgMsgIMUState(&value.field_imu_state, cursor)
    for index in 0..<35 {
        fields_Ros2Unitree_hgMsgMotorState(&value.field_motor_state[index], cursor)
    }
    for index in 0..<40 {
        value.field_wireless_remote[index] = u8(wire.number(cursor, u64(value.field_wireless_remote[index]), 1))
    }
    for index in 0..<4 {
        value.field_reserve[index] = u32(wire.number(cursor, u64(value.field_reserve[index]), 4))
    }
    value.field_crc = u32(wire.number(cursor, u64(value.field_crc), 4))
}
/// @brief Encode every complete original unitree_hg/msg/LowState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_hgMsgLowState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgLowState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1983)], writing = true}
    fields_Ros2Unitree_hgMsgLowState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_hg/msg/LowState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_hgMsgLowState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_hgMsgLowState, code: u32)
{
    if len(bytes) < 1983 || len(bytes) > 1983 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_hgMsgLowState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_hg/msg/MainBoardState value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 72..72 bytes.
Ros2Unitree_hgMsgMainBoardState :: struct {
    /// @brief Original unitree_hg/msg/MainBoardState.fan_state field.
    /// @details Original type uint16. Shape array; bound/count 6 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_fan_state: [6]u16,
    /// @brief Original unitree_hg/msg/MainBoardState.temperature field.
    /// @details Original type int16. Shape array; bound/count 6 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_temperature: [6]i16,
    /// @brief Original unitree_hg/msg/MainBoardState.value field.
    /// @details Original type float32. Shape array; bound/count 6 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_value: [6]f32,
    /// @brief Original unitree_hg/msg/MainBoardState.state field.
    /// @details Original type uint32. Shape array; bound/count 6 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_state: [6]u32,
}
/// @brief Original complete unitree_hg/msg/MainBoardState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgMainBoardState_Minimum_Wire_Bytes :: 72
/// @brief Original complete unitree_hg/msg/MainBoardState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgMainBoardState_Maximum_Wire_Bytes :: 72
/// @brief Original complete unitree_hg/msg/MainBoardState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Unitree_hgMsgMainBoardState_Codec_Identity ::
    "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6"
/// @brief Traverse every original field of complete unitree_hg/msg/MainBoardState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Unitree_hgMsgMainBoardState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgMainBoardState, cursor: ^wire.Cursor)
{
    for index in 0..<6 {
        value.field_fan_state[index] = u16(wire.number(cursor, u64(value.field_fan_state[index]), 2))
    }
    for index in 0..<6 {
        value.field_temperature[index] = transmute(i16)u16(wire.number(
            cursor,
            u64(transmute(u16)value.field_temperature[index]),
            2,
        ))
    }
    for index in 0..<6 {
        value.field_value[index] = wire.float32(cursor, value.field_value[index])
    }
    for index in 0..<6 {
        value.field_state[index] = u32(wire.number(cursor, u64(value.field_state[index]), 4))
    }
}
/// @brief Encode every complete original unitree_hg/msg/MainBoardState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Unitree_hgMsgMainBoardState :: proc "contextless"(
    value: ^Ros2Unitree_hgMsgMainBoardState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 72)], writing = true}
    fields_Ros2Unitree_hgMsgMainBoardState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_hg/msg/MainBoardState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Unitree_hgMsgMainBoardState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Unitree_hgMsgMainBoardState, code: u32)
{
    if len(bytes) < 72 || len(bytes) > 72 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Unitree_hgMsgMainBoardState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

