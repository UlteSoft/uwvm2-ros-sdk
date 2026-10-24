// @file records.odin
// @brief Complete owned original ABB ROS 2 records and codecs.
// @details No generated record owns a native ROS object or grants a capability.
package records
import wire "ros:odin"

/// @brief Complete original abb_egm_msgs/msg/EGMChannelState value.
/// @details Retain all 7 original fields and 10 constants. Wire extent 17..81 bytes.
Ros2Abb_egm_msgsMsgEGMChannelState :: struct {
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_name: wire.Text(64, false),
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.active field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_active: bool,
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.egm_convergence_met field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_egm_convergence_met: bool,
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.egm_client_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_egm_client_state: u8,
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.motor_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motor_state: u8,
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.rapid_execution_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rapid_execution_state: u8,
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.utilization_rate field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_utilization_rate: f64,
}
/// @brief Original complete abb_egm_msgs/msg/EGMChannelState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_egm_msgsMsgEGMChannelState_Minimum_Wire_Bytes :: 17
/// @brief Original complete abb_egm_msgs/msg/EGMChannelState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_egm_msgsMsgEGMChannelState_Maximum_Wire_Bytes :: 81
/// @brief Original complete abb_egm_msgs/msg/EGMChannelState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_egm_msgsMsgEGMChannelState_Codec_Identity :: "UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519"
/// @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_UNDEFINED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_egm_msgsMsgEGMChannelState_EGM_UNDEFINED :: 1
/// @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_ERROR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_egm_msgsMsgEGMChannelState_EGM_ERROR :: 2
/// @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_STOPPED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_egm_msgsMsgEGMChannelState_EGM_STOPPED :: 3
/// @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_RUNNING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_egm_msgsMsgEGMChannelState_EGM_RUNNING :: 4
/// @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_UNDEFINED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_egm_msgsMsgEGMChannelState_MOTORS_UNDEFINED :: 1
/// @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_ON constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_egm_msgsMsgEGMChannelState_MOTORS_ON :: 2
/// @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_OFF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_egm_msgsMsgEGMChannelState_MOTORS_OFF :: 3
/// @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_UNDEFINED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_egm_msgsMsgEGMChannelState_RAPID_UNDEFINED :: 1
/// @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_STOPPED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_egm_msgsMsgEGMChannelState_RAPID_STOPPED :: 2
/// @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_RUNNING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_egm_msgsMsgEGMChannelState_RAPID_RUNNING :: 3
/// @brief Traverse every original field of complete abb_egm_msgs/msg/EGMChannelState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_egm_msgsMsgEGMChannelState :: proc "contextless"(
    value: ^Ros2Abb_egm_msgsMsgEGMChannelState, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_name)
    value.field_active = wire.boolean(cursor, value.field_active)
    value.field_egm_convergence_met = wire.boolean(cursor, value.field_egm_convergence_met)
    value.field_egm_client_state = u8(wire.number(cursor, u64(value.field_egm_client_state), 1))
    value.field_motor_state = u8(wire.number(cursor, u64(value.field_motor_state), 1))
    value.field_rapid_execution_state = u8(wire.number(cursor, u64(value.field_rapid_execution_state), 1))
    value.field_utilization_rate = wire.float64(cursor, value.field_utilization_rate)
}
/// @brief Encode every complete original abb_egm_msgs/msg/EGMChannelState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_egm_msgsMsgEGMChannelState :: proc "contextless"(
    value: ^Ros2Abb_egm_msgsMsgEGMChannelState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 81)], writing = true}
    fields_Ros2Abb_egm_msgsMsgEGMChannelState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_egm_msgs/msg/EGMChannelState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_egm_msgsMsgEGMChannelState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_egm_msgsMsgEGMChannelState, code: u32)
{
    if len(bytes) < 17 || len(bytes) > 81 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_egm_msgsMsgEGMChannelState(&value, &cursor)
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

/// @brief Complete original std_msgs/msg/Header value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 12..76 bytes.
Ros2Std_msgsMsgHeader :: struct {
    /// @brief Original std_msgs/msg/Header.stamp field.
    /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_stamp: Ros2Builtin_interfacesMsgTime,
    /// @brief Original std_msgs/msg/Header.frame_id field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_frame_id: wire.Text(64, false),
}
/// @brief Original complete std_msgs/msg/Header minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Std_msgsMsgHeader_Minimum_Wire_Bytes :: 12
/// @brief Original complete std_msgs/msg/Header maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Std_msgsMsgHeader_Maximum_Wire_Bytes :: 76
/// @brief Original complete std_msgs/msg/Header codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Std_msgsMsgHeader_Codec_Identity :: "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
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
    cursor := wire.Cursor{bytes = output[:min(len(output), 76)], writing = true}
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
    if len(bytes) < 12 || len(bytes) > 76 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Std_msgsMsgHeader(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_egm_msgs/msg/EGMState value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..1376 bytes.
Ros2Abb_egm_msgsMsgEGMState :: struct {
    /// @brief Original abb_egm_msgs/msg/EGMState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original abb_egm_msgs/msg/EGMState.egm_channels field.
    /// @details Original type abb_egm_msgs/msg/EGMChannelState. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_egm_channels: wire.Sequence(Ros2Abb_egm_msgsMsgEGMChannelState, 16),
}
/// @brief Original complete abb_egm_msgs/msg/EGMState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_egm_msgsMsgEGMState_Minimum_Wire_Bytes :: 16
/// @brief Original complete abb_egm_msgs/msg/EGMState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_egm_msgsMsgEGMState_Maximum_Wire_Bytes :: 1376
/// @brief Original complete abb_egm_msgs/msg/EGMState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_egm_msgsMsgEGMState_Codec_Identity :: "UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d"
/// @brief Traverse every original field of complete abb_egm_msgs/msg/EGMState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_egm_msgsMsgEGMState :: proc "contextless"(
    value: ^Ros2Abb_egm_msgsMsgEGMState, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_egm_channels.size = u32(wire.number(cursor, u64(value.field_egm_channels.size), 4))
    if value.field_egm_channels.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_egm_channels.size) {
        fields_Ros2Abb_egm_msgsMsgEGMChannelState(&value.field_egm_channels.items[index], cursor)
    }
}
/// @brief Encode every complete original abb_egm_msgs/msg/EGMState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_egm_msgsMsgEGMState :: proc "contextless"(
    value: ^Ros2Abb_egm_msgsMsgEGMState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1376)], writing = true}
    fields_Ros2Abb_egm_msgsMsgEGMState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_egm_msgs/msg/EGMState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_egm_msgsMsgEGMState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_egm_msgsMsgEGMState, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 1376 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_egm_msgsMsgEGMState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/msg/ConfData value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 16..16 bytes.
