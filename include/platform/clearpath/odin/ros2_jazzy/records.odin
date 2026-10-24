// @file records.odin
// @brief Complete owned original clearpath ROS 2 records and codecs.
// @details No generated record owns a native ROS object or grants a capability.
package records
import wire "native:odin/wire"

/// @brief Complete original clearpath_motor_msgs/action/LynxCalibrate_Goal value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal :: struct {
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal :: proc "contextless"() -> Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal {
    result: Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal
    return result
}
/// @brief Original complete clearpath_motor_msgs/action/LynxCalibrate_Goal minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal_Minimum_Wire_Bytes :: 0
/// @brief Original complete clearpath_motor_msgs/action/LynxCalibrate_Goal maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal_Maximum_Wire_Bytes :: 0
/// @brief Original complete clearpath_motor_msgs/action/LynxCalibrate_Goal codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal_Codec_Identity :: "UWVMROS1_61b01a6234b41f96464de9449b3e8d1b955decf6afa12aa3ba94062c98cec681"
/// @brief Traverse every original field of complete clearpath_motor_msgs/action/LynxCalibrate_Goal.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original clearpath_motor_msgs/action/LynxCalibrate_Goal field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/action/LynxCalibrate_Goal.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/action/LynxCalibrate_Result value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..12 bytes.
Ros2Clearpath_motor_msgsActionLynxCalibrate_Result :: struct {
    /// @brief Original clearpath_motor_msgs/action/LynxCalibrate_Result.offset field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_offset: wire.Sequence(f32, 2),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsActionLynxCalibrate_Result :: proc "contextless"() -> Ros2Clearpath_motor_msgsActionLynxCalibrate_Result {
    result: Ros2Clearpath_motor_msgsActionLynxCalibrate_Result
    return result
}
/// @brief Original complete clearpath_motor_msgs/action/LynxCalibrate_Result minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxCalibrate_Result_Minimum_Wire_Bytes :: 4
/// @brief Original complete clearpath_motor_msgs/action/LynxCalibrate_Result maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxCalibrate_Result_Maximum_Wire_Bytes :: 12
/// @brief Original complete clearpath_motor_msgs/action/LynxCalibrate_Result codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxCalibrate_Result_Codec_Identity :: "UWVMROS1_686450363b8b15eba1e9e9e9ff05c9aacfb95bb0d113eaa7c443e4c70d55d41f"
/// @brief Traverse every original field of complete
/// clearpath_motor_msgs/action/LynxCalibrate_Result.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsActionLynxCalibrate_Result :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsActionLynxCalibrate_Result, cursor: ^wire.Cursor)
{
    value.field_offset.size = u32(wire.number(cursor, u64(value.field_offset.size), 4))
    if value.field_offset.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_offset.size) {
        value.field_offset.items[index] = wire.float32(cursor, value.field_offset.items[index])
    }
}
/// @brief Encode every complete original clearpath_motor_msgs/action/LynxCalibrate_Result field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsActionLynxCalibrate_Result :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsActionLynxCalibrate_Result, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 12)], writing = true}
    fields_Ros2Clearpath_motor_msgsActionLynxCalibrate_Result(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/action/LynxCalibrate_Result.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsActionLynxCalibrate_Result :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsActionLynxCalibrate_Result, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 12 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsActionLynxCalibrate_Result(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/action/LynxCalibrate_Feedback value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..8 bytes.
Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback :: struct {
    /// @brief Original clearpath_motor_msgs/action/LynxCalibrate_Feedback.iteration field.
    /// @details Original type uint16. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_iteration: wire.Sequence(u16, 2),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback :: proc "contextless"() -> Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback {
    result: Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback
    return result
}
/// @brief Original complete clearpath_motor_msgs/action/LynxCalibrate_Feedback minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback_Minimum_Wire_Bytes :: 4
/// @brief Original complete clearpath_motor_msgs/action/LynxCalibrate_Feedback maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback_Maximum_Wire_Bytes :: 8
/// @brief Original complete clearpath_motor_msgs/action/LynxCalibrate_Feedback codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback_Codec_Identity :: "UWVMROS1_ebe7badd3f72982079911d8aa72c4ddd27ff0a12d2f948e5970649317a592b53"
/// @brief Traverse every original field of complete
/// clearpath_motor_msgs/action/LynxCalibrate_Feedback.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback, cursor: ^wire.Cursor)
{
    value.field_iteration.size = u32(wire.number(cursor, u64(value.field_iteration.size), 4))
    if value.field_iteration.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_iteration.size) {
        value.field_iteration.items[index] = u16(wire.number(cursor, u64(value.field_iteration.items[index]), 2))
    }
}
/// @brief Encode every complete original clearpath_motor_msgs/action/LynxCalibrate_Feedback field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/action/LynxCalibrate_Feedback.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/action/LynxUpdate_Goal value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..260 bytes.
Ros2Clearpath_motor_msgsActionLynxUpdate_Goal :: struct {
    /// @brief Original clearpath_motor_msgs/action/LynxUpdate_Goal.file field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_file: wire.Text(256, false),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsActionLynxUpdate_Goal :: proc "contextless"() -> Ros2Clearpath_motor_msgsActionLynxUpdate_Goal {
    result: Ros2Clearpath_motor_msgsActionLynxUpdate_Goal
    return result
}
/// @brief Original complete clearpath_motor_msgs/action/LynxUpdate_Goal minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxUpdate_Goal_Minimum_Wire_Bytes :: 4
/// @brief Original complete clearpath_motor_msgs/action/LynxUpdate_Goal maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxUpdate_Goal_Maximum_Wire_Bytes :: 260
/// @brief Original complete clearpath_motor_msgs/action/LynxUpdate_Goal codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxUpdate_Goal_Codec_Identity :: "UWVMROS1_f0362f8a90391e8ffda2e8f3b798769b644091058361882c4e9457196f007565"
/// @brief Traverse every original field of complete clearpath_motor_msgs/action/LynxUpdate_Goal.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsActionLynxUpdate_Goal :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsActionLynxUpdate_Goal, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_file)
}
/// @brief Encode every complete original clearpath_motor_msgs/action/LynxUpdate_Goal field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsActionLynxUpdate_Goal :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsActionLynxUpdate_Goal, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 260)], writing = true}
    fields_Ros2Clearpath_motor_msgsActionLynxUpdate_Goal(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/action/LynxUpdate_Goal.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsActionLynxUpdate_Goal :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsActionLynxUpdate_Goal, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 260 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsActionLynxUpdate_Goal(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/action/LynxUpdate_Result value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..6 bytes.
Ros2Clearpath_motor_msgsActionLynxUpdate_Result :: struct {
    /// @brief Original clearpath_motor_msgs/action/LynxUpdate_Result.success field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_success: wire.Sequence(bool, 2),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsActionLynxUpdate_Result :: proc "contextless"() -> Ros2Clearpath_motor_msgsActionLynxUpdate_Result {
    result: Ros2Clearpath_motor_msgsActionLynxUpdate_Result
    return result
}
/// @brief Original complete clearpath_motor_msgs/action/LynxUpdate_Result minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxUpdate_Result_Minimum_Wire_Bytes :: 4
/// @brief Original complete clearpath_motor_msgs/action/LynxUpdate_Result maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxUpdate_Result_Maximum_Wire_Bytes :: 6
/// @brief Original complete clearpath_motor_msgs/action/LynxUpdate_Result codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxUpdate_Result_Codec_Identity :: "UWVMROS1_126fe871dbcb036e485d20e8ccdc8e9fb7be01757f539bfba895aabf44d341d8"
/// @brief Traverse every original field of complete clearpath_motor_msgs/action/LynxUpdate_Result.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsActionLynxUpdate_Result :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsActionLynxUpdate_Result, cursor: ^wire.Cursor)
{
    value.field_success.size = u32(wire.number(cursor, u64(value.field_success.size), 4))
    if value.field_success.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_success.size) {
        value.field_success.items[index] = wire.boolean(cursor, value.field_success.items[index])
    }
}
/// @brief Encode every complete original clearpath_motor_msgs/action/LynxUpdate_Result field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsActionLynxUpdate_Result :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsActionLynxUpdate_Result, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 6)], writing = true}
    fields_Ros2Clearpath_motor_msgsActionLynxUpdate_Result(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/action/LynxUpdate_Result.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsActionLynxUpdate_Result :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsActionLynxUpdate_Result, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 6 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsActionLynxUpdate_Result(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/action/LynxUpdate_Feedback value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..12 bytes.
Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback :: struct {
    /// @brief Original clearpath_motor_msgs/action/LynxUpdate_Feedback.progress field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_progress: wire.Sequence(f32, 2),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback :: proc "contextless"() -> Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback {
    result: Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback
    return result
}
/// @brief Original complete clearpath_motor_msgs/action/LynxUpdate_Feedback minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback_Minimum_Wire_Bytes :: 4
/// @brief Original complete clearpath_motor_msgs/action/LynxUpdate_Feedback maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback_Maximum_Wire_Bytes :: 12
/// @brief Original complete clearpath_motor_msgs/action/LynxUpdate_Feedback codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback_Codec_Identity :: "UWVMROS1_2179ec9dee627234a1a31e9681ff214cc45ca837349cd8e407e019a354121b19"
/// @brief Traverse every original field of complete
/// clearpath_motor_msgs/action/LynxUpdate_Feedback.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback, cursor: ^wire.Cursor)
{
    value.field_progress.size = u32(wire.number(cursor, u64(value.field_progress.size), 4))
    if value.field_progress.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_progress.size) {
        value.field_progress.items[index] = wire.float32(cursor, value.field_progress.items[index])
    }
}
/// @brief Encode every complete original clearpath_motor_msgs/action/LynxUpdate_Feedback field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 12)], writing = true}
    fields_Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/action/LynxUpdate_Feedback.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 12 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original builtin_interfaces/msg/Duration value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Builtin_interfacesMsgDuration :: struct {
    /// @brief Original builtin_interfaces/msg/Duration.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sec: i32,
    /// @brief Original builtin_interfaces/msg/Duration.nanosec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nanosec: u32,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Builtin_interfacesMsgDuration :: proc "contextless"() -> Ros2Builtin_interfacesMsgDuration {
    result: Ros2Builtin_interfacesMsgDuration
    return result
}
/// @brief Original complete builtin_interfaces/msg/Duration minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Builtin_interfacesMsgDuration_Minimum_Wire_Bytes :: 8
/// @brief Original complete builtin_interfaces/msg/Duration maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Builtin_interfacesMsgDuration_Maximum_Wire_Bytes :: 8
/// @brief Original complete builtin_interfaces/msg/Duration codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Builtin_interfacesMsgDuration_Codec_Identity :: "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
/// @brief Traverse every original field of complete builtin_interfaces/msg/Duration.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Builtin_interfacesMsgDuration :: proc "contextless"(
    value: ^Ros2Builtin_interfacesMsgDuration, cursor: ^wire.Cursor)
{
    value.field_sec = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sec), 4))
    value.field_nanosec = u32(wire.number(cursor, u64(value.field_nanosec), 4))
    if value.field_nanosec >= 1000000000 { cursor.code = 22 }
}
/// @brief Encode every complete original builtin_interfaces/msg/Duration field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Builtin_interfacesMsgDuration :: proc "contextless"(
    value: ^Ros2Builtin_interfacesMsgDuration, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Builtin_interfacesMsgDuration(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original builtin_interfaces/msg/Duration.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Builtin_interfacesMsgDuration :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Builtin_interfacesMsgDuration, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Builtin_interfacesMsgDuration(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original builtin_interfaces/msg/Time value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Builtin_interfacesMsgTime :: struct {
    /// @brief Original builtin_interfaces/msg/Time.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sec: i32,
    /// @brief Original builtin_interfaces/msg/Time.nanosec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nanosec: u32,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Builtin_interfacesMsgTime :: proc "contextless"() -> Ros2Builtin_interfacesMsgTime {
    result: Ros2Builtin_interfacesMsgTime
    return result
}
/// @brief Original complete builtin_interfaces/msg/Time minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Builtin_interfacesMsgTime_Minimum_Wire_Bytes :: 8
/// @brief Original complete builtin_interfaces/msg/Time maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Builtin_interfacesMsgTime_Maximum_Wire_Bytes :: 8
/// @brief Original complete builtin_interfaces/msg/Time codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Builtin_interfacesMsgTime_Codec_Identity :: "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
/// @brief Traverse every original field of complete builtin_interfaces/msg/Time.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Builtin_interfacesMsgTime :: proc "contextless"(
    value: ^Ros2Builtin_interfacesMsgTime, cursor: ^wire.Cursor)
{
    value.field_sec = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sec), 4))
    value.field_nanosec = u32(wire.number(cursor, u64(value.field_nanosec), 4))
    if value.field_nanosec >= 1000000000 { cursor.code = 22 }
}
/// @brief Encode every complete original builtin_interfaces/msg/Time field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Builtin_interfacesMsgTime :: proc "contextless"(
    value: ^Ros2Builtin_interfacesMsgTime, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Builtin_interfacesMsgTime(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original builtin_interfaces/msg/Time.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Builtin_interfacesMsgTime :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Builtin_interfacesMsgTime, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Builtin_interfacesMsgTime(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_control_msgs/msg/DeviceInfo value.
/// @details Retain all 7 original fields and 0 constants. Wire extent 28..1820 bytes.
Ros2Clearpath_control_msgsMsgDeviceInfo :: struct {
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.device_id field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_device_id: wire.Text(256, false),
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.device_class field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_device_class: wire.Text(256, false),
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.model field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_model: wire.Text(256, false),
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.manufacturer field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_manufacturer: wire.Text(256, false),
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.firmware_version field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_firmware_version: wire.Text(256, false),
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.hardware_version field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_hardware_version: wire.Text(256, false),
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.serial_number field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_serial_number: wire.Text(256, false),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_control_msgsMsgDeviceInfo :: proc "contextless"() -> Ros2Clearpath_control_msgsMsgDeviceInfo {
    result: Ros2Clearpath_control_msgsMsgDeviceInfo
    return result
}
/// @brief Original complete clearpath_control_msgs/msg/DeviceInfo minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_control_msgsMsgDeviceInfo_Minimum_Wire_Bytes :: 28
/// @brief Original complete clearpath_control_msgs/msg/DeviceInfo maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_control_msgsMsgDeviceInfo_Maximum_Wire_Bytes :: 1820
/// @brief Original complete clearpath_control_msgs/msg/DeviceInfo codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_control_msgsMsgDeviceInfo_Codec_Identity :: "UWVMROS1_9111f5d4b5324c36eb85f01e6fdbc3c589479ff5b64a8fa7b9d467aa14675c3e"
/// @brief Traverse every original field of complete clearpath_control_msgs/msg/DeviceInfo.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_control_msgsMsgDeviceInfo :: proc "contextless"(
    value: ^Ros2Clearpath_control_msgsMsgDeviceInfo, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_device_id)
    wire.text(cursor, &value.field_device_class)
    wire.text(cursor, &value.field_model)
    wire.text(cursor, &value.field_manufacturer)
    wire.text(cursor, &value.field_firmware_version)
    wire.text(cursor, &value.field_hardware_version)
    wire.text(cursor, &value.field_serial_number)
}
/// @brief Encode every complete original clearpath_control_msgs/msg/DeviceInfo field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_control_msgsMsgDeviceInfo :: proc "contextless"(
    value: ^Ros2Clearpath_control_msgsMsgDeviceInfo, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1820)], writing = true}
    fields_Ros2Clearpath_control_msgsMsgDeviceInfo(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_control_msgs/msg/DeviceInfo.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_control_msgsMsgDeviceInfo :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_control_msgsMsgDeviceInfo, code: u32)
{
    if len(bytes) < 28 || len(bytes) > 1820 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_control_msgsMsgDeviceInfo(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_control_msgs/msg/StreamControl value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..261 bytes.
Ros2Clearpath_control_msgsMsgStreamControl :: struct {
    /// @brief Original clearpath_control_msgs/msg/StreamControl.stream field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_stream: wire.Text(256, false),
    /// @brief Original clearpath_control_msgs/msg/StreamControl.enabled field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_enabled: bool,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_control_msgsMsgStreamControl :: proc "contextless"() -> Ros2Clearpath_control_msgsMsgStreamControl {
    result: Ros2Clearpath_control_msgsMsgStreamControl
    return result
}
/// @brief Original complete clearpath_control_msgs/msg/StreamControl minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_control_msgsMsgStreamControl_Minimum_Wire_Bytes :: 5
/// @brief Original complete clearpath_control_msgs/msg/StreamControl maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_control_msgsMsgStreamControl_Maximum_Wire_Bytes :: 261
/// @brief Original complete clearpath_control_msgs/msg/StreamControl codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_control_msgsMsgStreamControl_Codec_Identity :: "UWVMROS1_26208e266c9185bfb0e715407ab0fe313f2d47e6bc9f54594a102c3a09d34734"
/// @brief Traverse every original field of complete clearpath_control_msgs/msg/StreamControl.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_control_msgsMsgStreamControl :: proc "contextless"(
    value: ^Ros2Clearpath_control_msgsMsgStreamControl, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_stream)
    value.field_enabled = wire.boolean(cursor, value.field_enabled)
}
/// @brief Encode every complete original clearpath_control_msgs/msg/StreamControl field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_control_msgsMsgStreamControl :: proc "contextless"(
    value: ^Ros2Clearpath_control_msgsMsgStreamControl, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 261)], writing = true}
    fields_Ros2Clearpath_control_msgsMsgStreamControl(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_control_msgs/msg/StreamControl.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_control_msgsMsgStreamControl :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_control_msgsMsgStreamControl, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 261 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_control_msgsMsgStreamControl(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxDebug value.
/// @details Retain all 6 original fields and 33 constants. Wire extent 19..291 bytes.
Ros2Clearpath_motor_msgsMsgLynxDebug :: struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.can_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_can_id: u8,
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.joint_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_joint_name: wire.Text(256, false),
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.fault_frequency field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_fault_frequency: u16,
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.accumulator_flags field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_accumulator_flags: u32,
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.accumulators field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_accumulators: wire.Sequence(f32, 2),
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.currents field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_currents: wire.Sequence(f32, 2),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsMsgLynxDebug :: proc "contextless"() -> Ros2Clearpath_motor_msgsMsgLynxDebug {
    result: Ros2Clearpath_motor_msgsMsgLynxDebug
    return result
}
/// @brief Original complete clearpath_motor_msgs/msg/LynxDebug minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxDebug_Minimum_Wire_Bytes :: 19
/// @brief Original complete clearpath_motor_msgs/msg/LynxDebug maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxDebug_Maximum_Wire_Bytes :: 291
/// @brief Original complete clearpath_motor_msgs/msg/LynxDebug codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxDebug_Codec_Identity :: "UWVMROS1_0341ae040f1e8a1f980bde84498c4a4f8b9c55c3806839a73727c1579ab4416e"
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_ABOVE_RATED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_ABOVE_RATED :: 0
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_1 :: 1
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_2 :: 2
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_3 :: 3
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_4 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_4 :: 4
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_5 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_5 :: 5
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_6 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_6 :: 6
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_7 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_7 :: 7
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_8 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_8 :: 8
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_9 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_1_9 :: 9
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_0 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_0 :: 10
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_1 :: 11
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_2 :: 12
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_3 :: 13
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_4 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_4 :: 14
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_5 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_5 :: 15
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_6 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_6 :: 16
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_7 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_7 :: 17
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_8 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_8 :: 18
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_9 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_2_9 :: 19
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_3_0 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_FLAG_CONTINUOUS_3_0 :: 20
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_ABOVE_RATED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_ABOVE_RATED :: 0
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_1_1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_1_1 :: 1
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_1_5 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_1_5 :: 2
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_2_0 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_2_0 :: 3
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_2_5 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_2_5 :: 4
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_3_0 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_ACCUMULATOR_CONTINUOUS_3_0 :: 5
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_FB constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_ID_FB :: 0
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_FF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_ID_FF :: 1
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_REF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_ID_REF :: 2
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_FB constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_IQ_FB :: 3
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_FF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_IQ_FF :: 4
/// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_REF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxDebug_CURRENT_IQ_REF :: 5
/// @brief Traverse every original field of complete clearpath_motor_msgs/msg/LynxDebug.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsMsgLynxDebug :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxDebug, cursor: ^wire.Cursor)
{
    value.field_can_id = u8(wire.number(cursor, u64(value.field_can_id), 1))
    wire.text(cursor, &value.field_joint_name)
    value.field_fault_frequency = u16(wire.number(cursor, u64(value.field_fault_frequency), 2))
    value.field_accumulator_flags = u32(wire.number(cursor, u64(value.field_accumulator_flags), 4))
    value.field_accumulators.size = u32(wire.number(cursor, u64(value.field_accumulators.size), 4))
    if value.field_accumulators.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_accumulators.size) {
        value.field_accumulators.items[index] = wire.float32(cursor, value.field_accumulators.items[index])
    }
    value.field_currents.size = u32(wire.number(cursor, u64(value.field_currents.size), 4))
    if value.field_currents.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_currents.size) {
        value.field_currents.items[index] = wire.float32(cursor, value.field_currents.items[index])
    }
}
/// @brief Encode every complete original clearpath_motor_msgs/msg/LynxDebug field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsMsgLynxDebug :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxDebug, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 291)], writing = true}
    fields_Ros2Clearpath_motor_msgsMsgLynxDebug(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/msg/LynxDebug.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsMsgLynxDebug :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsMsgLynxDebug, code: u32)
{
    if len(bytes) < 19 || len(bytes) > 291 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsMsgLynxDebug(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxFeedback value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 21..277 bytes.
Ros2Clearpath_motor_msgsMsgLynxFeedback :: struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.can_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_can_id: u8,
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.joint_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_joint_name: wire.Text(256, false),
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.current field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: f32,
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.voltage field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_voltage: f32,
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.velocity field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_velocity: f32,
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.travel field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_travel: f32,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsMsgLynxFeedback :: proc "contextless"() -> Ros2Clearpath_motor_msgsMsgLynxFeedback {
    result: Ros2Clearpath_motor_msgsMsgLynxFeedback
    return result
}
/// @brief Original complete clearpath_motor_msgs/msg/LynxFeedback minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxFeedback_Minimum_Wire_Bytes :: 21
/// @brief Original complete clearpath_motor_msgs/msg/LynxFeedback maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxFeedback_Maximum_Wire_Bytes :: 277
/// @brief Original complete clearpath_motor_msgs/msg/LynxFeedback codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxFeedback_Codec_Identity :: "UWVMROS1_5d92c7085019ebf00ba93788b5b2f4055ad40b2c6714575a66fb75cf314429eb"
/// @brief Traverse every original field of complete clearpath_motor_msgs/msg/LynxFeedback.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsMsgLynxFeedback :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxFeedback, cursor: ^wire.Cursor)
{
    value.field_can_id = u8(wire.number(cursor, u64(value.field_can_id), 1))
    wire.text(cursor, &value.field_joint_name)
    value.field_current = wire.float32(cursor, value.field_current)
    value.field_voltage = wire.float32(cursor, value.field_voltage)
    value.field_velocity = wire.float32(cursor, value.field_velocity)
    value.field_travel = wire.float32(cursor, value.field_travel)
}
/// @brief Encode every complete original clearpath_motor_msgs/msg/LynxFeedback field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsMsgLynxFeedback :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxFeedback, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 277)], writing = true}
    fields_Ros2Clearpath_motor_msgsMsgLynxFeedback(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/msg/LynxFeedback.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsMsgLynxFeedback :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsMsgLynxFeedback, code: u32)
{
    if len(bytes) < 21 || len(bytes) > 277 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsMsgLynxFeedback(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxMotorProtection value.
/// @details Retain all 3 original fields and 4 constants. Wire extent 6..262 bytes.
Ros2Clearpath_motor_msgsMsgLynxMotorProtection :: struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.can_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_can_id: u8,
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.joint_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_joint_name: wire.Text(256, false),
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_state: u8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsMsgLynxMotorProtection :: proc "contextless"() -> Ros2Clearpath_motor_msgsMsgLynxMotorProtection {
    result: Ros2Clearpath_motor_msgsMsgLynxMotorProtection
    return result
}
/// @brief Original complete clearpath_motor_msgs/msg/LynxMotorProtection minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxMotorProtection_Minimum_Wire_Bytes :: 6
/// @brief Original complete clearpath_motor_msgs/msg/LynxMotorProtection maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxMotorProtection_Maximum_Wire_Bytes :: 262
/// @brief Original complete clearpath_motor_msgs/msg/LynxMotorProtection codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxMotorProtection_Codec_Identity :: "UWVMROS1_f824abfa97f6f24934e04094d66170167f19a14fb933f325cbef4ed6fca16630"
/// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.NORMAL constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxMotorProtection_NORMAL :: 0
/// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.THROTTLED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxMotorProtection_THROTTLED :: 1
/// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.OVERHEATED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxMotorProtection_OVERHEATED :: 2
/// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.ERROR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxMotorProtection_ERROR :: 3
/// @brief Traverse every original field of complete clearpath_motor_msgs/msg/LynxMotorProtection.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsMsgLynxMotorProtection :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxMotorProtection, cursor: ^wire.Cursor)
{
    value.field_can_id = u8(wire.number(cursor, u64(value.field_can_id), 1))
    wire.text(cursor, &value.field_joint_name)
    value.field_state = u8(wire.number(cursor, u64(value.field_state), 1))
}
/// @brief Encode every complete original clearpath_motor_msgs/msg/LynxMotorProtection field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsMsgLynxMotorProtection :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxMotorProtection, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 262)], writing = true}
    fields_Ros2Clearpath_motor_msgsMsgLynxMotorProtection(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/msg/LynxMotorProtection.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsMsgLynxMotorProtection :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsMsgLynxMotorProtection, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 262 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsMsgLynxMotorProtection(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original std_msgs/msg/Header value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 12..140 bytes.
Ros2Std_msgsMsgHeader :: struct {
    /// @brief Original std_msgs/msg/Header.stamp field.
    /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_stamp: Ros2Builtin_interfacesMsgTime,
    /// @brief Original std_msgs/msg/Header.frame_id field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_frame_id: wire.Text(128, false),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Std_msgsMsgHeader :: proc "contextless"() -> Ros2Std_msgsMsgHeader {
    result: Ros2Std_msgsMsgHeader
    result.field_stamp = init_Ros2Builtin_interfacesMsgTime()
    return result
}
/// @brief Original complete std_msgs/msg/Header minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Std_msgsMsgHeader_Minimum_Wire_Bytes :: 12
/// @brief Original complete std_msgs/msg/Header maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Std_msgsMsgHeader_Maximum_Wire_Bytes :: 140
/// @brief Original complete std_msgs/msg/Header codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Std_msgsMsgHeader_Codec_Identity :: "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
/// @brief Traverse every original field of complete std_msgs/msg/Header.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Std_msgsMsgHeader :: proc "contextless"(
    value: ^Ros2Std_msgsMsgHeader, cursor: ^wire.Cursor)
{
    fields_Ros2Builtin_interfacesMsgTime(&value.field_stamp, cursor)
    wire.text(cursor, &value.field_frame_id)
}
/// @brief Encode every complete original std_msgs/msg/Header field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Std_msgsMsgHeader :: proc "contextless"(
    value: ^Ros2Std_msgsMsgHeader, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 140)], writing = true}
    fields_Ros2Std_msgsMsgHeader(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original std_msgs/msg/Header.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Std_msgsMsgHeader :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Std_msgsMsgHeader, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 140 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Std_msgsMsgHeader(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxMultiDebug value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..1308 bytes.
Ros2Clearpath_motor_msgsMsgLynxMultiDebug :: struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiDebug.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiDebug.drivers field.
    /// @details Original type clearpath_motor_msgs/msg/LynxDebug. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_drivers: wire.Sequence(Ros2Clearpath_motor_msgsMsgLynxDebug, 4),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsMsgLynxMultiDebug :: proc "contextless"() -> Ros2Clearpath_motor_msgsMsgLynxMultiDebug {
    result: Ros2Clearpath_motor_msgsMsgLynxMultiDebug
    result.field_header = init_Ros2Std_msgsMsgHeader()
    return result
}
/// @brief Original complete clearpath_motor_msgs/msg/LynxMultiDebug minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxMultiDebug_Minimum_Wire_Bytes :: 16
/// @brief Original complete clearpath_motor_msgs/msg/LynxMultiDebug maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxMultiDebug_Maximum_Wire_Bytes :: 1308
/// @brief Original complete clearpath_motor_msgs/msg/LynxMultiDebug codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxMultiDebug_Codec_Identity :: "UWVMROS1_056abd2153e7f1a6df223bf5daba581e6c218bb7ef365444fc5c3171dfc62e95"
/// @brief Traverse every original field of complete clearpath_motor_msgs/msg/LynxMultiDebug.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsMsgLynxMultiDebug :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxMultiDebug, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_drivers.size = u32(wire.number(cursor, u64(value.field_drivers.size), 4))
    if value.field_drivers.size > 4 { cursor.code = 22; return }
    for index in 0..<int(value.field_drivers.size) {
        fields_Ros2Clearpath_motor_msgsMsgLynxDebug(&value.field_drivers.items[index], cursor)
    }
}
/// @brief Encode every complete original clearpath_motor_msgs/msg/LynxMultiDebug field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsMsgLynxMultiDebug :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxMultiDebug, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1308)], writing = true}
    fields_Ros2Clearpath_motor_msgsMsgLynxMultiDebug(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/msg/LynxMultiDebug.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsMsgLynxMultiDebug :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsMsgLynxMultiDebug, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 1308 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsMsgLynxMultiDebug(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxMultiFeedback value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..1252 bytes.
Ros2Clearpath_motor_msgsMsgLynxMultiFeedback :: struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiFeedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiFeedback.drivers field.
    /// @details Original type clearpath_motor_msgs/msg/LynxFeedback. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_drivers: wire.Sequence(Ros2Clearpath_motor_msgsMsgLynxFeedback, 4),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsMsgLynxMultiFeedback :: proc "contextless"() -> Ros2Clearpath_motor_msgsMsgLynxMultiFeedback {
    result: Ros2Clearpath_motor_msgsMsgLynxMultiFeedback
    result.field_header = init_Ros2Std_msgsMsgHeader()
    return result
}
/// @brief Original complete clearpath_motor_msgs/msg/LynxMultiFeedback minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxMultiFeedback_Minimum_Wire_Bytes :: 16
/// @brief Original complete clearpath_motor_msgs/msg/LynxMultiFeedback maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxMultiFeedback_Maximum_Wire_Bytes :: 1252
/// @brief Original complete clearpath_motor_msgs/msg/LynxMultiFeedback codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxMultiFeedback_Codec_Identity :: "UWVMROS1_2c83cade6bec4d766fd2cff97338642b3d2065d41e9968ccf5054c6f231242c7"
/// @brief Traverse every original field of complete clearpath_motor_msgs/msg/LynxMultiFeedback.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsMsgLynxMultiFeedback :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxMultiFeedback, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_drivers.size = u32(wire.number(cursor, u64(value.field_drivers.size), 4))
    if value.field_drivers.size > 4 { cursor.code = 22; return }
    for index in 0..<int(value.field_drivers.size) {
        fields_Ros2Clearpath_motor_msgsMsgLynxFeedback(&value.field_drivers.items[index], cursor)
    }
}
/// @brief Encode every complete original clearpath_motor_msgs/msg/LynxMultiFeedback field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsMsgLynxMultiFeedback :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxMultiFeedback, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1252)], writing = true}
    fields_Ros2Clearpath_motor_msgsMsgLynxMultiFeedback(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/msg/LynxMultiFeedback.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsMsgLynxMultiFeedback :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsMsgLynxMultiFeedback, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 1252 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsMsgLynxMultiFeedback(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxStatus value.
/// @details Retain all 10 original fields and 27 constants. Wire extent 34..546 bytes.
Ros2Clearpath_motor_msgsMsgLynxStatus :: struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.can_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_can_id: u8,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.joint_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_joint_name: wire.Text(256, false),
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.firmware_version field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_firmware_version: wire.Text(256, false),
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.motor_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motor_temperature: f32,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.mcu_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mcu_temperature: f32,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.pcb_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_pcb_temperature: f32,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.stopped field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stopped: bool,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.status_flags field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_status_flags: u32,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.warning_flags field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_warning_flags: u32,
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.error_flags field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_flags: u32,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsMsgLynxStatus :: proc "contextless"() -> Ros2Clearpath_motor_msgsMsgLynxStatus {
    result: Ros2Clearpath_motor_msgsMsgLynxStatus
    return result
}
/// @brief Original complete clearpath_motor_msgs/msg/LynxStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxStatus_Minimum_Wire_Bytes :: 34
/// @brief Original complete clearpath_motor_msgs/msg/LynxStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxStatus_Maximum_Wire_Bytes :: 546
/// @brief Original complete clearpath_motor_msgs/msg/LynxStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxStatus_Codec_Identity :: "UWVMROS1_b68a7ab9bc5312c59d2ef86e49313468b631e8cacdf52468374b67f4eced5c6d"
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_ADC_CALIBRATED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_ADC_CALIBRATED :: 0
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_FOC_ENABLED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_FOC_ENABLED :: 1
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_CALIBRATION_REQUESTED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_CALIBRATION_REQUESTED :: 2
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_CALIBRATION_CANCELLED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_CALIBRATION_CANCELLED :: 3
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_ESTOPPED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_STATUS_FLAG_ESTOPPED :: 4
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_MOTOR_THERMISTOR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_MOTOR_THERMISTOR :: 0
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PCB_THERMISTOR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PCB_THERMISTOR :: 1
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE :: 2
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_A constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE_A :: 3
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_B constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE_B :: 4
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_C constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_PHASE_C :: 5
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_INDEX constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_ENCODER_INDEX :: 6
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_OUTPUT_A constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_ENCODER_OUTPUT_A :: 7
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_OUTPUT_B constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_WARNING_FLAG_ENCODER_OUTPUT_B :: 8
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_NOT_CALIBRATED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_NOT_CALIBRATED :: 0
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_FAULT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_MOTOR_FAULT :: 1
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_STALLING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_MOTOR_STALLING :: 2
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_THERMISTOR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_MOTOR_THERMISTOR :: 3
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PCB_THERMISTOR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PCB_THERMISTOR :: 4
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE :: 5
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_A constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE_A :: 6
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_B constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE_B :: 7
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_C constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_PHASE_C :: 8
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_POWER constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_POWER :: 9
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_INDEX constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_INDEX :: 10
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_OUTPUT_A constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_OUTPUT_A :: 11
/// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_OUTPUT_B constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgLynxStatus_ERROR_FLAG_ENCODER_OUTPUT_B :: 12
/// @brief Traverse every original field of complete clearpath_motor_msgs/msg/LynxStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsMsgLynxStatus :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxStatus, cursor: ^wire.Cursor)
{
    value.field_can_id = u8(wire.number(cursor, u64(value.field_can_id), 1))
    wire.text(cursor, &value.field_joint_name)
    wire.text(cursor, &value.field_firmware_version)
    value.field_motor_temperature = wire.float32(cursor, value.field_motor_temperature)
    value.field_mcu_temperature = wire.float32(cursor, value.field_mcu_temperature)
    value.field_pcb_temperature = wire.float32(cursor, value.field_pcb_temperature)
    value.field_stopped = wire.boolean(cursor, value.field_stopped)
    value.field_status_flags = u32(wire.number(cursor, u64(value.field_status_flags), 4))
    value.field_warning_flags = u32(wire.number(cursor, u64(value.field_warning_flags), 4))
    value.field_error_flags = u32(wire.number(cursor, u64(value.field_error_flags), 4))
}
/// @brief Encode every complete original clearpath_motor_msgs/msg/LynxStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsMsgLynxStatus :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 546)], writing = true}
    fields_Ros2Clearpath_motor_msgsMsgLynxStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/msg/LynxStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsMsgLynxStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsMsgLynxStatus, code: u32)
{
    if len(bytes) < 34 || len(bytes) > 546 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsMsgLynxStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxMultiStatus value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..2328 bytes.
Ros2Clearpath_motor_msgsMsgLynxMultiStatus :: struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiStatus.drivers field.
    /// @details Original type clearpath_motor_msgs/msg/LynxStatus. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_drivers: wire.Sequence(Ros2Clearpath_motor_msgsMsgLynxStatus, 4),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsMsgLynxMultiStatus :: proc "contextless"() -> Ros2Clearpath_motor_msgsMsgLynxMultiStatus {
    result: Ros2Clearpath_motor_msgsMsgLynxMultiStatus
    result.field_header = init_Ros2Std_msgsMsgHeader()
    return result
}
/// @brief Original complete clearpath_motor_msgs/msg/LynxMultiStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxMultiStatus_Minimum_Wire_Bytes :: 16
/// @brief Original complete clearpath_motor_msgs/msg/LynxMultiStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxMultiStatus_Maximum_Wire_Bytes :: 2328
/// @brief Original complete clearpath_motor_msgs/msg/LynxMultiStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxMultiStatus_Codec_Identity :: "UWVMROS1_595cd0847b4332e14cc067b916166e9a6e1d1e12a7a68cdb7e1cd414a9ea9ce1"
/// @brief Traverse every original field of complete clearpath_motor_msgs/msg/LynxMultiStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsMsgLynxMultiStatus :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxMultiStatus, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_drivers.size = u32(wire.number(cursor, u64(value.field_drivers.size), 4))
    if value.field_drivers.size > 4 { cursor.code = 22; return }
    for index in 0..<int(value.field_drivers.size) {
        fields_Ros2Clearpath_motor_msgsMsgLynxStatus(&value.field_drivers.items[index], cursor)
    }
}
/// @brief Encode every complete original clearpath_motor_msgs/msg/LynxMultiStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsMsgLynxMultiStatus :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxMultiStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2328)], writing = true}
    fields_Ros2Clearpath_motor_msgsMsgLynxMultiStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/msg/LynxMultiStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsMsgLynxMultiStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsMsgLynxMultiStatus, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 2328 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsMsgLynxMultiStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxSystemProtection value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 17..669 bytes.
Ros2Clearpath_motor_msgsMsgLynxSystemProtection :: struct {
    /// @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.system_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_system_state: u8,
    /// @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.motor_states field.
    /// @details Original type clearpath_motor_msgs/msg/LynxMotorProtection. Shape sequence;
    /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_motor_states: wire.Sequence(Ros2Clearpath_motor_msgsMsgLynxMotorProtection, 2),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsMsgLynxSystemProtection :: proc "contextless"() -> Ros2Clearpath_motor_msgsMsgLynxSystemProtection {
    result: Ros2Clearpath_motor_msgsMsgLynxSystemProtection
    result.field_header = init_Ros2Std_msgsMsgHeader()
    return result
}
/// @brief Original complete clearpath_motor_msgs/msg/LynxSystemProtection minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxSystemProtection_Minimum_Wire_Bytes :: 17
/// @brief Original complete clearpath_motor_msgs/msg/LynxSystemProtection maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxSystemProtection_Maximum_Wire_Bytes :: 669
/// @brief Original complete clearpath_motor_msgs/msg/LynxSystemProtection codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgLynxSystemProtection_Codec_Identity :: "UWVMROS1_4d662de03c34bb633a122399be1a1aaea6187550c83231bf6d8a06b95fa82d9f"
/// @brief Traverse every original field of complete clearpath_motor_msgs/msg/LynxSystemProtection.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsMsgLynxSystemProtection :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxSystemProtection, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_system_state = u8(wire.number(cursor, u64(value.field_system_state), 1))
    value.field_motor_states.size = u32(wire.number(cursor, u64(value.field_motor_states.size), 4))
    if value.field_motor_states.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_motor_states.size) {
        fields_Ros2Clearpath_motor_msgsMsgLynxMotorProtection(&value.field_motor_states.items[index], cursor)
    }
}
/// @brief Encode every complete original clearpath_motor_msgs/msg/LynxSystemProtection field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsMsgLynxSystemProtection :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgLynxSystemProtection, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 669)], writing = true}
    fields_Ros2Clearpath_motor_msgsMsgLynxSystemProtection(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/msg/LynxSystemProtection.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsMsgLynxSystemProtection :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsMsgLynxSystemProtection, code: u32)
{
    if len(bytes) < 17 || len(bytes) > 669 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsMsgLynxSystemProtection(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/msg/PumaFeedback value.
/// @details Retain all 7 original fields and 0 constants. Wire extent 37..293 bytes.
Ros2Clearpath_motor_msgsMsgPumaFeedback :: struct {
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.device_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_device_number: u8,
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.device_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_device_name: wire.Text(256, false),
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.duty_cycle field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_duty_cycle: f32,
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.current field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: f32,
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.travel field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_travel: f64,
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.speed field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speed: f64,
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.setpoint field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_setpoint: f64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsMsgPumaFeedback :: proc "contextless"() -> Ros2Clearpath_motor_msgsMsgPumaFeedback {
    result: Ros2Clearpath_motor_msgsMsgPumaFeedback
    return result
}
/// @brief Original complete clearpath_motor_msgs/msg/PumaFeedback minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgPumaFeedback_Minimum_Wire_Bytes :: 37
/// @brief Original complete clearpath_motor_msgs/msg/PumaFeedback maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgPumaFeedback_Maximum_Wire_Bytes :: 293
/// @brief Original complete clearpath_motor_msgs/msg/PumaFeedback codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgPumaFeedback_Codec_Identity :: "UWVMROS1_c020162b07a55ac5f41df6021c0d3053d7302863f4e544a738b6cc5bc4dc9659"
/// @brief Traverse every original field of complete clearpath_motor_msgs/msg/PumaFeedback.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsMsgPumaFeedback :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgPumaFeedback, cursor: ^wire.Cursor)
{
    value.field_device_number = u8(wire.number(cursor, u64(value.field_device_number), 1))
    wire.text(cursor, &value.field_device_name)
    value.field_duty_cycle = wire.float32(cursor, value.field_duty_cycle)
    value.field_current = wire.float32(cursor, value.field_current)
    value.field_travel = wire.float64(cursor, value.field_travel)
    value.field_speed = wire.float64(cursor, value.field_speed)
    value.field_setpoint = wire.float64(cursor, value.field_setpoint)
}
/// @brief Encode every complete original clearpath_motor_msgs/msg/PumaFeedback field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsMsgPumaFeedback :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgPumaFeedback, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 293)], writing = true}
    fields_Ros2Clearpath_motor_msgsMsgPumaFeedback(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/msg/PumaFeedback.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsMsgPumaFeedback :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsMsgPumaFeedback, code: u32)
{
    if len(bytes) < 37 || len(bytes) > 293 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsMsgPumaFeedback(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/msg/PumaMultiFeedback value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..1316 bytes.
Ros2Clearpath_motor_msgsMsgPumaMultiFeedback :: struct {
    /// @brief Original clearpath_motor_msgs/msg/PumaMultiFeedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original clearpath_motor_msgs/msg/PumaMultiFeedback.drivers_feedback field.
    /// @details Original type clearpath_motor_msgs/msg/PumaFeedback. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_drivers_feedback: wire.Sequence(Ros2Clearpath_motor_msgsMsgPumaFeedback, 4),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback :: proc "contextless"() -> Ros2Clearpath_motor_msgsMsgPumaMultiFeedback {
    result: Ros2Clearpath_motor_msgsMsgPumaMultiFeedback
    result.field_header = init_Ros2Std_msgsMsgHeader()
    return result
}
/// @brief Original complete clearpath_motor_msgs/msg/PumaMultiFeedback minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgPumaMultiFeedback_Minimum_Wire_Bytes :: 16
/// @brief Original complete clearpath_motor_msgs/msg/PumaMultiFeedback maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgPumaMultiFeedback_Maximum_Wire_Bytes :: 1316
/// @brief Original complete clearpath_motor_msgs/msg/PumaMultiFeedback codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgPumaMultiFeedback_Codec_Identity :: "UWVMROS1_638309564580ad23d585799dcd46156e1e4261ebf9febfbb91754c250907c947"
/// @brief Traverse every original field of complete clearpath_motor_msgs/msg/PumaMultiFeedback.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgPumaMultiFeedback, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_drivers_feedback.size = u32(wire.number(cursor, u64(value.field_drivers_feedback.size), 4))
    if value.field_drivers_feedback.size > 4 { cursor.code = 22; return }
    for index in 0..<int(value.field_drivers_feedback.size) {
        fields_Ros2Clearpath_motor_msgsMsgPumaFeedback(&value.field_drivers_feedback.items[index], cursor)
    }
}
/// @brief Encode every complete original clearpath_motor_msgs/msg/PumaMultiFeedback field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgPumaMultiFeedback, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1316)], writing = true}
    fields_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/msg/PumaMultiFeedback.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsMsgPumaMultiFeedback, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 1316 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/msg/PumaStatus value.
/// @details Retain all 8 original fields and 9 constants. Wire extent 23..279 bytes.
Ros2Clearpath_motor_msgsMsgPumaStatus :: struct {
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.device_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_device_number: u8,
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.device_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_device_name: wire.Text(256, false),
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.bus_voltage field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bus_voltage: f32,
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: f32,
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.output_voltage field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_output_voltage: f32,
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.analog_input field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_analog_input: f32,
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.fault field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_fault: u8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsMsgPumaStatus :: proc "contextless"() -> Ros2Clearpath_motor_msgsMsgPumaStatus {
    result: Ros2Clearpath_motor_msgsMsgPumaStatus
    return result
}
/// @brief Original complete clearpath_motor_msgs/msg/PumaStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgPumaStatus_Minimum_Wire_Bytes :: 23
/// @brief Original complete clearpath_motor_msgs/msg/PumaStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgPumaStatus_Maximum_Wire_Bytes :: 279
/// @brief Original complete clearpath_motor_msgs/msg/PumaStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgPumaStatus_Codec_Identity :: "UWVMROS1_a027229db2c8500f707d97064548b27e77e24ae4840ad9722d2dc74726099da8"
/// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgPumaStatus_MODE_VOLTAGE :: 0
/// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgPumaStatus_MODE_CURRENT :: 1
/// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_SPEED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgPumaStatus_MODE_SPEED :: 2
/// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_POSITION constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgPumaStatus_MODE_POSITION :: 3
/// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_VCOMP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgPumaStatus_MODE_VCOMP :: 4
/// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_CURRENT :: 1
/// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_TEMPERATURE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_TEMPERATURE :: 2
/// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_BUS_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_BUS_VOLTAGE :: 4
/// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_BRIDGE_DRIVER constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_motor_msgsMsgPumaStatus_FAULT_BRIDGE_DRIVER :: 8
/// @brief Traverse every original field of complete clearpath_motor_msgs/msg/PumaStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsMsgPumaStatus :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgPumaStatus, cursor: ^wire.Cursor)
{
    value.field_device_number = u8(wire.number(cursor, u64(value.field_device_number), 1))
    wire.text(cursor, &value.field_device_name)
    value.field_bus_voltage = wire.float32(cursor, value.field_bus_voltage)
    value.field_temperature = wire.float32(cursor, value.field_temperature)
    value.field_output_voltage = wire.float32(cursor, value.field_output_voltage)
    value.field_analog_input = wire.float32(cursor, value.field_analog_input)
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_fault = u8(wire.number(cursor, u64(value.field_fault), 1))
}
/// @brief Encode every complete original clearpath_motor_msgs/msg/PumaStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsMsgPumaStatus :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgPumaStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 279)], writing = true}
    fields_Ros2Clearpath_motor_msgsMsgPumaStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/msg/PumaStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsMsgPumaStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsMsgPumaStatus, code: u32)
{
    if len(bytes) < 23 || len(bytes) > 279 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsMsgPumaStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_motor_msgs/msg/PumaMultiStatus value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..1260 bytes.
Ros2Clearpath_motor_msgsMsgPumaMultiStatus :: struct {
    /// @brief Original clearpath_motor_msgs/msg/PumaMultiStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original clearpath_motor_msgs/msg/PumaMultiStatus.drivers field.
    /// @details Original type clearpath_motor_msgs/msg/PumaStatus. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_drivers: wire.Sequence(Ros2Clearpath_motor_msgsMsgPumaStatus, 4),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_motor_msgsMsgPumaMultiStatus :: proc "contextless"() -> Ros2Clearpath_motor_msgsMsgPumaMultiStatus {
    result: Ros2Clearpath_motor_msgsMsgPumaMultiStatus
    result.field_header = init_Ros2Std_msgsMsgHeader()
    return result
}
/// @brief Original complete clearpath_motor_msgs/msg/PumaMultiStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgPumaMultiStatus_Minimum_Wire_Bytes :: 16
/// @brief Original complete clearpath_motor_msgs/msg/PumaMultiStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgPumaMultiStatus_Maximum_Wire_Bytes :: 1260
/// @brief Original complete clearpath_motor_msgs/msg/PumaMultiStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_motor_msgsMsgPumaMultiStatus_Codec_Identity :: "UWVMROS1_30a0210fea4fffe07371c898c365ef9696501a7541935dd80770671a7163c8f2"
/// @brief Traverse every original field of complete clearpath_motor_msgs/msg/PumaMultiStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_motor_msgsMsgPumaMultiStatus :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgPumaMultiStatus, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_drivers.size = u32(wire.number(cursor, u64(value.field_drivers.size), 4))
    if value.field_drivers.size > 4 { cursor.code = 22; return }
    for index in 0..<int(value.field_drivers.size) {
        fields_Ros2Clearpath_motor_msgsMsgPumaStatus(&value.field_drivers.items[index], cursor)
    }
}
/// @brief Encode every complete original clearpath_motor_msgs/msg/PumaMultiStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_motor_msgsMsgPumaMultiStatus :: proc "contextless"(
    value: ^Ros2Clearpath_motor_msgsMsgPumaMultiStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1260)], writing = true}
    fields_Ros2Clearpath_motor_msgsMsgPumaMultiStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_motor_msgs/msg/PumaMultiStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_motor_msgsMsgPumaMultiStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_motor_msgsMsgPumaMultiStatus, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 1260 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_motor_msgsMsgPumaMultiStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/DisplayStatus value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..106 bytes.
Ros2Clearpath_platform_msgsMsgDisplayStatus :: struct {
    /// @brief Original clearpath_platform_msgs/msg/DisplayStatus.string1 field.
    /// @details Original type string. String bound 49 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_string1: wire.Text(49, false),
    /// @brief Original clearpath_platform_msgs/msg/DisplayStatus.string2 field.
    /// @details Original type string. String bound 49 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_string2: wire.Text(49, false),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgDisplayStatus :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgDisplayStatus {
    result: Ros2Clearpath_platform_msgsMsgDisplayStatus
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/DisplayStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgDisplayStatus_Minimum_Wire_Bytes :: 8
/// @brief Original complete clearpath_platform_msgs/msg/DisplayStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgDisplayStatus_Maximum_Wire_Bytes :: 106
/// @brief Original complete clearpath_platform_msgs/msg/DisplayStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgDisplayStatus_Codec_Identity :: "UWVMROS1_e4585117414581491304a26d528b44c770799f622c3f1cde037078f5cb2462c2"
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/DisplayStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgDisplayStatus :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgDisplayStatus, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_string1)
    wire.text(cursor, &value.field_string2)
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/DisplayStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgDisplayStatus :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgDisplayStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 106)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgDisplayStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/DisplayStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgDisplayStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgDisplayStatus, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 106 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgDisplayStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/Drive value.
/// @details Retain all 2 original fields and 5 constants. Wire extent 9..9 bytes.
Ros2Clearpath_platform_msgsMsgDrive :: struct {
    /// @brief Original clearpath_platform_msgs/msg/Drive.mode field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: i8,
    /// @brief Original clearpath_platform_msgs/msg/Drive.drivers field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_drivers: [2]f32,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgDrive :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgDrive {
    result: Ros2Clearpath_platform_msgsMsgDrive
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/Drive minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgDrive_Minimum_Wire_Bytes :: 9
/// @brief Original complete clearpath_platform_msgs/msg/Drive maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgDrive_Maximum_Wire_Bytes :: 9
/// @brief Original complete clearpath_platform_msgs/msg/Drive codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgDrive_Codec_Identity :: "UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785"
/// @brief Original clearpath_platform_msgs/msg/Drive.MODE_VELOCITY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgDrive_MODE_VELOCITY :: 0
/// @brief Original clearpath_platform_msgs/msg/Drive.MODE_PWM constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgDrive_MODE_PWM :: 1
/// @brief Original clearpath_platform_msgs/msg/Drive.MODE_NONE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgDrive_MODE_NONE :: -1
/// @brief Original clearpath_platform_msgs/msg/Drive.LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgDrive_LEFT :: 0
/// @brief Original clearpath_platform_msgs/msg/Drive.RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgDrive_RIGHT :: 1
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/Drive.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgDrive :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgDrive, cursor: ^wire.Cursor)
{
    value.field_mode = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_mode), 1))
    for index in 0..<2 {
        value.field_drivers[index] = wire.float32(cursor, value.field_drivers[index])
    }
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/Drive field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgDrive :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgDrive, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 9)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgDrive(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/Drive.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgDrive :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgDrive, code: u32)
{
    if len(bytes) < 9 || len(bytes) > 9 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgDrive(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/DriveFeedback value.
/// @details Retain all 7 original fields and 0 constants. Wire extent 25..25 bytes.
Ros2Clearpath_platform_msgsMsgDriveFeedback :: struct {
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.current field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: f32,
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.duty_cycle field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_duty_cycle: f32,
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.bridge_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bridge_temperature: f32,
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.motor_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motor_temperature: f32,
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.measured_velocity field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_measured_velocity: f32,
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.measured_travel field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_measured_travel: f32,
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.driver_fault field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_driver_fault: bool,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgDriveFeedback :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgDriveFeedback {
    result: Ros2Clearpath_platform_msgsMsgDriveFeedback
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/DriveFeedback minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgDriveFeedback_Minimum_Wire_Bytes :: 25
/// @brief Original complete clearpath_platform_msgs/msg/DriveFeedback maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgDriveFeedback_Maximum_Wire_Bytes :: 25
/// @brief Original complete clearpath_platform_msgs/msg/DriveFeedback codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgDriveFeedback_Codec_Identity :: "UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287"
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/DriveFeedback.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgDriveFeedback :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgDriveFeedback, cursor: ^wire.Cursor)
{
    value.field_current = wire.float32(cursor, value.field_current)
    value.field_duty_cycle = wire.float32(cursor, value.field_duty_cycle)
    value.field_bridge_temperature = wire.float32(cursor, value.field_bridge_temperature)
    value.field_motor_temperature = wire.float32(cursor, value.field_motor_temperature)
    value.field_measured_velocity = wire.float32(cursor, value.field_measured_velocity)
    value.field_measured_travel = wire.float32(cursor, value.field_measured_travel)
    value.field_driver_fault = wire.boolean(cursor, value.field_driver_fault)
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/DriveFeedback field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgDriveFeedback :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgDriveFeedback, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 25)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgDriveFeedback(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/DriveFeedback.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgDriveFeedback :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgDriveFeedback, code: u32)
{
    if len(bytes) < 25 || len(bytes) > 25 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgDriveFeedback(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/Fans value.
/// @details Retain all 1 original fields and 17 constants. Wire extent 4..6 bytes.
Ros2Clearpath_platform_msgsMsgFans :: struct {
    /// @brief Original clearpath_platform_msgs/msg/Fans.fans field.
    /// @details Original type uint8. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_fans: wire.Sequence(u8, 2),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgFans :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgFans {
    result: Ros2Clearpath_platform_msgsMsgFans
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/Fans minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgFans_Minimum_Wire_Bytes :: 4
/// @brief Original complete clearpath_platform_msgs/msg/Fans maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgFans_Maximum_Wire_Bytes :: 6
/// @brief Original complete clearpath_platform_msgs/msg/Fans codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgFans_Codec_Identity :: "UWVMROS1_a7d96f2242d992baf96f31bd8f93088547f92c72912c241c2d237f7714800cc8"
/// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_CC01_FAN1 :: 0
/// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_CC01_FAN2 :: 1
/// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_CC01_FAN3 :: 2
/// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN4 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_CC01_FAN4 :: 3
/// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN5 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_CC01_FAN5 :: 4
/// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN6 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_CC01_FAN6 :: 5
/// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN7 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_CC01_FAN7 :: 6
/// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN8 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_CC01_FAN8 :: 7
/// @brief Original clearpath_platform_msgs/msg/Fans.R100_EQUIPMENT_BAY_INTAKE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_R100_EQUIPMENT_BAY_INTAKE :: 0
/// @brief Original clearpath_platform_msgs/msg/Fans.R100_EQUIPMENT_BAY_EXHAUST constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_R100_EQUIPMENT_BAY_EXHAUST :: 1
/// @brief Original clearpath_platform_msgs/msg/Fans.R100_CHARGER_BAY_INTAKE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_R100_CHARGER_BAY_INTAKE :: 2
/// @brief Original clearpath_platform_msgs/msg/Fans.R100_CHARGER_BAY_EXHAUST constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_R100_CHARGER_BAY_EXHAUST :: 3
/// @brief Original clearpath_platform_msgs/msg/Fans.R100_USER_BAY_INTAKE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_R100_USER_BAY_INTAKE :: 4
/// @brief Original clearpath_platform_msgs/msg/Fans.R100_USER_BAY_EXHAUST constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_R100_USER_BAY_EXHAUST :: 5
/// @brief Original clearpath_platform_msgs/msg/Fans.FAN_OFF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_FAN_OFF :: 0
/// @brief Original clearpath_platform_msgs/msg/Fans.FAN_ON_HIGH constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_FAN_ON_HIGH :: 1
/// @brief Original clearpath_platform_msgs/msg/Fans.FAN_ON_LOW constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgFans_FAN_ON_LOW :: 2
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/Fans.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgFans :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgFans, cursor: ^wire.Cursor)
{
    value.field_fans.size = u32(wire.number(cursor, u64(value.field_fans.size), 4))
    if value.field_fans.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_fans.size) {
        value.field_fans.items[index] = u8(wire.number(cursor, u64(value.field_fans.items[index]), 1))
    }
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/Fans field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgFans :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgFans, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 6)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgFans(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/Fans.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgFans :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgFans, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 6 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgFans(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/Feedback value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 64..192 bytes.
Ros2Clearpath_platform_msgsMsgFeedback :: struct {
    /// @brief Original clearpath_platform_msgs/msg/Feedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original clearpath_platform_msgs/msg/Feedback.drivers field.
    /// @details Original type clearpath_platform_msgs/msg/DriveFeedback. Shape array; bound/count 2
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_drivers: [2]Ros2Clearpath_platform_msgsMsgDriveFeedback,
    /// @brief Original clearpath_platform_msgs/msg/Feedback.commanded_mode field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_commanded_mode: i8,
    /// @brief Original clearpath_platform_msgs/msg/Feedback.actual_mode field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_actual_mode: i8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgFeedback :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgFeedback {
    result: Ros2Clearpath_platform_msgsMsgFeedback
    result.field_header = init_Ros2Std_msgsMsgHeader()
    for index in 0 ..< 2 {
        result.field_drivers[index] = init_Ros2Clearpath_platform_msgsMsgDriveFeedback()
    }
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/Feedback minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgFeedback_Minimum_Wire_Bytes :: 64
/// @brief Original complete clearpath_platform_msgs/msg/Feedback maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgFeedback_Maximum_Wire_Bytes :: 192
/// @brief Original complete clearpath_platform_msgs/msg/Feedback codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgFeedback_Codec_Identity :: "UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442"
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/Feedback.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgFeedback :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgFeedback, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    for index in 0..<2 {
        fields_Ros2Clearpath_platform_msgsMsgDriveFeedback(&value.field_drivers[index], cursor)
    }
    value.field_commanded_mode = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_commanded_mode), 1))
    value.field_actual_mode = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_actual_mode), 1))
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/Feedback field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgFeedback :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgFeedback, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 192)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgFeedback(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/Feedback.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgFeedback :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgFeedback, code: u32)
{
    if len(bytes) < 64 || len(bytes) > 192 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgFeedback(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/RGB value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 3..3 bytes.
Ros2Clearpath_platform_msgsMsgRGB :: struct {
    /// @brief Original clearpath_platform_msgs/msg/RGB.red field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_red: u8,
    /// @brief Original clearpath_platform_msgs/msg/RGB.green field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_green: u8,
    /// @brief Original clearpath_platform_msgs/msg/RGB.blue field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_blue: u8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgRGB :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgRGB {
    result: Ros2Clearpath_platform_msgsMsgRGB
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/RGB minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgRGB_Minimum_Wire_Bytes :: 3
/// @brief Original complete clearpath_platform_msgs/msg/RGB maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgRGB_Maximum_Wire_Bytes :: 3
/// @brief Original complete clearpath_platform_msgs/msg/RGB codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgRGB_Codec_Identity :: "UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1"
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/RGB.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgRGB :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgRGB, cursor: ^wire.Cursor)
{
    value.field_red = u8(wire.number(cursor, u64(value.field_red), 1))
    value.field_green = u8(wire.number(cursor, u64(value.field_green), 1))
    value.field_blue = u8(wire.number(cursor, u64(value.field_blue), 1))
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/RGB field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgRGB :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgRGB, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 3)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgRGB(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/RGB.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgRGB :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgRGB, code: u32)
{
    if len(bytes) < 3 || len(bytes) > 3 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgRGB(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/Lights value.
/// @details Retain all 1 original fields and 24 constants. Wire extent 4..10 bytes.
Ros2Clearpath_platform_msgsMsgLights :: struct {
    /// @brief Original clearpath_platform_msgs/msg/Lights.lights field.
    /// @details Original type clearpath_platform_msgs/msg/RGB. Shape sequence; bound/count 2
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_lights: wire.Sequence(Ros2Clearpath_platform_msgsMsgRGB, 2),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgLights :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgLights {
    result: Ros2Clearpath_platform_msgsMsgLights
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/Lights minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgLights_Minimum_Wire_Bytes :: 4
/// @brief Original complete clearpath_platform_msgs/msg/Lights maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgLights_Maximum_Wire_Bytes :: 10
/// @brief Original complete clearpath_platform_msgs/msg/Lights codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgLights_Codec_Identity :: "UWVMROS1_3f975a3ec1fca4f8add9523d4f9f99963be520c0e2982e644551b71cbd4b8a27"
/// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_REAR_LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_REAR_LEFT :: 0
/// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_FRONT_LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_FRONT_LEFT :: 1
/// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_FRONT_RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_FRONT_RIGHT :: 2
/// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_REAR_RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_D100_LIGHTS_REAR_RIGHT :: 3
/// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_REAR_LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_REAR_LEFT :: 0
/// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_FRONT_LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_FRONT_LEFT :: 1
/// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_FRONT_RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_FRONT_RIGHT :: 2
/// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_REAR_RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_D150_LIGHTS_REAR_RIGHT :: 3
/// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_PORT_UPPER constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_PORT_UPPER :: 0
/// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_PORT_LOWER constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_PORT_LOWER :: 1
/// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_STARBOARD_UPPER constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_STARBOARD_UPPER :: 2
/// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_STARBOARD_LOWER constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_FRONT_STARBOARD_LOWER :: 3
/// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_PORT_UPPER constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_PORT_UPPER :: 4
/// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_PORT_LOWER constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_PORT_LOWER :: 5
/// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_STARBOARD_UPPER constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_STARBOARD_UPPER :: 6
/// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_STARBOARD_LOWER constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_R100_LIGHTS_REAR_STARBOARD_LOWER :: 7
/// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_FRONT_LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_FRONT_LEFT :: 0
/// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_FRONT_RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_FRONT_RIGHT :: 1
/// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_REAR_LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_REAR_LEFT :: 2
/// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_REAR_RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_W200_LIGHTS_REAR_RIGHT :: 3
/// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_FRONT_RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_FRONT_RIGHT :: 0
/// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_FRONT_LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_FRONT_LEFT :: 1
/// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_REAR_LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_REAR_LEFT :: 2
/// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_REAR_RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgLights_A300_LIGHTS_REAR_RIGHT :: 3
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/Lights.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgLights :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgLights, cursor: ^wire.Cursor)
{
    value.field_lights.size = u32(wire.number(cursor, u64(value.field_lights.size), 4))
    if value.field_lights.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_lights.size) {
        fields_Ros2Clearpath_platform_msgsMsgRGB(&value.field_lights.items[index], cursor)
    }
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/Lights field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgLights :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgLights, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 10)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgLights(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/Lights.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgLights :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgLights, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 10 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgLights(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/PinoutCommand value.
/// @details Retain all 2 original fields and 14 constants. Wire extent 8..18 bytes.
Ros2Clearpath_platform_msgsMsgPinoutCommand :: struct {
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.rails field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_rails: wire.Sequence(bool, 2),
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.outputs field.
    /// @details Original type uint32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_outputs: wire.Sequence(u32, 2),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgPinoutCommand :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgPinoutCommand {
    result: Ros2Clearpath_platform_msgsMsgPinoutCommand
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/PinoutCommand minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgPinoutCommand_Minimum_Wire_Bytes :: 8
/// @brief Original complete clearpath_platform_msgs/msg/PinoutCommand maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgPinoutCommand_Maximum_Wire_Bytes :: 18
/// @brief Original complete clearpath_platform_msgs/msg/PinoutCommand codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgPinoutCommand_Codec_Identity :: "UWVMROS1_b26c2baf1e64cefa889c4ac6bd6b7f4647d9247eca0626b83cd726547a4e80ff"
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_USER_PWR_CTRL constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_USER_PWR_CTRL :: 0
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_D100_AUX_OUT1 :: 0
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_D100_AUX_OUT2 :: 1
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_D100_AUX_OUT3 :: 2
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_D150_AUX_OUT1 :: 0
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_D150_AUX_OUT2 :: 1
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_D150_AUX_OUT3 :: 2
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_AUX_OUT1 :: 0
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_AUX_OUT2 :: 1
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_AUX_OUT3 :: 2
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO0 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO0 :: 3
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO1 :: 4
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO2 :: 5
/// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutCommand_CC01_GPO3 :: 6
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/PinoutCommand.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgPinoutCommand :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgPinoutCommand, cursor: ^wire.Cursor)
{
    value.field_rails.size = u32(wire.number(cursor, u64(value.field_rails.size), 4))
    if value.field_rails.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_rails.size) {
        value.field_rails.items[index] = wire.boolean(cursor, value.field_rails.items[index])
    }
    value.field_outputs.size = u32(wire.number(cursor, u64(value.field_outputs.size), 4))
    if value.field_outputs.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_outputs.size) {
        value.field_outputs.items[index] = u32(wire.number(cursor, u64(value.field_outputs.items[index]), 4))
    }
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/PinoutCommand field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgPinoutCommand :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgPinoutCommand, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 18)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgPinoutCommand(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/PinoutCommand.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgPinoutCommand :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgPinoutCommand, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 18 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgPinoutCommand(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/PinoutState value.
/// @details Retain all 5 original fields and 27 constants. Wire extent 28..170 bytes.
Ros2Clearpath_platform_msgsMsgPinoutState :: struct {
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.rails field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_rails: wire.Sequence(bool, 2),
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.inputs field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_inputs: wire.Sequence(bool, 2),
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.outputs field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_outputs: wire.Sequence(bool, 2),
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.output_periods field.
    /// @details Original type uint32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_output_periods: wire.Sequence(u32, 2),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgPinoutState :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgPinoutState {
    result: Ros2Clearpath_platform_msgsMsgPinoutState
    result.field_header = init_Ros2Std_msgsMsgHeader()
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/PinoutState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgPinoutState_Minimum_Wire_Bytes :: 28
/// @brief Original complete clearpath_platform_msgs/msg/PinoutState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgPinoutState_Maximum_Wire_Bytes :: 170
/// @brief Original complete clearpath_platform_msgs/msg/PinoutState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgPinoutState_Codec_Identity :: "UWVMROS1_a936c6d91440709d50fa9b0be8fb567a9ce793e84f57e5379f6a160c8cbf73e7"
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_USER_PWR_CTRL constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_USER_PWR_CTRL :: 0
/// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_IN1 :: 0
/// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_IN2 :: 1
/// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_IN3 :: 2
/// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_IN1 :: 0
/// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_IN2 :: 1
/// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_IN3 :: 2
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_IN1 :: 0
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_IN2 :: 1
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_IN3 :: 2
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI0 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI0 :: 3
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI1 :: 4
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI2 :: 5
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPI3 :: 6
/// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_OUT1 :: 0
/// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_OUT2 :: 1
/// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_D100_AUX_OUT3 :: 2
/// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_OUT1 :: 0
/// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_OUT2 :: 1
/// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_D150_AUX_OUT3 :: 2
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_OUT1 :: 0
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_OUT2 :: 1
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_AUX_OUT3 :: 2
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO0 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO0 :: 3
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO1 :: 4
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO2 :: 5
/// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPinoutState_CC01_GPO3 :: 6
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/PinoutState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgPinoutState :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgPinoutState, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_rails.size = u32(wire.number(cursor, u64(value.field_rails.size), 4))
    if value.field_rails.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_rails.size) {
        value.field_rails.items[index] = wire.boolean(cursor, value.field_rails.items[index])
    }
    value.field_inputs.size = u32(wire.number(cursor, u64(value.field_inputs.size), 4))
    if value.field_inputs.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_inputs.size) {
        value.field_inputs.items[index] = wire.boolean(cursor, value.field_inputs.items[index])
    }
    value.field_outputs.size = u32(wire.number(cursor, u64(value.field_outputs.size), 4))
    if value.field_outputs.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_outputs.size) {
        value.field_outputs.items[index] = wire.boolean(cursor, value.field_outputs.items[index])
    }
    value.field_output_periods.size = u32(wire.number(cursor, u64(value.field_output_periods.size), 4))
    if value.field_output_periods.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_output_periods.size) {
        value.field_output_periods.items[index] = u32(wire.number(cursor, u64(value.field_output_periods.items[index]), 4))
    }
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/PinoutState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgPinoutState :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgPinoutState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 170)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgPinoutState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/PinoutState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgPinoutState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgPinoutState, code: u32)
{
    if len(bytes) < 28 || len(bytes) > 170 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgPinoutState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/Power value.
/// @details Retain all 8 original fields and 68 constants. Wire extent 25..169 bytes.
Ros2Clearpath_platform_msgsMsgPower :: struct {
    /// @brief Original clearpath_platform_msgs/msg/Power.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original clearpath_platform_msgs/msg/Power.shore_power_connected field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_shore_power_connected: i8,
    /// @brief Original clearpath_platform_msgs/msg/Power.battery_connected field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_battery_connected: i8,
    /// @brief Original clearpath_platform_msgs/msg/Power.power_12v_user_nominal field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_power_12v_user_nominal: i8,
    /// @brief Original clearpath_platform_msgs/msg/Power.charger_connected field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_charger_connected: i8,
    /// @brief Original clearpath_platform_msgs/msg/Power.charging_complete field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_charging_complete: i8,
    /// @brief Original clearpath_platform_msgs/msg/Power.measured_voltages field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_measured_voltages: wire.Sequence(f32, 2),
    /// @brief Original clearpath_platform_msgs/msg/Power.measured_currents field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_measured_currents: wire.Sequence(f32, 2),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgPower :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgPower {
    result: Ros2Clearpath_platform_msgsMsgPower
    result.field_header = init_Ros2Std_msgsMsgHeader()
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/Power minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgPower_Minimum_Wire_Bytes :: 25
/// @brief Original complete clearpath_platform_msgs/msg/Power maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgPower_Maximum_Wire_Bytes :: 169
/// @brief Original complete clearpath_platform_msgs/msg/Power codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgPower_Codec_Identity :: "UWVMROS1_3fc241d6b81da2f80bfce22933b81786b5e582715dc66cd238fa40b239e7aecc"
/// @brief Original clearpath_platform_msgs/msg/Power.NOT_APPLICABLE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_NOT_APPLICABLE :: -1
/// @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_BATTERY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_J100_MEASURED_BATTERY :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_5V constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_J100_MEASURED_5V :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_12V constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_J100_MEASURED_12V :: 2
/// @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_BATTERY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_D100_MEASURED_BATTERY :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_5V constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_D100_MEASURED_5V :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_12V constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_D100_MEASURED_12V :: 2
/// @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_BATTERY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_D150_MEASURED_BATTERY :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_5V constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_D150_MEASURED_5V :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_12V constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_D150_MEASURED_12V :: 2
/// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_BATTERY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_BATTERY :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_12V constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_12V :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_24V constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_24V :: 2
/// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_48V constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_W200_MEASURED_48V :: 3
/// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_BATTERY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_BATTERY :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_5V constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_5V :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_12V constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_12V :: 2
/// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_INVERTER constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_INVERTER :: 3
/// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_FRONT_AXLE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_FRONT_AXLE :: 4
/// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_REAR_AXLE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_REAR_AXLE :: 5
/// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_LIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_R100_MEASURED_LIGHT :: 6
/// @brief Original clearpath_platform_msgs/msg/Power.A200_BATTERY_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_A200_BATTERY_VOLTAGE :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.A200_LEFT_DRIVER_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_A200_LEFT_DRIVER_VOLTAGE :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.A200_RIGHT_DRIVER_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_A200_RIGHT_DRIVER_VOLTAGE :: 2
/// @brief Original clearpath_platform_msgs/msg/Power.A200_VOLTAGES_SIZE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_A200_VOLTAGES_SIZE :: 3
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BATTERY_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BATTERY_VOLTAGE :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_BATTERY_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_USER_BATTERY_VOLTAGE :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_24V_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_USER_24V_VOLTAGE :: 2
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_12VB_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_USER_12VB_VOLTAGE :: 3
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_SYSTEM_12V_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_SYSTEM_12V_VOLTAGE :: 4
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_EXPANSION_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_EXPANSION_VOLTAGE :: 5
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_24V_AUX_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_24V_AUX_VOLTAGE :: 6
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_12V_AUX_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_12V_AUX_VOLTAGE :: 7
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VA_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_12VA_VOLTAGE :: 8
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX1_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX1_VOLTAGE :: 9
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX2_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX2_VOLTAGE :: 10
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX3_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX3_VOLTAGE :: 11
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX4_VOLTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_LYNX4_VOLTAGE :: 12
/// @brief Original clearpath_platform_msgs/msg/Power.J100_TOTAL_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_J100_TOTAL_CURRENT :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.J100_COMPUTER_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_J100_COMPUTER_CURRENT :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.J100_DRIVE_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_J100_DRIVE_CURRENT :: 2
/// @brief Original clearpath_platform_msgs/msg/Power.J100_USER_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_J100_USER_CURRENT :: 3
/// @brief Original clearpath_platform_msgs/msg/Power.D100_TOTAL_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_D100_TOTAL_CURRENT :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.D100_COMPUTER_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_D100_COMPUTER_CURRENT :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.D150_TOTAL_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_D150_TOTAL_CURRENT :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.D150_COMPUTER_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_D150_COMPUTER_CURRENT :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.W200_TOTAL_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_W200_TOTAL_CURRENT :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.W200_COMPUTER_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_W200_COMPUTER_CURRENT :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.W200_12V_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_W200_12V_CURRENT :: 2
/// @brief Original clearpath_platform_msgs/msg/Power.W200_24V_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_W200_24V_CURRENT :: 3
/// @brief Original clearpath_platform_msgs/msg/Power.R100_TOTAL_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_R100_TOTAL_CURRENT :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.A200_MCU_AND_USER_PORT_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_A200_MCU_AND_USER_PORT_CURRENT :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.A200_LEFT_DRIVER_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_A200_LEFT_DRIVER_CURRENT :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.A200_RIGHT_DRIVER_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_A200_RIGHT_DRIVER_CURRENT :: 2
/// @brief Original clearpath_platform_msgs/msg/Power.A200_CURRENTS_SIZE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_A200_CURRENTS_SIZE :: 3
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BATTERY_PACK_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BATTERY_PACK_CURRENT :: 0
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_BATTERY_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_USER_BATTERY_CURRENT :: 1
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_AUX_HES_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_AUX_HES_CURRENT :: 2
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_SYSTEM_12V_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_SYSTEM_12V_CURRENT :: 3
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_24V_AUX_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_24V_AUX_CURRENT :: 4
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_12V_AUX_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_12V_AUX_CURRENT :: 5
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_24V_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_24V_CURRENT :: 6
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VA_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_12VA_CURRENT :: 7
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VB_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_12VB_CURRENT :: 8
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX1_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX1_CURRENT :: 9
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX2_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX2_CURRENT :: 10
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX3_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX3_CURRENT :: 11
/// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX4_CURRENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgPower_CC01_BREAKOUT_USER_LYNX4_CURRENT :: 12
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/Power.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgPower :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgPower, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_shore_power_connected = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_shore_power_connected), 1))
    value.field_battery_connected = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_battery_connected), 1))
    value.field_power_12v_user_nominal = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_power_12v_user_nominal), 1))
    value.field_charger_connected = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_charger_connected), 1))
    value.field_charging_complete = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_charging_complete), 1))
    value.field_measured_voltages.size = u32(wire.number(cursor, u64(value.field_measured_voltages.size), 4))
    if value.field_measured_voltages.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_measured_voltages.size) {
        value.field_measured_voltages.items[index] = wire.float32(cursor, value.field_measured_voltages.items[index])
    }
    value.field_measured_currents.size = u32(wire.number(cursor, u64(value.field_measured_currents.size), 4))
    if value.field_measured_currents.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_measured_currents.size) {
        value.field_measured_currents.items[index] = wire.float32(cursor, value.field_measured_currents.items[index])
    }
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/Power field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgPower :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgPower, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 169)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgPower(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/Power.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgPower :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgPower, code: u32)
{
    if len(bytes) < 25 || len(bytes) > 169 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgPower(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/Status value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 36..676 bytes.
Ros2Clearpath_platform_msgsMsgStatus :: struct {
    /// @brief Original clearpath_platform_msgs/msg/Status.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original clearpath_platform_msgs/msg/Status.hardware_id field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_hardware_id: wire.Text(256, false),
    /// @brief Original clearpath_platform_msgs/msg/Status.firmware_version field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_firmware_version: wire.Text(256, false),
    /// @brief Original clearpath_platform_msgs/msg/Status.mcu_uptime field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_mcu_uptime: Ros2Builtin_interfacesMsgDuration,
    /// @brief Original clearpath_platform_msgs/msg/Status.connection_uptime field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_connection_uptime: Ros2Builtin_interfacesMsgDuration,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgStatus :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgStatus {
    result: Ros2Clearpath_platform_msgsMsgStatus
    result.field_header = init_Ros2Std_msgsMsgHeader()
    result.field_mcu_uptime = init_Ros2Builtin_interfacesMsgDuration()
    result.field_connection_uptime = init_Ros2Builtin_interfacesMsgDuration()
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/Status minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgStatus_Minimum_Wire_Bytes :: 36
/// @brief Original complete clearpath_platform_msgs/msg/Status maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgStatus_Maximum_Wire_Bytes :: 676
/// @brief Original complete clearpath_platform_msgs/msg/Status codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgStatus_Codec_Identity :: "UWVMROS1_1bd99cc11ea9efcb51eeba8fc1d599960c16e958a8adf33a56d47fe27be87782"
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/Status.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgStatus :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgStatus, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    wire.text(cursor, &value.field_hardware_id)
    wire.text(cursor, &value.field_firmware_version)
    fields_Ros2Builtin_interfacesMsgDuration(&value.field_mcu_uptime, cursor)
    fields_Ros2Builtin_interfacesMsgDuration(&value.field_connection_uptime, cursor)
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/Status field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgStatus :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 676)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/Status.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgStatus, code: u32)
{
    if len(bytes) < 36 || len(bytes) > 676 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/StopStatus value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 15..143 bytes.
Ros2Clearpath_platform_msgsMsgStopStatus :: struct {
    /// @brief Original clearpath_platform_msgs/msg/StopStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original clearpath_platform_msgs/msg/StopStatus.stop_power_status field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stop_power_status: bool,
    /// @brief Original clearpath_platform_msgs/msg/StopStatus.external_stop_present field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_external_stop_present: bool,
    /// @brief Original clearpath_platform_msgs/msg/StopStatus.needs_reset field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_needs_reset: bool,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgStopStatus :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgStopStatus {
    result: Ros2Clearpath_platform_msgsMsgStopStatus
    result.field_header = init_Ros2Std_msgsMsgHeader()
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/StopStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgStopStatus_Minimum_Wire_Bytes :: 15
/// @brief Original complete clearpath_platform_msgs/msg/StopStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgStopStatus_Maximum_Wire_Bytes :: 143
/// @brief Original complete clearpath_platform_msgs/msg/StopStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgStopStatus_Codec_Identity :: "UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2"
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/StopStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgStopStatus :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgStopStatus, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_stop_power_status = wire.boolean(cursor, value.field_stop_power_status)
    value.field_external_stop_present = wire.boolean(cursor, value.field_external_stop_present)
    value.field_needs_reset = wire.boolean(cursor, value.field_needs_reset)
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/StopStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgStopStatus :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgStopStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 143)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgStopStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/StopStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgStopStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgStopStatus, code: u32)
{
    if len(bytes) < 15 || len(bytes) > 143 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgStopStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/msg/Temperature value.
/// @details Retain all 2 original fields and 28 constants. Wire extent 16..152 bytes.
Ros2Clearpath_platform_msgsMsgTemperature :: struct {
    /// @brief Original clearpath_platform_msgs/msg/Temperature.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original clearpath_platform_msgs/msg/Temperature.temperatures field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_temperatures: wire.Sequence(f32, 2),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsMsgTemperature :: proc "contextless"() -> Ros2Clearpath_platform_msgsMsgTemperature {
    result: Ros2Clearpath_platform_msgsMsgTemperature
    result.field_header = init_Ros2Std_msgsMsgHeader()
    return result
}
/// @brief Original complete clearpath_platform_msgs/msg/Temperature minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgTemperature_Minimum_Wire_Bytes :: 16
/// @brief Original complete clearpath_platform_msgs/msg/Temperature maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgTemperature_Maximum_Wire_Bytes :: 152
/// @brief Original complete clearpath_platform_msgs/msg/Temperature codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgTemperature_Codec_Identity :: "UWVMROS1_b4ae4d6ace9045ce96b0931f08d3b2c7ec358ab9c6da7022afd9ea489f9b0466"
/// @brief Original clearpath_platform_msgs/msg/Temperature.J100_MCU constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_J100_MCU :: 0
/// @brief Original clearpath_platform_msgs/msg/Temperature.J100_PCB constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_J100_PCB :: 1
/// @brief Original clearpath_platform_msgs/msg/Temperature.D100_MCU constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_D100_MCU :: 0
/// @brief Original clearpath_platform_msgs/msg/Temperature.D100_PCB constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_D100_PCB :: 1
/// @brief Original clearpath_platform_msgs/msg/Temperature.D150_MCU constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_D150_MCU :: 0
/// @brief Original clearpath_platform_msgs/msg/Temperature.D150_PCB constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_D150_PCB :: 1
/// @brief Original clearpath_platform_msgs/msg/Temperature.W200_MCU constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_W200_MCU :: 0
/// @brief Original clearpath_platform_msgs/msg/Temperature.R100_MCU constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_R100_MCU :: 0
/// @brief Original clearpath_platform_msgs/msg/Temperature.R100_PCB constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_R100_PCB :: 1
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_MCU constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_MCU :: 0
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN1 :: 1
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN2 :: 2
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN3 :: 3
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN4 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN4 :: 4
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN5 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN5 :: 5
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN6 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN6 :: 6
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN7 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN7 :: 7
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN8 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_FAN8 :: 8
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_5V_INDUCTOR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_5V_INDUCTOR :: 9
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_MAIN_GND_LUG constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_MAIN_GND_LUG :: 10
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_24V_DCDC constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_24V_DCDC :: 11
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_12V_DCDC constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_12V_DCDC :: 12
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_1 :: 13
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_2 :: 14
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_3 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_3 :: 15
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_4 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_EXT_4 :: 16
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_BREAKOUT_1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_BREAKOUT_1 :: 17
/// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_BREAKOUT_2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Clearpath_platform_msgsMsgTemperature_CC01_BREAKOUT_2 :: 18
/// @brief Traverse every original field of complete clearpath_platform_msgs/msg/Temperature.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsMsgTemperature :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgTemperature, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_temperatures.size = u32(wire.number(cursor, u64(value.field_temperatures.size), 4))
    if value.field_temperatures.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_temperatures.size) {
        value.field_temperatures.items[index] = wire.float32(cursor, value.field_temperatures.items[index])
    }
}
/// @brief Encode every complete original clearpath_platform_msgs/msg/Temperature field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsMsgTemperature :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsMsgTemperature, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 152)], writing = true}
    fields_Ros2Clearpath_platform_msgsMsgTemperature(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/msg/Temperature.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsMsgTemperature :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsMsgTemperature, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 152 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsMsgTemperature(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_control_msgs/srv/PowerControl_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Clearpath_control_msgsSrvPowerControl_Request :: struct {
    /// @brief Original clearpath_control_msgs/srv/PowerControl_Request.power_on field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_power_on: bool,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_control_msgsSrvPowerControl_Request :: proc "contextless"() -> Ros2Clearpath_control_msgsSrvPowerControl_Request {
    result: Ros2Clearpath_control_msgsSrvPowerControl_Request
    return result
}
/// @brief Original complete clearpath_control_msgs/srv/PowerControl_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_control_msgsSrvPowerControl_Request_Minimum_Wire_Bytes :: 1
/// @brief Original complete clearpath_control_msgs/srv/PowerControl_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_control_msgsSrvPowerControl_Request_Maximum_Wire_Bytes :: 1
/// @brief Original complete clearpath_control_msgs/srv/PowerControl_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_control_msgsSrvPowerControl_Request_Codec_Identity :: "UWVMROS1_1ad49d42d8895b3bd219799ab9cc080cf09d23aa4bca4c1172d19bc18fa416c4"
/// @brief Traverse every original field of complete
/// clearpath_control_msgs/srv/PowerControl_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_control_msgsSrvPowerControl_Request :: proc "contextless"(
    value: ^Ros2Clearpath_control_msgsSrvPowerControl_Request, cursor: ^wire.Cursor)
{
    value.field_power_on = wire.boolean(cursor, value.field_power_on)
}
/// @brief Encode every complete original clearpath_control_msgs/srv/PowerControl_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_control_msgsSrvPowerControl_Request :: proc "contextless"(
    value: ^Ros2Clearpath_control_msgsSrvPowerControl_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Clearpath_control_msgsSrvPowerControl_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_control_msgs/srv/PowerControl_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_control_msgsSrvPowerControl_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_control_msgsSrvPowerControl_Request, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_control_msgsSrvPowerControl_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_control_msgs/srv/PowerControl_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..261 bytes.
Ros2Clearpath_control_msgsSrvPowerControl_Response :: struct {
    /// @brief Original clearpath_control_msgs/srv/PowerControl_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool,
    /// @brief Original clearpath_control_msgs/srv/PowerControl_Response.message field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(256, false),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_control_msgsSrvPowerControl_Response :: proc "contextless"() -> Ros2Clearpath_control_msgsSrvPowerControl_Response {
    result: Ros2Clearpath_control_msgsSrvPowerControl_Response
    return result
}
/// @brief Original complete clearpath_control_msgs/srv/PowerControl_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_control_msgsSrvPowerControl_Response_Minimum_Wire_Bytes :: 5
/// @brief Original complete clearpath_control_msgs/srv/PowerControl_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_control_msgsSrvPowerControl_Response_Maximum_Wire_Bytes :: 261
/// @brief Original complete clearpath_control_msgs/srv/PowerControl_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_control_msgsSrvPowerControl_Response_Codec_Identity :: "UWVMROS1_6d74d07d6a8ff1c41ed4ca13939d54e9e642f423dc2ff6598665238ebbf10a8b"
/// @brief Traverse every original field of complete
/// clearpath_control_msgs/srv/PowerControl_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_control_msgsSrvPowerControl_Response :: proc "contextless"(
    value: ^Ros2Clearpath_control_msgsSrvPowerControl_Response, cursor: ^wire.Cursor)
{
    value.field_success = wire.boolean(cursor, value.field_success)
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original clearpath_control_msgs/srv/PowerControl_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_control_msgsSrvPowerControl_Response :: proc "contextless"(
    value: ^Ros2Clearpath_control_msgsSrvPowerControl_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 261)], writing = true}
    fields_Ros2Clearpath_control_msgsSrvPowerControl_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_control_msgs/srv/PowerControl_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_control_msgsSrvPowerControl_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_control_msgsSrvPowerControl_Response, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 261 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_control_msgsSrvPowerControl_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/srv/ConfigureMcu_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..261 bytes.
