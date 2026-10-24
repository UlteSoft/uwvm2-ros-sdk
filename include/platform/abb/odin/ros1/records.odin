// @file records.odin
// @brief Complete owned original ABB ROS 1 records and codecs.
// @details No generated record owns a native ROS object or grants a capability.
package records
import wire "ros:odin"

/// @brief Complete original abb_egm_msgs/EGMChannelState value.
/// @details Retain all 7 original fields and 10 constants. Wire extent 17..81 bytes.
Ros1Abb_egm_msgsEGMChannelState :: struct {
    /// @brief Original abb_egm_msgs/EGMChannelState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_name: wire.Text(64, false),
    /// @brief Original abb_egm_msgs/EGMChannelState.active field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_active: bool,
    /// @brief Original abb_egm_msgs/EGMChannelState.egm_convergence_met field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_egm_convergence_met: bool,
    /// @brief Original abb_egm_msgs/EGMChannelState.egm_client_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_egm_client_state: u8,
    /// @brief Original abb_egm_msgs/EGMChannelState.motor_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motor_state: u8,
    /// @brief Original abb_egm_msgs/EGMChannelState.rapid_execution_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rapid_execution_state: u8,
    /// @brief Original abb_egm_msgs/EGMChannelState.utilization_rate field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_utilization_rate: f64,
}
/// @brief Original complete abb_egm_msgs/EGMChannelState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_egm_msgsEGMChannelState_Minimum_Wire_Bytes :: 17
/// @brief Original complete abb_egm_msgs/EGMChannelState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_egm_msgsEGMChannelState_Maximum_Wire_Bytes :: 81
/// @brief Original complete abb_egm_msgs/EGMChannelState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_egm_msgsEGMChannelState_Codec_Identity :: "UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2"
/// @brief Original abb_egm_msgs/EGMChannelState.EGM_UNDEFINED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_egm_msgsEGMChannelState_EGM_UNDEFINED :: 1
/// @brief Original abb_egm_msgs/EGMChannelState.EGM_ERROR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_egm_msgsEGMChannelState_EGM_ERROR :: 2
/// @brief Original abb_egm_msgs/EGMChannelState.EGM_STOPPED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_egm_msgsEGMChannelState_EGM_STOPPED :: 3
/// @brief Original abb_egm_msgs/EGMChannelState.EGM_RUNNING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_egm_msgsEGMChannelState_EGM_RUNNING :: 4
/// @brief Original abb_egm_msgs/EGMChannelState.MOTORS_UNDEFINED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_egm_msgsEGMChannelState_MOTORS_UNDEFINED :: 1
/// @brief Original abb_egm_msgs/EGMChannelState.MOTORS_ON constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_egm_msgsEGMChannelState_MOTORS_ON :: 2
/// @brief Original abb_egm_msgs/EGMChannelState.MOTORS_OFF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_egm_msgsEGMChannelState_MOTORS_OFF :: 3
/// @brief Original abb_egm_msgs/EGMChannelState.RAPID_UNDEFINED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_egm_msgsEGMChannelState_RAPID_UNDEFINED :: 1
/// @brief Original abb_egm_msgs/EGMChannelState.RAPID_STOPPED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_egm_msgsEGMChannelState_RAPID_STOPPED :: 2
/// @brief Original abb_egm_msgs/EGMChannelState.RAPID_RUNNING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_egm_msgsEGMChannelState_RAPID_RUNNING :: 3
/// @brief Traverse every original field of complete abb_egm_msgs/EGMChannelState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_egm_msgsEGMChannelState :: proc "contextless"(
    value: ^Ros1Abb_egm_msgsEGMChannelState, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_name)
    value.field_active = wire.boolean(cursor, value.field_active)
    value.field_egm_convergence_met = wire.boolean(cursor, value.field_egm_convergence_met)
    value.field_egm_client_state = u8(wire.number(cursor, u64(value.field_egm_client_state), 1))
    value.field_motor_state = u8(wire.number(cursor, u64(value.field_motor_state), 1))
    value.field_rapid_execution_state = u8(wire.number(cursor, u64(value.field_rapid_execution_state), 1))
    value.field_utilization_rate = wire.float64(cursor, value.field_utilization_rate)
}
/// @brief Encode every complete original abb_egm_msgs/EGMChannelState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_egm_msgsEGMChannelState :: proc "contextless"(
    value: ^Ros1Abb_egm_msgsEGMChannelState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 81)], writing = true}
    fields_Ros1Abb_egm_msgsEGMChannelState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_egm_msgs/EGMChannelState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_egm_msgsEGMChannelState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_egm_msgsEGMChannelState, code: u32)
{
    if len(bytes) < 17 || len(bytes) > 81 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_egm_msgsEGMChannelState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original time value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros1Time :: struct {
    /// @brief Original time.sec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sec: u32,
    /// @brief Original time.nsec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nsec: u32,
}
/// @brief Original complete time minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Time_Minimum_Wire_Bytes :: 8
/// @brief Original complete time maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Time_Maximum_Wire_Bytes :: 8
/// @brief Original complete time codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Time_Codec_Identity :: "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
/// @brief Traverse every original field of complete time.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Time :: proc "contextless"(
    value: ^Ros1Time, cursor: ^wire.Cursor)
{
    value.field_sec = u32(wire.number(cursor, u64(value.field_sec), 4))
    value.field_nsec = u32(wire.number(cursor, u64(value.field_nsec), 4))
    if value.field_nsec >= 1000000000 { cursor.code = 22 }
}
/// @brief Encode every complete original time field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Time :: proc "contextless"(
    value: ^Ros1Time, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros1Time(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original time.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Time :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Time, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Time(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original std_msgs/Header value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 16..80 bytes.
Ros1Std_msgsHeader :: struct {
    /// @brief Original std_msgs/Header.seq field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_seq: u32,
    /// @brief Original std_msgs/Header.stamp field.
    /// @details Original type time. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stamp: Ros1Time,
    /// @brief Original std_msgs/Header.frame_id field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_frame_id: wire.Text(64, false),
}
/// @brief Original complete std_msgs/Header minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Std_msgsHeader_Minimum_Wire_Bytes :: 16
/// @brief Original complete std_msgs/Header maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Std_msgsHeader_Maximum_Wire_Bytes :: 80
/// @brief Original complete std_msgs/Header codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Std_msgsHeader_Codec_Identity :: "UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db"
/// @brief Traverse every original field of complete std_msgs/Header.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Std_msgsHeader :: proc "contextless"(
    value: ^Ros1Std_msgsHeader, cursor: ^wire.Cursor)
{
    value.field_seq = u32(wire.number(cursor, u64(value.field_seq), 4))
    fields_Ros1Time(&value.field_stamp, cursor)
    wire.text(cursor, &value.field_frame_id)
}
/// @brief Encode every complete original std_msgs/Header field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Std_msgsHeader :: proc "contextless"(
    value: ^Ros1Std_msgsHeader, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 80)], writing = true}
    fields_Ros1Std_msgsHeader(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original std_msgs/Header.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Std_msgsHeader :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Std_msgsHeader, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 80 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Std_msgsHeader(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_egm_msgs/EGMState value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 20..1380 bytes.
Ros1Abb_egm_msgsEGMState :: struct {
    /// @brief Original abb_egm_msgs/EGMState.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    field_header: Ros1Std_msgsHeader,
    /// @brief Original abb_egm_msgs/EGMState.egm_channels field.
    /// @details Original type abb_egm_msgs/EGMChannelState. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_egm_channels: wire.Sequence(Ros1Abb_egm_msgsEGMChannelState, 16),
}
/// @brief Original complete abb_egm_msgs/EGMState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_egm_msgsEGMState_Minimum_Wire_Bytes :: 20
/// @brief Original complete abb_egm_msgs/EGMState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_egm_msgsEGMState_Maximum_Wire_Bytes :: 1380
/// @brief Original complete abb_egm_msgs/EGMState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_egm_msgsEGMState_Codec_Identity :: "UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8"
/// @brief Traverse every original field of complete abb_egm_msgs/EGMState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_egm_msgsEGMState :: proc "contextless"(
    value: ^Ros1Abb_egm_msgsEGMState, cursor: ^wire.Cursor)
{
    fields_Ros1Std_msgsHeader(&value.field_header, cursor)
    value.field_egm_channels.size = u32(wire.number(cursor, u64(value.field_egm_channels.size), 4))
    if value.field_egm_channels.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_egm_channels.size) {
        fields_Ros1Abb_egm_msgsEGMChannelState(&value.field_egm_channels.items[index], cursor)
    }
}
/// @brief Encode every complete original abb_egm_msgs/EGMState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_egm_msgsEGMState :: proc "contextless"(
    value: ^Ros1Abb_egm_msgsEGMState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1380)], writing = true}
    fields_Ros1Abb_egm_msgsEGMState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_egm_msgs/EGMState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_egm_msgsEGMState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_egm_msgsEGMState, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 1380 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_egm_msgsEGMState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/ConfData value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 16..16 bytes.
