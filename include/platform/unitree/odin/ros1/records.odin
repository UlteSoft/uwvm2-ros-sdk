// @file records.odin
// @brief Complete owned original Unitree ROS 1 records and codecs.
// @details No generated record owns a native ROS object or grants a capability.
package records
import wire "unitree:odin/wire"

/// @brief Complete original unitree_legged_msgs/BmsCmd value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 4..4 bytes.
Ros1Unitree_legged_msgsBmsCmd :: struct {
    /// @brief Original unitree_legged_msgs/BmsCmd.off field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_off: u8,
    /// @brief Original unitree_legged_msgs/BmsCmd.reserve field.
    /// @details Original type uint8. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [3]u8,
}
/// @brief Original complete unitree_legged_msgs/BmsCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsBmsCmd_Minimum_Wire_Bytes :: 4
/// @brief Original complete unitree_legged_msgs/BmsCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsBmsCmd_Maximum_Wire_Bytes :: 4
/// @brief Original complete unitree_legged_msgs/BmsCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsBmsCmd_Codec_Identity ::
    "UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928"
/// @brief Traverse every original field of complete unitree_legged_msgs/BmsCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Unitree_legged_msgsBmsCmd :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsBmsCmd, cursor: ^wire.Cursor)
{
    value.field_off = u8(wire.number(cursor, u64(value.field_off), 1))
    for index in 0..<3 {
        value.field_reserve[index] = u8(wire.number(cursor, u64(value.field_reserve[index]), 1))
    }
}
/// @brief Encode every complete original unitree_legged_msgs/BmsCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Unitree_legged_msgsBmsCmd :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsBmsCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros1Unitree_legged_msgsBmsCmd(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_legged_msgs/BmsCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Unitree_legged_msgsBmsCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Unitree_legged_msgsBmsCmd, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Unitree_legged_msgsBmsCmd(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_legged_msgs/BmsState value.
/// @details Retain all 9 original fields and 0 constants. Wire extent 34..34 bytes.
Ros1Unitree_legged_msgsBmsState :: struct {
    /// @brief Original unitree_legged_msgs/BmsState.version_h field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_version_h: u8,
    /// @brief Original unitree_legged_msgs/BmsState.version_l field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_version_l: u8,
    /// @brief Original unitree_legged_msgs/BmsState.bms_status field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bms_status: u8,
    /// @brief Original unitree_legged_msgs/BmsState.SOC field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_SOC: u8,
    /// @brief Original unitree_legged_msgs/BmsState.current field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: i32,
    /// @brief Original unitree_legged_msgs/BmsState.cycle field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cycle: u16,
    /// @brief Original unitree_legged_msgs/BmsState.BQ_NTC field.
    /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_BQ_NTC: [2]i8,
    /// @brief Original unitree_legged_msgs/BmsState.MCU_NTC field.
    /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_MCU_NTC: [2]i8,
    /// @brief Original unitree_legged_msgs/BmsState.cell_vol field.
    /// @details Original type uint16. Shape array; bound/count 10 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_cell_vol: [10]u16,
}
/// @brief Original complete unitree_legged_msgs/BmsState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsBmsState_Minimum_Wire_Bytes :: 34
/// @brief Original complete unitree_legged_msgs/BmsState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsBmsState_Maximum_Wire_Bytes :: 34
/// @brief Original complete unitree_legged_msgs/BmsState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsBmsState_Codec_Identity ::
    "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a"
