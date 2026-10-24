// @file records.odin
// @brief Complete owned original clearpath ROS 2 records and codecs.
// @details No generated record owns a native ROS object or grants a capability.
package records
import wire "native:odin/wire"

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
/// @details Retain all 1 original fields and 9 constants. Wire extent 4..6 bytes.
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
Ros2Clearpath_platform_msgsMsgFans_Codec_Identity :: "UWVMROS1_addc15a9b6db4f7a0eba3545f02ece0800e48796f71e387b4d249af861f95317"
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
/// @details Retain all 1 original fields and 20 constants. Wire extent 4..10 bytes.
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
Ros2Clearpath_platform_msgsMsgLights_Codec_Identity :: "UWVMROS1_14da254234c9c897e39bf4ee0db8faad0798d23fe7017195f35f88fb6e0b3332"
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

/// @brief Complete original clearpath_platform_msgs/msg/Power value.
/// @details Retain all 8 original fields and 42 constants. Wire extent 25..169 bytes.
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
Ros2Clearpath_platform_msgsMsgPower_Codec_Identity :: "UWVMROS1_e97ba89dea149ff43d0134038985ea45d2f072af592ea128aa5502a053478d22"
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
/// @details Retain all 7 original fields and 0 constants. Wire extent 44..684 bytes.
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
    /// @brief Original clearpath_platform_msgs/msg/Status.pcb_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_pcb_temperature: f32,
    /// @brief Original clearpath_platform_msgs/msg/Status.mcu_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mcu_temperature: f32,
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
Ros2Clearpath_platform_msgsMsgStatus_Minimum_Wire_Bytes :: 44
/// @brief Original complete clearpath_platform_msgs/msg/Status maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgStatus_Maximum_Wire_Bytes :: 684
/// @brief Original complete clearpath_platform_msgs/msg/Status codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Clearpath_platform_msgsMsgStatus_Codec_Identity :: "UWVMROS1_331afb70728e70e0391da1b2a0f2b97fdc8742a363a2b007606121ad778dd5c1"
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
    value.field_pcb_temperature = wire.float32(cursor, value.field_pcb_temperature)
    value.field_mcu_temperature = wire.float32(cursor, value.field_mcu_temperature)
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
    cursor := wire.Cursor{bytes = output[:min(len(output), 684)], writing = true}
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
    if len(bytes) < 44 || len(bytes) > 684 { return value, 22 }
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