Ros1Abb_rapid_msgsConfData :: struct {
    /// @brief Original abb_rapid_msgs/ConfData.cf1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cf1: f32,
    /// @brief Original abb_rapid_msgs/ConfData.cf4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cf4: f32,
    /// @brief Original abb_rapid_msgs/ConfData.cf6 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cf6: f32,
    /// @brief Original abb_rapid_msgs/ConfData.cfx field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cfx: f32,
}
/// @brief Original complete abb_rapid_msgs/ConfData minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsConfData_Minimum_Wire_Bytes :: 16
/// @brief Original complete abb_rapid_msgs/ConfData maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsConfData_Maximum_Wire_Bytes :: 16
/// @brief Original complete abb_rapid_msgs/ConfData codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsConfData_Codec_Identity :: "UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2"
/// @brief Traverse every original field of complete abb_rapid_msgs/ConfData.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_msgsConfData :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsConfData, cursor: ^wire.Cursor)
{
    value.field_cf1 = wire.float32(cursor, value.field_cf1)
    value.field_cf4 = wire.float32(cursor, value.field_cf4)
    value.field_cf6 = wire.float32(cursor, value.field_cf6)
    value.field_cfx = wire.float32(cursor, value.field_cfx)
}
/// @brief Encode every complete original abb_rapid_msgs/ConfData field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_msgsConfData :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsConfData, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 16)], writing = true}
    fields_Ros1Abb_rapid_msgsConfData(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/ConfData.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_msgsConfData :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_msgsConfData, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 16 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_msgsConfData(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/ExtJoint value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 24..24 bytes.
Ros1Abb_rapid_msgsExtJoint :: struct {
    /// @brief Original abb_rapid_msgs/ExtJoint.eax_a field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_eax_a: f32,
    /// @brief Original abb_rapid_msgs/ExtJoint.eax_b field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_eax_b: f32,
    /// @brief Original abb_rapid_msgs/ExtJoint.eax_c field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_eax_c: f32,
    /// @brief Original abb_rapid_msgs/ExtJoint.eax_d field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_eax_d: f32,
    /// @brief Original abb_rapid_msgs/ExtJoint.eax_e field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_eax_e: f32,
    /// @brief Original abb_rapid_msgs/ExtJoint.eax_f field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_eax_f: f32,
}
/// @brief Original complete abb_rapid_msgs/ExtJoint minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsExtJoint_Minimum_Wire_Bytes :: 24
/// @brief Original complete abb_rapid_msgs/ExtJoint maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsExtJoint_Maximum_Wire_Bytes :: 24
/// @brief Original complete abb_rapid_msgs/ExtJoint codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsExtJoint_Codec_Identity :: "UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a"
/// @brief Traverse every original field of complete abb_rapid_msgs/ExtJoint.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_msgsExtJoint :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsExtJoint, cursor: ^wire.Cursor)
{
    value.field_eax_a = wire.float32(cursor, value.field_eax_a)
    value.field_eax_b = wire.float32(cursor, value.field_eax_b)
    value.field_eax_c = wire.float32(cursor, value.field_eax_c)
    value.field_eax_d = wire.float32(cursor, value.field_eax_d)
    value.field_eax_e = wire.float32(cursor, value.field_eax_e)
    value.field_eax_f = wire.float32(cursor, value.field_eax_f)
}
/// @brief Encode every complete original abb_rapid_msgs/ExtJoint field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_msgsExtJoint :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsExtJoint, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 24)], writing = true}
    fields_Ros1Abb_rapid_msgsExtJoint(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/ExtJoint.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_msgsExtJoint :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_msgsExtJoint, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 24 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_msgsExtJoint(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/RobJoint value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 24..24 bytes.
Ros1Abb_rapid_msgsRobJoint :: struct {
    /// @brief Original abb_rapid_msgs/RobJoint.rax_1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rax_1: f32,
    /// @brief Original abb_rapid_msgs/RobJoint.rax_2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rax_2: f32,
    /// @brief Original abb_rapid_msgs/RobJoint.rax_3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rax_3: f32,
    /// @brief Original abb_rapid_msgs/RobJoint.rax_4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rax_4: f32,
    /// @brief Original abb_rapid_msgs/RobJoint.rax_5 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rax_5: f32,
    /// @brief Original abb_rapid_msgs/RobJoint.rax_6 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rax_6: f32,
}
/// @brief Original complete abb_rapid_msgs/RobJoint minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsRobJoint_Minimum_Wire_Bytes :: 24
/// @brief Original complete abb_rapid_msgs/RobJoint maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsRobJoint_Maximum_Wire_Bytes :: 24
/// @brief Original complete abb_rapid_msgs/RobJoint codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsRobJoint_Codec_Identity :: "UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0"
/// @brief Traverse every original field of complete abb_rapid_msgs/RobJoint.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_msgsRobJoint :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsRobJoint, cursor: ^wire.Cursor)
{
    value.field_rax_1 = wire.float32(cursor, value.field_rax_1)
    value.field_rax_2 = wire.float32(cursor, value.field_rax_2)
    value.field_rax_3 = wire.float32(cursor, value.field_rax_3)
    value.field_rax_4 = wire.float32(cursor, value.field_rax_4)
    value.field_rax_5 = wire.float32(cursor, value.field_rax_5)
    value.field_rax_6 = wire.float32(cursor, value.field_rax_6)
}
/// @brief Encode every complete original abb_rapid_msgs/RobJoint field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_msgsRobJoint :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsRobJoint, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 24)], writing = true}
    fields_Ros1Abb_rapid_msgsRobJoint(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/RobJoint.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_msgsRobJoint :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_msgsRobJoint, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 24 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_msgsRobJoint(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/JointTarget value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 48..48 bytes.
Ros1Abb_rapid_msgsJointTarget :: struct {
    /// @brief Original abb_rapid_msgs/JointTarget.robax field.
    /// @details Original type abb_rapid_msgs/RobJoint. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_robax: Ros1Abb_rapid_msgsRobJoint,
    /// @brief Original abb_rapid_msgs/JointTarget.extax field.
    /// @details Original type abb_rapid_msgs/ExtJoint. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_extax: Ros1Abb_rapid_msgsExtJoint,
}
/// @brief Original complete abb_rapid_msgs/JointTarget minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsJointTarget_Minimum_Wire_Bytes :: 48
/// @brief Original complete abb_rapid_msgs/JointTarget maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsJointTarget_Maximum_Wire_Bytes :: 48
/// @brief Original complete abb_rapid_msgs/JointTarget codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsJointTarget_Codec_Identity :: "UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24"
/// @brief Traverse every original field of complete abb_rapid_msgs/JointTarget.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_msgsJointTarget :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsJointTarget, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_rapid_msgsRobJoint(&value.field_robax, cursor)
    fields_Ros1Abb_rapid_msgsExtJoint(&value.field_extax, cursor)
}
/// @brief Encode every complete original abb_rapid_msgs/JointTarget field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_msgsJointTarget :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsJointTarget, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 48)], writing = true}
    fields_Ros1Abb_rapid_msgsJointTarget(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/JointTarget.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_msgsJointTarget :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_msgsJointTarget, code: u32)
{
    if len(bytes) < 48 || len(bytes) > 48 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_msgsJointTarget(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/Pos value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 12..12 bytes.
Ros1Abb_rapid_msgsPos :: struct {
    /// @brief Original abb_rapid_msgs/Pos.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f32,
    /// @brief Original abb_rapid_msgs/Pos.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f32,
    /// @brief Original abb_rapid_msgs/Pos.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f32,
}
/// @brief Original complete abb_rapid_msgs/Pos minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsPos_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_rapid_msgs/Pos maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsPos_Maximum_Wire_Bytes :: 12
/// @brief Original complete abb_rapid_msgs/Pos codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsPos_Codec_Identity :: "UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01"
/// @brief Traverse every original field of complete abb_rapid_msgs/Pos.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_msgsPos :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsPos, cursor: ^wire.Cursor)
{
    value.field_x = wire.float32(cursor, value.field_x)
    value.field_y = wire.float32(cursor, value.field_y)
    value.field_z = wire.float32(cursor, value.field_z)
}
/// @brief Encode every complete original abb_rapid_msgs/Pos field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_msgsPos :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsPos, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 12)], writing = true}
    fields_Ros1Abb_rapid_msgsPos(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/Pos.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_msgsPos :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_msgsPos, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 12 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_msgsPos(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/Orient value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 16..16 bytes.
Ros1Abb_rapid_msgsOrient :: struct {
    /// @brief Original abb_rapid_msgs/Orient.q1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q1: f32,
    /// @brief Original abb_rapid_msgs/Orient.q2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q2: f32,
    /// @brief Original abb_rapid_msgs/Orient.q3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q3: f32,
    /// @brief Original abb_rapid_msgs/Orient.q4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q4: f32,
}
/// @brief Original complete abb_rapid_msgs/Orient minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsOrient_Minimum_Wire_Bytes :: 16
/// @brief Original complete abb_rapid_msgs/Orient maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsOrient_Maximum_Wire_Bytes :: 16
/// @brief Original complete abb_rapid_msgs/Orient codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsOrient_Codec_Identity :: "UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270"
/// @brief Traverse every original field of complete abb_rapid_msgs/Orient.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_msgsOrient :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsOrient, cursor: ^wire.Cursor)
{
    value.field_q1 = wire.float32(cursor, value.field_q1)
    value.field_q2 = wire.float32(cursor, value.field_q2)
    value.field_q3 = wire.float32(cursor, value.field_q3)
    value.field_q4 = wire.float32(cursor, value.field_q4)
}
/// @brief Encode every complete original abb_rapid_msgs/Orient field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_msgsOrient :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsOrient, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 16)], writing = true}
    fields_Ros1Abb_rapid_msgsOrient(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/Orient.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_msgsOrient :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_msgsOrient, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 16 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_msgsOrient(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/LoadData value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 44..44 bytes.
Ros1Abb_rapid_msgsLoadData :: struct {
    /// @brief Original abb_rapid_msgs/LoadData.mass field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mass: f32,
    /// @brief Original abb_rapid_msgs/LoadData.cog field.
    /// @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_cog: Ros1Abb_rapid_msgsPos,
    /// @brief Original abb_rapid_msgs/LoadData.aom field.
    /// @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_aom: Ros1Abb_rapid_msgsOrient,
    /// @brief Original abb_rapid_msgs/LoadData.ix field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ix: f32,
    /// @brief Original abb_rapid_msgs/LoadData.iy field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_iy: f32,
    /// @brief Original abb_rapid_msgs/LoadData.iz field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_iz: f32,
}
/// @brief Original complete abb_rapid_msgs/LoadData minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsLoadData_Minimum_Wire_Bytes :: 44
/// @brief Original complete abb_rapid_msgs/LoadData maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsLoadData_Maximum_Wire_Bytes :: 44
/// @brief Original complete abb_rapid_msgs/LoadData codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsLoadData_Codec_Identity :: "UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d"
/// @brief Traverse every original field of complete abb_rapid_msgs/LoadData.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_msgsLoadData :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsLoadData, cursor: ^wire.Cursor)
{
    value.field_mass = wire.float32(cursor, value.field_mass)
    fields_Ros1Abb_rapid_msgsPos(&value.field_cog, cursor)
    fields_Ros1Abb_rapid_msgsOrient(&value.field_aom, cursor)
    value.field_ix = wire.float32(cursor, value.field_ix)
    value.field_iy = wire.float32(cursor, value.field_iy)
    value.field_iz = wire.float32(cursor, value.field_iz)
}
/// @brief Encode every complete original abb_rapid_msgs/LoadData field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_msgsLoadData :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsLoadData, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 44)], writing = true}
    fields_Ros1Abb_rapid_msgsLoadData(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/LoadData.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_msgsLoadData :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_msgsLoadData, code: u32)
{
    if len(bytes) < 44 || len(bytes) > 44 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_msgsLoadData(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/Pose value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 28..28 bytes.
Ros1Abb_rapid_msgsPose :: struct {
    /// @brief Original abb_rapid_msgs/Pose.trans field.
    /// @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_trans: Ros1Abb_rapid_msgsPos,
    /// @brief Original abb_rapid_msgs/Pose.rot field.
    /// @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_rot: Ros1Abb_rapid_msgsOrient,
}
/// @brief Original complete abb_rapid_msgs/Pose minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsPose_Minimum_Wire_Bytes :: 28
/// @brief Original complete abb_rapid_msgs/Pose maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsPose_Maximum_Wire_Bytes :: 28
/// @brief Original complete abb_rapid_msgs/Pose codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsPose_Codec_Identity :: "UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99"
/// @brief Traverse every original field of complete abb_rapid_msgs/Pose.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_msgsPose :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsPose, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_rapid_msgsPos(&value.field_trans, cursor)
    fields_Ros1Abb_rapid_msgsOrient(&value.field_rot, cursor)
}
/// @brief Encode every complete original abb_rapid_msgs/Pose field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_msgsPose :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsPose, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 28)], writing = true}
    fields_Ros1Abb_rapid_msgsPose(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/Pose.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_msgsPose :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_msgsPose, code: u32)
{
    if len(bytes) < 28 || len(bytes) > 28 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_msgsPose(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/RobTarget value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 68..68 bytes.
Ros1Abb_rapid_msgsRobTarget :: struct {
    /// @brief Original abb_rapid_msgs/RobTarget.trans field.
    /// @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_trans: Ros1Abb_rapid_msgsPos,
    /// @brief Original abb_rapid_msgs/RobTarget.rot field.
    /// @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_rot: Ros1Abb_rapid_msgsOrient,
    /// @brief Original abb_rapid_msgs/RobTarget.robconf field.
    /// @details Original type abb_rapid_msgs/ConfData. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_robconf: Ros1Abb_rapid_msgsConfData,
    /// @brief Original abb_rapid_msgs/RobTarget.extax field.
    /// @details Original type abb_rapid_msgs/ExtJoint. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_extax: Ros1Abb_rapid_msgsExtJoint,
}
/// @brief Original complete abb_rapid_msgs/RobTarget minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsRobTarget_Minimum_Wire_Bytes :: 68
/// @brief Original complete abb_rapid_msgs/RobTarget maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsRobTarget_Maximum_Wire_Bytes :: 68
/// @brief Original complete abb_rapid_msgs/RobTarget codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsRobTarget_Codec_Identity :: "UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce"
/// @brief Traverse every original field of complete abb_rapid_msgs/RobTarget.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_msgsRobTarget :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsRobTarget, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_rapid_msgsPos(&value.field_trans, cursor)
    fields_Ros1Abb_rapid_msgsOrient(&value.field_rot, cursor)
    fields_Ros1Abb_rapid_msgsConfData(&value.field_robconf, cursor)
    fields_Ros1Abb_rapid_msgsExtJoint(&value.field_extax, cursor)
}
/// @brief Encode every complete original abb_rapid_msgs/RobTarget field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_msgsRobTarget :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsRobTarget, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 68)], writing = true}
    fields_Ros1Abb_rapid_msgsRobTarget(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/RobTarget.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_msgsRobTarget :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_msgsRobTarget, code: u32)
{
    if len(bytes) < 68 || len(bytes) > 68 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_msgsRobTarget(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/ToolData value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 73..73 bytes.
Ros1Abb_rapid_msgsToolData :: struct {
    /// @brief Original abb_rapid_msgs/ToolData.robhold field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_robhold: bool,
    /// @brief Original abb_rapid_msgs/ToolData.tframe field.
    /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_tframe: Ros1Abb_rapid_msgsPose,
    /// @brief Original abb_rapid_msgs/ToolData.tload field.
    /// @details Original type abb_rapid_msgs/LoadData. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_tload: Ros1Abb_rapid_msgsLoadData,
}
/// @brief Original complete abb_rapid_msgs/ToolData minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsToolData_Minimum_Wire_Bytes :: 73
/// @brief Original complete abb_rapid_msgs/ToolData maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsToolData_Maximum_Wire_Bytes :: 73
/// @brief Original complete abb_rapid_msgs/ToolData codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsToolData_Codec_Identity :: "UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba"
/// @brief Traverse every original field of complete abb_rapid_msgs/ToolData.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_msgsToolData :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsToolData, cursor: ^wire.Cursor)
{
    value.field_robhold = wire.boolean(cursor, value.field_robhold)
    fields_Ros1Abb_rapid_msgsPose(&value.field_tframe, cursor)
    fields_Ros1Abb_rapid_msgsLoadData(&value.field_tload, cursor)
}
/// @brief Encode every complete original abb_rapid_msgs/ToolData field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_msgsToolData :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsToolData, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 73)], writing = true}
    fields_Ros1Abb_rapid_msgsToolData(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/ToolData.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_msgsToolData :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_msgsToolData, code: u32)
{
    if len(bytes) < 73 || len(bytes) > 73 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_msgsToolData(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_msgs/WObjData value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 62..574 bytes.
Ros1Abb_rapid_msgsWObjData :: struct {
    /// @brief Original abb_rapid_msgs/WObjData.robhold field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_robhold: bool,
    /// @brief Original abb_rapid_msgs/WObjData.ufprog field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ufprog: bool,
    /// @brief Original abb_rapid_msgs/WObjData.ufmec field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_ufmec: wire.Text(512, false),
    /// @brief Original abb_rapid_msgs/WObjData.uframe field.
    /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_uframe: Ros1Abb_rapid_msgsPose,
    /// @brief Original abb_rapid_msgs/WObjData.oframe field.
    /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_oframe: Ros1Abb_rapid_msgsPose,
}
/// @brief Original complete abb_rapid_msgs/WObjData minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsWObjData_Minimum_Wire_Bytes :: 62
/// @brief Original complete abb_rapid_msgs/WObjData maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsWObjData_Maximum_Wire_Bytes :: 574
/// @brief Original complete abb_rapid_msgs/WObjData codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_msgsWObjData_Codec_Identity :: "UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f"
/// @brief Traverse every original field of complete abb_rapid_msgs/WObjData.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_msgsWObjData :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsWObjData, cursor: ^wire.Cursor)
{
    value.field_robhold = wire.boolean(cursor, value.field_robhold)
    value.field_ufprog = wire.boolean(cursor, value.field_ufprog)
    wire.text(cursor, &value.field_ufmec)
    fields_Ros1Abb_rapid_msgsPose(&value.field_uframe, cursor)
    fields_Ros1Abb_rapid_msgsPose(&value.field_oframe, cursor)
}
/// @brief Encode every complete original abb_rapid_msgs/WObjData field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_msgsWObjData :: proc "contextless"(
    value: ^Ros1Abb_rapid_msgsWObjData, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 574)], writing = true}
    fields_Ros1Abb_rapid_msgsWObjData(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_msgs/WObjData.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_msgsWObjData :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_msgsWObjData, code: u32)
{
    if len(bytes) < 62 || len(bytes) > 574 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_msgsWObjData(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/EGMActivateSettings value.
/// @details Retain all 8 original fields and 0 constants. Wire extent 204..716 bytes.
Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.tool field.
    /// @details Original type abb_rapid_msgs/ToolData. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_tool: Ros1Abb_rapid_msgsToolData,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.wobj field.
    /// @details Original type abb_rapid_msgs/WObjData. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_wobj: Ros1Abb_rapid_msgsWObjData,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.correction_frame field.
    /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_correction_frame: Ros1Abb_rapid_msgsPose,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.sensor_frame field.
    /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_sensor_frame: Ros1Abb_rapid_msgsPose,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.cond_min_max field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cond_min_max: f32,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.lp_filter field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_lp_filter: f32,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.sample_rate field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sample_rate: u8,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.max_speed_deviation field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_max_speed_deviation: f32,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMActivateSettings minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_Minimum_Wire_Bytes :: 204
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMActivateSettings maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_Maximum_Wire_Bytes :: 716
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMActivateSettings codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings_Codec_Identity :: "UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/EGMActivateSettings.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_rapid_msgsToolData(&value.field_tool, cursor)
    fields_Ros1Abb_rapid_msgsWObjData(&value.field_wobj, cursor)
    fields_Ros1Abb_rapid_msgsPose(&value.field_correction_frame, cursor)
    fields_Ros1Abb_rapid_msgsPose(&value.field_sensor_frame, cursor)
    value.field_cond_min_max = wire.float32(cursor, value.field_cond_min_max)
    value.field_lp_filter = wire.float32(cursor, value.field_lp_filter)
    value.field_sample_rate = u8(wire.number(cursor, u64(value.field_sample_rate), 1))
    value.field_max_speed_deviation = wire.float32(cursor, value.field_max_speed_deviation)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/EGMActivateSettings field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 716)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/EGMActivateSettings.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings, code: u32)
{
    if len(bytes) < 204 || len(bytes) > 716 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/EGMRunSettings value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 40..40 bytes.
Ros1Abb_rapid_sm_addin_msgsEGMRunSettings :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.cond_time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cond_time: f32,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.ramp_in_time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ramp_in_time: f32,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.offset field.
    /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_offset: Ros1Abb_rapid_msgsPose,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.pos_corr_gain field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_pos_corr_gain: f32,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMRunSettings minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMRunSettings_Minimum_Wire_Bytes :: 40
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMRunSettings maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMRunSettings_Maximum_Wire_Bytes :: 40
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMRunSettings codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMRunSettings_Codec_Identity :: "UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/EGMRunSettings.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsEGMRunSettings, cursor: ^wire.Cursor)
{
    value.field_cond_time = wire.float32(cursor, value.field_cond_time)
    value.field_ramp_in_time = wire.float32(cursor, value.field_ramp_in_time)
    fields_Ros1Abb_rapid_msgsPose(&value.field_offset, cursor)
    value.field_pos_corr_gain = wire.float32(cursor, value.field_pos_corr_gain)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/EGMRunSettings field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsEGMRunSettings, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 40)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/EGMRunSettings.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsEGMRunSettings, code: u32)
{
    if len(bytes) < 40 || len(bytes) > 40 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/EGMSetupSettings value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..5 bytes.
Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSetupSettings.use_filtering field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_filtering: bool,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSetupSettings.comm_timeout field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_comm_timeout: f32,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMSetupSettings minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings_Minimum_Wire_Bytes :: 5
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMSetupSettings maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings_Maximum_Wire_Bytes :: 5
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMSetupSettings codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings_Codec_Identity :: "UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/EGMSetupSettings.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings, cursor: ^wire.Cursor)
{
    value.field_use_filtering = wire.boolean(cursor, value.field_use_filtering)
    value.field_comm_timeout = wire.float32(cursor, value.field_comm_timeout)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/EGMSetupSettings field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/EGMSetupSettings.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 5 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/EGMStopSettings value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros1Abb_rapid_sm_addin_msgsEGMStopSettings :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/EGMStopSettings.ramp_out_time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ramp_out_time: f32,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMStopSettings minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMStopSettings_Minimum_Wire_Bytes :: 4
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMStopSettings maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMStopSettings_Maximum_Wire_Bytes :: 4
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMStopSettings codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMStopSettings_Codec_Identity :: "UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/EGMStopSettings.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsEGMStopSettings, cursor: ^wire.Cursor)
{
    value.field_ramp_out_time = wire.float32(cursor, value.field_ramp_out_time)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/EGMStopSettings field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsEGMStopSettings, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/EGMStopSettings.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsEGMStopSettings, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/EGMSettings value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 255..767 bytes.
Ros1Abb_rapid_sm_addin_msgsEGMSettings :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.allow_egm_motions field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_allow_egm_motions: bool,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.use_presync field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_presync: bool,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.setup_uc field.
    /// @details Original type abb_rapid_sm_addin_msgs/EGMSetupSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_setup_uc: Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.activate field.
    /// @details Original type abb_rapid_sm_addin_msgs/EGMActivateSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_activate: Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.run field.
    /// @details Original type abb_rapid_sm_addin_msgs/EGMRunSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_run: Ros1Abb_rapid_sm_addin_msgsEGMRunSettings,
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.stop field.
    /// @details Original type abb_rapid_sm_addin_msgs/EGMStopSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_stop: Ros1Abb_rapid_sm_addin_msgsEGMStopSettings,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMSettings minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMSettings_Minimum_Wire_Bytes :: 255
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMSettings maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMSettings_Maximum_Wire_Bytes :: 767
/// @brief Original complete abb_rapid_sm_addin_msgs/EGMSettings codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsEGMSettings_Codec_Identity :: "UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/EGMSettings.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsEGMSettings :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsEGMSettings, cursor: ^wire.Cursor)
{
    value.field_allow_egm_motions = wire.boolean(cursor, value.field_allow_egm_motions)
    value.field_use_presync = wire.boolean(cursor, value.field_use_presync)
    fields_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings(&value.field_setup_uc, cursor)
    fields_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings(&value.field_activate, cursor)
    fields_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings(&value.field_run, cursor)
    fields_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings(&value.field_stop, cursor)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/EGMSettings field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsEGMSettings :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsEGMSettings, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 767)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsEGMSettings(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/EGMSettings.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsEGMSettings :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsEGMSettings, code: u32)
{
    if len(bytes) < 255 || len(bytes) > 767 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsEGMSettings(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..68 bytes.
Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_task: wire.Text(64, false),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest_Minimum_Wire_Bytes :: 4
/// @brief Original complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest_Maximum_Wire_Bytes :: 68
/// @brief Original complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest_Codec_Identity :: "UWVMROS1_42cca857367e08720f989416d18d6a1f7d677f7e5bf49435b9735a9eb10a8f9c"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_task)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 68)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 68 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 261..1285 bytes.
Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.settings field.
    /// @details Original type abb_rapid_sm_addin_msgs/EGMSettings. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_settings: Ros1Abb_rapid_sm_addin_msgsEGMSettings,
    /// @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse_Minimum_Wire_Bytes :: 261
/// @brief Original complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse_Maximum_Wire_Bytes :: 1285
/// @brief Original complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse_Codec_Identity :: "UWVMROS1_094fd8b0b992c26d708bbd09952d36a3921ad5e5e66f45edb9d19af5ec3472bc"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_rapid_sm_addin_msgsEGMSettings(&value.field_settings, cursor)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1285)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse, code: u32)
{
    if len(bytes) < 261 || len(bytes) > 1285 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/StateMachineState value.
/// @details Retain all 3 original fields and 12 constants. Wire extent 6..518 bytes.
Ros1Abb_rapid_sm_addin_msgsStateMachineState :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.rapid_task field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_rapid_task: wire.Text(512, false),
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.sm_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sm_state: u8,
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.egm_action field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_egm_action: u8,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/StateMachineState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_rapid_sm_addin_msgs/StateMachineState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_rapid_sm_addin_msgs/StateMachineState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_Codec_Identity :: "UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb"
/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_UNKNOWN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_UNKNOWN :: 1
/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_IDLE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_IDLE :: 2
/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_INITIALIZE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_INITIALIZE :: 3
/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_RUN_RAPID_ROUTINE :: 4
/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_EGM_ROUTINE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_SM_STATE_RUN_EGM_ROUTINE :: 5
/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_UNKNOWN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_UNKNOWN :: 1
/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_NONE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_NONE :: 2
/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_JOINT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_RUN_JOINT :: 3
/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_POSE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_RUN_POSE :: 4
/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_STOP :: 5
/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_START_STREAM constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_START_STREAM :: 6
/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP_STREAM constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsStateMachineState_EGM_ACTION_STOP_STREAM :: 7
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/StateMachineState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsStateMachineState :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsStateMachineState, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_rapid_task)
    value.field_sm_state = u8(wire.number(cursor, u64(value.field_sm_state), 1))
    value.field_egm_action = u8(wire.number(cursor, u64(value.field_egm_action), 1))
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/StateMachineState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsStateMachineState :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsStateMachineState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsStateMachineState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/StateMachineState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsStateMachineState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsStateMachineState, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsStateMachineState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/RuntimeState value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 20..8372 bytes.
Ros1Abb_rapid_sm_addin_msgsRuntimeState :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/RuntimeState.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    field_header: Ros1Std_msgsHeader,
    /// @brief Original abb_rapid_sm_addin_msgs/RuntimeState.state_machines field.
    /// @details Original type abb_rapid_sm_addin_msgs/StateMachineState. Shape sequence;
    /// bound/count 16 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_state_machines: wire.Sequence(Ros1Abb_rapid_sm_addin_msgsStateMachineState, 16),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/RuntimeState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsRuntimeState_Minimum_Wire_Bytes :: 20
/// @brief Original complete abb_rapid_sm_addin_msgs/RuntimeState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsRuntimeState_Maximum_Wire_Bytes :: 8372
/// @brief Original complete abb_rapid_sm_addin_msgs/RuntimeState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsRuntimeState_Codec_Identity :: "UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/RuntimeState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsRuntimeState :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsRuntimeState, cursor: ^wire.Cursor)
{
    fields_Ros1Std_msgsHeader(&value.field_header, cursor)
    value.field_state_machines.size = u32(wire.number(cursor, u64(value.field_state_machines.size), 4))
    if value.field_state_machines.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_state_machines.size) {
        fields_Ros1Abb_rapid_sm_addin_msgsStateMachineState(&value.field_state_machines.items[index], cursor)
    }
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/RuntimeState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsRuntimeState :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsRuntimeState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8372)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsRuntimeState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/RuntimeState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsRuntimeState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsRuntimeState, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 8372 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsRuntimeState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 259..835 bytes.
Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_task: wire.Text(64, false),
    /// @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.settings field.
    /// @details Original type abb_rapid_sm_addin_msgs/EGMSettings. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_settings: Ros1Abb_rapid_sm_addin_msgsEGMSettings,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest_Minimum_Wire_Bytes :: 259
/// @brief Original complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest_Maximum_Wire_Bytes :: 835
/// @brief Original complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest_Codec_Identity :: "UWVMROS1_fe85c34f8dff2c0a547f89385d75771af13a03d997b880ab7be2eb84ea800155"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_task)
    fields_Ros1Abb_rapid_sm_addin_msgsEGMSettings(&value.field_settings, cursor)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 835)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest, code: u32)
{
    if len(bytes) < 259 || len(bytes) > 835 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse_Codec_Identity :: "UWVMROS1_c0d4e594a51a6cdd245ad03b6e27bbdc298c5c9fbe26cc25fa3594deef9b2591"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..584 bytes.
Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_task: wire.Text(64, false),
    /// @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.routine field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_routine: wire.Text(512, false),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest_Minimum_Wire_Bytes :: 8
/// @brief Original complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest_Maximum_Wire_Bytes :: 584
/// @brief Original complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest_Codec_Identity :: "UWVMROS1_b16ba3e98ee1d45864532b01f914746f041e49463b9330ef6056e427d199a5a3"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_task)
    wire.text(cursor, &value.field_routine)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 584)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 584 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse_Codec_Identity :: "UWVMROS1_44de2385f12a8612fa75ca7c3f97b07f22d04e920bdeca0f0bd7fed5322c680e"
/// @brief Traverse every original field of complete
/// abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/SetSGCommandRequest value.
/// @details Retain all 3 original fields and 15 constants. Wire extent 9..73 bytes.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_task: wire.Text(64, false),
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.command field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_command: u8,
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.target_position field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_target_position: f32,
}
/// @brief Original complete abb_rapid_sm_addin_msgs/SetSGCommandRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_Minimum_Wire_Bytes :: 9
/// @brief Original complete abb_rapid_sm_addin_msgs/SetSGCommandRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_Maximum_Wire_Bytes :: 73
/// @brief Original complete abb_rapid_sm_addin_msgs/SetSGCommandRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_Codec_Identity :: "UWVMROS1_e39d7fee66c1efb9ea963216823f6e10bd632d78634d8c47f3283a1a1779f0c2"
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_UNKNOWN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_UNKNOWN :: 1
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_NONE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_NONE :: 2
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_INITIALIZE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_INITIALIZE :: 3
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_CALIBRATE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_CALIBRATE :: 4
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_MOVE_TO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_MOVE_TO :: 5
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_IN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_GRIP_IN :: 6
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_OUT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_GRIP_OUT :: 7
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_ON_1 :: 8
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_ON_2 :: 9
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_OFF_1 :: 10
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_BLOW_OFF_2 :: 11
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_ON_1 :: 12
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_ON_2 :: 13
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_1 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_OFF_1 :: 14
/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_2 constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest_SG_COMMAND_VACUUM_OFF_2 :: 15
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/SetSGCommandRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_task)
    value.field_command = u8(wire.number(cursor, u64(value.field_command), 1))
    value.field_target_position = wire.float32(cursor, value.field_target_position)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/SetSGCommandRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 73)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/SetSGCommandRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest, code: u32)
{
    if len(bytes) < 9 || len(bytes) > 73 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_rapid_sm_addin_msgs/SetSGCommandResponse value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse :: struct {
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_rapid_sm_addin_msgs/SetSGCommandResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_rapid_sm_addin_msgs/SetSGCommandResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_rapid_sm_addin_msgs/SetSGCommandResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse_Codec_Identity :: "UWVMROS1_2f22b2098d86dd0764277247eb7f64dccecebf0cddce85654b01c1928eb9c192"
/// @brief Traverse every original field of complete abb_rapid_sm_addin_msgs/SetSGCommandResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_rapid_sm_addin_msgs/SetSGCommandResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse :: proc "contextless"(
    value: ^Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_rapid_sm_addin_msgs/SetSGCommandResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetFileContentsRequest value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..516 bytes.
Ros1Abb_robot_msgsGetFileContentsRequest :: struct {
    /// @brief Original abb_robot_msgs/GetFileContentsRequest.filename field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_filename: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/GetFileContentsRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetFileContentsRequest_Minimum_Wire_Bytes :: 4
/// @brief Original complete abb_robot_msgs/GetFileContentsRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetFileContentsRequest_Maximum_Wire_Bytes :: 516
/// @brief Original complete abb_robot_msgs/GetFileContentsRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetFileContentsRequest_Codec_Identity :: "UWVMROS1_75f5802b385cc1efb524fadea657fda1d5cc4298c5720222d33cd3dd39656f21"
/// @brief Traverse every original field of complete abb_robot_msgs/GetFileContentsRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetFileContentsRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetFileContentsRequest, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_filename)
}
/// @brief Encode every complete original abb_robot_msgs/GetFileContentsRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetFileContentsRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetFileContentsRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 516)], writing = true}
    fields_Ros1Abb_robot_msgsGetFileContentsRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetFileContentsRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetFileContentsRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetFileContentsRequest, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 516 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetFileContentsRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetFileContentsResponse value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..4618 bytes.
Ros1Abb_robot_msgsGetFileContentsResponse :: struct {
    /// @brief Original abb_robot_msgs/GetFileContentsResponse.contents field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_contents: wire.Text(4096, false),
    /// @brief Original abb_robot_msgs/GetFileContentsResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/GetFileContentsResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/GetFileContentsResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetFileContentsResponse_Minimum_Wire_Bytes :: 10
/// @brief Original complete abb_robot_msgs/GetFileContentsResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetFileContentsResponse_Maximum_Wire_Bytes :: 4618
/// @brief Original complete abb_robot_msgs/GetFileContentsResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetFileContentsResponse_Codec_Identity :: "UWVMROS1_693b53ed168f81a7c93ac8083977c4f8bd6f4a3999d079f5b47029699ba68fdb"
/// @brief Traverse every original field of complete abb_robot_msgs/GetFileContentsResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetFileContentsResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetFileContentsResponse, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_contents)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/GetFileContentsResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetFileContentsResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetFileContentsResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4618)], writing = true}
    fields_Ros1Abb_robot_msgsGetFileContentsResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetFileContentsResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetFileContentsResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetFileContentsResponse, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 4618 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetFileContentsResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetIOSignalRequest value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..516 bytes.
Ros1Abb_robot_msgsGetIOSignalRequest :: struct {
    /// @brief Original abb_robot_msgs/GetIOSignalRequest.signal field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_signal: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/GetIOSignalRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetIOSignalRequest_Minimum_Wire_Bytes :: 4
/// @brief Original complete abb_robot_msgs/GetIOSignalRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetIOSignalRequest_Maximum_Wire_Bytes :: 516
/// @brief Original complete abb_robot_msgs/GetIOSignalRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetIOSignalRequest_Codec_Identity :: "UWVMROS1_d98f7577756b476cac0dd325d45f333fcd2b735df7dce58fb660790b5a91f83b"
/// @brief Traverse every original field of complete abb_robot_msgs/GetIOSignalRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetIOSignalRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetIOSignalRequest, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_signal)
}
/// @brief Encode every complete original abb_robot_msgs/GetIOSignalRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetIOSignalRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetIOSignalRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 516)], writing = true}
    fields_Ros1Abb_robot_msgsGetIOSignalRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetIOSignalRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetIOSignalRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetIOSignalRequest, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 516 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetIOSignalRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetIOSignalResponse value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..1034 bytes.
Ros1Abb_robot_msgsGetIOSignalResponse :: struct {
    /// @brief Original abb_robot_msgs/GetIOSignalResponse.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_value: wire.Text(512, false),
    /// @brief Original abb_robot_msgs/GetIOSignalResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/GetIOSignalResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/GetIOSignalResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetIOSignalResponse_Minimum_Wire_Bytes :: 10
/// @brief Original complete abb_robot_msgs/GetIOSignalResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetIOSignalResponse_Maximum_Wire_Bytes :: 1034
/// @brief Original complete abb_robot_msgs/GetIOSignalResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetIOSignalResponse_Codec_Identity :: "UWVMROS1_10a66146c4815b0d758ec81dde1c552695c97a8727ee995299018b23f129d79e"
/// @brief Traverse every original field of complete abb_robot_msgs/GetIOSignalResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetIOSignalResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetIOSignalResponse, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_value)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/GetIOSignalResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetIOSignalResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetIOSignalResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1034)], writing = true}
    fields_Ros1Abb_robot_msgsGetIOSignalResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetIOSignalResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetIOSignalResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetIOSignalResponse, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 1034 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetIOSignalResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/RAPIDSymbolPath value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 12..204 bytes.
Ros1Abb_robot_msgsRAPIDSymbolPath :: struct {
    /// @brief Original abb_robot_msgs/RAPIDSymbolPath.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_task: wire.Text(64, false),
    /// @brief Original abb_robot_msgs/RAPIDSymbolPath.module field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_module: wire.Text(64, false),
    /// @brief Original abb_robot_msgs/RAPIDSymbolPath.symbol field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_symbol: wire.Text(64, false),
}
/// @brief Original complete abb_robot_msgs/RAPIDSymbolPath minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsRAPIDSymbolPath_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_robot_msgs/RAPIDSymbolPath maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsRAPIDSymbolPath_Maximum_Wire_Bytes :: 204
/// @brief Original complete abb_robot_msgs/RAPIDSymbolPath codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsRAPIDSymbolPath_Codec_Identity :: "UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2"
/// @brief Traverse every original field of complete abb_robot_msgs/RAPIDSymbolPath.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsRAPIDSymbolPath :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsRAPIDSymbolPath, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_task)
    wire.text(cursor, &value.field_module)
    wire.text(cursor, &value.field_symbol)
}
/// @brief Encode every complete original abb_robot_msgs/RAPIDSymbolPath field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsRAPIDSymbolPath :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsRAPIDSymbolPath, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 204)], writing = true}
    fields_Ros1Abb_robot_msgsRAPIDSymbolPath(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/RAPIDSymbolPath.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsRAPIDSymbolPath :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsRAPIDSymbolPath, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 204 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsRAPIDSymbolPath(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetRAPIDBoolRequest value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 12..204 bytes.
Ros1Abb_robot_msgsGetRAPIDBoolRequest :: struct {
    /// @brief Original abb_robot_msgs/GetRAPIDBoolRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath,
}
/// @brief Original complete abb_robot_msgs/GetRAPIDBoolRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDBoolRequest_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_robot_msgs/GetRAPIDBoolRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDBoolRequest_Maximum_Wire_Bytes :: 204
/// @brief Original complete abb_robot_msgs/GetRAPIDBoolRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDBoolRequest_Codec_Identity :: "UWVMROS1_46e49c0d6796175d0c56460dd4c7d2557deaa8db4f1a3bec40b53636d3b44b96"
/// @brief Traverse every original field of complete abb_robot_msgs/GetRAPIDBoolRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetRAPIDBoolRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDBoolRequest, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_robot_msgsRAPIDSymbolPath(&value.field_path, cursor)
}
/// @brief Encode every complete original abb_robot_msgs/GetRAPIDBoolRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetRAPIDBoolRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDBoolRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 204)], writing = true}
    fields_Ros1Abb_robot_msgsGetRAPIDBoolRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetRAPIDBoolRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetRAPIDBoolRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetRAPIDBoolRequest, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 204 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetRAPIDBoolRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetRAPIDBoolResponse value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 7..519 bytes.
Ros1Abb_robot_msgsGetRAPIDBoolResponse :: struct {
    /// @brief Original abb_robot_msgs/GetRAPIDBoolResponse.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: bool,
    /// @brief Original abb_robot_msgs/GetRAPIDBoolResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/GetRAPIDBoolResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/GetRAPIDBoolResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDBoolResponse_Minimum_Wire_Bytes :: 7
/// @brief Original complete abb_robot_msgs/GetRAPIDBoolResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDBoolResponse_Maximum_Wire_Bytes :: 519
/// @brief Original complete abb_robot_msgs/GetRAPIDBoolResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDBoolResponse_Codec_Identity :: "UWVMROS1_bfe21e95cb79f1d9bc1bc1dc2f61c744a2a7dc49e5a5ed07b6c8619344b97b3f"
/// @brief Traverse every original field of complete abb_robot_msgs/GetRAPIDBoolResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetRAPIDBoolResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDBoolResponse, cursor: ^wire.Cursor)
{
    value.field_value = wire.boolean(cursor, value.field_value)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/GetRAPIDBoolResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetRAPIDBoolResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDBoolResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 519)], writing = true}
    fields_Ros1Abb_robot_msgsGetRAPIDBoolResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetRAPIDBoolResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetRAPIDBoolResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetRAPIDBoolResponse, code: u32)
{
    if len(bytes) < 7 || len(bytes) > 519 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetRAPIDBoolResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetRAPIDDnumRequest value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 12..204 bytes.
Ros1Abb_robot_msgsGetRAPIDDnumRequest :: struct {
    /// @brief Original abb_robot_msgs/GetRAPIDDnumRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath,
}
/// @brief Original complete abb_robot_msgs/GetRAPIDDnumRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDDnumRequest_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_robot_msgs/GetRAPIDDnumRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDDnumRequest_Maximum_Wire_Bytes :: 204
/// @brief Original complete abb_robot_msgs/GetRAPIDDnumRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDDnumRequest_Codec_Identity :: "UWVMROS1_9058d8774de0da657344a00d75a7f75878da2b0453bf25708bc8ed7f45c90c9d"
/// @brief Traverse every original field of complete abb_robot_msgs/GetRAPIDDnumRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetRAPIDDnumRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDDnumRequest, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_robot_msgsRAPIDSymbolPath(&value.field_path, cursor)
}
/// @brief Encode every complete original abb_robot_msgs/GetRAPIDDnumRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetRAPIDDnumRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDDnumRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 204)], writing = true}
    fields_Ros1Abb_robot_msgsGetRAPIDDnumRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetRAPIDDnumRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetRAPIDDnumRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetRAPIDDnumRequest, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 204 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetRAPIDDnumRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetRAPIDDnumResponse value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 14..526 bytes.
Ros1Abb_robot_msgsGetRAPIDDnumResponse :: struct {
    /// @brief Original abb_robot_msgs/GetRAPIDDnumResponse.value field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f64,
    /// @brief Original abb_robot_msgs/GetRAPIDDnumResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/GetRAPIDDnumResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/GetRAPIDDnumResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDDnumResponse_Minimum_Wire_Bytes :: 14
/// @brief Original complete abb_robot_msgs/GetRAPIDDnumResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDDnumResponse_Maximum_Wire_Bytes :: 526
/// @brief Original complete abb_robot_msgs/GetRAPIDDnumResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDDnumResponse_Codec_Identity :: "UWVMROS1_9c209b4b12d733e33b76cc33ae93b6d561ce1eb7f8864429a56bd073317a01b3"
/// @brief Traverse every original field of complete abb_robot_msgs/GetRAPIDDnumResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetRAPIDDnumResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDDnumResponse, cursor: ^wire.Cursor)
{
    value.field_value = wire.float64(cursor, value.field_value)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/GetRAPIDDnumResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetRAPIDDnumResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDDnumResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 526)], writing = true}
    fields_Ros1Abb_robot_msgsGetRAPIDDnumResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetRAPIDDnumResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetRAPIDDnumResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetRAPIDDnumResponse, code: u32)
{
    if len(bytes) < 14 || len(bytes) > 526 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetRAPIDDnumResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetRAPIDNumRequest value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 12..204 bytes.
Ros1Abb_robot_msgsGetRAPIDNumRequest :: struct {
    /// @brief Original abb_robot_msgs/GetRAPIDNumRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath,
}
/// @brief Original complete abb_robot_msgs/GetRAPIDNumRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDNumRequest_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_robot_msgs/GetRAPIDNumRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDNumRequest_Maximum_Wire_Bytes :: 204
/// @brief Original complete abb_robot_msgs/GetRAPIDNumRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDNumRequest_Codec_Identity :: "UWVMROS1_a316395c8a19b7c0a9c3a555e625fffc7d647c7b567f38c53b1c3735b50ee910"
/// @brief Traverse every original field of complete abb_robot_msgs/GetRAPIDNumRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetRAPIDNumRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDNumRequest, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_robot_msgsRAPIDSymbolPath(&value.field_path, cursor)
}
/// @brief Encode every complete original abb_robot_msgs/GetRAPIDNumRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetRAPIDNumRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDNumRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 204)], writing = true}
    fields_Ros1Abb_robot_msgsGetRAPIDNumRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetRAPIDNumRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetRAPIDNumRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetRAPIDNumRequest, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 204 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetRAPIDNumRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetRAPIDNumResponse value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..522 bytes.
Ros1Abb_robot_msgsGetRAPIDNumResponse :: struct {
    /// @brief Original abb_robot_msgs/GetRAPIDNumResponse.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f32,
    /// @brief Original abb_robot_msgs/GetRAPIDNumResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/GetRAPIDNumResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/GetRAPIDNumResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDNumResponse_Minimum_Wire_Bytes :: 10
/// @brief Original complete abb_robot_msgs/GetRAPIDNumResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDNumResponse_Maximum_Wire_Bytes :: 522
/// @brief Original complete abb_robot_msgs/GetRAPIDNumResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDNumResponse_Codec_Identity :: "UWVMROS1_1573cba9a9046a6b304a49e3a77266fa0d6f615d2ea9a24692c25616970fd9b0"
/// @brief Traverse every original field of complete abb_robot_msgs/GetRAPIDNumResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetRAPIDNumResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDNumResponse, cursor: ^wire.Cursor)
{
    value.field_value = wire.float32(cursor, value.field_value)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/GetRAPIDNumResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetRAPIDNumResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDNumResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 522)], writing = true}
    fields_Ros1Abb_robot_msgsGetRAPIDNumResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetRAPIDNumResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetRAPIDNumResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetRAPIDNumResponse, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 522 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetRAPIDNumResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetRAPIDStringRequest value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 12..204 bytes.
Ros1Abb_robot_msgsGetRAPIDStringRequest :: struct {
    /// @brief Original abb_robot_msgs/GetRAPIDStringRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath,
}
/// @brief Original complete abb_robot_msgs/GetRAPIDStringRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDStringRequest_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_robot_msgs/GetRAPIDStringRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDStringRequest_Maximum_Wire_Bytes :: 204
/// @brief Original complete abb_robot_msgs/GetRAPIDStringRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDStringRequest_Codec_Identity :: "UWVMROS1_56514142e9e064aa43d09078b49ed8ee0366189727c35a9bc130b35007da4c9c"
/// @brief Traverse every original field of complete abb_robot_msgs/GetRAPIDStringRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetRAPIDStringRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDStringRequest, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_robot_msgsRAPIDSymbolPath(&value.field_path, cursor)
}
/// @brief Encode every complete original abb_robot_msgs/GetRAPIDStringRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetRAPIDStringRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDStringRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 204)], writing = true}
    fields_Ros1Abb_robot_msgsGetRAPIDStringRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetRAPIDStringRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetRAPIDStringRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetRAPIDStringRequest, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 204 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetRAPIDStringRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetRAPIDStringResponse value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..1034 bytes.
Ros1Abb_robot_msgsGetRAPIDStringResponse :: struct {
    /// @brief Original abb_robot_msgs/GetRAPIDStringResponse.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_value: wire.Text(512, false),
    /// @brief Original abb_robot_msgs/GetRAPIDStringResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/GetRAPIDStringResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/GetRAPIDStringResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDStringResponse_Minimum_Wire_Bytes :: 10
/// @brief Original complete abb_robot_msgs/GetRAPIDStringResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDStringResponse_Maximum_Wire_Bytes :: 1034
/// @brief Original complete abb_robot_msgs/GetRAPIDStringResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDStringResponse_Codec_Identity :: "UWVMROS1_d1188827af3c307a721f8128b6f14fa6020f3187afce8a4162ce6562cdd1c854"
/// @brief Traverse every original field of complete abb_robot_msgs/GetRAPIDStringResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetRAPIDStringResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDStringResponse, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_value)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/GetRAPIDStringResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetRAPIDStringResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDStringResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1034)], writing = true}
    fields_Ros1Abb_robot_msgsGetRAPIDStringResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetRAPIDStringResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetRAPIDStringResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetRAPIDStringResponse, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 1034 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetRAPIDStringResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetRAPIDSymbolRequest value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 12..204 bytes.
Ros1Abb_robot_msgsGetRAPIDSymbolRequest :: struct {
    /// @brief Original abb_robot_msgs/GetRAPIDSymbolRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath,
}
/// @brief Original complete abb_robot_msgs/GetRAPIDSymbolRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDSymbolRequest_Minimum_Wire_Bytes :: 12
/// @brief Original complete abb_robot_msgs/GetRAPIDSymbolRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDSymbolRequest_Maximum_Wire_Bytes :: 204
/// @brief Original complete abb_robot_msgs/GetRAPIDSymbolRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDSymbolRequest_Codec_Identity :: "UWVMROS1_31302ad912a8ff39b56a429bc9dae22cbfc2c2101b8cd05162d00d9206aecf5b"
/// @brief Traverse every original field of complete abb_robot_msgs/GetRAPIDSymbolRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetRAPIDSymbolRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDSymbolRequest, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_robot_msgsRAPIDSymbolPath(&value.field_path, cursor)
}
/// @brief Encode every complete original abb_robot_msgs/GetRAPIDSymbolRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetRAPIDSymbolRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDSymbolRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 204)], writing = true}
    fields_Ros1Abb_robot_msgsGetRAPIDSymbolRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetRAPIDSymbolRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetRAPIDSymbolRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetRAPIDSymbolRequest, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 204 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetRAPIDSymbolRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetRAPIDSymbolResponse value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..1034 bytes.
Ros1Abb_robot_msgsGetRAPIDSymbolResponse :: struct {
    /// @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_value: wire.Text(512, false),
    /// @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/GetRAPIDSymbolResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDSymbolResponse_Minimum_Wire_Bytes :: 10
/// @brief Original complete abb_robot_msgs/GetRAPIDSymbolResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDSymbolResponse_Maximum_Wire_Bytes :: 1034
/// @brief Original complete abb_robot_msgs/GetRAPIDSymbolResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRAPIDSymbolResponse_Codec_Identity :: "UWVMROS1_182dc465ea5fb9543791b6fb76520313cee1ed472ab0296c8ef7a9ed3d4d110f"
/// @brief Traverse every original field of complete abb_robot_msgs/GetRAPIDSymbolResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetRAPIDSymbolResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDSymbolResponse, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_value)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/GetRAPIDSymbolResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetRAPIDSymbolResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRAPIDSymbolResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1034)], writing = true}
    fields_Ros1Abb_robot_msgsGetRAPIDSymbolResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetRAPIDSymbolResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetRAPIDSymbolResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetRAPIDSymbolResponse, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 1034 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetRAPIDSymbolResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetRobotControllerDescriptionRequest value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest :: struct {
}
/// @brief Original complete abb_robot_msgs/GetRobotControllerDescriptionRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest_Minimum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/GetRobotControllerDescriptionRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest_Maximum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/GetRobotControllerDescriptionRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest_Codec_Identity :: "UWVMROS1_bc5f87f4d0f33cbc640c8188fbb15c9b0f43b3067f2406700d6f5bd2475089b6"
/// @brief Traverse every original field of complete
/// abb_robot_msgs/GetRobotControllerDescriptionRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original abb_robot_msgs/GetRobotControllerDescriptionRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetRobotControllerDescriptionRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetRobotControllerDescriptionResponse value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..4618 bytes.
Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse :: struct {
    /// @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.description field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_description: wire.Text(4096, false),
    /// @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/GetRobotControllerDescriptionResponse minimum wire
/// bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse_Minimum_Wire_Bytes :: 10
/// @brief Original complete abb_robot_msgs/GetRobotControllerDescriptionResponse maximum wire
/// bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse_Maximum_Wire_Bytes :: 4618
/// @brief Original complete abb_robot_msgs/GetRobotControllerDescriptionResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse_Codec_Identity :: "UWVMROS1_7db41283fbe12a010e526b87d77a5bb7faecdf85595ef2dc13f14bfed56b6e39"
/// @brief Traverse every original field of complete
/// abb_robot_msgs/GetRobotControllerDescriptionResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_description)
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/GetRobotControllerDescriptionResponse
/// field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4618)], writing = true}
    fields_Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original
/// abb_robot_msgs/GetRobotControllerDescriptionResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 4618 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetSpeedRatioRequest value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros1Abb_robot_msgsGetSpeedRatioRequest :: struct {
}
/// @brief Original complete abb_robot_msgs/GetSpeedRatioRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetSpeedRatioRequest_Minimum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/GetSpeedRatioRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetSpeedRatioRequest_Maximum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/GetSpeedRatioRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetSpeedRatioRequest_Codec_Identity :: "UWVMROS1_82230aebf6fa923e09bcd413ecb3b4803a6f1cfd3e8334e0ce0c496b73008373"
/// @brief Traverse every original field of complete abb_robot_msgs/GetSpeedRatioRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetSpeedRatioRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetSpeedRatioRequest, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original abb_robot_msgs/GetSpeedRatioRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetSpeedRatioRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetSpeedRatioRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros1Abb_robot_msgsGetSpeedRatioRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetSpeedRatioRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetSpeedRatioRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetSpeedRatioRequest, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetSpeedRatioRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/GetSpeedRatioResponse value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 7..519 bytes.
Ros1Abb_robot_msgsGetSpeedRatioResponse :: struct {
    /// @brief Original abb_robot_msgs/GetSpeedRatioResponse.speed_ratio field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speed_ratio: u8,
    /// @brief Original abb_robot_msgs/GetSpeedRatioResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/GetSpeedRatioResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/GetSpeedRatioResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetSpeedRatioResponse_Minimum_Wire_Bytes :: 7
/// @brief Original complete abb_robot_msgs/GetSpeedRatioResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetSpeedRatioResponse_Maximum_Wire_Bytes :: 519
/// @brief Original complete abb_robot_msgs/GetSpeedRatioResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsGetSpeedRatioResponse_Codec_Identity :: "UWVMROS1_7784360ddafa1b8ad9626fde0afa2b2335f6a294507036c3aee953df99e91940"
/// @brief Traverse every original field of complete abb_robot_msgs/GetSpeedRatioResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsGetSpeedRatioResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetSpeedRatioResponse, cursor: ^wire.Cursor)
{
    value.field_speed_ratio = u8(wire.number(cursor, u64(value.field_speed_ratio), 1))
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/GetSpeedRatioResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsGetSpeedRatioResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsGetSpeedRatioResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 519)], writing = true}
    fields_Ros1Abb_robot_msgsGetSpeedRatioResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/GetSpeedRatioResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsGetSpeedRatioResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsGetSpeedRatioResponse, code: u32)
{
    if len(bytes) < 7 || len(bytes) > 519 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsGetSpeedRatioResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/MechanicalUnitState value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..69 bytes.
Ros1Abb_robot_msgsMechanicalUnitState :: struct {
    /// @brief Original abb_robot_msgs/MechanicalUnitState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_name: wire.Text(64, false),
    /// @brief Original abb_robot_msgs/MechanicalUnitState.activated field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_activated: bool,
}
/// @brief Original complete abb_robot_msgs/MechanicalUnitState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsMechanicalUnitState_Minimum_Wire_Bytes :: 5
/// @brief Original complete abb_robot_msgs/MechanicalUnitState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsMechanicalUnitState_Maximum_Wire_Bytes :: 69
/// @brief Original complete abb_robot_msgs/MechanicalUnitState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsMechanicalUnitState_Codec_Identity :: "UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa"
/// @brief Traverse every original field of complete abb_robot_msgs/MechanicalUnitState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsMechanicalUnitState :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsMechanicalUnitState, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_name)
    value.field_activated = wire.boolean(cursor, value.field_activated)
}
/// @brief Encode every complete original abb_robot_msgs/MechanicalUnitState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsMechanicalUnitState :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsMechanicalUnitState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 69)], writing = true}
    fields_Ros1Abb_robot_msgsMechanicalUnitState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/MechanicalUnitState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsMechanicalUnitState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsMechanicalUnitState, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 69 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsMechanicalUnitState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/RAPIDTaskState value.
/// @details Retain all 4 original fields and 5 constants. Wire extent 7..71 bytes.
Ros1Abb_robot_msgsRAPIDTaskState :: struct {
    /// @brief Original abb_robot_msgs/RAPIDTaskState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_name: wire.Text(64, false),
    /// @brief Original abb_robot_msgs/RAPIDTaskState.activated field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_activated: bool,
    /// @brief Original abb_robot_msgs/RAPIDTaskState.execution_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_execution_state: u8,
    /// @brief Original abb_robot_msgs/RAPIDTaskState.motion_task field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motion_task: bool,
}
/// @brief Original complete abb_robot_msgs/RAPIDTaskState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsRAPIDTaskState_Minimum_Wire_Bytes :: 7
/// @brief Original complete abb_robot_msgs/RAPIDTaskState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsRAPIDTaskState_Maximum_Wire_Bytes :: 71
/// @brief Original complete abb_robot_msgs/RAPIDTaskState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsRAPIDTaskState_Codec_Identity :: "UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947"
/// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_UNKNOWN :: 1
/// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_READY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_READY :: 2
/// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STOPPED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_STOPPED :: 3
/// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STARTED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_STARTED :: 4
/// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsRAPIDTaskState_EXECUTION_STATE_UNINITIALIZED :: 5
/// @brief Traverse every original field of complete abb_robot_msgs/RAPIDTaskState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsRAPIDTaskState :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsRAPIDTaskState, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_name)
    value.field_activated = wire.boolean(cursor, value.field_activated)
    value.field_execution_state = u8(wire.number(cursor, u64(value.field_execution_state), 1))
    value.field_motion_task = wire.boolean(cursor, value.field_motion_task)
}
/// @brief Encode every complete original abb_robot_msgs/RAPIDTaskState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsRAPIDTaskState :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsRAPIDTaskState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 71)], writing = true}
    fields_Ros1Abb_robot_msgsRAPIDTaskState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/RAPIDTaskState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsRAPIDTaskState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsRAPIDTaskState, code: u32)
{
    if len(bytes) < 7 || len(bytes) > 71 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsRAPIDTaskState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/ServiceResponses value.
/// @details Retain all 0 original fields and 32 constants. Wire extent 0..0 bytes.
Ros1Abb_robot_msgsServiceResponses :: struct {
}
/// @brief Original complete abb_robot_msgs/ServiceResponses minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsServiceResponses_Minimum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/ServiceResponses maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsServiceResponses_Maximum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/ServiceResponses codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsServiceResponses_Codec_Identity :: "UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4"
/// @brief Original abb_robot_msgs/ServiceResponses.SUCCESS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_SUCCESS :: ""
/// @brief Original abb_robot_msgs/ServiceResponses.RC_SUCCESS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_SUCCESS :: 1
/// @brief Original abb_robot_msgs/ServiceResponses.FAILED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_FAILED :: "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_FAILED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_FAILED :: 2
/// @brief Original abb_robot_msgs/ServiceResponses.SERVER_IS_BUSY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_SERVER_IS_BUSY :: "Server is busy"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_SERVER_IS_BUSY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_SERVER_IS_BUSY :: 1001
/// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_FILENAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_EMPTY_FILENAME :: "Filename is empty"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_FILENAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_EMPTY_FILENAME :: 2001
/// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_SIGNAL_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_EMPTY_SIGNAL_NAME :: "Signal name is empty"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_EMPTY_SIGNAL_NAME :: 2002
/// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_TASK_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_EMPTY_RAPID_TASK_NAME :: "RAPID task name is empty"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_EMPTY_RAPID_TASK_NAME :: 2003
/// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_EMPTY_RAPID_MODULE_NAME :: "RAPID module name is empty"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_EMPTY_RAPID_MODULE_NAME :: 2004
/// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_EMPTY_RAPID_SYMBOL_NAME :: "RAPID symbol name is empty"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_EMPTY_RAPID_SYMBOL_NAME :: 2005
/// @brief Original abb_robot_msgs/ServiceResponses.NOT_IN_AUTO_MODE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_NOT_IN_AUTO_MODE :: "Robot controller is not in AUTO mode"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_NOT_IN_AUTO_MODE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_NOT_IN_AUTO_MODE :: 3001
/// @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_OFF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_MOTORS_ARE_OFF :: "Motors are off"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_OFF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_MOTORS_ARE_OFF :: 3002
/// @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_ON constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_MOTORS_ARE_ON :: "Motors are on"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_ON constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_MOTORS_ARE_ON :: 3003
/// @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_STOPPED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RAPID_NOT_STOPPED :: "RAPID has not been stopped"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_STOPPED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_RAPID_NOT_STOPPED :: 3004
/// @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_RUNNING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RAPID_NOT_RUNNING :: "RAPID is not running"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_RUNNING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_RAPID_NOT_RUNNING :: 3005
/// @brief Original abb_robot_msgs/ServiceResponses.SM_RUNTIME_STATES_MISSING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_SM_RUNTIME_STATES_MISSING :: "No runtime states received for any StateMachine Add-In instance"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_SM_RUNTIME_STATES_MISSING :: 4001
/// @brief Original abb_robot_msgs/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_SM_UNKNOWN_RAPID_TASK :: "RAPID task not found among known StateMachine Add-In instances"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_SM_UNKNOWN_RAPID_TASK :: 4002
/// @brief Original abb_robot_msgs/ServiceResponses.SM_UNINITIALIZED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_SM_UNINITIALIZED :: "StateMachine Add-In instance has not been initialized"
/// @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNINITIALIZED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Abb_robot_msgsServiceResponses_RC_SM_UNINITIALIZED :: 4003
/// @brief Traverse every original field of complete abb_robot_msgs/ServiceResponses.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsServiceResponses :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsServiceResponses, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original abb_robot_msgs/ServiceResponses field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsServiceResponses :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsServiceResponses, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros1Abb_robot_msgsServiceResponses(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/ServiceResponses.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsServiceResponses :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsServiceResponses, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsServiceResponses(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetFileContentsRequest value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..4616 bytes.
Ros1Abb_robot_msgsSetFileContentsRequest :: struct {
    /// @brief Original abb_robot_msgs/SetFileContentsRequest.filename field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_filename: wire.Text(512, false),
    /// @brief Original abb_robot_msgs/SetFileContentsRequest.contents field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_contents: wire.Text(4096, false),
}
/// @brief Original complete abb_robot_msgs/SetFileContentsRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetFileContentsRequest_Minimum_Wire_Bytes :: 8
/// @brief Original complete abb_robot_msgs/SetFileContentsRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetFileContentsRequest_Maximum_Wire_Bytes :: 4616
/// @brief Original complete abb_robot_msgs/SetFileContentsRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetFileContentsRequest_Codec_Identity :: "UWVMROS1_f764448d9754e9ebc5e5fab64f0c8ebb01c534ec7b95751ed7d58e8ce0bd3012"
/// @brief Traverse every original field of complete abb_robot_msgs/SetFileContentsRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetFileContentsRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetFileContentsRequest, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_filename)
    wire.text(cursor, &value.field_contents)
}
/// @brief Encode every complete original abb_robot_msgs/SetFileContentsRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetFileContentsRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetFileContentsRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4616)], writing = true}
    fields_Ros1Abb_robot_msgsSetFileContentsRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetFileContentsRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetFileContentsRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetFileContentsRequest, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 4616 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetFileContentsRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetFileContentsResponse value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros1Abb_robot_msgsSetFileContentsResponse :: struct {
    /// @brief Original abb_robot_msgs/SetFileContentsResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/SetFileContentsResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/SetFileContentsResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetFileContentsResponse_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/SetFileContentsResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetFileContentsResponse_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/SetFileContentsResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetFileContentsResponse_Codec_Identity :: "UWVMROS1_3de2a08b8e158e0612898880d6d9c98f1995828eb53bd5639b47f730c6cbefd0"
/// @brief Traverse every original field of complete abb_robot_msgs/SetFileContentsResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetFileContentsResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetFileContentsResponse, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/SetFileContentsResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetFileContentsResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetFileContentsResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_robot_msgsSetFileContentsResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetFileContentsResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetFileContentsResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetFileContentsResponse, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetFileContentsResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetIOSignalRequest value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..1032 bytes.
Ros1Abb_robot_msgsSetIOSignalRequest :: struct {
    /// @brief Original abb_robot_msgs/SetIOSignalRequest.signal field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_signal: wire.Text(512, false),
    /// @brief Original abb_robot_msgs/SetIOSignalRequest.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_value: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/SetIOSignalRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetIOSignalRequest_Minimum_Wire_Bytes :: 8
/// @brief Original complete abb_robot_msgs/SetIOSignalRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetIOSignalRequest_Maximum_Wire_Bytes :: 1032
/// @brief Original complete abb_robot_msgs/SetIOSignalRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetIOSignalRequest_Codec_Identity :: "UWVMROS1_57a0197e2a5de7efd2fc91d945d699be24559baec6651179a1256f1d9d35bbc9"
/// @brief Traverse every original field of complete abb_robot_msgs/SetIOSignalRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetIOSignalRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetIOSignalRequest, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_signal)
    wire.text(cursor, &value.field_value)
}
/// @brief Encode every complete original abb_robot_msgs/SetIOSignalRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetIOSignalRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetIOSignalRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1032)], writing = true}
    fields_Ros1Abb_robot_msgsSetIOSignalRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetIOSignalRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetIOSignalRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetIOSignalRequest, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 1032 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetIOSignalRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetIOSignalResponse value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros1Abb_robot_msgsSetIOSignalResponse :: struct {
    /// @brief Original abb_robot_msgs/SetIOSignalResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/SetIOSignalResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/SetIOSignalResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetIOSignalResponse_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/SetIOSignalResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetIOSignalResponse_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/SetIOSignalResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetIOSignalResponse_Codec_Identity :: "UWVMROS1_becc0f844ce6a7fabd8a683175edd8033ba5c943c2de152991755ee112b460e5"
/// @brief Traverse every original field of complete abb_robot_msgs/SetIOSignalResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetIOSignalResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetIOSignalResponse, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/SetIOSignalResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetIOSignalResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetIOSignalResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_robot_msgsSetIOSignalResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetIOSignalResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetIOSignalResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetIOSignalResponse, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetIOSignalResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetRAPIDBoolRequest value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 13..205 bytes.
Ros1Abb_robot_msgsSetRAPIDBoolRequest :: struct {
    /// @brief Original abb_robot_msgs/SetRAPIDBoolRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath,
    /// @brief Original abb_robot_msgs/SetRAPIDBoolRequest.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: bool,
}
/// @brief Original complete abb_robot_msgs/SetRAPIDBoolRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDBoolRequest_Minimum_Wire_Bytes :: 13
/// @brief Original complete abb_robot_msgs/SetRAPIDBoolRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDBoolRequest_Maximum_Wire_Bytes :: 205
/// @brief Original complete abb_robot_msgs/SetRAPIDBoolRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDBoolRequest_Codec_Identity :: "UWVMROS1_d8e5420678fe5feeffa20ad9ab8431678ec346f764c94871c4496c62e9dd8e8d"
/// @brief Traverse every original field of complete abb_robot_msgs/SetRAPIDBoolRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetRAPIDBoolRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDBoolRequest, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_robot_msgsRAPIDSymbolPath(&value.field_path, cursor)
    value.field_value = wire.boolean(cursor, value.field_value)
}
/// @brief Encode every complete original abb_robot_msgs/SetRAPIDBoolRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetRAPIDBoolRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDBoolRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 205)], writing = true}
    fields_Ros1Abb_robot_msgsSetRAPIDBoolRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetRAPIDBoolRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetRAPIDBoolRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetRAPIDBoolRequest, code: u32)
{
    if len(bytes) < 13 || len(bytes) > 205 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetRAPIDBoolRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetRAPIDBoolResponse value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros1Abb_robot_msgsSetRAPIDBoolResponse :: struct {
    /// @brief Original abb_robot_msgs/SetRAPIDBoolResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/SetRAPIDBoolResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/SetRAPIDBoolResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDBoolResponse_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/SetRAPIDBoolResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDBoolResponse_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/SetRAPIDBoolResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDBoolResponse_Codec_Identity :: "UWVMROS1_da2ae1231cb0c1ec452fb2733d5c99dcae78ad0bfd10771241708931b271bf13"
/// @brief Traverse every original field of complete abb_robot_msgs/SetRAPIDBoolResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetRAPIDBoolResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDBoolResponse, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/SetRAPIDBoolResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetRAPIDBoolResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDBoolResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_robot_msgsSetRAPIDBoolResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetRAPIDBoolResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetRAPIDBoolResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetRAPIDBoolResponse, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetRAPIDBoolResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetRAPIDDnumRequest value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 20..212 bytes.
Ros1Abb_robot_msgsSetRAPIDDnumRequest :: struct {
    /// @brief Original abb_robot_msgs/SetRAPIDDnumRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath,
    /// @brief Original abb_robot_msgs/SetRAPIDDnumRequest.value field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f64,
}
/// @brief Original complete abb_robot_msgs/SetRAPIDDnumRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDDnumRequest_Minimum_Wire_Bytes :: 20
/// @brief Original complete abb_robot_msgs/SetRAPIDDnumRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDDnumRequest_Maximum_Wire_Bytes :: 212
/// @brief Original complete abb_robot_msgs/SetRAPIDDnumRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDDnumRequest_Codec_Identity :: "UWVMROS1_0f17e3068f86bca6effb99f3bc850234b0163028f372340c450fce31657b9cf9"
/// @brief Traverse every original field of complete abb_robot_msgs/SetRAPIDDnumRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetRAPIDDnumRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDDnumRequest, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_robot_msgsRAPIDSymbolPath(&value.field_path, cursor)
    value.field_value = wire.float64(cursor, value.field_value)
}
/// @brief Encode every complete original abb_robot_msgs/SetRAPIDDnumRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetRAPIDDnumRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDDnumRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 212)], writing = true}
    fields_Ros1Abb_robot_msgsSetRAPIDDnumRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetRAPIDDnumRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetRAPIDDnumRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetRAPIDDnumRequest, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 212 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetRAPIDDnumRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetRAPIDDnumResponse value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros1Abb_robot_msgsSetRAPIDDnumResponse :: struct {
    /// @brief Original abb_robot_msgs/SetRAPIDDnumResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/SetRAPIDDnumResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/SetRAPIDDnumResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDDnumResponse_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/SetRAPIDDnumResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDDnumResponse_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/SetRAPIDDnumResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDDnumResponse_Codec_Identity :: "UWVMROS1_1905aed9683e03494baa54627ddbaf4aed0b92357823c0c042f9b7c6a970c8ed"
/// @brief Traverse every original field of complete abb_robot_msgs/SetRAPIDDnumResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetRAPIDDnumResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDDnumResponse, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/SetRAPIDDnumResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetRAPIDDnumResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDDnumResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_robot_msgsSetRAPIDDnumResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetRAPIDDnumResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetRAPIDDnumResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetRAPIDDnumResponse, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetRAPIDDnumResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetRAPIDNumRequest value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..208 bytes.
Ros1Abb_robot_msgsSetRAPIDNumRequest :: struct {
    /// @brief Original abb_robot_msgs/SetRAPIDNumRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath,
    /// @brief Original abb_robot_msgs/SetRAPIDNumRequest.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f32,
}
/// @brief Original complete abb_robot_msgs/SetRAPIDNumRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDNumRequest_Minimum_Wire_Bytes :: 16
/// @brief Original complete abb_robot_msgs/SetRAPIDNumRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDNumRequest_Maximum_Wire_Bytes :: 208
/// @brief Original complete abb_robot_msgs/SetRAPIDNumRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDNumRequest_Codec_Identity :: "UWVMROS1_9982d02cb0b6ee5813f5fb38072d665226b7885aeb90517af881f4fc990f392f"
/// @brief Traverse every original field of complete abb_robot_msgs/SetRAPIDNumRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetRAPIDNumRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDNumRequest, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_robot_msgsRAPIDSymbolPath(&value.field_path, cursor)
    value.field_value = wire.float32(cursor, value.field_value)
}
/// @brief Encode every complete original abb_robot_msgs/SetRAPIDNumRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetRAPIDNumRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDNumRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 208)], writing = true}
    fields_Ros1Abb_robot_msgsSetRAPIDNumRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetRAPIDNumRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetRAPIDNumRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetRAPIDNumRequest, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 208 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetRAPIDNumRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetRAPIDNumResponse value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros1Abb_robot_msgsSetRAPIDNumResponse :: struct {
    /// @brief Original abb_robot_msgs/SetRAPIDNumResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/SetRAPIDNumResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/SetRAPIDNumResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDNumResponse_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/SetRAPIDNumResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDNumResponse_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/SetRAPIDNumResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDNumResponse_Codec_Identity :: "UWVMROS1_af1181242b4afdb6d387d39c24d0bc343e872fb9ab21c0ec1e451785786a4e64"
/// @brief Traverse every original field of complete abb_robot_msgs/SetRAPIDNumResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetRAPIDNumResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDNumResponse, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/SetRAPIDNumResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetRAPIDNumResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDNumResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_robot_msgsSetRAPIDNumResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetRAPIDNumResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetRAPIDNumResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetRAPIDNumResponse, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetRAPIDNumResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetRAPIDStringRequest value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..720 bytes.
Ros1Abb_robot_msgsSetRAPIDStringRequest :: struct {
    /// @brief Original abb_robot_msgs/SetRAPIDStringRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath,
    /// @brief Original abb_robot_msgs/SetRAPIDStringRequest.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_value: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/SetRAPIDStringRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDStringRequest_Minimum_Wire_Bytes :: 16
/// @brief Original complete abb_robot_msgs/SetRAPIDStringRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDStringRequest_Maximum_Wire_Bytes :: 720
/// @brief Original complete abb_robot_msgs/SetRAPIDStringRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDStringRequest_Codec_Identity :: "UWVMROS1_e06839324f8abfa8780b683386f87bab1ec04f1e6463e63c0599f5c2f8a75f0c"
/// @brief Traverse every original field of complete abb_robot_msgs/SetRAPIDStringRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetRAPIDStringRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDStringRequest, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_robot_msgsRAPIDSymbolPath(&value.field_path, cursor)
    wire.text(cursor, &value.field_value)
}
/// @brief Encode every complete original abb_robot_msgs/SetRAPIDStringRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetRAPIDStringRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDStringRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 720)], writing = true}
    fields_Ros1Abb_robot_msgsSetRAPIDStringRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetRAPIDStringRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetRAPIDStringRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetRAPIDStringRequest, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 720 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetRAPIDStringRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetRAPIDStringResponse value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros1Abb_robot_msgsSetRAPIDStringResponse :: struct {
    /// @brief Original abb_robot_msgs/SetRAPIDStringResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/SetRAPIDStringResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/SetRAPIDStringResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDStringResponse_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/SetRAPIDStringResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDStringResponse_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/SetRAPIDStringResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDStringResponse_Codec_Identity :: "UWVMROS1_e175bdff5a150722b8c50cf2e1c0f28a99289a0b148339efdee4b034ea3b96b4"
/// @brief Traverse every original field of complete abb_robot_msgs/SetRAPIDStringResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetRAPIDStringResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDStringResponse, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/SetRAPIDStringResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetRAPIDStringResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDStringResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_robot_msgsSetRAPIDStringResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetRAPIDStringResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetRAPIDStringResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetRAPIDStringResponse, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetRAPIDStringResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetRAPIDSymbolRequest value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..720 bytes.
Ros1Abb_robot_msgsSetRAPIDSymbolRequest :: struct {
    /// @brief Original abb_robot_msgs/SetRAPIDSymbolRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath,
    /// @brief Original abb_robot_msgs/SetRAPIDSymbolRequest.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_value: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/SetRAPIDSymbolRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDSymbolRequest_Minimum_Wire_Bytes :: 16
/// @brief Original complete abb_robot_msgs/SetRAPIDSymbolRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDSymbolRequest_Maximum_Wire_Bytes :: 720
/// @brief Original complete abb_robot_msgs/SetRAPIDSymbolRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDSymbolRequest_Codec_Identity :: "UWVMROS1_0654a5a8e5ec42f4feab54b086a008e02a74d44df65d2fcf60f007736e3fec7d"
/// @brief Traverse every original field of complete abb_robot_msgs/SetRAPIDSymbolRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetRAPIDSymbolRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDSymbolRequest, cursor: ^wire.Cursor)
{
    fields_Ros1Abb_robot_msgsRAPIDSymbolPath(&value.field_path, cursor)
    wire.text(cursor, &value.field_value)
}
/// @brief Encode every complete original abb_robot_msgs/SetRAPIDSymbolRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetRAPIDSymbolRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDSymbolRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 720)], writing = true}
    fields_Ros1Abb_robot_msgsSetRAPIDSymbolRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetRAPIDSymbolRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetRAPIDSymbolRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetRAPIDSymbolRequest, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 720 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetRAPIDSymbolRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetRAPIDSymbolResponse value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros1Abb_robot_msgsSetRAPIDSymbolResponse :: struct {
    /// @brief Original abb_robot_msgs/SetRAPIDSymbolResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/SetRAPIDSymbolResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/SetRAPIDSymbolResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDSymbolResponse_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/SetRAPIDSymbolResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDSymbolResponse_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/SetRAPIDSymbolResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetRAPIDSymbolResponse_Codec_Identity :: "UWVMROS1_a4ca0a8821337d1f16ba1f2ad2b232aceaba419308ca03b27f43dac427a32846"
/// @brief Traverse every original field of complete abb_robot_msgs/SetRAPIDSymbolResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetRAPIDSymbolResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDSymbolResponse, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/SetRAPIDSymbolResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetRAPIDSymbolResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetRAPIDSymbolResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_robot_msgsSetRAPIDSymbolResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetRAPIDSymbolResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetRAPIDSymbolResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetRAPIDSymbolResponse, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetRAPIDSymbolResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetSpeedRatioRequest value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros1Abb_robot_msgsSetSpeedRatioRequest :: struct {
    /// @brief Original abb_robot_msgs/SetSpeedRatioRequest.speed_ratio field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speed_ratio: u8,
}
/// @brief Original complete abb_robot_msgs/SetSpeedRatioRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetSpeedRatioRequest_Minimum_Wire_Bytes :: 1
/// @brief Original complete abb_robot_msgs/SetSpeedRatioRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetSpeedRatioRequest_Maximum_Wire_Bytes :: 1
/// @brief Original complete abb_robot_msgs/SetSpeedRatioRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetSpeedRatioRequest_Codec_Identity :: "UWVMROS1_a6ac368d243d488901b03d5e4303600d5f0eaf62150801103e5f5f9c0863fab5"
/// @brief Traverse every original field of complete abb_robot_msgs/SetSpeedRatioRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetSpeedRatioRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetSpeedRatioRequest, cursor: ^wire.Cursor)
{
    value.field_speed_ratio = u8(wire.number(cursor, u64(value.field_speed_ratio), 1))
}
/// @brief Encode every complete original abb_robot_msgs/SetSpeedRatioRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetSpeedRatioRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetSpeedRatioRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros1Abb_robot_msgsSetSpeedRatioRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetSpeedRatioRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetSpeedRatioRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetSpeedRatioRequest, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetSpeedRatioRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SetSpeedRatioResponse value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros1Abb_robot_msgsSetSpeedRatioResponse :: struct {
    /// @brief Original abb_robot_msgs/SetSpeedRatioResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/SetSpeedRatioResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/SetSpeedRatioResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetSpeedRatioResponse_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/SetSpeedRatioResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetSpeedRatioResponse_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/SetSpeedRatioResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSetSpeedRatioResponse_Codec_Identity :: "UWVMROS1_9775dc1029993d1dfdf5f3080e6ae4262177ba96cdc0fbe9851dc4fea16c70d8"
/// @brief Traverse every original field of complete abb_robot_msgs/SetSpeedRatioResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSetSpeedRatioResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetSpeedRatioResponse, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/SetSpeedRatioResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSetSpeedRatioResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSetSpeedRatioResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_robot_msgsSetSpeedRatioResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SetSpeedRatioResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSetSpeedRatioResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSetSpeedRatioResponse, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSetSpeedRatioResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/SystemState value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 27..2331 bytes.
Ros1Abb_robot_msgsSystemState :: struct {
    /// @brief Original abb_robot_msgs/SystemState.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    field_header: Ros1Std_msgsHeader,
    /// @brief Original abb_robot_msgs/SystemState.motors_on field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motors_on: bool,
    /// @brief Original abb_robot_msgs/SystemState.auto_mode field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_auto_mode: bool,
    /// @brief Original abb_robot_msgs/SystemState.rapid_running field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rapid_running: bool,
    /// @brief Original abb_robot_msgs/SystemState.rapid_tasks field.
    /// @details Original type abb_robot_msgs/RAPIDTaskState. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_rapid_tasks: wire.Sequence(Ros1Abb_robot_msgsRAPIDTaskState, 16),
    /// @brief Original abb_robot_msgs/SystemState.mechanical_units field.
    /// @details Original type abb_robot_msgs/MechanicalUnitState. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_mechanical_units: wire.Sequence(Ros1Abb_robot_msgsMechanicalUnitState, 16),
}
/// @brief Original complete abb_robot_msgs/SystemState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSystemState_Minimum_Wire_Bytes :: 27
/// @brief Original complete abb_robot_msgs/SystemState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSystemState_Maximum_Wire_Bytes :: 2331
/// @brief Original complete abb_robot_msgs/SystemState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsSystemState_Codec_Identity :: "UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2"
/// @brief Traverse every original field of complete abb_robot_msgs/SystemState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsSystemState :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSystemState, cursor: ^wire.Cursor)
{
    fields_Ros1Std_msgsHeader(&value.field_header, cursor)
    value.field_motors_on = wire.boolean(cursor, value.field_motors_on)
    value.field_auto_mode = wire.boolean(cursor, value.field_auto_mode)
    value.field_rapid_running = wire.boolean(cursor, value.field_rapid_running)
    value.field_rapid_tasks.size = u32(wire.number(cursor, u64(value.field_rapid_tasks.size), 4))
    if value.field_rapid_tasks.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_rapid_tasks.size) {
        fields_Ros1Abb_robot_msgsRAPIDTaskState(&value.field_rapid_tasks.items[index], cursor)
    }
    value.field_mechanical_units.size = u32(wire.number(cursor, u64(value.field_mechanical_units.size), 4))
    if value.field_mechanical_units.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_mechanical_units.size) {
        fields_Ros1Abb_robot_msgsMechanicalUnitState(&value.field_mechanical_units.items[index], cursor)
    }
}
/// @brief Encode every complete original abb_robot_msgs/SystemState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsSystemState :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsSystemState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2331)], writing = true}
    fields_Ros1Abb_robot_msgsSystemState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/SystemState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsSystemState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsSystemState, code: u32)
{
    if len(bytes) < 27 || len(bytes) > 2331 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsSystemState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/TriggerWithResultCodeRequest value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros1Abb_robot_msgsTriggerWithResultCodeRequest :: struct {
}
/// @brief Original complete abb_robot_msgs/TriggerWithResultCodeRequest minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsTriggerWithResultCodeRequest_Minimum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/TriggerWithResultCodeRequest maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsTriggerWithResultCodeRequest_Maximum_Wire_Bytes :: 0
/// @brief Original complete abb_robot_msgs/TriggerWithResultCodeRequest codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsTriggerWithResultCodeRequest_Codec_Identity :: "UWVMROS1_999f63504788e522f7d0108a895cf35cd101e9a50856e480ae9edabf791bcf94"
/// @brief Traverse every original field of complete abb_robot_msgs/TriggerWithResultCodeRequest.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsTriggerWithResultCodeRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsTriggerWithResultCodeRequest, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original abb_robot_msgs/TriggerWithResultCodeRequest field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsTriggerWithResultCodeRequest :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsTriggerWithResultCodeRequest, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros1Abb_robot_msgsTriggerWithResultCodeRequest(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/TriggerWithResultCodeRequest.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsTriggerWithResultCodeRequest :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsTriggerWithResultCodeRequest, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsTriggerWithResultCodeRequest(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original abb_robot_msgs/TriggerWithResultCodeResponse value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros1Abb_robot_msgsTriggerWithResultCodeResponse :: struct {
    /// @brief Original abb_robot_msgs/TriggerWithResultCodeResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u16,
    /// @brief Original abb_robot_msgs/TriggerWithResultCodeResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete abb_robot_msgs/TriggerWithResultCodeResponse minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsTriggerWithResultCodeResponse_Minimum_Wire_Bytes :: 6
/// @brief Original complete abb_robot_msgs/TriggerWithResultCodeResponse maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsTriggerWithResultCodeResponse_Maximum_Wire_Bytes :: 518
/// @brief Original complete abb_robot_msgs/TriggerWithResultCodeResponse codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Abb_robot_msgsTriggerWithResultCodeResponse_Codec_Identity :: "UWVMROS1_4ef5c987592e849766b82b7fd99a65b7a1e17605f3e3341c99803181887967ff"
/// @brief Traverse every original field of complete abb_robot_msgs/TriggerWithResultCodeResponse.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Abb_robot_msgsTriggerWithResultCodeResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsTriggerWithResultCodeResponse, cursor: ^wire.Cursor)
{
    value.field_result_code = u16(wire.number(cursor, u64(value.field_result_code), 2))
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original abb_robot_msgs/TriggerWithResultCodeResponse field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Abb_robot_msgsTriggerWithResultCodeResponse :: proc "contextless"(
    value: ^Ros1Abb_robot_msgsTriggerWithResultCodeResponse, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros1Abb_robot_msgsTriggerWithResultCodeResponse(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original abb_robot_msgs/TriggerWithResultCodeResponse.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Abb_robot_msgsTriggerWithResultCodeResponse :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Abb_robot_msgsTriggerWithResultCodeResponse, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Abb_robot_msgsTriggerWithResultCodeResponse(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original duration value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros1Duration :: struct {
    /// @brief Original duration.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sec: i32,
    /// @brief Original duration.nsec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nsec: i32,
}
/// @brief Original complete duration minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Duration_Minimum_Wire_Bytes :: 8
/// @brief Original complete duration maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Duration_Maximum_Wire_Bytes :: 8
/// @brief Original complete duration codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Duration_Codec_Identity :: "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
/// @brief Traverse every original field of complete duration.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Duration :: proc "contextless"(
    value: ^Ros1Duration, cursor: ^wire.Cursor)
{
    value.field_sec = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sec), 4))
    value.field_nsec = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_nsec), 4))
    if value.field_nsec >= 1000000000 || value.field_nsec < 0 { cursor.code = 22 }
}
/// @brief Encode every complete original duration field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Duration :: proc "contextless"(
    value: ^Ros1Duration, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros1Duration(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original duration.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Duration :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Duration, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Duration(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original trajectory_msgs/JointTrajectoryPoint value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 24..408 bytes.
Ros1Trajectory_msgsJointTrajectoryPoint :: struct {
    /// @brief Original trajectory_msgs/JointTrajectoryPoint.positions field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_positions: wire.Sequence(f64, 12),
    /// @brief Original trajectory_msgs/JointTrajectoryPoint.velocities field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocities: wire.Sequence(f64, 12),
    /// @brief Original trajectory_msgs/JointTrajectoryPoint.accelerations field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_accelerations: wire.Sequence(f64, 12),
    /// @brief Original trajectory_msgs/JointTrajectoryPoint.effort field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_effort: wire.Sequence(f64, 12),
    /// @brief Original trajectory_msgs/JointTrajectoryPoint.time_from_start field.
    /// @details Original type duration. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_time_from_start: Ros1Duration,
}
/// @brief Original complete trajectory_msgs/JointTrajectoryPoint minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Trajectory_msgsJointTrajectoryPoint_Minimum_Wire_Bytes :: 24
/// @brief Original complete trajectory_msgs/JointTrajectoryPoint maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Trajectory_msgsJointTrajectoryPoint_Maximum_Wire_Bytes :: 408
/// @brief Original complete trajectory_msgs/JointTrajectoryPoint codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Trajectory_msgsJointTrajectoryPoint_Codec_Identity :: "UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5"
/// @brief Traverse every original field of complete trajectory_msgs/JointTrajectoryPoint.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Trajectory_msgsJointTrajectoryPoint :: proc "contextless"(
    value: ^Ros1Trajectory_msgsJointTrajectoryPoint, cursor: ^wire.Cursor)
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
    fields_Ros1Duration(&value.field_time_from_start, cursor)
}
/// @brief Encode every complete original trajectory_msgs/JointTrajectoryPoint field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Trajectory_msgsJointTrajectoryPoint :: proc "contextless"(
    value: ^Ros1Trajectory_msgsJointTrajectoryPoint, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 408)], writing = true}
    fields_Ros1Trajectory_msgsJointTrajectoryPoint(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original trajectory_msgs/JointTrajectoryPoint.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Trajectory_msgsJointTrajectoryPoint :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Trajectory_msgsJointTrajectoryPoint, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 408 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Trajectory_msgsJointTrajectoryPoint(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original trajectory_msgs/JointTrajectory value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 24..4168 bytes.
Ros1Trajectory_msgsJointTrajectory :: struct {
    /// @brief Original trajectory_msgs/JointTrajectory.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    field_header: Ros1Std_msgsHeader,
    /// @brief Original trajectory_msgs/JointTrajectory.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names: wire.Sequence(wire.Text(64, false), 12),
    /// @brief Original trajectory_msgs/JointTrajectory.points field.
    /// @details Original type trajectory_msgs/JointTrajectoryPoint. Shape sequence; bound/count 8
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_points: wire.Sequence(Ros1Trajectory_msgsJointTrajectoryPoint, 8),
}
/// @brief Original complete trajectory_msgs/JointTrajectory minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Trajectory_msgsJointTrajectory_Minimum_Wire_Bytes :: 24
/// @brief Original complete trajectory_msgs/JointTrajectory maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Trajectory_msgsJointTrajectory_Maximum_Wire_Bytes :: 4168
/// @brief Original complete trajectory_msgs/JointTrajectory codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Trajectory_msgsJointTrajectory_Codec_Identity :: "UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b"
/// @brief Traverse every original field of complete trajectory_msgs/JointTrajectory.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Trajectory_msgsJointTrajectory :: proc "contextless"(
    value: ^Ros1Trajectory_msgsJointTrajectory, cursor: ^wire.Cursor)
{
    fields_Ros1Std_msgsHeader(&value.field_header, cursor)
    value.field_joint_names.size = u32(wire.number(cursor, u64(value.field_joint_names.size), 4))
    if value.field_joint_names.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_joint_names.size) {
        wire.text(cursor, &value.field_joint_names.items[index])
    }
    value.field_points.size = u32(wire.number(cursor, u64(value.field_points.size), 4))
    if value.field_points.size > 8 { cursor.code = 22; return }
    for index in 0..<int(value.field_points.size) {
        fields_Ros1Trajectory_msgsJointTrajectoryPoint(&value.field_points.items[index], cursor)
    }
}
/// @brief Encode every complete original trajectory_msgs/JointTrajectory field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Trajectory_msgsJointTrajectory :: proc "contextless"(
    value: ^Ros1Trajectory_msgsJointTrajectory, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4168)], writing = true}
    fields_Ros1Trajectory_msgsJointTrajectory(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original trajectory_msgs/JointTrajectory.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Trajectory_msgsJointTrajectory :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Trajectory_msgsJointTrajectory, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 4168 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Trajectory_msgsJointTrajectory(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original control_msgs/JointTolerance value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 28..92 bytes.
Ros1Control_msgsJointTolerance :: struct {
    /// @brief Original control_msgs/JointTolerance.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_name: wire.Text(64, false),
    /// @brief Original control_msgs/JointTolerance.position field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_position: f64,
    /// @brief Original control_msgs/JointTolerance.velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_velocity: f64,
    /// @brief Original control_msgs/JointTolerance.acceleration field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_acceleration: f64,
}
/// @brief Original complete control_msgs/JointTolerance minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Control_msgsJointTolerance_Minimum_Wire_Bytes :: 28
/// @brief Original complete control_msgs/JointTolerance maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Control_msgsJointTolerance_Maximum_Wire_Bytes :: 92
/// @brief Original complete control_msgs/JointTolerance codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Control_msgsJointTolerance_Codec_Identity :: "UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88"
/// @brief Traverse every original field of complete control_msgs/JointTolerance.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Control_msgsJointTolerance :: proc "contextless"(
    value: ^Ros1Control_msgsJointTolerance, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_name)
    value.field_position = wire.float64(cursor, value.field_position)
    value.field_velocity = wire.float64(cursor, value.field_velocity)
    value.field_acceleration = wire.float64(cursor, value.field_acceleration)
}
/// @brief Encode every complete original control_msgs/JointTolerance field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Control_msgsJointTolerance :: proc "contextless"(
    value: ^Ros1Control_msgsJointTolerance, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 92)], writing = true}
    fields_Ros1Control_msgsJointTolerance(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original control_msgs/JointTolerance.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Control_msgsJointTolerance :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Control_msgsJointTolerance, code: u32)
{
    if len(bytes) < 28 || len(bytes) > 92 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Control_msgsJointTolerance(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original control_msgs/FollowJointTrajectoryGoal value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 40..6392 bytes.
Ros1Control_msgsFollowJointTrajectoryGoal :: struct {
    /// @brief Original control_msgs/FollowJointTrajectoryGoal.trajectory field.
    /// @details Original type trajectory_msgs/JointTrajectory. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_trajectory: Ros1Trajectory_msgsJointTrajectory,
    /// @brief Original control_msgs/FollowJointTrajectoryGoal.path_tolerance field.
    /// @details Original type control_msgs/JointTolerance. Shape sequence; bound/count 12 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_path_tolerance: wire.Sequence(Ros1Control_msgsJointTolerance, 12),
    /// @brief Original control_msgs/FollowJointTrajectoryGoal.goal_tolerance field.
    /// @details Original type control_msgs/JointTolerance. Shape sequence; bound/count 12 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_goal_tolerance: wire.Sequence(Ros1Control_msgsJointTolerance, 12),
    /// @brief Original control_msgs/FollowJointTrajectoryGoal.goal_time_tolerance field.
    /// @details Original type duration. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_goal_time_tolerance: Ros1Duration,
}
/// @brief Original complete control_msgs/FollowJointTrajectoryGoal minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Control_msgsFollowJointTrajectoryGoal_Minimum_Wire_Bytes :: 40
/// @brief Original complete control_msgs/FollowJointTrajectoryGoal maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Control_msgsFollowJointTrajectoryGoal_Maximum_Wire_Bytes :: 6392
/// @brief Original complete control_msgs/FollowJointTrajectoryGoal codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Control_msgsFollowJointTrajectoryGoal_Codec_Identity :: "UWVMROS1_e9fda6f9e732450f2cf1af046ceb67815e6e1a22105eda2fee38f8f470252d40"
/// @brief Traverse every original field of complete control_msgs/FollowJointTrajectoryGoal.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Control_msgsFollowJointTrajectoryGoal :: proc "contextless"(
    value: ^Ros1Control_msgsFollowJointTrajectoryGoal, cursor: ^wire.Cursor)
{
    fields_Ros1Trajectory_msgsJointTrajectory(&value.field_trajectory, cursor)
    value.field_path_tolerance.size = u32(wire.number(cursor, u64(value.field_path_tolerance.size), 4))
    if value.field_path_tolerance.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_path_tolerance.size) {
        fields_Ros1Control_msgsJointTolerance(&value.field_path_tolerance.items[index], cursor)
    }
    value.field_goal_tolerance.size = u32(wire.number(cursor, u64(value.field_goal_tolerance.size), 4))
    if value.field_goal_tolerance.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_goal_tolerance.size) {
        fields_Ros1Control_msgsJointTolerance(&value.field_goal_tolerance.items[index], cursor)
    }
    fields_Ros1Duration(&value.field_goal_time_tolerance, cursor)
}
/// @brief Encode every complete original control_msgs/FollowJointTrajectoryGoal field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Control_msgsFollowJointTrajectoryGoal :: proc "contextless"(
    value: ^Ros1Control_msgsFollowJointTrajectoryGoal, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 6392)], writing = true}
    fields_Ros1Control_msgsFollowJointTrajectoryGoal(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original control_msgs/FollowJointTrajectoryGoal.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Control_msgsFollowJointTrajectoryGoal :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Control_msgsFollowJointTrajectoryGoal, code: u32)
{
    if len(bytes) < 40 || len(bytes) > 6392 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Control_msgsFollowJointTrajectoryGoal(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original control_msgs/FollowJointTrajectoryResult value.
/// @details Retain all 2 original fields and 6 constants. Wire extent 8..4104 bytes.
Ros1Control_msgsFollowJointTrajectoryResult :: struct {
    /// @brief Original control_msgs/FollowJointTrajectoryResult.error_code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_code: i32,
    /// @brief Original control_msgs/FollowJointTrajectoryResult.error_string field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_error_string: wire.Text(4096, false),
}
/// @brief Original complete control_msgs/FollowJointTrajectoryResult minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Control_msgsFollowJointTrajectoryResult_Minimum_Wire_Bytes :: 8
/// @brief Original complete control_msgs/FollowJointTrajectoryResult maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Control_msgsFollowJointTrajectoryResult_Maximum_Wire_Bytes :: 4104
/// @brief Original complete control_msgs/FollowJointTrajectoryResult codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Control_msgsFollowJointTrajectoryResult_Codec_Identity :: "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281"
/// @brief Original control_msgs/FollowJointTrajectoryResult.SUCCESSFUL constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Control_msgsFollowJointTrajectoryResult_SUCCESSFUL :: 0
/// @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_GOAL constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Control_msgsFollowJointTrajectoryResult_INVALID_GOAL :: -1
/// @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_JOINTS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Control_msgsFollowJointTrajectoryResult_INVALID_JOINTS :: -2
/// @brief Original control_msgs/FollowJointTrajectoryResult.OLD_HEADER_TIMESTAMP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Control_msgsFollowJointTrajectoryResult_OLD_HEADER_TIMESTAMP :: -3
/// @brief Original control_msgs/FollowJointTrajectoryResult.PATH_TOLERANCE_VIOLATED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Control_msgsFollowJointTrajectoryResult_PATH_TOLERANCE_VIOLATED :: -4
/// @brief Original control_msgs/FollowJointTrajectoryResult.GOAL_TOLERANCE_VIOLATED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Control_msgsFollowJointTrajectoryResult_GOAL_TOLERANCE_VIOLATED :: -5
/// @brief Traverse every original field of complete control_msgs/FollowJointTrajectoryResult.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Control_msgsFollowJointTrajectoryResult :: proc "contextless"(
    value: ^Ros1Control_msgsFollowJointTrajectoryResult, cursor: ^wire.Cursor)
{
    value.field_error_code = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_error_code), 4))
    wire.text(cursor, &value.field_error_string)
}
/// @brief Encode every complete original control_msgs/FollowJointTrajectoryResult field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Control_msgsFollowJointTrajectoryResult :: proc "contextless"(
    value: ^Ros1Control_msgsFollowJointTrajectoryResult, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4104)], writing = true}
    fields_Ros1Control_msgsFollowJointTrajectoryResult(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original control_msgs/FollowJointTrajectoryResult.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Control_msgsFollowJointTrajectoryResult :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Control_msgsFollowJointTrajectoryResult, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 4104 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Control_msgsFollowJointTrajectoryResult(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original control_msgs/FollowJointTrajectoryFeedback value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 92..2124 bytes.
Ros1Control_msgsFollowJointTrajectoryFeedback :: struct {
    /// @brief Original control_msgs/FollowJointTrajectoryFeedback.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    field_header: Ros1Std_msgsHeader,
    /// @brief Original control_msgs/FollowJointTrajectoryFeedback.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names: wire.Sequence(wire.Text(64, false), 12),
    /// @brief Original control_msgs/FollowJointTrajectoryFeedback.desired field.
    /// @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_desired: Ros1Trajectory_msgsJointTrajectoryPoint,
    /// @brief Original control_msgs/FollowJointTrajectoryFeedback.actual field.
    /// @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_actual: Ros1Trajectory_msgsJointTrajectoryPoint,
    /// @brief Original control_msgs/FollowJointTrajectoryFeedback.error field.
    /// @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_error: Ros1Trajectory_msgsJointTrajectoryPoint,
}
/// @brief Original complete control_msgs/FollowJointTrajectoryFeedback minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Control_msgsFollowJointTrajectoryFeedback_Minimum_Wire_Bytes :: 92
/// @brief Original complete control_msgs/FollowJointTrajectoryFeedback maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Control_msgsFollowJointTrajectoryFeedback_Maximum_Wire_Bytes :: 2124
/// @brief Original complete control_msgs/FollowJointTrajectoryFeedback codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Control_msgsFollowJointTrajectoryFeedback_Codec_Identity :: "UWVMROS1_a1ad5a1f8a00b60f97d06209737993bd395d83d1a008705d65193b63933b62a8"
/// @brief Traverse every original field of complete control_msgs/FollowJointTrajectoryFeedback.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Control_msgsFollowJointTrajectoryFeedback :: proc "contextless"(
    value: ^Ros1Control_msgsFollowJointTrajectoryFeedback, cursor: ^wire.Cursor)
{
    fields_Ros1Std_msgsHeader(&value.field_header, cursor)
    value.field_joint_names.size = u32(wire.number(cursor, u64(value.field_joint_names.size), 4))
    if value.field_joint_names.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_joint_names.size) {
        wire.text(cursor, &value.field_joint_names.items[index])
    }
    fields_Ros1Trajectory_msgsJointTrajectoryPoint(&value.field_desired, cursor)
    fields_Ros1Trajectory_msgsJointTrajectoryPoint(&value.field_actual, cursor)
    fields_Ros1Trajectory_msgsJointTrajectoryPoint(&value.field_error, cursor)
}
/// @brief Encode every complete original control_msgs/FollowJointTrajectoryFeedback field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Control_msgsFollowJointTrajectoryFeedback :: proc "contextless"(
    value: ^Ros1Control_msgsFollowJointTrajectoryFeedback, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2124)], writing = true}
    fields_Ros1Control_msgsFollowJointTrajectoryFeedback(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original control_msgs/FollowJointTrajectoryFeedback.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Control_msgsFollowJointTrajectoryFeedback :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Control_msgsFollowJointTrajectoryFeedback, code: u32)
{
    if len(bytes) < 92 || len(bytes) > 2124 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Control_msgsFollowJointTrajectoryFeedback(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original sensor_msgs/JointState value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 32..1200 bytes.
Ros1Sensor_msgsJointState :: struct {
    /// @brief Original sensor_msgs/JointState.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    field_header: Ros1Std_msgsHeader,
    /// @brief Original sensor_msgs/JointState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_name: wire.Sequence(wire.Text(64, false), 12),
    /// @brief Original sensor_msgs/JointState.position field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_position: wire.Sequence(f64, 12),
    /// @brief Original sensor_msgs/JointState.velocity field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocity: wire.Sequence(f64, 12),
    /// @brief Original sensor_msgs/JointState.effort field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_effort: wire.Sequence(f64, 12),
}
/// @brief Original complete sensor_msgs/JointState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Sensor_msgsJointState_Minimum_Wire_Bytes :: 32
/// @brief Original complete sensor_msgs/JointState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Sensor_msgsJointState_Maximum_Wire_Bytes :: 1200
/// @brief Original complete sensor_msgs/JointState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Sensor_msgsJointState_Codec_Identity :: "UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057"
/// @brief Traverse every original field of complete sensor_msgs/JointState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Sensor_msgsJointState :: proc "contextless"(
    value: ^Ros1Sensor_msgsJointState, cursor: ^wire.Cursor)
{
    fields_Ros1Std_msgsHeader(&value.field_header, cursor)
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
/// @brief Encode every complete original sensor_msgs/JointState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Sensor_msgsJointState :: proc "contextless"(
    value: ^Ros1Sensor_msgsJointState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1200)], writing = true}
    fields_Ros1Sensor_msgsJointState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original sensor_msgs/JointState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Sensor_msgsJointState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Sensor_msgsJointState, code: u32)
{
    if len(bytes) < 32 || len(bytes) > 1200 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Sensor_msgsJointState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}