Ros2Clearpath_platform_msgsSrvConfigureMcu_Request :: struct {
    /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Request.domain_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_domain_id: u8,
    /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Request.robot_namespace field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_robot_namespace: wire.Text(256, false),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsSrvConfigureMcu_Request :: proc "contextless"() -> Ros2Clearpath_platform_msgsSrvConfigureMcu_Request {
    result: Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
    return result
}
/// @brief Original complete clearpath_platform_msgs/srv/ConfigureMcu_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsSrvConfigureMcu_Request_Minimum_Wire_Bytes :: 5
/// @brief Original complete clearpath_platform_msgs/srv/ConfigureMcu_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsSrvConfigureMcu_Request_Maximum_Wire_Bytes :: 261
/// @brief Original complete clearpath_platform_msgs/srv/ConfigureMcu_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsSrvConfigureMcu_Request_Codec_Identity :: "UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa"
/// @brief Traverse every original field of complete
/// clearpath_platform_msgs/srv/ConfigureMcu_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsSrvConfigureMcu_Request :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsSrvConfigureMcu_Request, cursor: ^wire.Cursor)
{
    value.field_domain_id = u8(wire.number(cursor, u64(value.field_domain_id), 1))
    wire.text(cursor, &value.field_robot_namespace)
}
/// @brief Encode every complete original clearpath_platform_msgs/srv/ConfigureMcu_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsSrvConfigureMcu_Request :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsSrvConfigureMcu_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 261)], writing = true}
    fields_Ros2Clearpath_platform_msgsSrvConfigureMcu_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/srv/ConfigureMcu_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsSrvConfigureMcu_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsSrvConfigureMcu_Request, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 261 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsSrvConfigureMcu_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/srv/ConfigureMcu_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..261 bytes.
Ros2Clearpath_platform_msgsSrvConfigureMcu_Response :: struct {
    /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool,
    /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Response.message field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(256, false),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response :: proc "contextless"() -> Ros2Clearpath_platform_msgsSrvConfigureMcu_Response {
    result: Ros2Clearpath_platform_msgsSrvConfigureMcu_Response
    return result
}
/// @brief Original complete clearpath_platform_msgs/srv/ConfigureMcu_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsSrvConfigureMcu_Response_Minimum_Wire_Bytes :: 5
/// @brief Original complete clearpath_platform_msgs/srv/ConfigureMcu_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsSrvConfigureMcu_Response_Maximum_Wire_Bytes :: 261
/// @brief Original complete clearpath_platform_msgs/srv/ConfigureMcu_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsSrvConfigureMcu_Response_Codec_Identity :: "UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad"
/// @brief Traverse every original field of complete
/// clearpath_platform_msgs/srv/ConfigureMcu_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsSrvConfigureMcu_Response, cursor: ^wire.Cursor)
{
    value.field_success = wire.boolean(cursor, value.field_success)
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original clearpath_platform_msgs/srv/ConfigureMcu_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsSrvConfigureMcu_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 261)], writing = true}
    fields_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/srv/ConfigureMcu_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsSrvConfigureMcu_Response, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 261 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/srv/SetPinout_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..5 bytes.