Ros2Abb_rapid_msgsMsgConfData :: struct {
    /// @brief Original abb_rapid_msgs/msg/ConfData.cf1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cf1: f32,
    /// @brief Original abb_rapid_msgs/msg/ConfData.cf4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cf4: f32,
    /// @brief Original abb_rapid_msgs/msg/ConfData.cf6 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cf6: f32,
    /// @brief Original abb_rapid_msgs/msg/ConfData.cfx field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cfx: f32,
}
/// @brief Original complete abb_rapid_msgs/msg/ConfData minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgConfData_Minimum_Wire_Bytes :: 16
/// @brief Original complete abb_rapid_msgs/msg/ConfData maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgConfData_Maximum_Wire_Bytes :: 16
/// @brief Original complete abb_rapid_msgs/msg/ConfData codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgConfData_Codec_Identity :: "UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571"
/// @brief Traverse every original field of complete abb_rapid_msgs/msg/ConfData.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_msgsMsgConfData :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgConfData, cursor: ^wire.Cursor)
{
    value.field_cf1 = wire.float32(cursor, value.field_cf1)
    value.field_cf4 = wire.float32(cursor, value.field_cf4)
    value.field_cf6 = wire.float32(cursor, value.field_cf6)
    value.field_cfx = wire.float32(cursor, value.field_cfx)
}
/// @brief Encode every complete original abb_rapid_msgs/msg/ConfData field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_msgsMsgConfData :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgConfData, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 16)], writing = true}
    fields_Ros2Abb_rapid_msgsMsgConfData(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/msg/ConfData.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_msgsMsgConfData :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_msgsMsgConfData, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 16 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_msgsMsgConfData(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/msg/ExtJoint value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 24..24 bytes.
Ros2Abb_rapid_msgsMsgExtJoint :: struct {
    /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_a field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_eax_a: f32,
    /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_b field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_eax_b: f32,
    /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_c field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_eax_c: f32,
    /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_d field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_eax_d: f32,
    /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_e field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_eax_e: f32,
    /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_f field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_eax_f: f32,
}
/// @brief Original complete abb_rapid_msgs/msg/ExtJoint minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgExtJoint_Minimum_Wire_Bytes :: 24
/// @brief Original complete abb_rapid_msgs/msg/ExtJoint maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgExtJoint_Maximum_Wire_Bytes :: 24
/// @brief Original complete abb_rapid_msgs/msg/ExtJoint codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgExtJoint_Codec_Identity :: "UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2"
/// @brief Traverse every original field of complete abb_rapid_msgs/msg/ExtJoint.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_msgsMsgExtJoint :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgExtJoint, cursor: ^wire.Cursor)
{
    value.field_eax_a = wire.float32(cursor, value.field_eax_a)
    value.field_eax_b = wire.float32(cursor, value.field_eax_b)
    value.field_eax_c = wire.float32(cursor, value.field_eax_c)
    value.field_eax_d = wire.float32(cursor, value.field_eax_d)
    value.field_eax_e = wire.float32(cursor, value.field_eax_e)
    value.field_eax_f = wire.float32(cursor, value.field_eax_f)
}
/// @brief Encode every complete original abb_rapid_msgs/msg/ExtJoint field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_msgsMsgExtJoint :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgExtJoint, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 24)], writing = true}
    fields_Ros2Abb_rapid_msgsMsgExtJoint(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/msg/ExtJoint.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_msgsMsgExtJoint :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_msgsMsgExtJoint, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 24 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_msgsMsgExtJoint(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/msg/RobJoint value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 24..24 bytes.
Ros2Abb_rapid_msgsMsgRobJoint :: struct {
    /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rax_1: f32,
    /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rax_2: f32,
    /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rax_3: f32,
    /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rax_4: f32,
    /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_5 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rax_5: f32,
    /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_6 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rax_6: f32,
}
/// @brief Original complete abb_rapid_msgs/msg/RobJoint minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgRobJoint_Minimum_Wire_Bytes :: 24
/// @brief Original complete abb_rapid_msgs/msg/RobJoint maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgRobJoint_Maximum_Wire_Bytes :: 24
/// @brief Original complete abb_rapid_msgs/msg/RobJoint codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgRobJoint_Codec_Identity :: "UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd"
/// @brief Traverse every original field of complete abb_rapid_msgs/msg/RobJoint.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_msgsMsgRobJoint :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgRobJoint, cursor: ^wire.Cursor)
{
    value.field_rax_1 = wire.float32(cursor, value.field_rax_1)
    value.field_rax_2 = wire.float32(cursor, value.field_rax_2)
    value.field_rax_3 = wire.float32(cursor, value.field_rax_3)
    value.field_rax_4 = wire.float32(cursor, value.field_rax_4)
    value.field_rax_5 = wire.float32(cursor, value.field_rax_5)
    value.field_rax_6 = wire.float32(cursor, value.field_rax_6)
}
/// @brief Encode every complete original abb_rapid_msgs/msg/RobJoint field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_msgsMsgRobJoint :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgRobJoint, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 24)], writing = true}
    fields_Ros2Abb_rapid_msgsMsgRobJoint(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/msg/RobJoint.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_msgsMsgRobJoint :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_msgsMsgRobJoint, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 24 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_msgsMsgRobJoint(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/msg/JointTarget value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 48..48 bytes.
Ros2Abb_rapid_msgsMsgJointTarget :: struct {
    /// @brief Original abb_rapid_msgs/msg/JointTarget.robax field.
    /// @details Original type abb_rapid_msgs/msg/RobJoint. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_robax: Ros2Abb_rapid_msgsMsgRobJoint,
    /// @brief Original abb_rapid_msgs/msg/JointTarget.extax field.
    /// @details Original type abb_rapid_msgs/msg/ExtJoint. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_extax: Ros2Abb_rapid_msgsMsgExtJoint,
}
/// @brief Original complete abb_rapid_msgs/msg/JointTarget minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgJointTarget_Minimum_Wire_Bytes :: 48
/// @brief Original complete abb_rapid_msgs/msg/JointTarget maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgJointTarget_Maximum_Wire_Bytes :: 48
/// @brief Original complete abb_rapid_msgs/msg/JointTarget codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgJointTarget_Codec_Identity :: "UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540"
/// @brief Traverse every original field of complete abb_rapid_msgs/msg/JointTarget.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_msgsMsgJointTarget :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgJointTarget, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_rapid_msgsMsgRobJoint(&value.field_robax, cursor)
    fields_Ros2Abb_rapid_msgsMsgExtJoint(&value.field_extax, cursor)
}
/// @brief Encode every complete original abb_rapid_msgs/msg/JointTarget field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_msgsMsgJointTarget :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgJointTarget, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 48)], writing = true}
    fields_Ros2Abb_rapid_msgsMsgJointTarget(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/msg/JointTarget.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_msgsMsgJointTarget :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_msgsMsgJointTarget, code: u32)
{
    if len(bytes) < 48 || len(bytes) > 48 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_msgsMsgJointTarget(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/msg/Pos value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 12..12 bytes.
Ros2Abb_rapid_msgsMsgPos :: struct {
    /// @brief Original abb_rapid_msgs/msg/Pos.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f32,
    /// @brief Original abb_rapid_msgs/msg/Pos.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f32,
    /// @brief Original abb_rapid_msgs/msg/Pos.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f32,
}
/// @brief Original complete abb_rapid_msgs/msg/Pos minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgPos_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_rapid_msgs/msg/Pos maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgPos_Maximum_Wire_Bytes :: 12
/// @brief Original complete abb_rapid_msgs/msg/Pos codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgPos_Codec_Identity :: "UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2"
/// @brief Traverse every original field of complete abb_rapid_msgs/msg/Pos.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_msgsMsgPos :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgPos, cursor: ^wire.Cursor)
{
    value.field_x = wire.float32(cursor, value.field_x)
    value.field_y = wire.float32(cursor, value.field_y)
    value.field_z = wire.float32(cursor, value.field_z)
}
/// @brief Encode every complete original abb_rapid_msgs/msg/Pos field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_msgsMsgPos :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgPos, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 12)], writing = true}
    fields_Ros2Abb_rapid_msgsMsgPos(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/msg/Pos.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_msgsMsgPos :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_msgsMsgPos, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 12 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_msgsMsgPos(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/msg/Orient value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 16..16 bytes.
Ros2Abb_rapid_msgsMsgOrient :: struct {
    /// @brief Original abb_rapid_msgs/msg/Orient.q1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q1: f32,
    /// @brief Original abb_rapid_msgs/msg/Orient.q2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q2: f32,
    /// @brief Original abb_rapid_msgs/msg/Orient.q3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q3: f32,
    /// @brief Original abb_rapid_msgs/msg/Orient.q4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q4: f32,
}
/// @brief Original complete abb_rapid_msgs/msg/Orient minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgOrient_Minimum_Wire_Bytes :: 16
/// @brief Original complete abb_rapid_msgs/msg/Orient maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgOrient_Maximum_Wire_Bytes :: 16
/// @brief Original complete abb_rapid_msgs/msg/Orient codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgOrient_Codec_Identity :: "UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e"
/// @brief Traverse every original field of complete abb_rapid_msgs/msg/Orient.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_msgsMsgOrient :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgOrient, cursor: ^wire.Cursor)
{
    value.field_q1 = wire.float32(cursor, value.field_q1)
    value.field_q2 = wire.float32(cursor, value.field_q2)
    value.field_q3 = wire.float32(cursor, value.field_q3)
    value.field_q4 = wire.float32(cursor, value.field_q4)
}
/// @brief Encode every complete original abb_rapid_msgs/msg/Orient field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_msgsMsgOrient :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgOrient, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 16)], writing = true}
    fields_Ros2Abb_rapid_msgsMsgOrient(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/msg/Orient.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_msgsMsgOrient :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_msgsMsgOrient, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 16 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_msgsMsgOrient(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/msg/LoadData value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 44..44 bytes.
Ros2Abb_rapid_msgsMsgLoadData :: struct {
    /// @brief Original abb_rapid_msgs/msg/LoadData.mass field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mass: f32,
    /// @brief Original abb_rapid_msgs/msg/LoadData.cog field.
    /// @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_cog: Ros2Abb_rapid_msgsMsgPos,
    /// @brief Original abb_rapid_msgs/msg/LoadData.aom field.
    /// @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_aom: Ros2Abb_rapid_msgsMsgOrient,
    /// @brief Original abb_rapid_msgs/msg/LoadData.ix field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ix: f32,
    /// @brief Original abb_rapid_msgs/msg/LoadData.iy field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_iy: f32,
    /// @brief Original abb_rapid_msgs/msg/LoadData.iz field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_iz: f32,
}
/// @brief Original complete abb_rapid_msgs/msg/LoadData minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgLoadData_Minimum_Wire_Bytes :: 44
/// @brief Original complete abb_rapid_msgs/msg/LoadData maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgLoadData_Maximum_Wire_Bytes :: 44
/// @brief Original complete abb_rapid_msgs/msg/LoadData codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgLoadData_Codec_Identity :: "UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9"
/// @brief Traverse every original field of complete abb_rapid_msgs/msg/LoadData.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_msgsMsgLoadData :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgLoadData, cursor: ^wire.Cursor)
{
    value.field_mass = wire.float32(cursor, value.field_mass)
    fields_Ros2Abb_rapid_msgsMsgPos(&value.field_cog, cursor)
    fields_Ros2Abb_rapid_msgsMsgOrient(&value.field_aom, cursor)
    value.field_ix = wire.float32(cursor, value.field_ix)
    value.field_iy = wire.float32(cursor, value.field_iy)
    value.field_iz = wire.float32(cursor, value.field_iz)
}
/// @brief Encode every complete original abb_rapid_msgs/msg/LoadData field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_msgsMsgLoadData :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgLoadData, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 44)], writing = true}
    fields_Ros2Abb_rapid_msgsMsgLoadData(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/msg/LoadData.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_msgsMsgLoadData :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_msgsMsgLoadData, code: u32)
{
    if len(bytes) < 44 || len(bytes) > 44 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_msgsMsgLoadData(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/msg/Pose value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 28..28 bytes.
Ros2Abb_rapid_msgsMsgPose :: struct {
    /// @brief Original abb_rapid_msgs/msg/Pose.trans field.
    /// @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_trans: Ros2Abb_rapid_msgsMsgPos,
    /// @brief Original abb_rapid_msgs/msg/Pose.rot field.
    /// @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_rot: Ros2Abb_rapid_msgsMsgOrient,
}
/// @brief Original complete abb_rapid_msgs/msg/Pose minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgPose_Minimum_Wire_Bytes :: 28
/// @brief Original complete abb_rapid_msgs/msg/Pose maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgPose_Maximum_Wire_Bytes :: 28
/// @brief Original complete abb_rapid_msgs/msg/Pose codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgPose_Codec_Identity :: "UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2"
/// @brief Traverse every original field of complete abb_rapid_msgs/msg/Pose.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_msgsMsgPose :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgPose, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_rapid_msgsMsgPos(&value.field_trans, cursor)
    fields_Ros2Abb_rapid_msgsMsgOrient(&value.field_rot, cursor)
}
/// @brief Encode every complete original abb_rapid_msgs/msg/Pose field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_msgsMsgPose :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgPose, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 28)], writing = true}
    fields_Ros2Abb_rapid_msgsMsgPose(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/msg/Pose.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_msgsMsgPose :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_msgsMsgPose, code: u32)
{
    if len(bytes) < 28 || len(bytes) > 28 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_msgsMsgPose(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/msg/RobTarget value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 68..68 bytes.
Ros2Abb_rapid_msgsMsgRobTarget :: struct {
    /// @brief Original abb_rapid_msgs/msg/RobTarget.trans field.
    /// @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_trans: Ros2Abb_rapid_msgsMsgPos,
    /// @brief Original abb_rapid_msgs/msg/RobTarget.rot field.
    /// @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_rot: Ros2Abb_rapid_msgsMsgOrient,
    /// @brief Original abb_rapid_msgs/msg/RobTarget.robconf field.
    /// @details Original type abb_rapid_msgs/msg/ConfData. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_robconf: Ros2Abb_rapid_msgsMsgConfData,
    /// @brief Original abb_rapid_msgs/msg/RobTarget.extax field.
    /// @details Original type abb_rapid_msgs/msg/ExtJoint. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_extax: Ros2Abb_rapid_msgsMsgExtJoint,
}
/// @brief Original complete abb_rapid_msgs/msg/RobTarget minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgRobTarget_Minimum_Wire_Bytes :: 68
/// @brief Original complete abb_rapid_msgs/msg/RobTarget maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgRobTarget_Maximum_Wire_Bytes :: 68
/// @brief Original complete abb_rapid_msgs/msg/RobTarget codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgRobTarget_Codec_Identity :: "UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8"
/// @brief Traverse every original field of complete abb_rapid_msgs/msg/RobTarget.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_msgsMsgRobTarget :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgRobTarget, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_rapid_msgsMsgPos(&value.field_trans, cursor)
    fields_Ros2Abb_rapid_msgsMsgOrient(&value.field_rot, cursor)
    fields_Ros2Abb_rapid_msgsMsgConfData(&value.field_robconf, cursor)
    fields_Ros2Abb_rapid_msgsMsgExtJoint(&value.field_extax, cursor)
}
/// @brief Encode every complete original abb_rapid_msgs/msg/RobTarget field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_msgsMsgRobTarget :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgRobTarget, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 68)], writing = true}
    fields_Ros2Abb_rapid_msgsMsgRobTarget(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/msg/RobTarget.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_msgsMsgRobTarget :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_msgsMsgRobTarget, code: u32)
{
    if len(bytes) < 68 || len(bytes) > 68 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_msgsMsgRobTarget(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/msg/ToolData value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 73..73 bytes.
Ros2Abb_rapid_msgsMsgToolData :: struct {
    /// @brief Original abb_rapid_msgs/msg/ToolData.robhold field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_robhold: bool,
    /// @brief Original abb_rapid_msgs/msg/ToolData.tframe field.
    /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_tframe: Ros2Abb_rapid_msgsMsgPose,
    /// @brief Original abb_rapid_msgs/msg/ToolData.tload field.
    /// @details Original type abb_rapid_msgs/msg/LoadData. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_tload: Ros2Abb_rapid_msgsMsgLoadData,
}
/// @brief Original complete abb_rapid_msgs/msg/ToolData minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgToolData_Minimum_Wire_Bytes :: 73
/// @brief Original complete abb_rapid_msgs/msg/ToolData maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgToolData_Maximum_Wire_Bytes :: 73
/// @brief Original complete abb_rapid_msgs/msg/ToolData codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgToolData_Codec_Identity :: "UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237"
/// @brief Traverse every original field of complete abb_rapid_msgs/msg/ToolData.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_msgsMsgToolData :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgToolData, cursor: ^wire.Cursor)
{
    value.field_robhold = wire.boolean(cursor, value.field_robhold)
    fields_Ros2Abb_rapid_msgsMsgPose(&value.field_tframe, cursor)
    fields_Ros2Abb_rapid_msgsMsgLoadData(&value.field_tload, cursor)
}
/// @brief Encode every complete original abb_rapid_msgs/msg/ToolData field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_msgsMsgToolData :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgToolData, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 73)], writing = true}
    fields_Ros2Abb_rapid_msgsMsgToolData(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/msg/ToolData.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_msgsMsgToolData :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_msgsMsgToolData, code: u32)
{
    if len(bytes) < 73 || len(bytes) > 73 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_msgsMsgToolData(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/msg/WObjData value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 62..574 bytes.
Ros2Abb_rapid_msgsMsgWObjData :: struct {
    /// @brief Original abb_rapid_msgs/msg/WObjData.robhold field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_robhold: bool,
    /// @brief Original abb_rapid_msgs/msg/WObjData.ufprog field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ufprog: bool,
    /// @brief Original abb_rapid_msgs/msg/WObjData.ufmec field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_ufmec: wire.Text(512, false),
    /// @brief Original abb_rapid_msgs/msg/WObjData.uframe field.
    /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_uframe: Ros2Abb_rapid_msgsMsgPose,
    /// @brief Original abb_rapid_msgs/msg/WObjData.oframe field.
    /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_oframe: Ros2Abb_rapid_msgsMsgPose,
}
/// @brief Original complete abb_rapid_msgs/msg/WObjData minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgWObjData_Minimum_Wire_Bytes :: 62
/// @brief Original complete abb_rapid_msgs/msg/WObjData maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgWObjData_Maximum_Wire_Bytes :: 574
/// @brief Original complete abb_rapid_msgs/msg/WObjData codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_msgsMsgWObjData_Codec_Identity :: "UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd"
/// @brief Traverse every original field of complete abb_rapid_msgs/msg/WObjData.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_msgsMsgWObjData :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgWObjData, cursor: ^wire.Cursor)
{
    value.field_robhold = wire.boolean(cursor, value.field_robhold)
    value.field_ufprog = wire.boolean(cursor, value.field_ufprog)
    wire.text(cursor, &value.field_ufmec)
    fields_Ros2Abb_rapid_msgsMsgPose(&value.field_uframe, cursor)
    fields_Ros2Abb_rapid_msgsMsgPose(&value.field_oframe, cursor)
}
/// @brief Encode every complete original abb_rapid_msgs/msg/WObjData field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_msgsMsgWObjData :: proc "contextless"(
    value: ^Ros2Abb_rapid_msgsMsgWObjData, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 574)], writing = true}
    fields_Ros2Abb_rapid_msgsMsgWObjData(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/msg/WObjData.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_msgsMsgWObjData :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_msgsMsgWObjData, code: u32)
{
    if len(bytes) < 62 || len(bytes) > 574 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_msgsMsgWObjData(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings value.
/// @details Retain all 8 original fields and 0 constants. Wire extent 204..716 bytes.
Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.tool field.
    /// @details Original type abb_rapid_msgs/msg/ToolData. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_tool: Ros2Abb_rapid_msgsMsgToolData,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.wobj field.
    /// @details Original type abb_rapid_msgs/msg/WObjData. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_wobj: Ros2Abb_rapid_msgsMsgWObjData,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.correction_frame field.
    /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_correction_frame: Ros2Abb_rapid_msgsMsgPose,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.sensor_frame field.
    /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_sensor_frame: Ros2Abb_rapid_msgsMsgPose,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.cond_min_max field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cond_min_max: f32,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.lp_filter field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_lp_filter: f32,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.sample_rate field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sample_rate: u8,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.max_speed_deviation field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_max_speed_deviation: f32,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_Minimum_Wire_Bytes :: 204
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_Maximum_Wire_Bytes :: 716
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings_Codec_Identity :: "UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa"
/// @brief Traverse every original field of complete
/// abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_rapid_msgsMsgToolData(&value.field_tool, cursor)
    fields_Ros2Abb_rapid_msgsMsgWObjData(&value.field_wobj, cursor)
    fields_Ros2Abb_rapid_msgsMsgPose(&value.field_correction_frame, cursor)
    fields_Ros2Abb_rapid_msgsMsgPose(&value.field_sensor_frame, cursor)
    value.field_cond_min_max = wire.float32(cursor, value.field_cond_min_max)
    value.field_lp_filter = wire.float32(cursor, value.field_lp_filter)
    value.field_sample_rate = u8(wire.number(cursor, u64(value.field_sample_rate), 1))
    value.field_max_speed_deviation = wire.float32(cursor, value.field_max_speed_deviation)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 716)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings, code: u32)
{
    if len(bytes) < 204 || len(bytes) > 716 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMRunSettings value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 40..40 bytes.
Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.cond_time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cond_time: f32,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.ramp_in_time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ramp_in_time: f32,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.offset field.
    /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_offset: Ros2Abb_rapid_msgsMsgPose,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.pos_corr_gain field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_pos_corr_gain: f32,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings_Minimum_Wire_Bytes :: 40
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings_Maximum_Wire_Bytes :: 40
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings_Codec_Identity :: "UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings, cursor: ^wire.Cursor)
{
    value.field_cond_time = wire.float32(cursor, value.field_cond_time)
    value.field_ramp_in_time = wire.float32(cursor, value.field_ramp_in_time)
    fields_Ros2Abb_rapid_msgsMsgPose(&value.field_offset, cursor)
    value.field_pos_corr_gain = wire.float32(cursor, value.field_pos_corr_gain)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/msg/EGMRunSettings field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 40)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings, code: u32)
{
    if len(bytes) < 40 || len(bytes) > 40 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..5 bytes.
Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.use_filtering field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_filtering: bool,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.comm_timeout field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_comm_timeout: f32,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings_Minimum_Wire_Bytes :: 5
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings_Maximum_Wire_Bytes :: 5
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings_Codec_Identity :: "UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings, cursor: ^wire.Cursor)
{
    value.field_use_filtering = wire.boolean(cursor, value.field_use_filtering)
    value.field_comm_timeout = wire.float32(cursor, value.field_comm_timeout)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 5 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMStopSettings value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMStopSettings.ramp_out_time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ramp_out_time: f32,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings_Minimum_Wire_Bytes :: 4
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings_Maximum_Wire_Bytes :: 4
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings_Codec_Identity :: "UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings, cursor: ^wire.Cursor)
{
    value.field_ramp_out_time = wire.float32(cursor, value.field_ramp_out_time)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/msg/EGMStopSettings field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMSettings value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 255..767 bytes.
Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.allow_egm_motions field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_allow_egm_motions: bool,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.use_presync field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_presync: bool,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.setup_uc field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMSetupSettings. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_setup_uc: Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.activate field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMActivateSettings. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_activate: Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.run field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMRunSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_run: Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.stop field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMStopSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_stop: Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMSettings minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_Minimum_Wire_Bytes :: 255
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMSettings maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_Maximum_Wire_Bytes :: 767
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/EGMSettings codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings_Codec_Identity :: "UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/msg/EGMSettings.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings, cursor: ^wire.Cursor)
{
    value.field_allow_egm_motions = wire.boolean(cursor, value.field_allow_egm_motions)
    value.field_use_presync = wire.boolean(cursor, value.field_use_presync)
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings(&value.field_setup_uc, cursor)
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings(&value.field_activate, cursor)
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings(&value.field_run, cursor)
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings(&value.field_stop, cursor)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/msg/EGMSettings field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 767)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/msg/EGMSettings.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings, code: u32)
{
    if len(bytes) < 255 || len(bytes) > 767 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/StateMachineState value.
/// @details Retain all 3 original fields and 12 constants. Wire extent 6..518 bytes.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.rapid_task field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_rapid_task: wire.Text(512, false),
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.sm_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sm_state: u8,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.egm_action field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_egm_action: u8,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/StateMachineState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/StateMachineState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/StateMachineState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_Codec_Identity :: "UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711"
/// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_UNKNOWN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_UNKNOWN :: 1
/// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_IDLE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_IDLE :: 2
/// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_INITIALIZE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_INITIALIZE :: 3
/// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_RUN_RAPID_ROUTINE :: 4
/// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_RUN_EGM_ROUTINE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_SM_STATE_RUN_EGM_ROUTINE :: 5
/// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_UNKNOWN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_UNKNOWN :: 1
/// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_NONE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_NONE :: 2
/// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_RUN_JOINT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_RUN_JOINT :: 3
/// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_RUN_POSE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_RUN_POSE :: 4
/// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_STOP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_STOP :: 5
/// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_START_STREAM constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_START_STREAM :: 6
/// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_STOP_STREAM constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState_EGM_ACTION_STOP_STREAM :: 7
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/msg/StateMachineState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_rapid_task)
    value.field_sm_state = u8(wire.number(cursor, u64(value.field_sm_state), 1))
    value.field_egm_action = u8(wire.number(cursor, u64(value.field_egm_action), 1))
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/msg/StateMachineState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/msg/StateMachineState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/RuntimeState value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..8368 bytes.
Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/msg/RuntimeState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original abb_rapid_sm_addin_msgs/msg/RuntimeState.state_machines field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/StateMachineState. Shape sequence;
    /// bound/count 16 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_state_machines: wire.Sequence(Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState, 16),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/RuntimeState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState_Minimum_Wire_Bytes :: 16
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/RuntimeState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState_Maximum_Wire_Bytes :: 8368
/// @brief Original complete abb_rapid_sm_addin_msgs/msg/RuntimeState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState_Codec_Identity :: "UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/msg/RuntimeState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_state_machines.size = u32(wire.number(cursor, u64(value.field_state_machines.size), 4))
    if value.field_state_machines.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_state_machines.size) {
        fields_Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState(&value.field_state_machines.items[index], cursor)
    }
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/msg/RuntimeState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8368)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/msg/RuntimeState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 8368 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..68 bytes.
Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_task: wire.Text(64, false),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request_Minimum_Wire_Bytes :: 4
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request_Maximum_Wire_Bytes :: 68
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request_Codec_Identity :: "UWVMROS1_363be2459fcc9c475c6305cbcfebf7689e891eb27645b7667960aace23d56e8e"
/// @brief Traverse every original field of complete
/// abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_task)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 68)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 68 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 261..1285 bytes.
Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.settings field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_settings: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings,
    /// @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response_Minimum_Wire_Bytes :: 261
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response_Maximum_Wire_Bytes :: 1285
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response_Codec_Identity :: "UWVMROS1_d8f340e1c6d78fc0a782c3279efb34ae5e11df175a82f9dd5ee82e603d6b2ffb"
/// @brief Traverse every original field of complete
/// abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings(&value.field_settings, cursor)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1285)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response, code: u32)
{
    if len(bytes) < 261 || len(bytes) > 1285 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 259..835 bytes.
Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_task: wire.Text(64, false),
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.settings field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_settings: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request_Minimum_Wire_Bytes :: 259
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request_Maximum_Wire_Bytes :: 835
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request_Codec_Identity :: "UWVMROS1_c2f3dd535e9475526bf18bdffa0e9a839049d315c9aebb150f8561ee3361a2bd"
/// @brief Traverse every original field of complete
/// abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_task)
    fields_Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings(&value.field_settings, cursor)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 835)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request, code: u32)
{
    if len(bytes) < 259 || len(bytes) > 835 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response_Codec_Identity :: "UWVMROS1_6a1adeebe31dfe101a6d57019e26ee2f1144b9a6ce30aee08d4c6fe56ea6838d"
/// @brief Traverse every original field of complete
/// abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..584 bytes.
Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_task: wire.Text(64, false),
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.routine field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_routine: wire.Text(512, false),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request_Minimum_Wire_Bytes :: 8
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request_Maximum_Wire_Bytes :: 584
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request_Codec_Identity :: "UWVMROS1_4561b7e5e296a1a329d5f5684bcbde1ef41324554a34e9a79a85824286dd477c"
/// @brief Traverse every original field of complete
/// abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_task)
    wire.text(cursor, &value.field_routine)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 584)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 584 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response minimum wire
/// bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response maximum wire
/// bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response_Codec_Identity :: "UWVMROS1_980d2a16536289f446161acdf2fc57d459baa2290d74f1dd5aaf8129126cbba1"
/// @brief Traverse every original field of complete
/// abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response
/// field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original
/// abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request value.
/// @details Retain all 3 original fields and 15 constants. Wire extent 9..73 bytes.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_task: wire.Text(64, false),
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.command field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_command: u8,
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.target_position field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_target_position: f32,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_Minimum_Wire_Bytes :: 9
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_Maximum_Wire_Bytes :: 73
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_Codec_Identity :: "UWVMROS1_5d6983aa85c2c52f8ec06cbd723d5929cfc381db2e0bfffb4c27078497d86c90"
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_UNKNOWN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_UNKNOWN :: 1
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_NONE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_NONE :: 2
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_INITIALIZE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_INITIALIZE :: 3
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_CALIBRATE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_CALIBRATE :: 4
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_MOVE_TO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_MOVE_TO :: 5
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_GRIP_IN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_GRIP_IN :: 6
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_GRIP_OUT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_GRIP_OUT :: 7
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_ON_1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_ON_1 :: 8
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_ON_2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_ON_2 :: 9
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_OFF_1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_OFF_1 :: 10
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_OFF_2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_BLOW_OFF_2 :: 11
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_ON_1
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_ON_1 :: 12
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_ON_2
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_ON_2 :: 13
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_OFF_1
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_OFF_1 :: 14
/// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_OFF_2
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request_SG_COMMAND_VACUUM_OFF_2 :: 15
/// @brief Traverse every original field of complete
/// abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_task)
    value.field_command = u8(wire.number(cursor, u64(value.field_command), 1))
    value.field_target_position = wire.float32(cursor, value.field_target_position)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 73)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request, code: u32)
{
    if len(bytes) < 9 || len(bytes) > 73 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response_Codec_Identity :: "UWVMROS1_87cdc41c81d49930dce7193d4b7af98add266a6e9a7cf5e69457d01ded388cf8"
/// @brief Traverse every original field of complete
/// abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response :: proc "contextless"(
    value: ^Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/msg/MechanicalUnitState value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..69 bytes.
Ros2Abb_robot_msgsMsgMechanicalUnitState :: struct {
    /// @brief Original abb_robot_msgs/msg/MechanicalUnitState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_name: wire.Text(64, false),
    /// @brief Original abb_robot_msgs/msg/MechanicalUnitState.activated field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_activated: bool,
}
/// @brief Original complete abb_robot_msgs/msg/MechanicalUnitState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgMechanicalUnitState_Minimum_Wire_Bytes :: 5
/// @brief Original complete abb_robot_msgs/msg/MechanicalUnitState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgMechanicalUnitState_Maximum_Wire_Bytes :: 69
/// @brief Original complete abb_robot_msgs/msg/MechanicalUnitState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgMechanicalUnitState_Codec_Identity :: "UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8"
/// @brief Traverse every original field of complete abb_robot_msgs/msg/MechanicalUnitState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsMsgMechanicalUnitState :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsMsgMechanicalUnitState, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_name)
    value.field_activated = wire.boolean(cursor, value.field_activated)
}
/// @brief Encode every complete original abb_robot_msgs/msg/MechanicalUnitState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsMsgMechanicalUnitState :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsMsgMechanicalUnitState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 69)], writing = true}
    fields_Ros2Abb_robot_msgsMsgMechanicalUnitState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/msg/MechanicalUnitState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsMsgMechanicalUnitState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsMsgMechanicalUnitState, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 69 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsMsgMechanicalUnitState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/msg/RAPIDSymbolPath value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 12..204 bytes.
Ros2Abb_robot_msgsMsgRAPIDSymbolPath :: struct {
    /// @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_task: wire.Text(64, false),
    /// @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.module field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_module: wire.Text(64, false),
    /// @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.symbol field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_symbol: wire.Text(64, false),
}
/// @brief Original complete abb_robot_msgs/msg/RAPIDSymbolPath minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgRAPIDSymbolPath_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_robot_msgs/msg/RAPIDSymbolPath maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgRAPIDSymbolPath_Maximum_Wire_Bytes :: 204
/// @brief Original complete abb_robot_msgs/msg/RAPIDSymbolPath codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgRAPIDSymbolPath_Codec_Identity :: "UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e"
/// @brief Traverse every original field of complete abb_robot_msgs/msg/RAPIDSymbolPath.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsMsgRAPIDSymbolPath, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_task)
    wire.text(cursor, &value.field_module)
    wire.text(cursor, &value.field_symbol)
}
/// @brief Encode every complete original abb_robot_msgs/msg/RAPIDSymbolPath field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsMsgRAPIDSymbolPath :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsMsgRAPIDSymbolPath, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 204)], writing = true}
    fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/msg/RAPIDSymbolPath.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsMsgRAPIDSymbolPath :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsMsgRAPIDSymbolPath, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 204 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/msg/RAPIDTaskState value.
/// @details Retain all 4 original fields and 5 constants. Wire extent 7..71 bytes.
Ros2Abb_robot_msgsMsgRAPIDTaskState :: struct {
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_name: wire.Text(64, false),
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.activated field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_activated: bool,
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.execution_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_execution_state: u8,
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.motion_task field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motion_task: bool,
}
/// @brief Original complete abb_robot_msgs/msg/RAPIDTaskState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgRAPIDTaskState_Minimum_Wire_Bytes :: 7
/// @brief Original complete abb_robot_msgs/msg/RAPIDTaskState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgRAPIDTaskState_Maximum_Wire_Bytes :: 71
/// @brief Original complete abb_robot_msgs/msg/RAPIDTaskState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgRAPIDTaskState_Codec_Identity :: "UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd"
/// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_UNKNOWN :: 1
/// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_READY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_READY :: 2
/// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_STOPPED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_STOPPED :: 3
/// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_STARTED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_STARTED :: 4
/// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgRAPIDTaskState_EXECUTION_STATE_UNINITIALIZED :: 5
/// @brief Traverse every original field of complete abb_robot_msgs/msg/RAPIDTaskState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsMsgRAPIDTaskState :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsMsgRAPIDTaskState, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_name)
    value.field_activated = wire.boolean(cursor, value.field_activated)
    value.field_execution_state = u8(wire.number(cursor, u64(value.field_execution_state), 1))
    value.field_motion_task = wire.boolean(cursor, value.field_motion_task)
}
/// @brief Encode every complete original abb_robot_msgs/msg/RAPIDTaskState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsMsgRAPIDTaskState :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsMsgRAPIDTaskState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 71)], writing = true}
    fields_Ros2Abb_robot_msgsMsgRAPIDTaskState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/msg/RAPIDTaskState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsMsgRAPIDTaskState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsMsgRAPIDTaskState, code: u32)
{
    if len(bytes) < 7 || len(bytes) > 71 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsMsgRAPIDTaskState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/msg/ServiceResponses value.
/// @details Retain all 0 original fields and 32 constants. Wire extent 0..0 bytes.
Ros2Abb_robot_msgsMsgServiceResponses :: struct {
}
/// @brief Original complete abb_robot_msgs/msg/ServiceResponses minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgServiceResponses_Minimum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/msg/ServiceResponses maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgServiceResponses_Maximum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/msg/ServiceResponses codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgServiceResponses_Codec_Identity :: "UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.SUCCESS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_SUCCESS :: ""
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SUCCESS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_SUCCESS :: 1
/// @brief Original abb_robot_msgs/msg/ServiceResponses.FAILED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_FAILED :: "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_FAILED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_FAILED :: 2
/// @brief Original abb_robot_msgs/msg/ServiceResponses.SERVER_IS_BUSY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_SERVER_IS_BUSY :: "Server is busy"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SERVER_IS_BUSY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_SERVER_IS_BUSY :: 1001
/// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_FILENAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_EMPTY_FILENAME :: "Filename is empty"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_FILENAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_FILENAME :: 2001
/// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_SIGNAL_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_EMPTY_SIGNAL_NAME :: "Signal name is empty"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_SIGNAL_NAME :: 2002
/// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_TASK_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_EMPTY_RAPID_TASK_NAME :: "RAPID task name is empty"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_RAPID_TASK_NAME :: 2003
/// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_EMPTY_RAPID_MODULE_NAME :: "RAPID module name is empty"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_RAPID_MODULE_NAME :: 2004
/// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_EMPTY_RAPID_SYMBOL_NAME :: "RAPID symbol name is empty"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_EMPTY_RAPID_SYMBOL_NAME :: 2005
/// @brief Original abb_robot_msgs/msg/ServiceResponses.NOT_IN_AUTO_MODE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_NOT_IN_AUTO_MODE :: "Robot controller is not in AUTO mode"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_NOT_IN_AUTO_MODE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_NOT_IN_AUTO_MODE :: 3001
/// @brief Original abb_robot_msgs/msg/ServiceResponses.MOTORS_ARE_OFF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_MOTORS_ARE_OFF :: "Motors are off"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_MOTORS_ARE_OFF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_MOTORS_ARE_OFF :: 3002
/// @brief Original abb_robot_msgs/msg/ServiceResponses.MOTORS_ARE_ON constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_MOTORS_ARE_ON :: "Motors are on"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_MOTORS_ARE_ON constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_MOTORS_ARE_ON :: 3003
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RAPID_NOT_STOPPED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RAPID_NOT_STOPPED :: "RAPID has not been stopped"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_RAPID_NOT_STOPPED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_RAPID_NOT_STOPPED :: 3004
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RAPID_NOT_RUNNING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RAPID_NOT_RUNNING :: "RAPID is not running"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_RAPID_NOT_RUNNING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_RAPID_NOT_RUNNING :: 3005
/// @brief Original abb_robot_msgs/msg/ServiceResponses.SM_RUNTIME_STATES_MISSING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_SM_RUNTIME_STATES_MISSING :: "No runtime states received for any StateMachine Add-In instance"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_SM_RUNTIME_STATES_MISSING :: 4001
/// @brief Original abb_robot_msgs/msg/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_SM_UNKNOWN_RAPID_TASK :: "RAPID task not found among known StateMachine Add-In instances"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_SM_UNKNOWN_RAPID_TASK :: 4002
/// @brief Original abb_robot_msgs/msg/ServiceResponses.SM_UNINITIALIZED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_SM_UNINITIALIZED :: "StateMachine Add-In instance has not been initialized"
/// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_UNINITIALIZED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Abb_robot_msgsMsgServiceResponses_RC_SM_UNINITIALIZED :: 4003
/// @brief Traverse every original field of complete abb_robot_msgs/msg/ServiceResponses.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsMsgServiceResponses :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsMsgServiceResponses, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original abb_robot_msgs/msg/ServiceResponses field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsMsgServiceResponses :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsMsgServiceResponses, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Abb_robot_msgsMsgServiceResponses(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/msg/ServiceResponses.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsMsgServiceResponses :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsMsgServiceResponses, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsMsgServiceResponses(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/msg/SystemState value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 23..2327 bytes.
Ros2Abb_robot_msgsMsgSystemState :: struct {
    /// @brief Original abb_robot_msgs/msg/SystemState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original abb_robot_msgs/msg/SystemState.motors_on field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motors_on: bool,
    /// @brief Original abb_robot_msgs/msg/SystemState.auto_mode field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_auto_mode: bool,
    /// @brief Original abb_robot_msgs/msg/SystemState.rapid_running field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rapid_running: bool,
    /// @brief Original abb_robot_msgs/msg/SystemState.rapid_tasks field.
    /// @details Original type abb_robot_msgs/msg/RAPIDTaskState. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_rapid_tasks: wire.Sequence(Ros2Abb_robot_msgsMsgRAPIDTaskState, 16),
    /// @brief Original abb_robot_msgs/msg/SystemState.mechanical_units field.
    /// @details Original type abb_robot_msgs/msg/MechanicalUnitState. Shape sequence; bound/count
    /// 16 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_mechanical_units: wire.Sequence(Ros2Abb_robot_msgsMsgMechanicalUnitState, 16),
}
/// @brief Original complete abb_robot_msgs/msg/SystemState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgSystemState_Minimum_Wire_Bytes :: 23
/// @brief Original complete abb_robot_msgs/msg/SystemState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgSystemState_Maximum_Wire_Bytes :: 2327
/// @brief Original complete abb_robot_msgs/msg/SystemState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsMsgSystemState_Codec_Identity :: "UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f"
/// @brief Traverse every original field of complete abb_robot_msgs/msg/SystemState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsMsgSystemState :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsMsgSystemState, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_motors_on = wire.boolean(cursor, value.field_motors_on)
    value.field_auto_mode = wire.boolean(cursor, value.field_auto_mode)
    value.field_rapid_running = wire.boolean(cursor, value.field_rapid_running)
    value.field_rapid_tasks.size = u32(wire.number(cursor, u64(value.field_rapid_tasks.size), 4))
    if value.field_rapid_tasks.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_rapid_tasks.size) {
        fields_Ros2Abb_robot_msgsMsgRAPIDTaskState(&value.field_rapid_tasks.items[index], cursor)
    }
    value.field_mechanical_units.size = u32(wire.number(cursor, u64(value.field_mechanical_units.size), 4))
    if value.field_mechanical_units.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_mechanical_units.size) {
        fields_Ros2Abb_robot_msgsMsgMechanicalUnitState(&value.field_mechanical_units.items[index], cursor)
    }
}
/// @brief Encode every complete original abb_robot_msgs/msg/SystemState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsMsgSystemState :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsMsgSystemState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2327)], writing = true}
    fields_Ros2Abb_robot_msgsMsgSystemState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/msg/SystemState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsMsgSystemState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsMsgSystemState, code: u32)
{
    if len(bytes) < 23 || len(bytes) > 2327 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsMsgSystemState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetFileContents_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..516 bytes.
Ros2Abb_robot_msgsSrvGetFileContents_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/GetFileContents_Request.filename field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_filename: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/GetFileContents_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetFileContents_Request_Minimum_Wire_Bytes :: 4
/// @brief Original complete abb_robot_msgs/srv/GetFileContents_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetFileContents_Request_Maximum_Wire_Bytes :: 516
/// @brief Original complete abb_robot_msgs/srv/GetFileContents_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetFileContents_Request_Codec_Identity :: "UWVMROS1_bdcf73a965bd05356e48019b74d633176fdeda62452bc7185d6b6ff30576016b"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetFileContents_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetFileContents_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetFileContents_Request, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_filename)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetFileContents_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetFileContents_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetFileContents_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 516)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetFileContents_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetFileContents_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetFileContents_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetFileContents_Request, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 516 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetFileContents_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetFileContents_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..4618 bytes.
Ros2Abb_robot_msgsSrvGetFileContents_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/GetFileContents_Response.contents field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_contents: wire.Text(4096, false),
    /// @brief Original abb_robot_msgs/srv/GetFileContents_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/GetFileContents_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/GetFileContents_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetFileContents_Response_Minimum_Wire_Bytes :: 10
/// @brief Original complete abb_robot_msgs/srv/GetFileContents_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetFileContents_Response_Maximum_Wire_Bytes :: 4618
/// @brief Original complete abb_robot_msgs/srv/GetFileContents_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetFileContents_Response_Codec_Identity :: "UWVMROS1_f05617145a40043e87cbc251f833274d2a962bd7cdaabc5f9a8e4591bd56e107"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetFileContents_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetFileContents_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetFileContents_Response, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_contents)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetFileContents_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetFileContents_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetFileContents_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4618)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetFileContents_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetFileContents_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetFileContents_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetFileContents_Response, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 4618 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetFileContents_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetIOSignal_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..516 bytes.
Ros2Abb_robot_msgsSrvGetIOSignal_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/GetIOSignal_Request.signal field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_signal: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/GetIOSignal_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetIOSignal_Request_Minimum_Wire_Bytes :: 4
/// @brief Original complete abb_robot_msgs/srv/GetIOSignal_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetIOSignal_Request_Maximum_Wire_Bytes :: 516
/// @brief Original complete abb_robot_msgs/srv/GetIOSignal_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetIOSignal_Request_Codec_Identity :: "UWVMROS1_2406d53c2fce44e72ad7e6f1c9e75ea19c4df694ff9f00917229ec758209b1f5"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetIOSignal_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetIOSignal_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetIOSignal_Request, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_signal)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetIOSignal_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetIOSignal_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetIOSignal_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 516)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetIOSignal_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetIOSignal_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetIOSignal_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetIOSignal_Request, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 516 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetIOSignal_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetIOSignal_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..1034 bytes.
Ros2Abb_robot_msgsSrvGetIOSignal_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/GetIOSignal_Response.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_value: wire.Text(512, false),
    /// @brief Original abb_robot_msgs/srv/GetIOSignal_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/GetIOSignal_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/GetIOSignal_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetIOSignal_Response_Minimum_Wire_Bytes :: 10
/// @brief Original complete abb_robot_msgs/srv/GetIOSignal_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetIOSignal_Response_Maximum_Wire_Bytes :: 1034
/// @brief Original complete abb_robot_msgs/srv/GetIOSignal_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetIOSignal_Response_Codec_Identity :: "UWVMROS1_1f668ef78c353f2ec8defdac619d349cda731576f2429cf07107b9b56ba9030e"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetIOSignal_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetIOSignal_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetIOSignal_Response, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_value)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetIOSignal_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetIOSignal_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetIOSignal_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1034)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetIOSignal_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetIOSignal_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetIOSignal_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetIOSignal_Response, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 1034 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetIOSignal_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDBool_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 12..204 bytes.
Ros2Abb_robot_msgsSrvGetRAPIDBool_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/GetRAPIDBool_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
}
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDBool_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDBool_Request_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDBool_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDBool_Request_Maximum_Wire_Bytes :: 204
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDBool_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDBool_Request_Codec_Identity :: "UWVMROS1_c381080d235c78216a8e64275819ff3fb97e1b1de96e7da758c4889630b8e0ff"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetRAPIDBool_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetRAPIDBool_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDBool_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(&value.field_path, cursor)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetRAPIDBool_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetRAPIDBool_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDBool_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 204)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDBool_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetRAPIDBool_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetRAPIDBool_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetRAPIDBool_Request, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 204 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDBool_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDBool_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 7..519 bytes.
Ros2Abb_robot_msgsSrvGetRAPIDBool_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: bool,
    /// @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDBool_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDBool_Response_Minimum_Wire_Bytes :: 7
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDBool_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDBool_Response_Maximum_Wire_Bytes :: 519
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDBool_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDBool_Response_Codec_Identity :: "UWVMROS1_b853e212489fb815866fa29b165eea474a977483158b6203699c4a1293aa6acd"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetRAPIDBool_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetRAPIDBool_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDBool_Response, cursor: ^wire.Cursor)
{
    value.field_value = wire.boolean(cursor, value.field_value)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetRAPIDBool_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetRAPIDBool_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDBool_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 519)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDBool_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetRAPIDBool_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetRAPIDBool_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetRAPIDBool_Response, code: u32)
{
    if len(bytes) < 7 || len(bytes) > 519 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDBool_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDDnum_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 12..204 bytes.
Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
}
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDDnum_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDDnum_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request_Maximum_Wire_Bytes :: 204
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDDnum_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request_Codec_Identity :: "UWVMROS1_71057c2fe44bc96505ec6e05d998fcb6323b281fff40808ce990207c48626979"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetRAPIDDnum_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(&value.field_path, cursor)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetRAPIDDnum_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 204)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetRAPIDDnum_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 204 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDDnum_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 14..526 bytes.
Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.value field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f64,
    /// @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDDnum_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response_Minimum_Wire_Bytes :: 14
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDDnum_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response_Maximum_Wire_Bytes :: 526
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDDnum_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response_Codec_Identity :: "UWVMROS1_af0420c126368a7e45b728c7fef76062b5ef2f0adea7535ad38e4771244edd56"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetRAPIDDnum_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response, cursor: ^wire.Cursor)
{
    value.field_value = wire.float64(cursor, value.field_value)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetRAPIDDnum_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 526)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetRAPIDDnum_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response, code: u32)
{
    if len(bytes) < 14 || len(bytes) > 526 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDNum_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 12..204 bytes.
Ros2Abb_robot_msgsSrvGetRAPIDNum_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/GetRAPIDNum_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
}
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDNum_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDNum_Request_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDNum_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDNum_Request_Maximum_Wire_Bytes :: 204
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDNum_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDNum_Request_Codec_Identity :: "UWVMROS1_03d5da34af8d90ed8a20f8ca38fa75d9e777496828978f0f348e3c1c8f67d0a5"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetRAPIDNum_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetRAPIDNum_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDNum_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(&value.field_path, cursor)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetRAPIDNum_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetRAPIDNum_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDNum_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 204)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDNum_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetRAPIDNum_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetRAPIDNum_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetRAPIDNum_Request, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 204 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDNum_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDNum_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..522 bytes.
Ros2Abb_robot_msgsSrvGetRAPIDNum_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f32,
    /// @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDNum_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDNum_Response_Minimum_Wire_Bytes :: 10
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDNum_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDNum_Response_Maximum_Wire_Bytes :: 522
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDNum_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDNum_Response_Codec_Identity :: "UWVMROS1_a0da03014dd001e58efc4a5b274cd5c62016e7fa257af1120a8142a79635220d"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetRAPIDNum_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetRAPIDNum_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDNum_Response, cursor: ^wire.Cursor)
{
    value.field_value = wire.float32(cursor, value.field_value)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetRAPIDNum_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetRAPIDNum_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDNum_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 522)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDNum_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetRAPIDNum_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetRAPIDNum_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetRAPIDNum_Response, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 522 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDNum_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDString_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 12..204 bytes.