// DEFAULT_FACTORIES_BEGIN

// @brief Construct all original abb_egm_msgs/EGMChannelState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_egm_msgsEGMChannelState :: proc "contextless"() -> (Ros1Abb_egm_msgsEGMChannelState, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_egm_msgsEGMChannelState(bytes)
}

// @brief Construct all original time defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Time :: proc "contextless"() -> (Ros1Time, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Time(bytes)
}

// @brief Construct all original std_msgs/Header defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Std_msgsHeader :: proc "contextless"() -> (Ros1Std_msgsHeader, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Std_msgsHeader(bytes)
}

// @brief Construct all original abb_egm_msgs/EGMState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_egm_msgsEGMState :: proc "contextless"() -> (Ros1Abb_egm_msgsEGMState, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros1Abb_egm_msgsEGMState(bytes)
}

// @brief Construct all original abb_rapid_msgs/ConfData defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_msgsConfData :: proc "contextless"() -> (Ros1Abb_rapid_msgsConfData, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_rapid_msgsConfData(bytes)
}

// @brief Construct all original abb_rapid_msgs/ExtJoint defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_msgsExtJoint :: proc "contextless"() -> (Ros1Abb_rapid_msgsExtJoint, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Abb_rapid_msgsExtJoint(bytes)
}