Ros2Clearpath_platform_msgsSrvSetPinout_Request :: struct {
    /// @brief Original clearpath_platform_msgs/srv/SetPinout_Request.state field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_state: bool,
    /// @brief Original clearpath_platform_msgs/srv/SetPinout_Request.toggle_period field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_toggle_period: u32,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsSrvSetPinout_Request :: proc "contextless"() -> Ros2Clearpath_platform_msgsSrvSetPinout_Request {
    result: Ros2Clearpath_platform_msgsSrvSetPinout_Request
    return result
}
/// @brief Original complete clearpath_platform_msgs/srv/SetPinout_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsSrvSetPinout_Request_Minimum_Wire_Bytes :: 5
/// @brief Original complete clearpath_platform_msgs/srv/SetPinout_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsSrvSetPinout_Request_Maximum_Wire_Bytes :: 5
/// @brief Original complete clearpath_platform_msgs/srv/SetPinout_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsSrvSetPinout_Request_Codec_Identity :: "UWVMROS1_3a3a2f8f16279c2e7a057353cd1f7f11e1a65e887dd3ce0a4b7f584708afb238"
/// @brief Traverse every original field of complete clearpath_platform_msgs/srv/SetPinout_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsSrvSetPinout_Request :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsSrvSetPinout_Request, cursor: ^wire.Cursor)
{
    value.field_state = wire.boolean(cursor, value.field_state)
    value.field_toggle_period = u32(wire.number(cursor, u64(value.field_toggle_period), 4))
}
/// @brief Encode every complete original clearpath_platform_msgs/srv/SetPinout_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsSrvSetPinout_Request :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsSrvSetPinout_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5)], writing = true}
    fields_Ros2Clearpath_platform_msgsSrvSetPinout_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/srv/SetPinout_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsSrvSetPinout_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsSrvSetPinout_Request, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 5 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsSrvSetPinout_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original clearpath_platform_msgs/srv/SetPinout_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..261 bytes.