Ros2Abb_robot_msgsSrvGetRAPIDString_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/GetRAPIDString_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
}
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDString_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDString_Request_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDString_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDString_Request_Maximum_Wire_Bytes :: 204
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDString_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDString_Request_Codec_Identity :: "UWVMROS1_c7bc9c788301e619a165c18a1cdb0aca80df8def5be31da5dbf34c0038e73596"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetRAPIDString_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetRAPIDString_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDString_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(&value.field_path, cursor)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetRAPIDString_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetRAPIDString_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDString_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 204)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDString_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetRAPIDString_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetRAPIDString_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetRAPIDString_Request, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 204 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDString_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDString_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..1034 bytes.
Ros2Abb_robot_msgsSrvGetRAPIDString_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_value: wire.Text(512, false),
    /// @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDString_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDString_Response_Minimum_Wire_Bytes :: 10
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDString_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDString_Response_Maximum_Wire_Bytes :: 1034
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDString_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDString_Response_Codec_Identity :: "UWVMROS1_cf7bfdb2af5b91eb58b19b909f7fa3357dc1dad02716f8fa4465b53f3f4a1458"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetRAPIDString_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetRAPIDString_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDString_Response, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_value)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetRAPIDString_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetRAPIDString_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDString_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1034)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDString_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetRAPIDString_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetRAPIDString_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetRAPIDString_Response, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 1034 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDString_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDSymbol_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 12..204 bytes.
Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
}
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDSymbol_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDSymbol_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request_Maximum_Wire_Bytes :: 204
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDSymbol_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request_Codec_Identity :: "UWVMROS1_e216a54cdae70f8147489928ff05a4b172ba4fc47e9ed5df4828b070354ac469"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetRAPIDSymbol_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(&value.field_path, cursor)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetRAPIDSymbol_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 204)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetRAPIDSymbol_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 204 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDSymbol_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..1034 bytes.
Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_value: wire.Text(512, false),
    /// @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDSymbol_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response_Minimum_Wire_Bytes :: 10
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDSymbol_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response_Maximum_Wire_Bytes :: 1034
/// @brief Original complete abb_robot_msgs/srv/GetRAPIDSymbol_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response_Codec_Identity :: "UWVMROS1_b1f6de7ad0640f5645678d327804dc7e732bdad38805e642b13ed7294c21d602"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetRAPIDSymbol_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_value)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetRAPIDSymbol_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1034)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetRAPIDSymbol_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 1034 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetRobotControllerDescription_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request :: struct {
}
/// @brief Original complete abb_robot_msgs/srv/GetRobotControllerDescription_Request minimum wire
/// bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/srv/GetRobotControllerDescription_Request maximum wire
/// bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/srv/GetRobotControllerDescription_Request codec
/// identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request_Codec_Identity :: "UWVMROS1_caf70e11b386a933f62d06a433ca1cedaa3c8ecc75b7e8de8c1d5ae00a29f03e"
/// @brief Traverse every original field of complete
/// abb_robot_msgs/srv/GetRobotControllerDescription_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetRobotControllerDescription_Request
/// field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original
/// abb_robot_msgs/srv/GetRobotControllerDescription_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetRobotControllerDescription_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..4618 bytes.
Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.description field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_description: wire.Text(4096, false),
    /// @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/GetRobotControllerDescription_Response minimum wire
/// bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response_Minimum_Wire_Bytes :: 10
/// @brief Original complete abb_robot_msgs/srv/GetRobotControllerDescription_Response maximum wire
/// bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response_Maximum_Wire_Bytes :: 4618
/// @brief Original complete abb_robot_msgs/srv/GetRobotControllerDescription_Response codec
/// identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response_Codec_Identity :: "UWVMROS1_1af2591f035379597f376ed1e2343f73a89f9fef5c29269aa420243a82e6c368"
/// @brief Traverse every original field of complete
/// abb_robot_msgs/srv/GetRobotControllerDescription_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_description)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetRobotControllerDescription_Response
/// field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4618)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original
/// abb_robot_msgs/srv/GetRobotControllerDescription_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 4618 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetSpeedRatio_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Abb_robot_msgsSrvGetSpeedRatio_Request :: struct {
}
/// @brief Original complete abb_robot_msgs/srv/GetSpeedRatio_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetSpeedRatio_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/srv/GetSpeedRatio_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetSpeedRatio_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/srv/GetSpeedRatio_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetSpeedRatio_Request_Codec_Identity :: "UWVMROS1_54ee2c897e2bf2f39c96cc42246ffe5997c8df280280433e8748b3bcf24c299c"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetSpeedRatio_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetSpeedRatio_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetSpeedRatio_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetSpeedRatio_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetSpeedRatio_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetSpeedRatio_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetSpeedRatio_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetSpeedRatio_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetSpeedRatio_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetSpeedRatio_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetSpeedRatio_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/GetSpeedRatio_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 7..519 bytes.
Ros2Abb_robot_msgsSrvGetSpeedRatio_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.speed_ratio field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speed_ratio: u8,
    /// @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/GetSpeedRatio_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetSpeedRatio_Response_Minimum_Wire_Bytes :: 7