// @brief Construct all original abb_rapid_msgs/RobJoint defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_msgsRobJoint :: proc "contextless"() -> (Ros1Abb_rapid_msgsRobJoint, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Abb_rapid_msgsRobJoint(bytes)
}

// @brief Construct all original abb_rapid_msgs/JointTarget defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_msgsJointTarget :: proc "contextless"() -> (Ros1Abb_rapid_msgsJointTarget, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Abb_rapid_msgsJointTarget(bytes)
}

// @brief Construct all original abb_rapid_msgs/Pos defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_msgsPos :: proc "contextless"() -> (Ros1Abb_rapid_msgsPos, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_rapid_msgsPos(bytes)
}

// @brief Construct all original abb_rapid_msgs/Orient defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_msgsOrient :: proc "contextless"() -> (Ros1Abb_rapid_msgsOrient, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_rapid_msgsOrient(bytes)
}

// @brief Construct all original abb_rapid_msgs/LoadData defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_msgsLoadData :: proc "contextless"() -> (Ros1Abb_rapid_msgsLoadData, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Abb_rapid_msgsLoadData(bytes)
}

// @brief Construct all original abb_rapid_msgs/Pose defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_msgsPose :: proc "contextless"() -> (Ros1Abb_rapid_msgsPose, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Abb_rapid_msgsPose(bytes)
}