Ros2Clearpath_platform_msgsSrvSetPinout_Response :: struct {
    /// @brief Original clearpath_platform_msgs/srv/SetPinout_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool,
    /// @brief Original clearpath_platform_msgs/srv/SetPinout_Response.message field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(256, false),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Clearpath_platform_msgsSrvSetPinout_Response :: proc "contextless"() -> Ros2Clearpath_platform_msgsSrvSetPinout_Response {
    result: Ros2Clearpath_platform_msgsSrvSetPinout_Response
    return result
}
/// @brief Original complete clearpath_platform_msgs/srv/SetPinout_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsSrvSetPinout_Response_Minimum_Wire_Bytes :: 5
/// @brief Original complete clearpath_platform_msgs/srv/SetPinout_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsSrvSetPinout_Response_Maximum_Wire_Bytes :: 261
/// @brief Original complete clearpath_platform_msgs/srv/SetPinout_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsSrvSetPinout_Response_Codec_Identity :: "UWVMROS1_b643ef5de2dfb725906ef8f11d79601400953211b47220be7a6fcc05d1be8ee3"
/// @brief Traverse every original field of complete clearpath_platform_msgs/srv/SetPinout_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Clearpath_platform_msgsSrvSetPinout_Response :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsSrvSetPinout_Response, cursor: ^wire.Cursor)
{
    value.field_success = wire.boolean(cursor, value.field_success)
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original clearpath_platform_msgs/srv/SetPinout_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Clearpath_platform_msgsSrvSetPinout_Response :: proc "contextless"(
    value: ^Ros2Clearpath_platform_msgsSrvSetPinout_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 261)], writing = true}
    fields_Ros2Clearpath_platform_msgsSrvSetPinout_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original clearpath_platform_msgs/srv/SetPinout_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Clearpath_platform_msgsSrvSetPinout_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Clearpath_platform_msgsSrvSetPinout_Response, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 261 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Clearpath_platform_msgsSrvSetPinout_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