/// @brief Original complete abb_robot_msgs/srv/GetSpeedRatio_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetSpeedRatio_Response_Maximum_Wire_Bytes :: 519
/// @brief Original complete abb_robot_msgs/srv/GetSpeedRatio_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvGetSpeedRatio_Response_Codec_Identity :: "UWVMROS1_baa271a258c7ca274e0145fea1abb7cbc43e98c82b8e40d67c4743237a19910b"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/GetSpeedRatio_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvGetSpeedRatio_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetSpeedRatio_Response, cursor: ^wire.Cursor)
{
    value.field_speed_ratio = u8(wire.number(cursor, u64(value.field_speed_ratio), 1))
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/GetSpeedRatio_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvGetSpeedRatio_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvGetSpeedRatio_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 519)], writing = true}
    fields_Ros2Abb_robot_msgsSrvGetSpeedRatio_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/GetSpeedRatio_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvGetSpeedRatio_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvGetSpeedRatio_Response, code: u32)
{
    if len(bytes) < 7 || len(bytes) > 519 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvGetSpeedRatio_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetFileContents_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..4616 bytes.
Ros2Abb_robot_msgsSrvSetFileContents_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/SetFileContents_Request.filename field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_filename: wire.Text(512, false),
    /// @brief Original abb_robot_msgs/srv/SetFileContents_Request.contents field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_contents: wire.Text(4096, false),
}
/// @brief Original complete abb_robot_msgs/srv/SetFileContents_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetFileContents_Request_Minimum_Wire_Bytes :: 8
/// @brief Original complete abb_robot_msgs/srv/SetFileContents_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetFileContents_Request_Maximum_Wire_Bytes :: 4616
/// @brief Original complete abb_robot_msgs/srv/SetFileContents_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetFileContents_Request_Codec_Identity :: "UWVMROS1_3bfa8ad1846fc31acae47a875d3555a78a64b777923eb9b62e87a836f041b26b"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetFileContents_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetFileContents_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetFileContents_Request, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_filename)
    wire.text(cursor, &value.field_contents)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetFileContents_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetFileContents_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetFileContents_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4616)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetFileContents_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetFileContents_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetFileContents_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetFileContents_Request, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 4616 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetFileContents_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetFileContents_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Abb_robot_msgsSrvSetFileContents_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/SetFileContents_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/SetFileContents_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/SetFileContents_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetFileContents_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/srv/SetFileContents_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetFileContents_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/srv/SetFileContents_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetFileContents_Response_Codec_Identity :: "UWVMROS1_1586344401d43055460b49f2487567638f66838cfe5cac99a47e0a39c0b06ede"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetFileContents_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetFileContents_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetFileContents_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetFileContents_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetFileContents_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetFileContents_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetFileContents_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetFileContents_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetFileContents_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetFileContents_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetFileContents_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetIOSignal_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..1032 bytes.
Ros2Abb_robot_msgsSrvSetIOSignal_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/SetIOSignal_Request.signal field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_signal: wire.Text(512, false),
    /// @brief Original abb_robot_msgs/srv/SetIOSignal_Request.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_value: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/SetIOSignal_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetIOSignal_Request_Minimum_Wire_Bytes :: 8
/// @brief Original complete abb_robot_msgs/srv/SetIOSignal_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetIOSignal_Request_Maximum_Wire_Bytes :: 1032
/// @brief Original complete abb_robot_msgs/srv/SetIOSignal_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetIOSignal_Request_Codec_Identity :: "UWVMROS1_2d206d0020179263e83e745a428616ed53d809b0c65a79ad495cb882ae9e49b7"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetIOSignal_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetIOSignal_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetIOSignal_Request, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_signal)
    wire.text(cursor, &value.field_value)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetIOSignal_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetIOSignal_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetIOSignal_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1032)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetIOSignal_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetIOSignal_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetIOSignal_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetIOSignal_Request, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 1032 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetIOSignal_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetIOSignal_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Abb_robot_msgsSrvSetIOSignal_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/SetIOSignal_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/SetIOSignal_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/SetIOSignal_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetIOSignal_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/srv/SetIOSignal_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetIOSignal_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/srv/SetIOSignal_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetIOSignal_Response_Codec_Identity :: "UWVMROS1_1fa28cc3160d51f71d0740cbe145663ec360d6fa488c2a6bf14ad6ab92004a75"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetIOSignal_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetIOSignal_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetIOSignal_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetIOSignal_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetIOSignal_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetIOSignal_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetIOSignal_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetIOSignal_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetIOSignal_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetIOSignal_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetIOSignal_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDBool_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 13..205 bytes.
Ros2Abb_robot_msgsSrvSetRAPIDBool_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/SetRAPIDBool_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
    /// @brief Original abb_robot_msgs/srv/SetRAPIDBool_Request.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: bool,
}
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDBool_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDBool_Request_Minimum_Wire_Bytes :: 13
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDBool_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDBool_Request_Maximum_Wire_Bytes :: 205
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDBool_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDBool_Request_Codec_Identity :: "UWVMROS1_4e707e429acc860d032d216bcd2c1eb1a0f731fad7e7c0bef7beed810c6e4a52"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetRAPIDBool_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetRAPIDBool_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDBool_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(&value.field_path, cursor)
    value.field_value = wire.boolean(cursor, value.field_value)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetRAPIDBool_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetRAPIDBool_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDBool_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 205)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDBool_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetRAPIDBool_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetRAPIDBool_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetRAPIDBool_Request, code: u32)
{
    if len(bytes) < 13 || len(bytes) > 205 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDBool_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDBool_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Abb_robot_msgsSrvSetRAPIDBool_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/SetRAPIDBool_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/SetRAPIDBool_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDBool_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDBool_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDBool_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDBool_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDBool_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDBool_Response_Codec_Identity :: "UWVMROS1_80d2b31c93771cfa8a19ff82a3d9d63951bf9d28c039d2725017327fa3b0114a"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetRAPIDBool_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetRAPIDBool_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDBool_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetRAPIDBool_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetRAPIDBool_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDBool_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDBool_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetRAPIDBool_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetRAPIDBool_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetRAPIDBool_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDBool_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDDnum_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 20..212 bytes.
Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
    /// @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Request.value field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f64,
}
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDDnum_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request_Minimum_Wire_Bytes :: 20
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDDnum_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request_Maximum_Wire_Bytes :: 212
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDDnum_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request_Codec_Identity :: "UWVMROS1_cece086311a908f12c0b0ab3988ca829e891749c74687c717d2a52bfb8ceaf76"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetRAPIDDnum_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(&value.field_path, cursor)
    value.field_value = wire.float64(cursor, value.field_value)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetRAPIDDnum_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 212)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetRAPIDDnum_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 212 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDDnum_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDDnum_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDDnum_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDDnum_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response_Codec_Identity :: "UWVMROS1_e5f77fe9850f109d873a2784b9690c8aa0632b9e91d158ed4d14daf1aaf90ea6"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetRAPIDDnum_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetRAPIDDnum_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetRAPIDDnum_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDNum_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..208 bytes.
Ros2Abb_robot_msgsSrvSetRAPIDNum_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/SetRAPIDNum_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
    /// @brief Original abb_robot_msgs/srv/SetRAPIDNum_Request.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f32,
}
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDNum_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDNum_Request_Minimum_Wire_Bytes :: 16
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDNum_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDNum_Request_Maximum_Wire_Bytes :: 208
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDNum_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDNum_Request_Codec_Identity :: "UWVMROS1_a5bee9a64be69dc4246f68837a44362f52795ae3c6420a2df47685606283ea02"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetRAPIDNum_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetRAPIDNum_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDNum_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(&value.field_path, cursor)
    value.field_value = wire.float32(cursor, value.field_value)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetRAPIDNum_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetRAPIDNum_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDNum_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 208)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDNum_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetRAPIDNum_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetRAPIDNum_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetRAPIDNum_Request, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 208 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDNum_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDNum_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Abb_robot_msgsSrvSetRAPIDNum_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/SetRAPIDNum_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/SetRAPIDNum_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDNum_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDNum_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDNum_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDNum_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDNum_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDNum_Response_Codec_Identity :: "UWVMROS1_744f3c5fac58ff098c96cedcea94fe6fa87c88ceb89674449f50fbdcd1ca30bb"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetRAPIDNum_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetRAPIDNum_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDNum_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetRAPIDNum_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetRAPIDNum_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDNum_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDNum_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetRAPIDNum_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetRAPIDNum_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetRAPIDNum_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDNum_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDString_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..720 bytes.
Ros2Abb_robot_msgsSrvSetRAPIDString_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/SetRAPIDString_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
    /// @brief Original abb_robot_msgs/srv/SetRAPIDString_Request.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_value: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDString_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDString_Request_Minimum_Wire_Bytes :: 16
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDString_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDString_Request_Maximum_Wire_Bytes :: 720
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDString_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDString_Request_Codec_Identity :: "UWVMROS1_f21c45f3f8cd4c0b50781bdd487fdc6ec0c0b35adbc7e36e9ca5b7cc47c3d461"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetRAPIDString_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetRAPIDString_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDString_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(&value.field_path, cursor)
    wire.text(cursor, &value.field_value)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetRAPIDString_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetRAPIDString_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDString_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 720)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDString_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetRAPIDString_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetRAPIDString_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetRAPIDString_Request, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 720 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDString_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDString_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Abb_robot_msgsSrvSetRAPIDString_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/SetRAPIDString_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/SetRAPIDString_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDString_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDString_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDString_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDString_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDString_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDString_Response_Codec_Identity :: "UWVMROS1_1496ef4f4ffe48fe74b9e25b925c19f10f0e171a9d33fa2e56c15aa5cfbe4774"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetRAPIDString_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetRAPIDString_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDString_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetRAPIDString_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetRAPIDString_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDString_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDString_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetRAPIDString_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetRAPIDString_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetRAPIDString_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDString_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDSymbol_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..720 bytes.
Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
    /// @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Request.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_value: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDSymbol_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request_Minimum_Wire_Bytes :: 16
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDSymbol_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request_Maximum_Wire_Bytes :: 720
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDSymbol_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request_Codec_Identity :: "UWVMROS1_928d427801b79775595fed6e3779f9ba9e7e8e27f2de66cf79610cb51bb72bcf"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetRAPIDSymbol_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(&value.field_path, cursor)
    wire.text(cursor, &value.field_value)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetRAPIDSymbol_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 720)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetRAPIDSymbol_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 720 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDSymbol_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDSymbol_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDSymbol_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/srv/SetRAPIDSymbol_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response_Codec_Identity :: "UWVMROS1_e156616a51bf4691a1c3853d62a8b0c43bb17d1a330cd4e7a58eceb5fe442382"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetRAPIDSymbol_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetRAPIDSymbol_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetRAPIDSymbol_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetSpeedRatio_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Abb_robot_msgsSrvSetSpeedRatio_Request :: struct {
    /// @brief Original abb_robot_msgs/srv/SetSpeedRatio_Request.speed_ratio field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speed_ratio: u8,
}
/// @brief Original complete abb_robot_msgs/srv/SetSpeedRatio_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetSpeedRatio_Request_Minimum_Wire_Bytes :: 1
/// @brief Original complete abb_robot_msgs/srv/SetSpeedRatio_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetSpeedRatio_Request_Maximum_Wire_Bytes :: 1
/// @brief Original complete abb_robot_msgs/srv/SetSpeedRatio_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetSpeedRatio_Request_Codec_Identity :: "UWVMROS1_da30970377ba1bc151b544560773f02e17f4eaed56eb4c8d791de72bdef04355"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetSpeedRatio_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetSpeedRatio_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetSpeedRatio_Request, cursor: ^wire.Cursor)
{
    value.field_speed_ratio = u8(wire.number(cursor, u64(value.field_speed_ratio), 1))
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetSpeedRatio_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetSpeedRatio_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetSpeedRatio_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetSpeedRatio_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetSpeedRatio_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetSpeedRatio_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetSpeedRatio_Request, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetSpeedRatio_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/SetSpeedRatio_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Abb_robot_msgsSrvSetSpeedRatio_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/SetSpeedRatio_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/SetSpeedRatio_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/SetSpeedRatio_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetSpeedRatio_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/srv/SetSpeedRatio_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetSpeedRatio_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/srv/SetSpeedRatio_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvSetSpeedRatio_Response_Codec_Identity :: "UWVMROS1_25e6d7edaa0503a4d45d893e886db4215bfd0af8711307c141bc63552609e3a5"
/// @brief Traverse every original field of complete abb_robot_msgs/srv/SetSpeedRatio_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvSetSpeedRatio_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetSpeedRatio_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/SetSpeedRatio_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvSetSpeedRatio_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvSetSpeedRatio_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_robot_msgsSrvSetSpeedRatio_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/SetSpeedRatio_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvSetSpeedRatio_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvSetSpeedRatio_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvSetSpeedRatio_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/TriggerWithResultCode_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request :: struct {
}
/// @brief Original complete abb_robot_msgs/srv/TriggerWithResultCode_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/srv/TriggerWithResultCode_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/srv/TriggerWithResultCode_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request_Codec_Identity :: "UWVMROS1_fd1d49c3b4e489464c6662f306210137f71d15192f64cd8a8abf93acd5fbff8d"
/// @brief Traverse every original field of complete
/// abb_robot_msgs/srv/TriggerWithResultCode_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original abb_robot_msgs/srv/TriggerWithResultCode_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/TriggerWithResultCode_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/srv/TriggerWithResultCode_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response :: struct {
    /// @brief Original abb_robot_msgs/srv/TriggerWithResultCode_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/srv/TriggerWithResultCode_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/srv/TriggerWithResultCode_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/srv/TriggerWithResultCode_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/srv/TriggerWithResultCode_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response_Codec_Identity :: "UWVMROS1_e38422b2a008f07e108505ac3ce65c24189a1d6657e88a6289e17d7d4ae38d51"
/// @brief Traverse every original field of complete
/// abb_robot_msgs/srv/TriggerWithResultCode_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/srv/TriggerWithResultCode_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response :: proc "contextless"(
    value: ^Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/srv/TriggerWithResultCode_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response(&value, &cursor)
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