// @brief Construct all original abb_rapid_msgs/RobTarget defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_msgsRobTarget :: proc "contextless"() -> (Ros1Abb_rapid_msgsRobTarget, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros1Abb_rapid_msgsRobTarget(bytes)
}

// @brief Construct all original abb_rapid_msgs/ToolData defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_msgsToolData :: proc "contextless"() -> (Ros1Abb_rapid_msgsToolData, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Abb_rapid_msgsToolData(bytes)
}

// @brief Construct all original abb_rapid_msgs/WObjData defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_msgsWObjData :: proc "contextless"() -> (Ros1Abb_rapid_msgsWObjData, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Abb_rapid_msgsWObjData(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/EGMActivateSettings defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings, u32) {
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
    return decode_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/EGMRunSettings defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsEGMRunSettings, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/EGMSetupSettings defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings, u32) {
    bytes := []u8{0, 0, 0, 0, 0}
    return decode_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/EGMStopSettings defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsEGMStopSettings, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/EGMSettings defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsEGMSettings :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsEGMSettings, u32) {
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
    return decode_Ros1Abb_rapid_sm_addin_msgsEGMSettings(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse, u32) {
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
    return decode_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/StateMachineState defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsStateMachineState :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsStateMachineState, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_rapid_sm_addin_msgsStateMachineState(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/RuntimeState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsRuntimeState :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsRuntimeState, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros1Abb_rapid_sm_addin_msgsRuntimeState(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest, u32) {
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
    return decode_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/SetSGCommandRequest defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest(bytes)
}

// @brief Construct all original abb_rapid_sm_addin_msgs/SetSGCommandResponse defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse :: proc "contextless"() -> (Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/GetFileContentsRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetFileContentsRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsGetFileContentsRequest, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetFileContentsRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/GetFileContentsResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetFileContentsResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsGetFileContentsResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetFileContentsResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/GetIOSignalRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetIOSignalRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsGetIOSignalRequest, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetIOSignalRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/GetIOSignalResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetIOSignalResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsGetIOSignalResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetIOSignalResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/RAPIDSymbolPath defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsRAPIDSymbolPath :: proc "contextless"() -> (Ros1Abb_robot_msgsRAPIDSymbolPath, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsRAPIDSymbolPath(bytes)
}

// @brief Construct all original abb_robot_msgs/GetRAPIDBoolRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetRAPIDBoolRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsGetRAPIDBoolRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetRAPIDBoolRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/GetRAPIDBoolResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetRAPIDBoolResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsGetRAPIDBoolResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetRAPIDBoolResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/GetRAPIDDnumRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetRAPIDDnumRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsGetRAPIDDnumRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetRAPIDDnumRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/GetRAPIDDnumResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetRAPIDDnumResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsGetRAPIDDnumResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetRAPIDDnumResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/GetRAPIDNumRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetRAPIDNumRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsGetRAPIDNumRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetRAPIDNumRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/GetRAPIDNumResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetRAPIDNumResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsGetRAPIDNumResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetRAPIDNumResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/GetRAPIDStringRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetRAPIDStringRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsGetRAPIDStringRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetRAPIDStringRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/GetRAPIDStringResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetRAPIDStringResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsGetRAPIDStringResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetRAPIDStringResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/GetRAPIDSymbolRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetRAPIDSymbolRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsGetRAPIDSymbolRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetRAPIDSymbolRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/GetRAPIDSymbolResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetRAPIDSymbolResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsGetRAPIDSymbolResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetRAPIDSymbolResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/GetRobotControllerDescriptionRequest defaults with complete
// typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest, u32) {
    bytes := []u8{}
    return decode_Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/GetRobotControllerDescriptionResponse defaults with complete
// typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/GetSpeedRatioRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetSpeedRatioRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsGetSpeedRatioRequest, u32) {
    bytes := []u8{}
    return decode_Ros1Abb_robot_msgsGetSpeedRatioRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/GetSpeedRatioResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsGetSpeedRatioResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsGetSpeedRatioResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsGetSpeedRatioResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/MechanicalUnitState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsMechanicalUnitState :: proc "contextless"() -> (Ros1Abb_robot_msgsMechanicalUnitState, u32) {
    bytes := []u8{0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsMechanicalUnitState(bytes)
}

// @brief Construct all original abb_robot_msgs/RAPIDTaskState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsRAPIDTaskState :: proc "contextless"() -> (Ros1Abb_robot_msgsRAPIDTaskState, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsRAPIDTaskState(bytes)
}

// @brief Construct all original abb_robot_msgs/ServiceResponses defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsServiceResponses :: proc "contextless"() -> (Ros1Abb_robot_msgsServiceResponses, u32) {
    bytes := []u8{}
    return decode_Ros1Abb_robot_msgsServiceResponses(bytes)
}

// @brief Construct all original abb_robot_msgs/SetFileContentsRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetFileContentsRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsSetFileContentsRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetFileContentsRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/SetFileContentsResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetFileContentsResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsSetFileContentsResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetFileContentsResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/SetIOSignalRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetIOSignalRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsSetIOSignalRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetIOSignalRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/SetIOSignalResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetIOSignalResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsSetIOSignalResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetIOSignalResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/SetRAPIDBoolRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetRAPIDBoolRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsSetRAPIDBoolRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetRAPIDBoolRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/SetRAPIDBoolResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetRAPIDBoolResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsSetRAPIDBoolResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetRAPIDBoolResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/SetRAPIDDnumRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetRAPIDDnumRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsSetRAPIDDnumRequest, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros1Abb_robot_msgsSetRAPIDDnumRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/SetRAPIDDnumResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetRAPIDDnumResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsSetRAPIDDnumResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetRAPIDDnumResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/SetRAPIDNumRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetRAPIDNumRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsSetRAPIDNumRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetRAPIDNumRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/SetRAPIDNumResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetRAPIDNumResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsSetRAPIDNumResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetRAPIDNumResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/SetRAPIDStringRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetRAPIDStringRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsSetRAPIDStringRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetRAPIDStringRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/SetRAPIDStringResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetRAPIDStringResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsSetRAPIDStringResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetRAPIDStringResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/SetRAPIDSymbolRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetRAPIDSymbolRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsSetRAPIDSymbolRequest, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetRAPIDSymbolRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/SetRAPIDSymbolResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetRAPIDSymbolResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsSetRAPIDSymbolResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetRAPIDSymbolResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/SetSpeedRatioRequest defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetSpeedRatioRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsSetSpeedRatioRequest, u32) {
    bytes := []u8{0}
    return decode_Ros1Abb_robot_msgsSetSpeedRatioRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/SetSpeedRatioResponse defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSetSpeedRatioResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsSetSpeedRatioResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsSetSpeedRatioResponse(bytes)
}