/// @brief Traverse every original field of complete unitree_legged_msgs/BmsState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Unitree_legged_msgsBmsState :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsBmsState, cursor: ^wire.Cursor)
{
    value.field_version_h = u8(wire.number(cursor, u64(value.field_version_h), 1))
    value.field_version_l = u8(wire.number(cursor, u64(value.field_version_l), 1))
    value.field_bms_status = u8(wire.number(cursor, u64(value.field_bms_status), 1))
    value.field_SOC = u8(wire.number(cursor, u64(value.field_SOC), 1))
    value.field_current = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_current), 4))
    value.field_cycle = u16(wire.number(cursor, u64(value.field_cycle), 2))
    for index in 0..<2 {
        value.field_BQ_NTC[index] = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_BQ_NTC[index]), 1))
    }
    for index in 0..<2 {
        value.field_MCU_NTC[index] = transmute(i8)u8(wire.number(
            cursor,
            u64(transmute(u8)value.field_MCU_NTC[index]),
            1,
        ))
    }
    for index in 0..<10 {
        value.field_cell_vol[index] = u16(wire.number(cursor, u64(value.field_cell_vol[index]), 2))
    }
}
/// @brief Encode every complete original unitree_legged_msgs/BmsState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Unitree_legged_msgsBmsState :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsBmsState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 34)], writing = true}
    fields_Ros1Unitree_legged_msgsBmsState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_legged_msgs/BmsState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Unitree_legged_msgsBmsState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Unitree_legged_msgsBmsState, code: u32)
{
    if len(bytes) < 34 || len(bytes) > 34 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Unitree_legged_msgsBmsState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_legged_msgs/Cartesian value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 12..12 bytes.
Ros1Unitree_legged_msgsCartesian :: struct {
    /// @brief Original unitree_legged_msgs/Cartesian.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f32,
    /// @brief Original unitree_legged_msgs/Cartesian.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f32,
    /// @brief Original unitree_legged_msgs/Cartesian.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f32,
}
/// @brief Original complete unitree_legged_msgs/Cartesian minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsCartesian_Minimum_Wire_Bytes :: 12
/// @brief Original complete unitree_legged_msgs/Cartesian maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsCartesian_Maximum_Wire_Bytes :: 12
/// @brief Original complete unitree_legged_msgs/Cartesian codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsCartesian_Codec_Identity ::
    "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722"
/// @brief Traverse every original field of complete unitree_legged_msgs/Cartesian.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Unitree_legged_msgsCartesian :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsCartesian, cursor: ^wire.Cursor)
{
    value.field_x = wire.float32(cursor, value.field_x)
    value.field_y = wire.float32(cursor, value.field_y)
    value.field_z = wire.float32(cursor, value.field_z)
}
/// @brief Encode every complete original unitree_legged_msgs/Cartesian field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Unitree_legged_msgsCartesian :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsCartesian, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 12)], writing = true}
    fields_Ros1Unitree_legged_msgsCartesian(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_legged_msgs/Cartesian.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Unitree_legged_msgsCartesian :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Unitree_legged_msgsCartesian, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 12 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Unitree_legged_msgsCartesian(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_legged_msgs/LED value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 3..3 bytes.
Ros1Unitree_legged_msgsLED :: struct {
    /// @brief Original unitree_legged_msgs/LED.r field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_r: u8,
    /// @brief Original unitree_legged_msgs/LED.g field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_g: u8,
    /// @brief Original unitree_legged_msgs/LED.b field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_b: u8,
}
/// @brief Original complete unitree_legged_msgs/LED minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsLED_Minimum_Wire_Bytes :: 3
/// @brief Original complete unitree_legged_msgs/LED maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsLED_Maximum_Wire_Bytes :: 3
/// @brief Original complete unitree_legged_msgs/LED codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsLED_Codec_Identity :: "UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5"
/// @brief Traverse every original field of complete unitree_legged_msgs/LED.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Unitree_legged_msgsLED :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsLED, cursor: ^wire.Cursor)
{
    value.field_r = u8(wire.number(cursor, u64(value.field_r), 1))
    value.field_g = u8(wire.number(cursor, u64(value.field_g), 1))
    value.field_b = u8(wire.number(cursor, u64(value.field_b), 1))
}
/// @brief Encode every complete original unitree_legged_msgs/LED field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Unitree_legged_msgsLED :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsLED, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 3)], writing = true}
    fields_Ros1Unitree_legged_msgsLED(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_legged_msgs/LED.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Unitree_legged_msgsLED :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Unitree_legged_msgsLED, code: u32)
{
    if len(bytes) < 3 || len(bytes) > 3 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Unitree_legged_msgsLED(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_legged_msgs/HighCmd value.
/// @details Retain all 20 original fields and 0 constants. Wire extent 129..129 bytes.
Ros1Unitree_legged_msgsHighCmd :: struct {
    /// @brief Original unitree_legged_msgs/HighCmd.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_head: [2]u8,
    /// @brief Original unitree_legged_msgs/HighCmd.levelFlag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_levelFlag: u8,
    /// @brief Original unitree_legged_msgs/HighCmd.frameReserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frameReserve: u8,
    /// @brief Original unitree_legged_msgs/HighCmd.SN field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_SN: [2]u32,
    /// @brief Original unitree_legged_msgs/HighCmd.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32,
    /// @brief Original unitree_legged_msgs/HighCmd.bandWidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bandWidth: u16,
    /// @brief Original unitree_legged_msgs/HighCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original unitree_legged_msgs/HighCmd.gaitType field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_gaitType: u8,
    /// @brief Original unitree_legged_msgs/HighCmd.speedLevel field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speedLevel: u8,
    /// @brief Original unitree_legged_msgs/HighCmd.footRaiseHeight field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_footRaiseHeight: f32,
    /// @brief Original unitree_legged_msgs/HighCmd.bodyHeight field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bodyHeight: f32,
    /// @brief Original unitree_legged_msgs/HighCmd.position field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_position: [2]f32,
    /// @brief Original unitree_legged_msgs/HighCmd.euler field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_euler: [3]f32,
    /// @brief Original unitree_legged_msgs/HighCmd.velocity field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocity: [2]f32,
    /// @brief Original unitree_legged_msgs/HighCmd.yawSpeed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yawSpeed: f32,
    /// @brief Original unitree_legged_msgs/HighCmd.bms field.
    /// @details Original type unitree_legged_msgs/BmsCmd. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_bms: Ros1Unitree_legged_msgsBmsCmd,
    /// @brief Original unitree_legged_msgs/HighCmd.led field.
    /// @details Original type unitree_legged_msgs/LED. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_led: [4]Ros1Unitree_legged_msgsLED,
    /// @brief Original unitree_legged_msgs/HighCmd.wirelessRemote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wirelessRemote: [40]u8,
    /// @brief Original unitree_legged_msgs/HighCmd.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32,
    /// @brief Original unitree_legged_msgs/HighCmd.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32,
}
/// @brief Original complete unitree_legged_msgs/HighCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsHighCmd_Minimum_Wire_Bytes :: 129
/// @brief Original complete unitree_legged_msgs/HighCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsHighCmd_Maximum_Wire_Bytes :: 129
/// @brief Original complete unitree_legged_msgs/HighCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsHighCmd_Codec_Identity ::
    "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38"
/// @brief Traverse every original field of complete unitree_legged_msgs/HighCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Unitree_legged_msgsHighCmd :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsHighCmd, cursor: ^wire.Cursor)
{
    for index in 0..<2 {
        value.field_head[index] = u8(wire.number(cursor, u64(value.field_head[index]), 1))
    }
    value.field_levelFlag = u8(wire.number(cursor, u64(value.field_levelFlag), 1))
    value.field_frameReserve = u8(wire.number(cursor, u64(value.field_frameReserve), 1))
    for index in 0..<2 {
        value.field_SN[index] = u32(wire.number(cursor, u64(value.field_SN[index]), 4))
    }
    for index in 0..<2 {
        value.field_version[index] = u32(wire.number(cursor, u64(value.field_version[index]), 4))
    }
    value.field_bandWidth = u16(wire.number(cursor, u64(value.field_bandWidth), 2))
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_gaitType = u8(wire.number(cursor, u64(value.field_gaitType), 1))
    value.field_speedLevel = u8(wire.number(cursor, u64(value.field_speedLevel), 1))
    value.field_footRaiseHeight = wire.float32(cursor, value.field_footRaiseHeight)
    value.field_bodyHeight = wire.float32(cursor, value.field_bodyHeight)
    for index in 0..<2 {
        value.field_position[index] = wire.float32(cursor, value.field_position[index])
    }
    for index in 0..<3 {
        value.field_euler[index] = wire.float32(cursor, value.field_euler[index])
    }
    for index in 0..<2 {
        value.field_velocity[index] = wire.float32(cursor, value.field_velocity[index])
    }
    value.field_yawSpeed = wire.float32(cursor, value.field_yawSpeed)
    fields_Ros1Unitree_legged_msgsBmsCmd(&value.field_bms, cursor)
    for index in 0..<4 {
        fields_Ros1Unitree_legged_msgsLED(&value.field_led[index], cursor)
    }
    for index in 0..<40 {
        value.field_wirelessRemote[index] = u8(wire.number(cursor, u64(value.field_wirelessRemote[index]), 1))
    }
    value.field_reserve = u32(wire.number(cursor, u64(value.field_reserve), 4))
    value.field_crc = u32(wire.number(cursor, u64(value.field_crc), 4))
}
/// @brief Encode every complete original unitree_legged_msgs/HighCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Unitree_legged_msgsHighCmd :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsHighCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 129)], writing = true}
    fields_Ros1Unitree_legged_msgsHighCmd(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_legged_msgs/HighCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Unitree_legged_msgsHighCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Unitree_legged_msgsHighCmd, code: u32)
{
    if len(bytes) < 129 || len(bytes) > 129 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Unitree_legged_msgsHighCmd(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_legged_msgs/IMU value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 53..53 bytes.
Ros1Unitree_legged_msgsIMU :: struct {
    /// @brief Original unitree_legged_msgs/IMU.quaternion field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_quaternion: [4]f32,
    /// @brief Original unitree_legged_msgs/IMU.gyroscope field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_gyroscope: [3]f32,
    /// @brief Original unitree_legged_msgs/IMU.accelerometer field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_accelerometer: [3]f32,
    /// @brief Original unitree_legged_msgs/IMU.rpy field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_rpy: [3]f32,
    /// @brief Original unitree_legged_msgs/IMU.temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: i8,
}
/// @brief Original complete unitree_legged_msgs/IMU minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsIMU_Minimum_Wire_Bytes :: 53
/// @brief Original complete unitree_legged_msgs/IMU maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsIMU_Maximum_Wire_Bytes :: 53
/// @brief Original complete unitree_legged_msgs/IMU codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsIMU_Codec_Identity :: "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276"
/// @brief Traverse every original field of complete unitree_legged_msgs/IMU.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Unitree_legged_msgsIMU :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsIMU, cursor: ^wire.Cursor)
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
/// @brief Encode every complete original unitree_legged_msgs/IMU field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Unitree_legged_msgsIMU :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsIMU, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 53)], writing = true}
    fields_Ros1Unitree_legged_msgsIMU(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_legged_msgs/IMU.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Unitree_legged_msgsIMU :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Unitree_legged_msgsIMU, code: u32)
{
    if len(bytes) < 53 || len(bytes) > 53 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Unitree_legged_msgsIMU(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_legged_msgs/MotorState value.
/// @details Retain all 10 original fields and 0 constants. Wire extent 38..38 bytes.
Ros1Unitree_legged_msgsMotorState :: struct {
    /// @brief Original unitree_legged_msgs/MotorState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original unitree_legged_msgs/MotorState.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q: f32,
    /// @brief Original unitree_legged_msgs/MotorState.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq: f32,
    /// @brief Original unitree_legged_msgs/MotorState.ddq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ddq: f32,
    /// @brief Original unitree_legged_msgs/MotorState.tauEst field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tauEst: f32,
    /// @brief Original unitree_legged_msgs/MotorState.q_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q_raw: f32,
    /// @brief Original unitree_legged_msgs/MotorState.dq_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq_raw: f32,
    /// @brief Original unitree_legged_msgs/MotorState.ddq_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ddq_raw: f32,
    /// @brief Original unitree_legged_msgs/MotorState.temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: i8,
    /// @brief Original unitree_legged_msgs/MotorState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [2]u32,
}
/// @brief Original complete unitree_legged_msgs/MotorState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsMotorState_Minimum_Wire_Bytes :: 38
/// @brief Original complete unitree_legged_msgs/MotorState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsMotorState_Maximum_Wire_Bytes :: 38
/// @brief Original complete unitree_legged_msgs/MotorState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsMotorState_Codec_Identity ::
    "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf"
/// @brief Traverse every original field of complete unitree_legged_msgs/MotorState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Unitree_legged_msgsMotorState :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsMotorState, cursor: ^wire.Cursor)
{
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_q = wire.float32(cursor, value.field_q)
    value.field_dq = wire.float32(cursor, value.field_dq)
    value.field_ddq = wire.float32(cursor, value.field_ddq)
    value.field_tauEst = wire.float32(cursor, value.field_tauEst)
    value.field_q_raw = wire.float32(cursor, value.field_q_raw)
    value.field_dq_raw = wire.float32(cursor, value.field_dq_raw)
    value.field_ddq_raw = wire.float32(cursor, value.field_ddq_raw)
    value.field_temperature = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_temperature), 1))
    for index in 0..<2 {
        value.field_reserve[index] = u32(wire.number(cursor, u64(value.field_reserve[index]), 4))
    }
}
/// @brief Encode every complete original unitree_legged_msgs/MotorState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Unitree_legged_msgsMotorState :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsMotorState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 38)], writing = true}
    fields_Ros1Unitree_legged_msgsMotorState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_legged_msgs/MotorState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Unitree_legged_msgsMotorState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Unitree_legged_msgsMotorState, code: u32)
{
    if len(bytes) < 38 || len(bytes) > 38 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Unitree_legged_msgsMotorState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_legged_msgs/HighState value.
/// @details Retain all 25 original fields and 0 constants. Wire extent 1087..1087 bytes.
Ros1Unitree_legged_msgsHighState :: struct {
    /// @brief Original unitree_legged_msgs/HighState.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_head: [2]u8,
    /// @brief Original unitree_legged_msgs/HighState.levelFlag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_levelFlag: u8,
    /// @brief Original unitree_legged_msgs/HighState.frameReserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frameReserve: u8,
    /// @brief Original unitree_legged_msgs/HighState.SN field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_SN: [2]u32,
    /// @brief Original unitree_legged_msgs/HighState.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32,
    /// @brief Original unitree_legged_msgs/HighState.bandWidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bandWidth: u16,
    /// @brief Original unitree_legged_msgs/HighState.imu field.
    /// @details Original type unitree_legged_msgs/IMU. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_imu: Ros1Unitree_legged_msgsIMU,
    /// @brief Original unitree_legged_msgs/HighState.motorState field.
    /// @details Original type unitree_legged_msgs/MotorState. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motorState: [20]Ros1Unitree_legged_msgsMotorState,
    /// @brief Original unitree_legged_msgs/HighState.bms field.
    /// @details Original type unitree_legged_msgs/BmsState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_bms: Ros1Unitree_legged_msgsBmsState,
    /// @brief Original unitree_legged_msgs/HighState.footForce field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_footForce: [4]i16,
    /// @brief Original unitree_legged_msgs/HighState.footForceEst field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_footForceEst: [4]i16,
    /// @brief Original unitree_legged_msgs/HighState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original unitree_legged_msgs/HighState.progress field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_progress: f32,
    /// @brief Original unitree_legged_msgs/HighState.gaitType field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_gaitType: u8,
    /// @brief Original unitree_legged_msgs/HighState.footRaiseHeight field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_footRaiseHeight: f32,
    /// @brief Original unitree_legged_msgs/HighState.position field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_position: [3]f32,
    /// @brief Original unitree_legged_msgs/HighState.bodyHeight field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bodyHeight: f32,
    /// @brief Original unitree_legged_msgs/HighState.velocity field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocity: [3]f32,
    /// @brief Original unitree_legged_msgs/HighState.yawSpeed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yawSpeed: f32,
    /// @brief Original unitree_legged_msgs/HighState.rangeObstacle field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_rangeObstacle: [4]f32,
    /// @brief Original unitree_legged_msgs/HighState.footPosition2Body field.
    /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_footPosition2Body: [4]Ros1Unitree_legged_msgsCartesian,
    /// @brief Original unitree_legged_msgs/HighState.footSpeed2Body field.
    /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_footSpeed2Body: [4]Ros1Unitree_legged_msgsCartesian,
    /// @brief Original unitree_legged_msgs/HighState.wirelessRemote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wirelessRemote: [40]u8,
    /// @brief Original unitree_legged_msgs/HighState.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32,
    /// @brief Original unitree_legged_msgs/HighState.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32,
}
/// @brief Original complete unitree_legged_msgs/HighState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsHighState_Minimum_Wire_Bytes :: 1087
/// @brief Original complete unitree_legged_msgs/HighState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsHighState_Maximum_Wire_Bytes :: 1087
/// @brief Original complete unitree_legged_msgs/HighState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsHighState_Codec_Identity ::
    "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d"
/// @brief Traverse every original field of complete unitree_legged_msgs/HighState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Unitree_legged_msgsHighState :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsHighState, cursor: ^wire.Cursor)
{
    for index in 0..<2 {
        value.field_head[index] = u8(wire.number(cursor, u64(value.field_head[index]), 1))
    }
    value.field_levelFlag = u8(wire.number(cursor, u64(value.field_levelFlag), 1))
    value.field_frameReserve = u8(wire.number(cursor, u64(value.field_frameReserve), 1))
    for index in 0..<2 {
        value.field_SN[index] = u32(wire.number(cursor, u64(value.field_SN[index]), 4))
    }
    for index in 0..<2 {
        value.field_version[index] = u32(wire.number(cursor, u64(value.field_version[index]), 4))
    }
    value.field_bandWidth = u16(wire.number(cursor, u64(value.field_bandWidth), 2))
    fields_Ros1Unitree_legged_msgsIMU(&value.field_imu, cursor)
    for index in 0..<20 {
        fields_Ros1Unitree_legged_msgsMotorState(&value.field_motorState[index], cursor)
    }
    fields_Ros1Unitree_legged_msgsBmsState(&value.field_bms, cursor)
    for index in 0..<4 {
        value.field_footForce[index] = transmute(i16)u16(wire.number(
            cursor,
            u64(transmute(u16)value.field_footForce[index]),
            2,
        ))
    }
    for index in 0..<4 {
        value.field_footForceEst[index] = transmute(i16)u16(wire.number(
            cursor,
            u64(transmute(u16)value.field_footForceEst[index]),
            2,
        ))
    }
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_progress = wire.float32(cursor, value.field_progress)
    value.field_gaitType = u8(wire.number(cursor, u64(value.field_gaitType), 1))
    value.field_footRaiseHeight = wire.float32(cursor, value.field_footRaiseHeight)
    for index in 0..<3 {
        value.field_position[index] = wire.float32(cursor, value.field_position[index])
    }
    value.field_bodyHeight = wire.float32(cursor, value.field_bodyHeight)
    for index in 0..<3 {
        value.field_velocity[index] = wire.float32(cursor, value.field_velocity[index])
    }
    value.field_yawSpeed = wire.float32(cursor, value.field_yawSpeed)
    for index in 0..<4 {
        value.field_rangeObstacle[index] = wire.float32(cursor, value.field_rangeObstacle[index])
    }
    for index in 0..<4 {
        fields_Ros1Unitree_legged_msgsCartesian(&value.field_footPosition2Body[index], cursor)
    }
    for index in 0..<4 {
        fields_Ros1Unitree_legged_msgsCartesian(&value.field_footSpeed2Body[index], cursor)
    }
    for index in 0..<40 {
        value.field_wirelessRemote[index] = u8(wire.number(cursor, u64(value.field_wirelessRemote[index]), 1))
    }
    value.field_reserve = u32(wire.number(cursor, u64(value.field_reserve), 4))
    value.field_crc = u32(wire.number(cursor, u64(value.field_crc), 4))
}
/// @brief Encode every complete original unitree_legged_msgs/HighState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Unitree_legged_msgsHighState :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsHighState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1087)], writing = true}
    fields_Ros1Unitree_legged_msgsHighState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_legged_msgs/HighState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Unitree_legged_msgsHighState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Unitree_legged_msgsHighState, code: u32)
{
    if len(bytes) < 1087 || len(bytes) > 1087 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Unitree_legged_msgsHighState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_legged_msgs/MotorCmd value.
/// @details Retain all 7 original fields and 0 constants. Wire extent 33..33 bytes.
Ros1Unitree_legged_msgsMotorCmd :: struct {
    /// @brief Original unitree_legged_msgs/MotorCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original unitree_legged_msgs/MotorCmd.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q: f32,
    /// @brief Original unitree_legged_msgs/MotorCmd.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq: f32,
    /// @brief Original unitree_legged_msgs/MotorCmd.tau field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tau: f32,
    /// @brief Original unitree_legged_msgs/MotorCmd.Kp field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_Kp: f32,
    /// @brief Original unitree_legged_msgs/MotorCmd.Kd field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_Kd: f32,
    /// @brief Original unitree_legged_msgs/MotorCmd.reserve field.
    /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [3]u32,
}
/// @brief Original complete unitree_legged_msgs/MotorCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsMotorCmd_Minimum_Wire_Bytes :: 33
/// @brief Original complete unitree_legged_msgs/MotorCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsMotorCmd_Maximum_Wire_Bytes :: 33
/// @brief Original complete unitree_legged_msgs/MotorCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsMotorCmd_Codec_Identity ::
    "UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083"
/// @brief Traverse every original field of complete unitree_legged_msgs/MotorCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Unitree_legged_msgsMotorCmd :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsMotorCmd, cursor: ^wire.Cursor)
{
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_q = wire.float32(cursor, value.field_q)
    value.field_dq = wire.float32(cursor, value.field_dq)
    value.field_tau = wire.float32(cursor, value.field_tau)
    value.field_Kp = wire.float32(cursor, value.field_Kp)
    value.field_Kd = wire.float32(cursor, value.field_Kd)
    for index in 0..<3 {
        value.field_reserve[index] = u32(wire.number(cursor, u64(value.field_reserve[index]), 4))
    }
}
/// @brief Encode every complete original unitree_legged_msgs/MotorCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Unitree_legged_msgsMotorCmd :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsMotorCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 33)], writing = true}
    fields_Ros1Unitree_legged_msgsMotorCmd(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_legged_msgs/MotorCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Unitree_legged_msgsMotorCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Unitree_legged_msgsMotorCmd, code: u32)
{
    if len(bytes) < 33 || len(bytes) > 33 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Unitree_legged_msgsMotorCmd(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_legged_msgs/LowCmd value.
/// @details Retain all 11 original fields and 0 constants. Wire extent 734..734 bytes.
Ros1Unitree_legged_msgsLowCmd :: struct {
    /// @brief Original unitree_legged_msgs/LowCmd.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_head: [2]u8,
    /// @brief Original unitree_legged_msgs/LowCmd.levelFlag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_levelFlag: u8,
    /// @brief Original unitree_legged_msgs/LowCmd.frameReserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frameReserve: u8,
    /// @brief Original unitree_legged_msgs/LowCmd.SN field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_SN: [2]u32,
    /// @brief Original unitree_legged_msgs/LowCmd.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32,
    /// @brief Original unitree_legged_msgs/LowCmd.bandWidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bandWidth: u16,
    /// @brief Original unitree_legged_msgs/LowCmd.motorCmd field.
    /// @details Original type unitree_legged_msgs/MotorCmd. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motorCmd: [20]Ros1Unitree_legged_msgsMotorCmd,
    /// @brief Original unitree_legged_msgs/LowCmd.bms field.
    /// @details Original type unitree_legged_msgs/BmsCmd. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_bms: Ros1Unitree_legged_msgsBmsCmd,
    /// @brief Original unitree_legged_msgs/LowCmd.wirelessRemote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wirelessRemote: [40]u8,
    /// @brief Original unitree_legged_msgs/LowCmd.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32,
    /// @brief Original unitree_legged_msgs/LowCmd.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32,
}
/// @brief Original complete unitree_legged_msgs/LowCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsLowCmd_Minimum_Wire_Bytes :: 734
/// @brief Original complete unitree_legged_msgs/LowCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsLowCmd_Maximum_Wire_Bytes :: 734
/// @brief Original complete unitree_legged_msgs/LowCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsLowCmd_Codec_Identity ::
    "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181"
/// @brief Traverse every original field of complete unitree_legged_msgs/LowCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Unitree_legged_msgsLowCmd :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsLowCmd, cursor: ^wire.Cursor)
{
    for index in 0..<2 {
        value.field_head[index] = u8(wire.number(cursor, u64(value.field_head[index]), 1))
    }
    value.field_levelFlag = u8(wire.number(cursor, u64(value.field_levelFlag), 1))
    value.field_frameReserve = u8(wire.number(cursor, u64(value.field_frameReserve), 1))
    for index in 0..<2 {
        value.field_SN[index] = u32(wire.number(cursor, u64(value.field_SN[index]), 4))
    }
    for index in 0..<2 {
        value.field_version[index] = u32(wire.number(cursor, u64(value.field_version[index]), 4))
    }
    value.field_bandWidth = u16(wire.number(cursor, u64(value.field_bandWidth), 2))
    for index in 0..<20 {
        fields_Ros1Unitree_legged_msgsMotorCmd(&value.field_motorCmd[index], cursor)
    }
    fields_Ros1Unitree_legged_msgsBmsCmd(&value.field_bms, cursor)
    for index in 0..<40 {
        value.field_wirelessRemote[index] = u8(wire.number(cursor, u64(value.field_wirelessRemote[index]), 1))
    }
    value.field_reserve = u32(wire.number(cursor, u64(value.field_reserve), 4))
    value.field_crc = u32(wire.number(cursor, u64(value.field_crc), 4))
}
/// @brief Encode every complete original unitree_legged_msgs/LowCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Unitree_legged_msgsLowCmd :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsLowCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 734)], writing = true}
    fields_Ros1Unitree_legged_msgsLowCmd(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_legged_msgs/LowCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Unitree_legged_msgsLowCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Unitree_legged_msgsLowCmd, code: u32)
{
    if len(bytes) < 734 || len(bytes) > 734 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Unitree_legged_msgsLowCmd(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

/// @brief Complete original unitree_legged_msgs/LowState value.
/// @details Retain all 20 original fields and 0 constants. Wire extent 1069..1069 bytes.
Ros1Unitree_legged_msgsLowState :: struct {
    /// @brief Original unitree_legged_msgs/LowState.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_head: [2]u8,
    /// @brief Original unitree_legged_msgs/LowState.levelFlag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_levelFlag: u8,
    /// @brief Original unitree_legged_msgs/LowState.frameReserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frameReserve: u8,
    /// @brief Original unitree_legged_msgs/LowState.SN field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_SN: [2]u32,
    /// @brief Original unitree_legged_msgs/LowState.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32,
    /// @brief Original unitree_legged_msgs/LowState.bandWidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bandWidth: u16,
    /// @brief Original unitree_legged_msgs/LowState.imu field.
    /// @details Original type unitree_legged_msgs/IMU. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_imu: Ros1Unitree_legged_msgsIMU,
    /// @brief Original unitree_legged_msgs/LowState.motorState field.
    /// @details Original type unitree_legged_msgs/MotorState. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motorState: [20]Ros1Unitree_legged_msgsMotorState,
    /// @brief Original unitree_legged_msgs/LowState.bms field.
    /// @details Original type unitree_legged_msgs/BmsState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_bms: Ros1Unitree_legged_msgsBmsState,
    /// @brief Original unitree_legged_msgs/LowState.footForce field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_footForce: [4]i16,
    /// @brief Original unitree_legged_msgs/LowState.footForceEst field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_footForceEst: [4]i16,
    /// @brief Original unitree_legged_msgs/LowState.tick field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tick: u32,
    /// @brief Original unitree_legged_msgs/LowState.wirelessRemote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wirelessRemote: [40]u8,
    /// @brief Original unitree_legged_msgs/LowState.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32,
    /// @brief Original unitree_legged_msgs/LowState.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32,
    /// @brief Original unitree_legged_msgs/LowState.eeForceRaw field.
    /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_eeForceRaw: [4]Ros1Unitree_legged_msgsCartesian,
    /// @brief Original unitree_legged_msgs/LowState.eeForce field.
    /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_eeForce: [4]Ros1Unitree_legged_msgsCartesian,
    /// @brief Original unitree_legged_msgs/LowState.position field.
    /// @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_position: Ros1Unitree_legged_msgsCartesian,
    /// @brief Original unitree_legged_msgs/LowState.velocity field.
    /// @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_velocity: Ros1Unitree_legged_msgsCartesian,
    /// @brief Original unitree_legged_msgs/LowState.velocity_w field.
    /// @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_velocity_w: Ros1Unitree_legged_msgsCartesian,
}
/// @brief Original complete unitree_legged_msgs/LowState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsLowState_Minimum_Wire_Bytes :: 1069
/// @brief Original complete unitree_legged_msgs/LowState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsLowState_Maximum_Wire_Bytes :: 1069
/// @brief Original complete unitree_legged_msgs/LowState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Unitree_legged_msgsLowState_Codec_Identity ::
    "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0"
/// @brief Traverse every original field of complete unitree_legged_msgs/LowState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Unitree_legged_msgsLowState :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsLowState, cursor: ^wire.Cursor)
{
    for index in 0..<2 {
        value.field_head[index] = u8(wire.number(cursor, u64(value.field_head[index]), 1))
    }
    value.field_levelFlag = u8(wire.number(cursor, u64(value.field_levelFlag), 1))
    value.field_frameReserve = u8(wire.number(cursor, u64(value.field_frameReserve), 1))
    for index in 0..<2 {
        value.field_SN[index] = u32(wire.number(cursor, u64(value.field_SN[index]), 4))
    }
    for index in 0..<2 {
        value.field_version[index] = u32(wire.number(cursor, u64(value.field_version[index]), 4))
    }
    value.field_bandWidth = u16(wire.number(cursor, u64(value.field_bandWidth), 2))
    fields_Ros1Unitree_legged_msgsIMU(&value.field_imu, cursor)
    for index in 0..<20 {
        fields_Ros1Unitree_legged_msgsMotorState(&value.field_motorState[index], cursor)
    }
    fields_Ros1Unitree_legged_msgsBmsState(&value.field_bms, cursor)
    for index in 0..<4 {
        value.field_footForce[index] = transmute(i16)u16(wire.number(
            cursor,
            u64(transmute(u16)value.field_footForce[index]),
            2,
        ))
    }
    for index in 0..<4 {
        value.field_footForceEst[index] = transmute(i16)u16(wire.number(
            cursor,
            u64(transmute(u16)value.field_footForceEst[index]),
            2,
        ))
    }
    value.field_tick = u32(wire.number(cursor, u64(value.field_tick), 4))
    for index in 0..<40 {
        value.field_wirelessRemote[index] = u8(wire.number(cursor, u64(value.field_wirelessRemote[index]), 1))
    }
    value.field_reserve = u32(wire.number(cursor, u64(value.field_reserve), 4))
    value.field_crc = u32(wire.number(cursor, u64(value.field_crc), 4))
    for index in 0..<4 {
        fields_Ros1Unitree_legged_msgsCartesian(&value.field_eeForceRaw[index], cursor)
    }
    for index in 0..<4 {
        fields_Ros1Unitree_legged_msgsCartesian(&value.field_eeForce[index], cursor)
    }
    fields_Ros1Unitree_legged_msgsCartesian(&value.field_position, cursor)
    fields_Ros1Unitree_legged_msgsCartesian(&value.field_velocity, cursor)
    fields_Ros1Unitree_legged_msgsCartesian(&value.field_velocity_w, cursor)
}
/// @brief Encode every complete original unitree_legged_msgs/LowState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Unitree_legged_msgsLowState :: proc "contextless"(
    value: ^Ros1Unitree_legged_msgsLowState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1069)], writing = true}
    fields_Ros1Unitree_legged_msgsLowState(value, &cursor)
    if cursor.code != 0 {
        return 0, cursor.code
    }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original unitree_legged_msgs/LowState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Unitree_legged_msgsLowState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Unitree_legged_msgsLowState, code: u32)
{
    if len(bytes) < 1069 || len(bytes) > 1069 {
        return value, 22
    }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Unitree_legged_msgsLowState(&value, &cursor)
    if cursor.code != 0 {
        return value, cursor.code
    }
    if cursor.at != len(bytes) {
        return value, 22
    }
    return value, 0
}