/// @brief Complete original trajectory_msgs/msg/JointTrajectoryPoint value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 24..408 bytes.
Ros2Trajectory_msgsMsgJointTrajectoryPoint :: struct {
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.positions field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_positions: wire.Sequence(f64, 12),
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.velocities field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocities: wire.Sequence(f64, 12),
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_accelerations: wire.Sequence(f64, 12),
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.effort field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_effort: wire.Sequence(f64, 12),
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_time_from_start: Ros2Builtin_interfacesMsgDuration,
}
/// @brief Original complete trajectory_msgs/msg/JointTrajectoryPoint minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Minimum_Wire_Bytes :: 24
/// @brief Original complete trajectory_msgs/msg/JointTrajectoryPoint maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Maximum_Wire_Bytes :: 408
/// @brief Original complete trajectory_msgs/msg/JointTrajectoryPoint codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Trajectory_msgsMsgJointTrajectoryPoint_Codec_Identity :: "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5"
/// @brief Traverse every original field of complete trajectory_msgs/msg/JointTrajectoryPoint.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc "contextless"(
    value: ^Ros2Trajectory_msgsMsgJointTrajectoryPoint, cursor: ^wire.Cursor)
{
    value.field_positions.size = u32(wire.number(cursor, u64(value.field_positions.size), 4))
    if value.field_positions.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_positions.size) {
        value.field_positions.items[index] = wire.float64(cursor, value.field_positions.items[index])
    }
    value.field_velocities.size = u32(wire.number(cursor, u64(value.field_velocities.size), 4))
    if value.field_velocities.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_velocities.size) {
        value.field_velocities.items[index] = wire.float64(cursor, value.field_velocities.items[index])
    }
    value.field_accelerations.size = u32(wire.number(cursor, u64(value.field_accelerations.size), 4))
    if value.field_accelerations.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_accelerations.size) {
        value.field_accelerations.items[index] = wire.float64(cursor, value.field_accelerations.items[index])
    }
    value.field_effort.size = u32(wire.number(cursor, u64(value.field_effort.size), 4))
    if value.field_effort.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_effort.size) {
        value.field_effort.items[index] = wire.float64(cursor, value.field_effort.items[index])
    }
    fields_Ros2Builtin_interfacesMsgDuration(&value.field_time_from_start, cursor)
}
/// @brief Encode every complete original trajectory_msgs/msg/JointTrajectoryPoint field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc "contextless"(
    value: ^Ros2Trajectory_msgsMsgJointTrajectoryPoint, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 408)], writing = true}
    fields_Ros2Trajectory_msgsMsgJointTrajectoryPoint(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original trajectory_msgs/msg/JointTrajectoryPoint.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Trajectory_msgsMsgJointTrajectoryPoint, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 408 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original trajectory_msgs/msg/JointTrajectory value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 20..4164 bytes.
Ros2Trajectory_msgsMsgJointTrajectory :: struct {
    /// @brief Original trajectory_msgs/msg/JointTrajectory.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original trajectory_msgs/msg/JointTrajectory.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names: wire.Sequence(wire.Text(64, false), 12),
    /// @brief Original trajectory_msgs/msg/JointTrajectory.points field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Shape sequence; bound/count
    /// 8 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_points: wire.Sequence(Ros2Trajectory_msgsMsgJointTrajectoryPoint, 8),
}
/// @brief Original complete trajectory_msgs/msg/JointTrajectory minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Trajectory_msgsMsgJointTrajectory_Minimum_Wire_Bytes :: 20
/// @brief Original complete trajectory_msgs/msg/JointTrajectory maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Trajectory_msgsMsgJointTrajectory_Maximum_Wire_Bytes :: 4164
/// @brief Original complete trajectory_msgs/msg/JointTrajectory codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Trajectory_msgsMsgJointTrajectory_Codec_Identity :: "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0"
/// @brief Traverse every original field of complete trajectory_msgs/msg/JointTrajectory.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Trajectory_msgsMsgJointTrajectory :: proc "contextless"(
    value: ^Ros2Trajectory_msgsMsgJointTrajectory, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_joint_names.size = u32(wire.number(cursor, u64(value.field_joint_names.size), 4))
    if value.field_joint_names.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_joint_names.size) {
        wire.text(cursor, &value.field_joint_names.items[index])
    }
    value.field_points.size = u32(wire.number(cursor, u64(value.field_points.size), 4))
    if value.field_points.size > 8 { cursor.code = 22; return }
    for index in 0..<int(value.field_points.size) {
        fields_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&value.field_points.items[index], cursor)
    }
}
/// @brief Encode every complete original trajectory_msgs/msg/JointTrajectory field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Trajectory_msgsMsgJointTrajectory :: proc "contextless"(
    value: ^Ros2Trajectory_msgsMsgJointTrajectory, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4164)], writing = true}
    fields_Ros2Trajectory_msgsMsgJointTrajectory(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original trajectory_msgs/msg/JointTrajectory.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Trajectory_msgsMsgJointTrajectory :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Trajectory_msgsMsgJointTrajectory, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 4164 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Trajectory_msgsMsgJointTrajectory(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original geometry_msgs/msg/Vector3 value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 24..24 bytes.
Ros2Geometry_msgsMsgVector3 :: struct {
    /// @brief Original geometry_msgs/msg/Vector3.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64,
    /// @brief Original geometry_msgs/msg/Vector3.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64,
    /// @brief Original geometry_msgs/msg/Vector3.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f64,
}
/// @brief Original complete geometry_msgs/msg/Vector3 minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgVector3_Minimum_Wire_Bytes :: 24
/// @brief Original complete geometry_msgs/msg/Vector3 maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgVector3_Maximum_Wire_Bytes :: 24
/// @brief Original complete geometry_msgs/msg/Vector3 codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgVector3_Codec_Identity :: "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
/// @brief Traverse every original field of complete geometry_msgs/msg/Vector3.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Geometry_msgsMsgVector3 :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgVector3, cursor: ^wire.Cursor)
{
    value.field_x = wire.float64(cursor, value.field_x)
    value.field_y = wire.float64(cursor, value.field_y)
    value.field_z = wire.float64(cursor, value.field_z)
}
/// @brief Encode every complete original geometry_msgs/msg/Vector3 field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Geometry_msgsMsgVector3 :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgVector3, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 24)], writing = true}
    fields_Ros2Geometry_msgsMsgVector3(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/msg/Vector3.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Geometry_msgsMsgVector3 :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Geometry_msgsMsgVector3, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 24 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Geometry_msgsMsgVector3(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original geometry_msgs/msg/Quaternion value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 32..32 bytes.
Ros2Geometry_msgsMsgQuaternion :: struct {
    /// @brief Original geometry_msgs/msg/Quaternion.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64,
    /// @brief Original geometry_msgs/msg/Quaternion.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64,
    /// @brief Original geometry_msgs/msg/Quaternion.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f64,
    /// @brief Original geometry_msgs/msg/Quaternion.w field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_w: f64,
}
/// @brief Original complete geometry_msgs/msg/Quaternion minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgQuaternion_Minimum_Wire_Bytes :: 32
/// @brief Original complete geometry_msgs/msg/Quaternion maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgQuaternion_Maximum_Wire_Bytes :: 32
/// @brief Original complete geometry_msgs/msg/Quaternion codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgQuaternion_Codec_Identity :: "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
/// @brief Traverse every original field of complete geometry_msgs/msg/Quaternion.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Geometry_msgsMsgQuaternion :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgQuaternion, cursor: ^wire.Cursor)
{
    value.field_x = wire.float64(cursor, value.field_x)
    value.field_y = wire.float64(cursor, value.field_y)
    value.field_z = wire.float64(cursor, value.field_z)
    value.field_w = wire.float64(cursor, value.field_w)
}
/// @brief Encode every complete original geometry_msgs/msg/Quaternion field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Geometry_msgsMsgQuaternion :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgQuaternion, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 32)], writing = true}
    fields_Ros2Geometry_msgsMsgQuaternion(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/msg/Quaternion.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Geometry_msgsMsgQuaternion :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Geometry_msgsMsgQuaternion, code: u32)
{
    if len(bytes) < 32 || len(bytes) > 32 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Geometry_msgsMsgQuaternion(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original geometry_msgs/msg/Transform value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 56..56 bytes.
Ros2Geometry_msgsMsgTransform :: struct {
    /// @brief Original geometry_msgs/msg/Transform.translation field.
    /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_translation: Ros2Geometry_msgsMsgVector3,
    /// @brief Original geometry_msgs/msg/Transform.rotation field.
    /// @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_rotation: Ros2Geometry_msgsMsgQuaternion,
}
/// @brief Original complete geometry_msgs/msg/Transform minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgTransform_Minimum_Wire_Bytes :: 56
/// @brief Original complete geometry_msgs/msg/Transform maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgTransform_Maximum_Wire_Bytes :: 56
/// @brief Original complete geometry_msgs/msg/Transform codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgTransform_Codec_Identity :: "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
/// @brief Traverse every original field of complete geometry_msgs/msg/Transform.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Geometry_msgsMsgTransform :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgTransform, cursor: ^wire.Cursor)
{
    fields_Ros2Geometry_msgsMsgVector3(&value.field_translation, cursor)
    fields_Ros2Geometry_msgsMsgQuaternion(&value.field_rotation, cursor)
}
/// @brief Encode every complete original geometry_msgs/msg/Transform field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Geometry_msgsMsgTransform :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgTransform, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 56)], writing = true}
    fields_Ros2Geometry_msgsMsgTransform(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/msg/Transform.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Geometry_msgsMsgTransform :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Geometry_msgsMsgTransform, code: u32)
{
    if len(bytes) < 56 || len(bytes) > 56 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Geometry_msgsMsgTransform(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original geometry_msgs/msg/Twist value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 48..48 bytes.
Ros2Geometry_msgsMsgTwist :: struct {
    /// @brief Original geometry_msgs/msg/Twist.linear field.
    /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_linear: Ros2Geometry_msgsMsgVector3,
    /// @brief Original geometry_msgs/msg/Twist.angular field.
    /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_angular: Ros2Geometry_msgsMsgVector3,
}
/// @brief Original complete geometry_msgs/msg/Twist minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgTwist_Minimum_Wire_Bytes :: 48
/// @brief Original complete geometry_msgs/msg/Twist maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgTwist_Maximum_Wire_Bytes :: 48
/// @brief Original complete geometry_msgs/msg/Twist codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgTwist_Codec_Identity :: "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
/// @brief Traverse every original field of complete geometry_msgs/msg/Twist.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Geometry_msgsMsgTwist :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgTwist, cursor: ^wire.Cursor)
{
    fields_Ros2Geometry_msgsMsgVector3(&value.field_linear, cursor)
    fields_Ros2Geometry_msgsMsgVector3(&value.field_angular, cursor)
}
/// @brief Encode every complete original geometry_msgs/msg/Twist field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Geometry_msgsMsgTwist :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgTwist, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 48)], writing = true}
    fields_Ros2Geometry_msgsMsgTwist(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/msg/Twist.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Geometry_msgsMsgTwist :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Geometry_msgsMsgTwist, code: u32)
{
    if len(bytes) < 48 || len(bytes) > 48 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Geometry_msgsMsgTwist(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 20..324 bytes.
Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: struct {
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms field.
    /// @details Original type geometry_msgs/msg/Transform. Shape sequence; bound/count 2 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_transforms: wire.Sequence(Ros2Geometry_msgsMsgTransform, 2),
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities field.
    /// @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_velocities: wire.Sequence(Ros2Geometry_msgsMsgTwist, 2),
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations field.
    /// @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_accelerations: wire.Sequence(Ros2Geometry_msgsMsgTwist, 2),
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_time_from_start: Ros2Builtin_interfacesMsgDuration,
}
/// @brief Original complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_Minimum_Wire_Bytes :: 20
/// @brief Original complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_Maximum_Wire_Bytes :: 324
/// @brief Original complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_Codec_Identity :: "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242"
/// @brief Traverse every original field of complete
/// trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: proc "contextless"(
    value: ^Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, cursor: ^wire.Cursor)
{
    value.field_transforms.size = u32(wire.number(cursor, u64(value.field_transforms.size), 4))
    if value.field_transforms.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_transforms.size) {
        fields_Ros2Geometry_msgsMsgTransform(&value.field_transforms.items[index], cursor)
    }
    value.field_velocities.size = u32(wire.number(cursor, u64(value.field_velocities.size), 4))
    if value.field_velocities.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_velocities.size) {
        fields_Ros2Geometry_msgsMsgTwist(&value.field_velocities.items[index], cursor)
    }
    value.field_accelerations.size = u32(wire.number(cursor, u64(value.field_accelerations.size), 4))
    if value.field_accelerations.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_accelerations.size) {
        fields_Ros2Geometry_msgsMsgTwist(&value.field_accelerations.items[index], cursor)
    }
    fields_Ros2Builtin_interfacesMsgDuration(&value.field_time_from_start, cursor)
}
/// @brief Encode every complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: proc "contextless"(
    value: ^Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 324)], writing = true}
    fields_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 324 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectory value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 20..1516 bytes.
Ros2Trajectory_msgsMsgMultiDOFJointTrajectory :: struct {
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names: wire.Sequence(wire.Text(64, false), 2),
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.points field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Shape sequence;
    /// bound/count 4 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_points: wire.Sequence(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, 4),
}
/// @brief Original complete trajectory_msgs/msg/MultiDOFJointTrajectory minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_Minimum_Wire_Bytes :: 20
/// @brief Original complete trajectory_msgs/msg/MultiDOFJointTrajectory maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_Maximum_Wire_Bytes :: 1516
/// @brief Original complete trajectory_msgs/msg/MultiDOFJointTrajectory codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_Codec_Identity :: "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401"
/// @brief Traverse every original field of complete trajectory_msgs/msg/MultiDOFJointTrajectory.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory :: proc "contextless"(
    value: ^Ros2Trajectory_msgsMsgMultiDOFJointTrajectory, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_joint_names.size = u32(wire.number(cursor, u64(value.field_joint_names.size), 4))
    if value.field_joint_names.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_joint_names.size) {
        wire.text(cursor, &value.field_joint_names.items[index])
    }
    value.field_points.size = u32(wire.number(cursor, u64(value.field_points.size), 4))
    if value.field_points.size > 4 { cursor.code = 22; return }
    for index in 0..<int(value.field_points.size) {
        fields_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(&value.field_points.items[index], cursor)
    }
}
/// @brief Encode every complete original trajectory_msgs/msg/MultiDOFJointTrajectory field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory :: proc "contextless"(
    value: ^Ros2Trajectory_msgsMsgMultiDOFJointTrajectory, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1516)], writing = true}
    fields_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original trajectory_msgs/msg/MultiDOFJointTrajectory.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 1516 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original control_msgs/msg/JointTolerance value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 28..92 bytes.