// @brief Construct all original abb_robot_msgs/SystemState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsSystemState :: proc "contextless"() -> (Ros1Abb_robot_msgsSystemState, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Abb_robot_msgsSystemState(bytes)
}

// @brief Construct all original abb_robot_msgs/TriggerWithResultCodeRequest defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsTriggerWithResultCodeRequest :: proc "contextless"() -> (Ros1Abb_robot_msgsTriggerWithResultCodeRequest, u32) {
    bytes := []u8{}
    return decode_Ros1Abb_robot_msgsTriggerWithResultCodeRequest(bytes)
}

// @brief Construct all original abb_robot_msgs/TriggerWithResultCodeResponse defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Abb_robot_msgsTriggerWithResultCodeResponse :: proc "contextless"() -> (Ros1Abb_robot_msgsTriggerWithResultCodeResponse, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros1Abb_robot_msgsTriggerWithResultCodeResponse(bytes)
}

// @brief Construct all original duration defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Duration :: proc "contextless"() -> (Ros1Duration, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Duration(bytes)
}

// @brief Construct all original trajectory_msgs/JointTrajectoryPoint defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Trajectory_msgsJointTrajectoryPoint :: proc "contextless"() -> (Ros1Trajectory_msgsJointTrajectoryPoint, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Trajectory_msgsJointTrajectoryPoint(bytes)
}