Ros2Control_msgsMsgJointTolerance :: struct {
    /// @brief Original control_msgs/msg/JointTolerance.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_name: wire.Text(64, false),
    /// @brief Original control_msgs/msg/JointTolerance.position field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_position: f64,
    /// @brief Original control_msgs/msg/JointTolerance.velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_velocity: f64,
    /// @brief Original control_msgs/msg/JointTolerance.acceleration field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_acceleration: f64,
}
/// @brief Original complete control_msgs/msg/JointTolerance minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsMsgJointTolerance_Minimum_Wire_Bytes :: 28
/// @brief Original complete control_msgs/msg/JointTolerance maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsMsgJointTolerance_Maximum_Wire_Bytes :: 92
/// @brief Original complete control_msgs/msg/JointTolerance codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsMsgJointTolerance_Codec_Identity :: "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2"
/// @brief Traverse every original field of complete control_msgs/msg/JointTolerance.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Control_msgsMsgJointTolerance :: proc "contextless"(
    value: ^Ros2Control_msgsMsgJointTolerance, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_name)
    value.field_position = wire.float64(cursor, value.field_position)
    value.field_velocity = wire.float64(cursor, value.field_velocity)
    value.field_acceleration = wire.float64(cursor, value.field_acceleration)
}
/// @brief Encode every complete original control_msgs/msg/JointTolerance field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Control_msgsMsgJointTolerance :: proc "contextless"(
    value: ^Ros2Control_msgsMsgJointTolerance, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 92)], writing = true}
    fields_Ros2Control_msgsMsgJointTolerance(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original control_msgs/msg/JointTolerance.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Control_msgsMsgJointTolerance :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Control_msgsMsgJointTolerance, code: u32)
{
    if len(bytes) < 28 || len(bytes) > 92 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Control_msgsMsgJointTolerance(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original control_msgs/msg/JointComponentTolerance value.
/// @details Retain all 5 original fields and 5 constants. Wire extent 30..542 bytes.
Ros2Control_msgsMsgJointComponentTolerance :: struct {
    /// @brief Original control_msgs/msg/JointComponentTolerance.joint_name field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_joint_name: wire.Text(512, false),
    /// @brief Original control_msgs/msg/JointComponentTolerance.component field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_component: u16,
    /// @brief Original control_msgs/msg/JointComponentTolerance.position field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_position: f64,
    /// @brief Original control_msgs/msg/JointComponentTolerance.velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_velocity: f64,
    /// @brief Original control_msgs/msg/JointComponentTolerance.acceleration field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_acceleration: f64,
}
/// @brief Original complete control_msgs/msg/JointComponentTolerance minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsMsgJointComponentTolerance_Minimum_Wire_Bytes :: 30
/// @brief Original complete control_msgs/msg/JointComponentTolerance maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsMsgJointComponentTolerance_Maximum_Wire_Bytes :: 542
/// @brief Original complete control_msgs/msg/JointComponentTolerance codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsMsgJointComponentTolerance_Codec_Identity :: "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342"
/// @brief Original control_msgs/msg/JointComponentTolerance.X_AXIS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Control_msgsMsgJointComponentTolerance_X_AXIS :: 1
/// @brief Original control_msgs/msg/JointComponentTolerance.Y_AXIS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Control_msgsMsgJointComponentTolerance_Y_AXIS :: 2
/// @brief Original control_msgs/msg/JointComponentTolerance.Z_AXIS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Control_msgsMsgJointComponentTolerance_Z_AXIS :: 3
/// @brief Original control_msgs/msg/JointComponentTolerance.TRANSLATION constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Control_msgsMsgJointComponentTolerance_TRANSLATION :: 4
/// @brief Original control_msgs/msg/JointComponentTolerance.ROTATION constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Control_msgsMsgJointComponentTolerance_ROTATION :: 5
/// @brief Traverse every original field of complete control_msgs/msg/JointComponentTolerance.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Control_msgsMsgJointComponentTolerance :: proc "contextless"(
    value: ^Ros2Control_msgsMsgJointComponentTolerance, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_joint_name)
    value.field_component = u16(wire.number(cursor, u64(value.field_component), 2))
    value.field_position = wire.float64(cursor, value.field_position)
    value.field_velocity = wire.float64(cursor, value.field_velocity)
    value.field_acceleration = wire.float64(cursor, value.field_acceleration)
}
/// @brief Encode every complete original control_msgs/msg/JointComponentTolerance field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Control_msgsMsgJointComponentTolerance :: proc "contextless"(
    value: ^Ros2Control_msgsMsgJointComponentTolerance, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 542)], writing = true}
    fields_Ros2Control_msgsMsgJointComponentTolerance(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original control_msgs/msg/JointComponentTolerance.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Control_msgsMsgJointComponentTolerance :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Control_msgsMsgJointComponentTolerance, code: u32)
{
    if len(bytes) < 30 || len(bytes) > 542 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Control_msgsMsgJointComponentTolerance(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original control_msgs/action/FollowJointTrajectory_Goal value.
/// @details Retain all 7 original fields and 0 constants. Wire extent 64..20920 bytes.
Ros2Control_msgsActionFollowJointTrajectory_Goal :: struct {
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.trajectory field.
    /// @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_trajectory: Ros2Trajectory_msgsMsgJointTrajectory,
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectory. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory,
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance field.
    /// @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_path_tolerance: wire.Sequence(Ros2Control_msgsMsgJointTolerance, 12),
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance
    /// field.
    /// @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count
    /// 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_component_path_tolerance: wire.Sequence(Ros2Control_msgsMsgJointComponentTolerance, 12),
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance field.
    /// @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_goal_tolerance: wire.Sequence(Ros2Control_msgsMsgJointTolerance, 12),
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance
    /// field.
    /// @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count
    /// 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_component_goal_tolerance: wire.Sequence(Ros2Control_msgsMsgJointComponentTolerance, 12),
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_goal_time_tolerance: Ros2Builtin_interfacesMsgDuration,
}
/// @brief Original complete control_msgs/action/FollowJointTrajectory_Goal minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsActionFollowJointTrajectory_Goal_Minimum_Wire_Bytes :: 64
/// @brief Original complete control_msgs/action/FollowJointTrajectory_Goal maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsActionFollowJointTrajectory_Goal_Maximum_Wire_Bytes :: 20920
/// @brief Original complete control_msgs/action/FollowJointTrajectory_Goal codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsActionFollowJointTrajectory_Goal_Codec_Identity :: "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16"
/// @brief Traverse every original field of complete control_msgs/action/FollowJointTrajectory_Goal.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Control_msgsActionFollowJointTrajectory_Goal :: proc "contextless"(
    value: ^Ros2Control_msgsActionFollowJointTrajectory_Goal, cursor: ^wire.Cursor)
{
    fields_Ros2Trajectory_msgsMsgJointTrajectory(&value.field_trajectory, cursor)
    fields_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(&value.field_multi_dof_trajectory, cursor)
    value.field_path_tolerance.size = u32(wire.number(cursor, u64(value.field_path_tolerance.size), 4))
    if value.field_path_tolerance.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_path_tolerance.size) {
        fields_Ros2Control_msgsMsgJointTolerance(&value.field_path_tolerance.items[index], cursor)
    }
    value.field_component_path_tolerance.size = u32(wire.number(cursor, u64(value.field_component_path_tolerance.size), 4))
    if value.field_component_path_tolerance.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_component_path_tolerance.size) {
        fields_Ros2Control_msgsMsgJointComponentTolerance(&value.field_component_path_tolerance.items[index], cursor)
    }
    value.field_goal_tolerance.size = u32(wire.number(cursor, u64(value.field_goal_tolerance.size), 4))
    if value.field_goal_tolerance.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_goal_tolerance.size) {
        fields_Ros2Control_msgsMsgJointTolerance(&value.field_goal_tolerance.items[index], cursor)
    }
    value.field_component_goal_tolerance.size = u32(wire.number(cursor, u64(value.field_component_goal_tolerance.size), 4))
    if value.field_component_goal_tolerance.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_component_goal_tolerance.size) {
        fields_Ros2Control_msgsMsgJointComponentTolerance(&value.field_component_goal_tolerance.items[index], cursor)
    }
    fields_Ros2Builtin_interfacesMsgDuration(&value.field_goal_time_tolerance, cursor)
}
/// @brief Encode every complete original control_msgs/action/FollowJointTrajectory_Goal field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Control_msgsActionFollowJointTrajectory_Goal :: proc "contextless"(
    value: ^Ros2Control_msgsActionFollowJointTrajectory_Goal, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 20920)], writing = true}
    fields_Ros2Control_msgsActionFollowJointTrajectory_Goal(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original control_msgs/action/FollowJointTrajectory_Goal.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Control_msgsActionFollowJointTrajectory_Goal :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Control_msgsActionFollowJointTrajectory_Goal, code: u32)
{
    if len(bytes) < 64 || len(bytes) > 20920 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Control_msgsActionFollowJointTrajectory_Goal(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original control_msgs/action/FollowJointTrajectory_Result value.
/// @details Retain all 2 original fields and 6 constants. Wire extent 8..4104 bytes.
Ros2Control_msgsActionFollowJointTrajectory_Result :: struct {
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.error_code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_code: i32,
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.error_string field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_error_string: wire.Text(4096, false),
}
/// @brief Original complete control_msgs/action/FollowJointTrajectory_Result minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsActionFollowJointTrajectory_Result_Minimum_Wire_Bytes :: 8
/// @brief Original complete control_msgs/action/FollowJointTrajectory_Result maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsActionFollowJointTrajectory_Result_Maximum_Wire_Bytes :: 4104
/// @brief Original complete control_msgs/action/FollowJointTrajectory_Result codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsActionFollowJointTrajectory_Result_Codec_Identity :: "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70"
/// @brief Original control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Control_msgsActionFollowJointTrajectory_Result_SUCCESSFUL :: 0
/// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_GOAL :: -1
/// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_JOINTS :: -2
/// @brief Original control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Control_msgsActionFollowJointTrajectory_Result_OLD_HEADER_TIMESTAMP :: -3
/// @brief Original control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Control_msgsActionFollowJointTrajectory_Result_PATH_TOLERANCE_VIOLATED :: -4
/// @brief Original control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Control_msgsActionFollowJointTrajectory_Result_GOAL_TOLERANCE_VIOLATED :: -5
/// @brief Traverse every original field of complete
/// control_msgs/action/FollowJointTrajectory_Result.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Control_msgsActionFollowJointTrajectory_Result :: proc "contextless"(
    value: ^Ros2Control_msgsActionFollowJointTrajectory_Result, cursor: ^wire.Cursor)
{
    value.field_error_code = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_error_code), 4))
    wire.text(cursor, &value.field_error_string)
}
/// @brief Encode every complete original control_msgs/action/FollowJointTrajectory_Result field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Control_msgsActionFollowJointTrajectory_Result :: proc "contextless"(
    value: ^Ros2Control_msgsActionFollowJointTrajectory_Result, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4104)], writing = true}
    fields_Ros2Control_msgsActionFollowJointTrajectory_Result(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original control_msgs/action/FollowJointTrajectory_Result.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Control_msgsActionFollowJointTrajectory_Result :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Control_msgsActionFollowJointTrajectory_Result, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 4104 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Control_msgsActionFollowJointTrajectory_Result(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original control_msgs/action/FollowJointTrajectory_Feedback value.
/// @details Retain all 9 original fields and 0 constants. Wire extent 152..4128 bytes.
Ros2Control_msgsActionFollowJointTrajectory_Feedback :: struct {
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names: wire.Sequence(wire.Text(64, false), 12),
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.desired field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint,
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.actual field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint,
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.error field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_error: Ros2Trajectory_msgsMsgJointTrajectoryPoint,
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names
    /// field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Shape sequence;
    /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_multi_dof_joint_names: wire.Sequence(wire.Text(512, false), 2),
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
}
/// @brief Original complete control_msgs/action/FollowJointTrajectory_Feedback minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsActionFollowJointTrajectory_Feedback_Minimum_Wire_Bytes :: 152
/// @brief Original complete control_msgs/action/FollowJointTrajectory_Feedback maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsActionFollowJointTrajectory_Feedback_Maximum_Wire_Bytes :: 4128
/// @brief Original complete control_msgs/action/FollowJointTrajectory_Feedback codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Control_msgsActionFollowJointTrajectory_Feedback_Codec_Identity :: "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb"
/// @brief Traverse every original field of complete
/// control_msgs/action/FollowJointTrajectory_Feedback.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Control_msgsActionFollowJointTrajectory_Feedback :: proc "contextless"(
    value: ^Ros2Control_msgsActionFollowJointTrajectory_Feedback, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_joint_names.size = u32(wire.number(cursor, u64(value.field_joint_names.size), 4))
    if value.field_joint_names.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_joint_names.size) {
        wire.text(cursor, &value.field_joint_names.items[index])
    }
    fields_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&value.field_desired, cursor)
    fields_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&value.field_actual, cursor)
    fields_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&value.field_error, cursor)
    value.field_multi_dof_joint_names.size = u32(wire.number(cursor, u64(value.field_multi_dof_joint_names.size), 4))
    if value.field_multi_dof_joint_names.size > 2 { cursor.code = 22; return }
    for index in 0..<int(value.field_multi_dof_joint_names.size) {
        wire.text(cursor, &value.field_multi_dof_joint_names.items[index])
    }
    fields_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(&value.field_multi_dof_desired, cursor)
    fields_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(&value.field_multi_dof_actual, cursor)
    fields_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(&value.field_multi_dof_error, cursor)
}
/// @brief Encode every complete original control_msgs/action/FollowJointTrajectory_Feedback field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Control_msgsActionFollowJointTrajectory_Feedback :: proc "contextless"(
    value: ^Ros2Control_msgsActionFollowJointTrajectory_Feedback, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4128)], writing = true}
    fields_Ros2Control_msgsActionFollowJointTrajectory_Feedback(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original control_msgs/action/FollowJointTrajectory_Feedback.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Control_msgsActionFollowJointTrajectory_Feedback :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Control_msgsActionFollowJointTrajectory_Feedback, code: u32)
{
    if len(bytes) < 152 || len(bytes) > 4128 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Control_msgsActionFollowJointTrajectory_Feedback(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original sensor_msgs/msg/JointState value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 28..1196 bytes.
Ros2Sensor_msgsMsgJointState :: struct {
    /// @brief Original sensor_msgs/msg/JointState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original sensor_msgs/msg/JointState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_name: wire.Sequence(wire.Text(64, false), 12),
    /// @brief Original sensor_msgs/msg/JointState.position field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_position: wire.Sequence(f64, 12),
    /// @brief Original sensor_msgs/msg/JointState.velocity field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocity: wire.Sequence(f64, 12),
    /// @brief Original sensor_msgs/msg/JointState.effort field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_effort: wire.Sequence(f64, 12),
}
/// @brief Original complete sensor_msgs/msg/JointState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Sensor_msgsMsgJointState_Minimum_Wire_Bytes :: 28
/// @brief Original complete sensor_msgs/msg/JointState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Sensor_msgsMsgJointState_Maximum_Wire_Bytes :: 1196
/// @brief Original complete sensor_msgs/msg/JointState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Sensor_msgsMsgJointState_Codec_Identity :: "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884"
/// @brief Traverse every original field of complete sensor_msgs/msg/JointState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Sensor_msgsMsgJointState :: proc "contextless"(
    value: ^Ros2Sensor_msgsMsgJointState, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_name.size = u32(wire.number(cursor, u64(value.field_name.size), 4))
    if value.field_name.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_name.size) {
        wire.text(cursor, &value.field_name.items[index])
    }
    value.field_position.size = u32(wire.number(cursor, u64(value.field_position.size), 4))
    if value.field_position.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_position.size) {
        value.field_position.items[index] = wire.float64(cursor, value.field_position.items[index])
    }
    value.field_velocity.size = u32(wire.number(cursor, u64(value.field_velocity.size), 4))
    if value.field_velocity.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_velocity.size) {
        value.field_velocity.items[index] = wire.float64(cursor, value.field_velocity.items[index])
    }
    value.field_effort.size = u32(wire.number(cursor, u64(value.field_effort.size), 4))
    if value.field_effort.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_effort.size) {
        value.field_effort.items[index] = wire.float64(cursor, value.field_effort.items[index])
    }
}
/// @brief Encode every complete original sensor_msgs/msg/JointState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Sensor_msgsMsgJointState :: proc "contextless"(
    value: ^Ros2Sensor_msgsMsgJointState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1196)], writing = true}
    fields_Ros2Sensor_msgsMsgJointState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original sensor_msgs/msg/JointState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Sensor_msgsMsgJointState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Sensor_msgsMsgJointState, code: u32)
{
    if len(bytes) < 28 || len(bytes) > 1196 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Sensor_msgsMsgJointState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original std_srvs/srv/Trigger_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Std_srvsSrvTrigger_Request :: struct {
}
/// @brief Original complete std_srvs/srv/Trigger_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Std_srvsSrvTrigger_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete std_srvs/srv/Trigger_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Std_srvsSrvTrigger_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete std_srvs/srv/Trigger_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Std_srvsSrvTrigger_Request_Codec_Identity :: "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"
/// @brief Traverse every original field of complete std_srvs/srv/Trigger_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Std_srvsSrvTrigger_Request :: proc "contextless"(
    value: ^Ros2Std_srvsSrvTrigger_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original std_srvs/srv/Trigger_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Std_srvsSrvTrigger_Request :: proc "contextless"(
    value: ^Ros2Std_srvsSrvTrigger_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Std_srvsSrvTrigger_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original std_srvs/srv/Trigger_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Std_srvsSrvTrigger_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Std_srvsSrvTrigger_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Std_srvsSrvTrigger_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original std_srvs/srv/Trigger_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..517 bytes.
Ros2Std_srvsSrvTrigger_Response :: struct {
    /// @brief Original std_srvs/srv/Trigger_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool,
    /// @brief Original std_srvs/srv/Trigger_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete std_srvs/srv/Trigger_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Std_srvsSrvTrigger_Response_Minimum_Wire_Bytes :: 5
/// @brief Original complete std_srvs/srv/Trigger_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Std_srvsSrvTrigger_Response_Maximum_Wire_Bytes :: 517
/// @brief Original complete std_srvs/srv/Trigger_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Std_srvsSrvTrigger_Response_Codec_Identity :: "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d"
/// @brief Traverse every original field of complete std_srvs/srv/Trigger_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Std_srvsSrvTrigger_Response :: proc "contextless"(
    value: ^Ros2Std_srvsSrvTrigger_Response, cursor: ^wire.Cursor)
{
    value.field_success = wire.boolean(cursor, value.field_success)
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original std_srvs/srv/Trigger_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Std_srvsSrvTrigger_Response :: proc "contextless"(
    value: ^Ros2Std_srvsSrvTrigger_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 517)], writing = true}
    fields_Ros2Std_srvsSrvTrigger_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original std_srvs/srv/Trigger_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Std_srvsSrvTrigger_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Std_srvsSrvTrigger_Response, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 517 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Std_srvsSrvTrigger_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}


// DEFAULT_FACTORIES_BEGIN

// @brief Construct all original abb_egm_msgs/msg/EGMChannelState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_egm_msgsMsgEGMChannelState :: proc "contextless"() -> (Ros2Abb_egm_msgsMsgEGMChannelState, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_egm_msgsMsgEGMChannelState(bytes)
}

// @brief Construct all original builtin_interfaces/msg/Time defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Builtin_interfacesMsgTime :: proc "contextless"() -> (Ros2Builtin_interfacesMsgTime, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Builtin_interfacesMsgTime(bytes)
}

// @brief Construct all original std_msgs/msg/Header defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Std_msgsMsgHeader :: proc "contextless"() -> (Ros2Std_msgsMsgHeader, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Std_msgsMsgHeader(bytes)
}

// @brief Construct all original abb_egm_msgs/msg/EGMState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_egm_msgsMsgEGMState :: proc "contextless"() -> (Ros2Abb_egm_msgsMsgEGMState, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_egm_msgsMsgEGMState(bytes)
}

// @brief Construct all original abb_rapid_msgs/msg/ConfData defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_msgsMsgConfData :: proc "contextless"() -> (Ros2Abb_rapid_msgsMsgConfData, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_rapid_msgsMsgConfData(bytes)
}

// @brief Construct all original abb_rapid_msgs/msg/ExtJoint defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_msgsMsgExtJoint :: proc "contextless"() -> (Ros2Abb_rapid_msgsMsgExtJoint, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Abb_rapid_msgsMsgExtJoint(bytes)
}

// @brief Construct all original abb_rapid_msgs/msg/RobJoint defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_msgsMsgRobJoint :: proc "contextless"() -> (Ros2Abb_rapid_msgsMsgRobJoint, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Abb_rapid_msgsMsgRobJoint(bytes)
}

// @brief Construct all original abb_rapid_msgs/msg/JointTarget defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_msgsMsgJointTarget :: proc "contextless"() -> (Ros2Abb_rapid_msgsMsgJointTarget, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Abb_rapid_msgsMsgJointTarget(bytes)
}

// @brief Construct all original abb_rapid_msgs/msg/Pos defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_msgsMsgPos :: proc "contextless"() -> (Ros2Abb_rapid_msgsMsgPos, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_rapid_msgsMsgPos(bytes)
}

// @brief Construct all original abb_rapid_msgs/msg/Orient defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_msgsMsgOrient :: proc "contextless"() -> (Ros2Abb_rapid_msgsMsgOrient, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_rapid_msgsMsgOrient(bytes)
}

// @brief Construct all original abb_rapid_msgs/msg/LoadData defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_msgsMsgLoadData :: proc "contextless"() -> (Ros2Abb_rapid_msgsMsgLoadData, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Abb_rapid_msgsMsgLoadData(bytes)
}

// @brief Construct all original abb_rapid_msgs/msg/Pose defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_msgsMsgPose :: proc "contextless"() -> (Ros2Abb_rapid_msgsMsgPose, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Abb_rapid_msgsMsgPose(bytes)
}

// @brief Construct all original abb_rapid_msgs/msg/RobTarget defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_msgsMsgRobTarget :: proc "contextless"() -> (Ros2Abb_rapid_msgsMsgRobTarget, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros2Abb_rapid_msgsMsgRobTarget(bytes)
}

// @brief Construct all original abb_rapid_msgs/msg/ToolData defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_msgsMsgToolData :: proc "contextless"() -> (Ros2Abb_rapid_msgsMsgToolData, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Abb_rapid_msgsMsgToolData(bytes)
}

// @brief Construct all original abb_rapid_msgs/msg/WObjData defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_msgsMsgWObjData :: proc "contextless"() -> (Ros2Abb_rapid_msgsMsgWObjData, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Abb_rapid_msgsMsgWObjData(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/msg/EGMRunSettings defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings, u32) {
    bytes := []u8{0, 0, 0, 0, 0}
    return decode_Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/msg/EGMStopSettings defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/msg/EGMSettings defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/msg/StateMachineState defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/msg/RuntimeState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response defaults with complete
// typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0,
    }
    return decode_Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0,
    }
    return decode_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response defaults with complete
// typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request defaults with complete
// typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response defaults with complete
// typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response :: proc "contextless"() -> (Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/msg/MechanicalUnitState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsMsgMechanicalUnitState :: proc "contextless"() -> (Ros2Abb_robot_msgsMsgMechanicalUnitState, u32) {
    bytes := []u8{0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsMsgMechanicalUnitState(bytes)
}

// @brief Construct all original abb_robot_msgs/msg/RAPIDSymbolPath defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsMsgRAPIDSymbolPath :: proc "contextless"() -> (Ros2Abb_robot_msgsMsgRAPIDSymbolPath, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsMsgRAPIDSymbolPath(bytes)
}

// @brief Construct all original abb_robot_msgs/msg/RAPIDTaskState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsMsgRAPIDTaskState :: proc "contextless"() -> (Ros2Abb_robot_msgsMsgRAPIDTaskState, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsMsgRAPIDTaskState(bytes)
}

// @brief Construct all original abb_robot_msgs/msg/ServiceResponses defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsMsgServiceResponses :: proc "contextless"() -> (Ros2Abb_robot_msgsMsgServiceResponses, u32) {
    bytes := []u8{}
    return decode_Ros2Abb_robot_msgsMsgServiceResponses(bytes)
}

// @brief Construct all original abb_robot_msgs/msg/SystemState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsMsgSystemState :: proc "contextless"() -> (Ros2Abb_robot_msgsMsgSystemState, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Abb_robot_msgsMsgSystemState(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetFileContents_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetFileContents_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetFileContents_Request, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetFileContents_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetFileContents_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetFileContents_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetFileContents_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetFileContents_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetIOSignal_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetIOSignal_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetIOSignal_Request, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetIOSignal_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetIOSignal_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetIOSignal_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetIOSignal_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetIOSignal_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetRAPIDBool_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetRAPIDBool_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetRAPIDBool_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetRAPIDBool_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetRAPIDBool_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetRAPIDBool_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetRAPIDBool_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetRAPIDBool_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetRAPIDDnum_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetRAPIDDnum_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetRAPIDNum_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetRAPIDNum_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetRAPIDNum_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetRAPIDNum_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetRAPIDNum_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetRAPIDNum_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetRAPIDNum_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetRAPIDNum_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetRAPIDString_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetRAPIDString_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetRAPIDString_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetRAPIDString_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetRAPIDString_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetRAPIDString_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetRAPIDString_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetRAPIDString_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetRAPIDSymbol_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetRAPIDSymbol_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetRobotControllerDescription_Request defaults with complete
// typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetRobotControllerDescription_Response defaults with
// complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetSpeedRatio_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetSpeedRatio_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetSpeedRatio_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Abb_robot_msgsSrvGetSpeedRatio_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/GetSpeedRatio_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvGetSpeedRatio_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvGetSpeedRatio_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvGetSpeedRatio_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetFileContents_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetFileContents_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetFileContents_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetFileContents_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetFileContents_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetFileContents_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetFileContents_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetFileContents_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetIOSignal_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetIOSignal_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetIOSignal_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetIOSignal_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetIOSignal_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetIOSignal_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetIOSignal_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetIOSignal_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetRAPIDBool_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetRAPIDBool_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetRAPIDBool_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetRAPIDBool_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetRAPIDBool_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetRAPIDBool_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetRAPIDBool_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetRAPIDBool_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetRAPIDDnum_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetRAPIDDnum_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetRAPIDNum_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetRAPIDNum_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetRAPIDNum_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetRAPIDNum_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetRAPIDNum_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetRAPIDNum_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetRAPIDNum_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetRAPIDNum_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetRAPIDString_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetRAPIDString_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetRAPIDString_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetRAPIDString_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetRAPIDString_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetRAPIDString_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetRAPIDString_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetRAPIDString_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetRAPIDSymbol_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetRAPIDSymbol_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetSpeedRatio_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetSpeedRatio_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetSpeedRatio_Request, u32) {
    bytes := []u8{0}
    return decode_Ros2Abb_robot_msgsSrvSetSpeedRatio_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/SetSpeedRatio_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvSetSpeedRatio_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvSetSpeedRatio_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvSetSpeedRatio_Response(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/TriggerWithResultCode_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request(bytes)
}

// @brief Construct all original abb_robot_msgs/srv/TriggerWithResultCode_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response :: proc "contextless"() -> (Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response(bytes)
}

// @brief Construct all original builtin_interfaces/msg/Duration defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Builtin_interfacesMsgDuration :: proc "contextless"() -> (Ros2Builtin_interfacesMsgDuration, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Builtin_interfacesMsgDuration(bytes)
}

// @brief Construct all original trajectory_msgs/msg/JointTrajectoryPoint defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Trajectory_msgsMsgJointTrajectoryPoint :: proc "contextless"() -> (Ros2Trajectory_msgsMsgJointTrajectoryPoint, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Trajectory_msgsMsgJointTrajectoryPoint(bytes)
}

// @brief Construct all original trajectory_msgs/msg/JointTrajectory defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Trajectory_msgsMsgJointTrajectory :: proc "contextless"() -> (Ros2Trajectory_msgsMsgJointTrajectory, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros2Trajectory_msgsMsgJointTrajectory(bytes)
}

// @brief Construct all original geometry_msgs/msg/Vector3 defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Geometry_msgsMsgVector3 :: proc "contextless"() -> (Ros2Geometry_msgsMsgVector3, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Geometry_msgsMsgVector3(bytes)
}

// @brief Construct all original geometry_msgs/msg/Quaternion defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Geometry_msgsMsgQuaternion :: proc "contextless"() -> (Ros2Geometry_msgsMsgQuaternion, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240, 63,
    }
    return decode_Ros2Geometry_msgsMsgQuaternion(bytes)
}

// @brief Construct all original geometry_msgs/msg/Transform defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Geometry_msgsMsgTransform :: proc "contextless"() -> (Ros2Geometry_msgsMsgTransform, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 240, 63,
    }
    return decode_Ros2Geometry_msgsMsgTransform(bytes)
}

// @brief Construct all original geometry_msgs/msg/Twist defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Geometry_msgsMsgTwist :: proc "contextless"() -> (Ros2Geometry_msgsMsgTwist, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Geometry_msgsMsgTwist(bytes)
}

// @brief Construct all original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint :: proc "contextless"() -> (Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(bytes)
}

// @brief Construct all original trajectory_msgs/msg/MultiDOFJointTrajectory defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory :: proc "contextless"() -> (Ros2Trajectory_msgsMsgMultiDOFJointTrajectory, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(bytes)
}

// @brief Construct all original control_msgs/msg/JointTolerance defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Control_msgsMsgJointTolerance :: proc "contextless"() -> (Ros2Control_msgsMsgJointTolerance, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Control_msgsMsgJointTolerance(bytes)
}

// @brief Construct all original control_msgs/msg/JointComponentTolerance defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Control_msgsMsgJointComponentTolerance :: proc "contextless"() -> (Ros2Control_msgsMsgJointComponentTolerance, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Control_msgsMsgJointComponentTolerance(bytes)
}

// @brief Construct all original control_msgs/action/FollowJointTrajectory_Goal defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Control_msgsActionFollowJointTrajectory_Goal :: proc "contextless"() -> (Ros2Control_msgsActionFollowJointTrajectory_Goal, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Control_msgsActionFollowJointTrajectory_Goal(bytes)
}

// @brief Construct all original control_msgs/action/FollowJointTrajectory_Result defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Control_msgsActionFollowJointTrajectory_Result :: proc "contextless"() -> (Ros2Control_msgsActionFollowJointTrajectory_Result, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Control_msgsActionFollowJointTrajectory_Result(bytes)
}

// @brief Construct all original control_msgs/action/FollowJointTrajectory_Feedback defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Control_msgsActionFollowJointTrajectory_Feedback :: proc "contextless"() -> (Ros2Control_msgsActionFollowJointTrajectory_Feedback, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Control_msgsActionFollowJointTrajectory_Feedback(bytes)
}

// @brief Construct all original sensor_msgs/msg/JointState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Sensor_msgsMsgJointState :: proc "contextless"() -> (Ros2Sensor_msgsMsgJointState, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Sensor_msgsMsgJointState(bytes)
}

// @brief Construct all original std_srvs/srv/Trigger_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Std_srvsSrvTrigger_Request :: proc "contextless"() -> (Ros2Std_srvsSrvTrigger_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Std_srvsSrvTrigger_Request(bytes)
}

// @brief Construct all original std_srvs/srv/Trigger_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Std_srvsSrvTrigger_Response :: proc "contextless"() -> (Ros2Std_srvsSrvTrigger_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0}
    return decode_Ros2Std_srvsSrvTrigger_Response(bytes)
}