// @brief Construct all original trajectory_msgs/JointTrajectory defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Trajectory_msgsJointTrajectory :: proc "contextless"() -> (Ros1Trajectory_msgsJointTrajectory, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Trajectory_msgsJointTrajectory(bytes)
}

// @brief Construct all original control_msgs/JointTolerance defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Control_msgsJointTolerance :: proc "contextless"() -> (Ros1Control_msgsJointTolerance, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Control_msgsJointTolerance(bytes)
}

// @brief Construct all original control_msgs/FollowJointTrajectoryGoal defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Control_msgsFollowJointTrajectoryGoal :: proc "contextless"() -> (Ros1Control_msgsFollowJointTrajectoryGoal, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Control_msgsFollowJointTrajectoryGoal(bytes)
}

// @brief Construct all original control_msgs/FollowJointTrajectoryResult defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Control_msgsFollowJointTrajectoryResult :: proc "contextless"() -> (Ros1Control_msgsFollowJointTrajectoryResult, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros1Control_msgsFollowJointTrajectoryResult(bytes)
}

// @brief Construct all original control_msgs/FollowJointTrajectoryFeedback defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Control_msgsFollowJointTrajectoryFeedback :: proc "contextless"() -> (Ros1Control_msgsFollowJointTrajectoryFeedback, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Control_msgsFollowJointTrajectoryFeedback(bytes)
}

// @brief Construct all original sensor_msgs/JointState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros1Sensor_msgsJointState :: proc "contextless"() -> (Ros1Sensor_msgsJointState, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros1Sensor_msgsJointState(bytes)
}
