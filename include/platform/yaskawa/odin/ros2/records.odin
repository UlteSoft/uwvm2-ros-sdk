// @file records.odin
// @brief Complete owned original YASKAWA ROS 2 records and codecs.
// @details No generated record owns a native ROS object or grants a capability.
package records
import wire "ros:odin"

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

/// @brief Complete original geometry_msgs/msg/TransformStamped value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 72..648 bytes.
Ros2Geometry_msgsMsgTransformStamped :: struct {
    /// @brief Original geometry_msgs/msg/TransformStamped.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original geometry_msgs/msg/TransformStamped.child_frame_id field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_child_frame_id: wire.Text(512, false),
    /// @brief Original geometry_msgs/msg/TransformStamped.transform field.
    /// @details Original type geometry_msgs/msg/Transform. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_transform: Ros2Geometry_msgsMsgTransform,
}
/// @brief Original complete geometry_msgs/msg/TransformStamped minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgTransformStamped_Minimum_Wire_Bytes :: 72
/// @brief Original complete geometry_msgs/msg/TransformStamped maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgTransformStamped_Maximum_Wire_Bytes :: 648
/// @brief Original complete geometry_msgs/msg/TransformStamped codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgTransformStamped_Codec_Identity :: "UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792"
/// @brief Traverse every original field of complete geometry_msgs/msg/TransformStamped.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Geometry_msgsMsgTransformStamped :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgTransformStamped, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    wire.text(cursor, &value.field_child_frame_id)
    fields_Ros2Geometry_msgsMsgTransform(&value.field_transform, cursor)
}
/// @brief Encode every complete original geometry_msgs/msg/TransformStamped field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Geometry_msgsMsgTransformStamped :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgTransformStamped, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 648)], writing = true}
    fields_Ros2Geometry_msgsMsgTransformStamped(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/msg/TransformStamped.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Geometry_msgsMsgTransformStamped :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Geometry_msgsMsgTransformStamped, code: u32)
{
    if len(bytes) < 72 || len(bytes) > 648 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Geometry_msgsMsgTransformStamped(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/msg/DebugLevel value.
/// @details Retain all 1 original fields and 6 constants. Wire extent 1..1 bytes.
Ros2Industrial_msgsMsgDebugLevel :: struct {
    /// @brief Original industrial_msgs/msg/DebugLevel.val field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_val: u8,
}
/// @brief Original complete industrial_msgs/msg/DebugLevel minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgDebugLevel_Minimum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/msg/DebugLevel maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgDebugLevel_Maximum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/msg/DebugLevel codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgDebugLevel_Codec_Identity :: "UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79"
/// @brief Original industrial_msgs/msg/DebugLevel.DEBUG constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgDebugLevel_DEBUG :: 5
/// @brief Original industrial_msgs/msg/DebugLevel.INFO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgDebugLevel_INFO :: 4
/// @brief Original industrial_msgs/msg/DebugLevel.WARN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgDebugLevel_WARN :: 3
/// @brief Original industrial_msgs/msg/DebugLevel.ERROR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgDebugLevel_ERROR :: 2
/// @brief Original industrial_msgs/msg/DebugLevel.FATAL constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgDebugLevel_FATAL :: 1
/// @brief Original industrial_msgs/msg/DebugLevel.NONE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgDebugLevel_NONE :: 0
/// @brief Traverse every original field of complete industrial_msgs/msg/DebugLevel.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsMsgDebugLevel :: proc "contextless"(
    value: ^Ros2Industrial_msgsMsgDebugLevel, cursor: ^wire.Cursor)
{
    value.field_val = u8(wire.number(cursor, u64(value.field_val), 1))
}
/// @brief Encode every complete original industrial_msgs/msg/DebugLevel field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsMsgDebugLevel :: proc "contextless"(
    value: ^Ros2Industrial_msgsMsgDebugLevel, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Industrial_msgsMsgDebugLevel(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/msg/DebugLevel.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsMsgDebugLevel :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsMsgDebugLevel, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsMsgDebugLevel(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/msg/DeviceInfo value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 20..2580 bytes.
Ros2Industrial_msgsMsgDeviceInfo :: struct {
    /// @brief Original industrial_msgs/msg/DeviceInfo.model field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_model: wire.Text(512, false),
    /// @brief Original industrial_msgs/msg/DeviceInfo.serial_number field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_serial_number: wire.Text(512, false),
    /// @brief Original industrial_msgs/msg/DeviceInfo.hw_version field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_hw_version: wire.Text(512, false),
    /// @brief Original industrial_msgs/msg/DeviceInfo.sw_version field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_sw_version: wire.Text(512, false),
    /// @brief Original industrial_msgs/msg/DeviceInfo.address field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_address: wire.Text(512, false),
}
/// @brief Original complete industrial_msgs/msg/DeviceInfo minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgDeviceInfo_Minimum_Wire_Bytes :: 20
/// @brief Original complete industrial_msgs/msg/DeviceInfo maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgDeviceInfo_Maximum_Wire_Bytes :: 2580
/// @brief Original complete industrial_msgs/msg/DeviceInfo codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgDeviceInfo_Codec_Identity :: "UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b"
/// @brief Traverse every original field of complete industrial_msgs/msg/DeviceInfo.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsMsgDeviceInfo :: proc "contextless"(
    value: ^Ros2Industrial_msgsMsgDeviceInfo, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_model)
    wire.text(cursor, &value.field_serial_number)
    wire.text(cursor, &value.field_hw_version)
    wire.text(cursor, &value.field_sw_version)
    wire.text(cursor, &value.field_address)
}
/// @brief Encode every complete original industrial_msgs/msg/DeviceInfo field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsMsgDeviceInfo :: proc "contextless"(
    value: ^Ros2Industrial_msgsMsgDeviceInfo, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2580)], writing = true}
    fields_Ros2Industrial_msgsMsgDeviceInfo(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/msg/DeviceInfo.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsMsgDeviceInfo :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsMsgDeviceInfo, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 2580 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsMsgDeviceInfo(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/msg/RobotMode value.
/// @details Retain all 1 original fields and 3 constants. Wire extent 1..1 bytes.
Ros2Industrial_msgsMsgRobotMode :: struct {
    /// @brief Original industrial_msgs/msg/RobotMode.val field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_val: i8,
}
/// @brief Original complete industrial_msgs/msg/RobotMode minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgRobotMode_Minimum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/msg/RobotMode maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgRobotMode_Maximum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/msg/RobotMode codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgRobotMode_Codec_Identity :: "UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c"
/// @brief Original industrial_msgs/msg/RobotMode.UNKNOWN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgRobotMode_UNKNOWN :: -1
/// @brief Original industrial_msgs/msg/RobotMode.MANUAL constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgRobotMode_MANUAL :: 1
/// @brief Original industrial_msgs/msg/RobotMode.AUTO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgRobotMode_AUTO :: 2
/// @brief Traverse every original field of complete industrial_msgs/msg/RobotMode.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsMsgRobotMode :: proc "contextless"(
    value: ^Ros2Industrial_msgsMsgRobotMode, cursor: ^wire.Cursor)
{
    value.field_val = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_val), 1))
}
/// @brief Encode every complete original industrial_msgs/msg/RobotMode field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsMsgRobotMode :: proc "contextless"(
    value: ^Ros2Industrial_msgsMsgRobotMode, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Industrial_msgsMsgRobotMode(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/msg/RobotMode.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsMsgRobotMode :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsMsgRobotMode, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsMsgRobotMode(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/msg/TriState value.
/// @details Retain all 1 original fields and 11 constants. Wire extent 1..1 bytes.
Ros2Industrial_msgsMsgTriState :: struct {
    /// @brief Original industrial_msgs/msg/TriState.val field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_val: i8,
}
/// @brief Original complete industrial_msgs/msg/TriState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgTriState_Minimum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/msg/TriState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgTriState_Maximum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/msg/TriState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgTriState_Codec_Identity :: "UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841"
/// @brief Original industrial_msgs/msg/TriState.UNKNOWN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgTriState_UNKNOWN :: -1
/// @brief Original industrial_msgs/msg/TriState.TRUE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgTriState_TRUE :: 1
/// @brief Original industrial_msgs/msg/TriState.ON constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgTriState_ON :: 1
/// @brief Original industrial_msgs/msg/TriState.ENABLED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgTriState_ENABLED :: 1
/// @brief Original industrial_msgs/msg/TriState.HIGH constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgTriState_HIGH :: 1
/// @brief Original industrial_msgs/msg/TriState.CLOSED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgTriState_CLOSED :: 1
/// @brief Original industrial_msgs/msg/TriState.FALSE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgTriState_FALSE :: 0
/// @brief Original industrial_msgs/msg/TriState.OFF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgTriState_OFF :: 0
/// @brief Original industrial_msgs/msg/TriState.DISABLED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgTriState_DISABLED :: 0
/// @brief Original industrial_msgs/msg/TriState.LOW constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgTriState_LOW :: 0
/// @brief Original industrial_msgs/msg/TriState.OPEN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgTriState_OPEN :: 0
/// @brief Traverse every original field of complete industrial_msgs/msg/TriState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsMsgTriState :: proc "contextless"(
    value: ^Ros2Industrial_msgsMsgTriState, cursor: ^wire.Cursor)
{
    value.field_val = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_val), 1))
}
/// @brief Encode every complete original industrial_msgs/msg/TriState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsMsgTriState :: proc "contextless"(
    value: ^Ros2Industrial_msgsMsgTriState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Industrial_msgsMsgTriState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/msg/TriState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsMsgTriState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsMsgTriState, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsMsgTriState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/msg/RobotStatus value.
/// @details Retain all 8 original fields and 0 constants. Wire extent 22..150 bytes.
Ros2Industrial_msgsMsgRobotStatus :: struct {
    /// @brief Original industrial_msgs/msg/RobotStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original industrial_msgs/msg/RobotStatus.mode field.
    /// @details Original type industrial_msgs/msg/RobotMode. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_mode: Ros2Industrial_msgsMsgRobotMode,
    /// @brief Original industrial_msgs/msg/RobotStatus.e_stopped field.
    /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_e_stopped: Ros2Industrial_msgsMsgTriState,
    /// @brief Original industrial_msgs/msg/RobotStatus.drives_powered field.
    /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_drives_powered: Ros2Industrial_msgsMsgTriState,
    /// @brief Original industrial_msgs/msg/RobotStatus.motion_possible field.
    /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_motion_possible: Ros2Industrial_msgsMsgTriState,
    /// @brief Original industrial_msgs/msg/RobotStatus.in_motion field.
    /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_in_motion: Ros2Industrial_msgsMsgTriState,
    /// @brief Original industrial_msgs/msg/RobotStatus.in_error field.
    /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_in_error: Ros2Industrial_msgsMsgTriState,
    /// @brief Original industrial_msgs/msg/RobotStatus.error_codes field.
    /// @details Original type int32. Shape sequence; bound/count 16 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_error_codes: wire.Sequence(i32, 16),
}
/// @brief Original complete industrial_msgs/msg/RobotStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgRobotStatus_Minimum_Wire_Bytes :: 22
/// @brief Original complete industrial_msgs/msg/RobotStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgRobotStatus_Maximum_Wire_Bytes :: 150
/// @brief Original complete industrial_msgs/msg/RobotStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgRobotStatus_Codec_Identity :: "UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba"
/// @brief Traverse every original field of complete industrial_msgs/msg/RobotStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsMsgRobotStatus :: proc "contextless"(
    value: ^Ros2Industrial_msgsMsgRobotStatus, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    fields_Ros2Industrial_msgsMsgRobotMode(&value.field_mode, cursor)
    fields_Ros2Industrial_msgsMsgTriState(&value.field_e_stopped, cursor)
    fields_Ros2Industrial_msgsMsgTriState(&value.field_drives_powered, cursor)
    fields_Ros2Industrial_msgsMsgTriState(&value.field_motion_possible, cursor)
    fields_Ros2Industrial_msgsMsgTriState(&value.field_in_motion, cursor)
    fields_Ros2Industrial_msgsMsgTriState(&value.field_in_error, cursor)
    value.field_error_codes.size = u32(wire.number(cursor, u64(value.field_error_codes.size), 4))
    if value.field_error_codes.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_error_codes.size) {
        value.field_error_codes.items[index] = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_error_codes.items[index]), 4))
    }
}
/// @brief Encode every complete original industrial_msgs/msg/RobotStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsMsgRobotStatus :: proc "contextless"(
    value: ^Ros2Industrial_msgsMsgRobotStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 150)], writing = true}
    fields_Ros2Industrial_msgsMsgRobotStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/msg/RobotStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsMsgRobotStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsMsgRobotStatus, code: u32)
{
    if len(bytes) < 22 || len(bytes) > 150 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsMsgRobotStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/msg/ServiceReturnCode value.
/// @details Retain all 1 original fields and 2 constants. Wire extent 1..1 bytes.
Ros2Industrial_msgsMsgServiceReturnCode :: struct {
    /// @brief Original industrial_msgs/msg/ServiceReturnCode.val field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_val: i8,
}
/// @brief Original complete industrial_msgs/msg/ServiceReturnCode minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgServiceReturnCode_Minimum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/msg/ServiceReturnCode maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgServiceReturnCode_Maximum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/msg/ServiceReturnCode codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsMsgServiceReturnCode_Codec_Identity :: "UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5"
/// @brief Original industrial_msgs/msg/ServiceReturnCode.SUCCESS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgServiceReturnCode_SUCCESS :: 1
/// @brief Original industrial_msgs/msg/ServiceReturnCode.FAILURE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Industrial_msgsMsgServiceReturnCode_FAILURE :: -1
/// @brief Traverse every original field of complete industrial_msgs/msg/ServiceReturnCode.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsMsgServiceReturnCode :: proc "contextless"(
    value: ^Ros2Industrial_msgsMsgServiceReturnCode, cursor: ^wire.Cursor)
{
    value.field_val = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_val), 1))
}
/// @brief Encode every complete original industrial_msgs/msg/ServiceReturnCode field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsMsgServiceReturnCode :: proc "contextless"(
    value: ^Ros2Industrial_msgsMsgServiceReturnCode, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Industrial_msgsMsgServiceReturnCode(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/msg/ServiceReturnCode.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsMsgServiceReturnCode :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsMsgServiceReturnCode, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsMsgServiceReturnCode(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/srv/CmdJointTrajectory_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 20..4164 bytes.
Ros2Industrial_msgsSrvCmdJointTrajectory_Request :: struct {
    /// @brief Original industrial_msgs/srv/CmdJointTrajectory_Request.trajectory field.
    /// @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_trajectory: Ros2Trajectory_msgsMsgJointTrajectory,
}
/// @brief Original complete industrial_msgs/srv/CmdJointTrajectory_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvCmdJointTrajectory_Request_Minimum_Wire_Bytes :: 20
/// @brief Original complete industrial_msgs/srv/CmdJointTrajectory_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvCmdJointTrajectory_Request_Maximum_Wire_Bytes :: 4164
/// @brief Original complete industrial_msgs/srv/CmdJointTrajectory_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvCmdJointTrajectory_Request_Codec_Identity :: "UWVMROS1_1def3934b243546a4591b7be1ef2eb27002fbd9d3725302016e3b1846805149d"
/// @brief Traverse every original field of complete industrial_msgs/srv/CmdJointTrajectory_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsSrvCmdJointTrajectory_Request :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvCmdJointTrajectory_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Trajectory_msgsMsgJointTrajectory(&value.field_trajectory, cursor)
}
/// @brief Encode every complete original industrial_msgs/srv/CmdJointTrajectory_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsSrvCmdJointTrajectory_Request :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvCmdJointTrajectory_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4164)], writing = true}
    fields_Ros2Industrial_msgsSrvCmdJointTrajectory_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/srv/CmdJointTrajectory_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsSrvCmdJointTrajectory_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsSrvCmdJointTrajectory_Request, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 4164 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsSrvCmdJointTrajectory_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/srv/CmdJointTrajectory_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Industrial_msgsSrvCmdJointTrajectory_Response :: struct {
    /// @brief Original industrial_msgs/srv/CmdJointTrajectory_Response.code field.
    /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_code: Ros2Industrial_msgsMsgServiceReturnCode,
}
/// @brief Original complete industrial_msgs/srv/CmdJointTrajectory_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvCmdJointTrajectory_Response_Minimum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/CmdJointTrajectory_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvCmdJointTrajectory_Response_Maximum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/CmdJointTrajectory_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvCmdJointTrajectory_Response_Codec_Identity :: "UWVMROS1_1e4d064ef659e5d1cc73bdd90f82657a16087c96e0f75b632e2be2be884bca8b"
/// @brief Traverse every original field of complete
/// industrial_msgs/srv/CmdJointTrajectory_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsSrvCmdJointTrajectory_Response :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvCmdJointTrajectory_Response, cursor: ^wire.Cursor)
{
    fields_Ros2Industrial_msgsMsgServiceReturnCode(&value.field_code, cursor)
}
/// @brief Encode every complete original industrial_msgs/srv/CmdJointTrajectory_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsSrvCmdJointTrajectory_Response :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvCmdJointTrajectory_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Industrial_msgsSrvCmdJointTrajectory_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/srv/CmdJointTrajectory_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsSrvCmdJointTrajectory_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsSrvCmdJointTrajectory_Response, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsSrvCmdJointTrajectory_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/srv/GetRobotInfo_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Industrial_msgsSrvGetRobotInfo_Request :: struct {
}
/// @brief Original complete industrial_msgs/srv/GetRobotInfo_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvGetRobotInfo_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete industrial_msgs/srv/GetRobotInfo_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvGetRobotInfo_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete industrial_msgs/srv/GetRobotInfo_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvGetRobotInfo_Request_Codec_Identity :: "UWVMROS1_688a272f6ee39921013c6c39a7b0b0c4e2cda5119787088234103518ba25c1d2"
/// @brief Traverse every original field of complete industrial_msgs/srv/GetRobotInfo_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsSrvGetRobotInfo_Request :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvGetRobotInfo_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original industrial_msgs/srv/GetRobotInfo_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsSrvGetRobotInfo_Request :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvGetRobotInfo_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Industrial_msgsSrvGetRobotInfo_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/srv/GetRobotInfo_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsSrvGetRobotInfo_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsSrvGetRobotInfo_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsSrvGetRobotInfo_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/srv/GetRobotInfo_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 25..32768 bytes.
Ros2Industrial_msgsSrvGetRobotInfo_Response :: struct {
    /// @brief Original industrial_msgs/srv/GetRobotInfo_Response.controller field.
    /// @details Original type industrial_msgs/msg/DeviceInfo. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_controller: Ros2Industrial_msgsMsgDeviceInfo,
    /// @brief Original industrial_msgs/srv/GetRobotInfo_Response.robots field.
    /// @details Original type industrial_msgs/msg/DeviceInfo. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_robots: wire.Sequence(Ros2Industrial_msgsMsgDeviceInfo, 16),
    /// @brief Original industrial_msgs/srv/GetRobotInfo_Response.code field.
    /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_code: Ros2Industrial_msgsMsgServiceReturnCode,
}
/// @brief Original complete industrial_msgs/srv/GetRobotInfo_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvGetRobotInfo_Response_Minimum_Wire_Bytes :: 25
/// @brief Original complete industrial_msgs/srv/GetRobotInfo_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvGetRobotInfo_Response_Maximum_Wire_Bytes :: 32768
/// @brief Original complete industrial_msgs/srv/GetRobotInfo_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvGetRobotInfo_Response_Codec_Identity :: "UWVMROS1_6d37cdcd8afc918329d7856e682d7fcdae2931832474a9194143c21079ed4152"
/// @brief Traverse every original field of complete industrial_msgs/srv/GetRobotInfo_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsSrvGetRobotInfo_Response :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvGetRobotInfo_Response, cursor: ^wire.Cursor)
{
    fields_Ros2Industrial_msgsMsgDeviceInfo(&value.field_controller, cursor)
    value.field_robots.size = u32(wire.number(cursor, u64(value.field_robots.size), 4))
    if value.field_robots.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_robots.size) {
        fields_Ros2Industrial_msgsMsgDeviceInfo(&value.field_robots.items[index], cursor)
    }
    fields_Ros2Industrial_msgsMsgServiceReturnCode(&value.field_code, cursor)
}
/// @brief Encode every complete original industrial_msgs/srv/GetRobotInfo_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsSrvGetRobotInfo_Response :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvGetRobotInfo_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 32768)], writing = true}
    fields_Ros2Industrial_msgsSrvGetRobotInfo_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/srv/GetRobotInfo_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsSrvGetRobotInfo_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsSrvGetRobotInfo_Response, code: u32)
{
    if len(bytes) < 25 || len(bytes) > 32768 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsSrvGetRobotInfo_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/srv/SetDrivePower_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Industrial_msgsSrvSetDrivePower_Request :: struct {
    /// @brief Original industrial_msgs/srv/SetDrivePower_Request.drive_power field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_drive_power: bool,
}
/// @brief Original complete industrial_msgs/srv/SetDrivePower_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvSetDrivePower_Request_Minimum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/SetDrivePower_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvSetDrivePower_Request_Maximum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/SetDrivePower_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvSetDrivePower_Request_Codec_Identity :: "UWVMROS1_b4fc5e109e131a97820ab5856b34839c572ac0b0c256d70457c176e401844f96"
/// @brief Traverse every original field of complete industrial_msgs/srv/SetDrivePower_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsSrvSetDrivePower_Request :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvSetDrivePower_Request, cursor: ^wire.Cursor)
{
    value.field_drive_power = wire.boolean(cursor, value.field_drive_power)
}
/// @brief Encode every complete original industrial_msgs/srv/SetDrivePower_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsSrvSetDrivePower_Request :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvSetDrivePower_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Industrial_msgsSrvSetDrivePower_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/srv/SetDrivePower_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsSrvSetDrivePower_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsSrvSetDrivePower_Request, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsSrvSetDrivePower_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/srv/SetDrivePower_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Industrial_msgsSrvSetDrivePower_Response :: struct {
    /// @brief Original industrial_msgs/srv/SetDrivePower_Response.code field.
    /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_code: Ros2Industrial_msgsMsgServiceReturnCode,
}
/// @brief Original complete industrial_msgs/srv/SetDrivePower_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvSetDrivePower_Response_Minimum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/SetDrivePower_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvSetDrivePower_Response_Maximum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/SetDrivePower_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvSetDrivePower_Response_Codec_Identity :: "UWVMROS1_050fb9a727ebedd240e9023b9a2379a5d72e0d9fa335bead0c40d783abb22cff"
/// @brief Traverse every original field of complete industrial_msgs/srv/SetDrivePower_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsSrvSetDrivePower_Response :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvSetDrivePower_Response, cursor: ^wire.Cursor)
{
    fields_Ros2Industrial_msgsMsgServiceReturnCode(&value.field_code, cursor)
}
/// @brief Encode every complete original industrial_msgs/srv/SetDrivePower_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsSrvSetDrivePower_Response :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvSetDrivePower_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Industrial_msgsSrvSetDrivePower_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/srv/SetDrivePower_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsSrvSetDrivePower_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsSrvSetDrivePower_Response, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsSrvSetDrivePower_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/srv/SetRemoteLoggerLevel_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request :: struct {
    /// @brief Original industrial_msgs/srv/SetRemoteLoggerLevel_Request.level field.
    /// @details Original type industrial_msgs/msg/DebugLevel. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_level: Ros2Industrial_msgsMsgDebugLevel,
}
/// @brief Original complete industrial_msgs/srv/SetRemoteLoggerLevel_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request_Minimum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/SetRemoteLoggerLevel_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request_Maximum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/SetRemoteLoggerLevel_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request_Codec_Identity :: "UWVMROS1_bbadd39c05cab90b14f4b1fad23ff05ac83325f6cc57810cd649e04fa29fe014"
/// @brief Traverse every original field of complete
/// industrial_msgs/srv/SetRemoteLoggerLevel_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Industrial_msgsMsgDebugLevel(&value.field_level, cursor)
}
/// @brief Encode every complete original industrial_msgs/srv/SetRemoteLoggerLevel_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/srv/SetRemoteLoggerLevel_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/srv/SetRemoteLoggerLevel_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response :: struct {
    /// @brief Original industrial_msgs/srv/SetRemoteLoggerLevel_Response.code field.
    /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_code: Ros2Industrial_msgsMsgServiceReturnCode,
}
/// @brief Original complete industrial_msgs/srv/SetRemoteLoggerLevel_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response_Minimum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/SetRemoteLoggerLevel_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response_Maximum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/SetRemoteLoggerLevel_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response_Codec_Identity :: "UWVMROS1_b8681d031a4bb5a67b842277af2e2156e8339bdef23be88d2b64e296a7e3d63b"
/// @brief Traverse every original field of complete
/// industrial_msgs/srv/SetRemoteLoggerLevel_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response, cursor: ^wire.Cursor)
{
    fields_Ros2Industrial_msgsMsgServiceReturnCode(&value.field_code, cursor)
}
/// @brief Encode every complete original industrial_msgs/srv/SetRemoteLoggerLevel_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/srv/SetRemoteLoggerLevel_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/srv/StartMotion_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Industrial_msgsSrvStartMotion_Request :: struct {
}
/// @brief Original complete industrial_msgs/srv/StartMotion_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvStartMotion_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete industrial_msgs/srv/StartMotion_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvStartMotion_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete industrial_msgs/srv/StartMotion_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvStartMotion_Request_Codec_Identity :: "UWVMROS1_0a96fb9489f863612a91bf82f995f2f28bcb7fb403bde74c617925c789e4dcd8"
/// @brief Traverse every original field of complete industrial_msgs/srv/StartMotion_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsSrvStartMotion_Request :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvStartMotion_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original industrial_msgs/srv/StartMotion_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsSrvStartMotion_Request :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvStartMotion_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Industrial_msgsSrvStartMotion_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/srv/StartMotion_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsSrvStartMotion_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsSrvStartMotion_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsSrvStartMotion_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/srv/StartMotion_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Industrial_msgsSrvStartMotion_Response :: struct {
    /// @brief Original industrial_msgs/srv/StartMotion_Response.code field.
    /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_code: Ros2Industrial_msgsMsgServiceReturnCode,
}
/// @brief Original complete industrial_msgs/srv/StartMotion_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvStartMotion_Response_Minimum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/StartMotion_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvStartMotion_Response_Maximum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/StartMotion_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvStartMotion_Response_Codec_Identity :: "UWVMROS1_3bb3650fbe638a6d300bcd9fcd5acf574bd54d00a7368edd3014bf44dcf66c16"
/// @brief Traverse every original field of complete industrial_msgs/srv/StartMotion_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsSrvStartMotion_Response :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvStartMotion_Response, cursor: ^wire.Cursor)
{
    fields_Ros2Industrial_msgsMsgServiceReturnCode(&value.field_code, cursor)
}
/// @brief Encode every complete original industrial_msgs/srv/StartMotion_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsSrvStartMotion_Response :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvStartMotion_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Industrial_msgsSrvStartMotion_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/srv/StartMotion_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsSrvStartMotion_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsSrvStartMotion_Response, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsSrvStartMotion_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/srv/StopMotion_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Industrial_msgsSrvStopMotion_Request :: struct {
}
/// @brief Original complete industrial_msgs/srv/StopMotion_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvStopMotion_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete industrial_msgs/srv/StopMotion_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvStopMotion_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete industrial_msgs/srv/StopMotion_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvStopMotion_Request_Codec_Identity :: "UWVMROS1_fe5a7cf0da30270eab5cfb1ab8c1fbd37d2b4c4f91ef29662a0ddcac39e6ef49"
/// @brief Traverse every original field of complete industrial_msgs/srv/StopMotion_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsSrvStopMotion_Request :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvStopMotion_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original industrial_msgs/srv/StopMotion_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsSrvStopMotion_Request :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvStopMotion_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Industrial_msgsSrvStopMotion_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/srv/StopMotion_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsSrvStopMotion_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsSrvStopMotion_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsSrvStopMotion_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original industrial_msgs/srv/StopMotion_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Industrial_msgsSrvStopMotion_Response :: struct {
    /// @brief Original industrial_msgs/srv/StopMotion_Response.code field.
    /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_code: Ros2Industrial_msgsMsgServiceReturnCode,
}
/// @brief Original complete industrial_msgs/srv/StopMotion_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvStopMotion_Response_Minimum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/StopMotion_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvStopMotion_Response_Maximum_Wire_Bytes :: 1
/// @brief Original complete industrial_msgs/srv/StopMotion_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Industrial_msgsSrvStopMotion_Response_Codec_Identity :: "UWVMROS1_c26bda240d86becc5b8b4ea80380eba3602092a5ec4a06818dbfbd38c24015b5"
/// @brief Traverse every original field of complete industrial_msgs/srv/StopMotion_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Industrial_msgsSrvStopMotion_Response :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvStopMotion_Response, cursor: ^wire.Cursor)
{
    fields_Ros2Industrial_msgsMsgServiceReturnCode(&value.field_code, cursor)
}
/// @brief Encode every complete original industrial_msgs/srv/StopMotion_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Industrial_msgsSrvStopMotion_Response :: proc "contextless"(
    value: ^Ros2Industrial_msgsSrvStopMotion_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Industrial_msgsSrvStopMotion_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original industrial_msgs/srv/StopMotion_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Industrial_msgsSrvStopMotion_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Industrial_msgsSrvStopMotion_Response, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Industrial_msgsSrvStopMotion_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/msg/AlarmCauseRemedy value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..1032 bytes.
Ros2Motoros2_interfacesMsgAlarmCauseRemedy :: struct {
    /// @brief Original motoros2_interfaces/msg/AlarmCauseRemedy.cause field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_cause: wire.Text(512, false),
    /// @brief Original motoros2_interfaces/msg/AlarmCauseRemedy.remedy field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_remedy: wire.Text(512, false),
}
/// @brief Original complete motoros2_interfaces/msg/AlarmCauseRemedy minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgAlarmCauseRemedy_Minimum_Wire_Bytes :: 8
/// @brief Original complete motoros2_interfaces/msg/AlarmCauseRemedy maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgAlarmCauseRemedy_Maximum_Wire_Bytes :: 1032
/// @brief Original complete motoros2_interfaces/msg/AlarmCauseRemedy codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgAlarmCauseRemedy_Codec_Identity :: "UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5"
/// @brief Traverse every original field of complete motoros2_interfaces/msg/AlarmCauseRemedy.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesMsgAlarmCauseRemedy :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgAlarmCauseRemedy, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_cause)
    wire.text(cursor, &value.field_remedy)
}
/// @brief Encode every complete original motoros2_interfaces/msg/AlarmCauseRemedy field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesMsgAlarmCauseRemedy :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgAlarmCauseRemedy, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1032)], writing = true}
    fields_Ros2Motoros2_interfacesMsgAlarmCauseRemedy(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/msg/AlarmCauseRemedy.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesMsgAlarmCauseRemedy :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesMsgAlarmCauseRemedy, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 1032 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesMsgAlarmCauseRemedy(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/msg/AlarmInfo value.
/// @details Retain all 7 original fields and 0 constants. Wire extent 32..25248 bytes.
Ros2Motoros2_interfacesMsgAlarmInfo :: struct {
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.number field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_number: u32,
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.sub_code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sub_code: i32,
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.datetime field.
    /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_datetime: Ros2Builtin_interfacesMsgTime,
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.contents field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_contents: wire.Text(4096, false),
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.description field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_description: wire.Text(4096, false),
    /// @brief Original motoros2_interfaces/msg/AlarmInfo.help field.
    /// @details Original type motoros2_interfaces/msg/AlarmCauseRemedy. Shape sequence; bound/count
    /// 16 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_help: wire.Sequence(Ros2Motoros2_interfacesMsgAlarmCauseRemedy, 16),
}
/// @brief Original complete motoros2_interfaces/msg/AlarmInfo minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgAlarmInfo_Minimum_Wire_Bytes :: 32
/// @brief Original complete motoros2_interfaces/msg/AlarmInfo maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgAlarmInfo_Maximum_Wire_Bytes :: 25248
/// @brief Original complete motoros2_interfaces/msg/AlarmInfo codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgAlarmInfo_Codec_Identity :: "UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f"
/// @brief Traverse every original field of complete motoros2_interfaces/msg/AlarmInfo.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesMsgAlarmInfo :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgAlarmInfo, cursor: ^wire.Cursor)
{
    value.field_number = u32(wire.number(cursor, u64(value.field_number), 4))
    wire.text(cursor, &value.field_message)
    value.field_sub_code = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sub_code), 4))
    fields_Ros2Builtin_interfacesMsgTime(&value.field_datetime, cursor)
    wire.text(cursor, &value.field_contents)
    wire.text(cursor, &value.field_description)
    value.field_help.size = u32(wire.number(cursor, u64(value.field_help.size), 4))
    if value.field_help.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_help.size) {
        fields_Ros2Motoros2_interfacesMsgAlarmCauseRemedy(&value.field_help.items[index], cursor)
    }
}
/// @brief Encode every complete original motoros2_interfaces/msg/AlarmInfo field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesMsgAlarmInfo :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgAlarmInfo, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 25248)], writing = true}
    fields_Ros2Motoros2_interfacesMsgAlarmInfo(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/msg/AlarmInfo.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesMsgAlarmInfo :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesMsgAlarmInfo, code: u32)
{
    if len(bytes) < 32 || len(bytes) > 25248 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesMsgAlarmInfo(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/msg/ErrorInfo value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 20..532 bytes.
Ros2Motoros2_interfacesMsgErrorInfo :: struct {
    /// @brief Original motoros2_interfaces/msg/ErrorInfo.number field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_number: u32,
    /// @brief Original motoros2_interfaces/msg/ErrorInfo.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
    /// @brief Original motoros2_interfaces/msg/ErrorInfo.sub_code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sub_code: i32,
    /// @brief Original motoros2_interfaces/msg/ErrorInfo.datetime field.
    /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_datetime: Ros2Builtin_interfacesMsgTime,
}
/// @brief Original complete motoros2_interfaces/msg/ErrorInfo minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgErrorInfo_Minimum_Wire_Bytes :: 20
/// @brief Original complete motoros2_interfaces/msg/ErrorInfo maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgErrorInfo_Maximum_Wire_Bytes :: 532
/// @brief Original complete motoros2_interfaces/msg/ErrorInfo codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgErrorInfo_Codec_Identity :: "UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67"
/// @brief Traverse every original field of complete motoros2_interfaces/msg/ErrorInfo.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesMsgErrorInfo :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgErrorInfo, cursor: ^wire.Cursor)
{
    value.field_number = u32(wire.number(cursor, u64(value.field_number), 4))
    wire.text(cursor, &value.field_message)
    value.field_sub_code = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sub_code), 4))
    fields_Ros2Builtin_interfacesMsgTime(&value.field_datetime, cursor)
}
/// @brief Encode every complete original motoros2_interfaces/msg/ErrorInfo field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesMsgErrorInfo :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgErrorInfo, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 532)], writing = true}
    fields_Ros2Motoros2_interfacesMsgErrorInfo(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/msg/ErrorInfo.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesMsgErrorInfo :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesMsgErrorInfo, code: u32)
{
    if len(bytes) < 20 || len(bytes) > 532 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesMsgErrorInfo(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/msg/InformJobCrudResultCodes value.
/// @details Retain all 0 original fields and 12 constants. Wire extent 0..0 bytes.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes :: struct {
}
/// @brief Original complete motoros2_interfaces/msg/InformJobCrudResultCodes minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_Minimum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/msg/InformJobCrudResultCodes maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_Maximum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/msg/InformJobCrudResultCodes codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_Codec_Identity :: "UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613"
/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_OK constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_OK :: 1
/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_OK constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_OK :: "Success"
/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_REFRESHING_JOB_LIST
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_REFRESHING_JOB_LIST :: 10
/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_REFRESHING_JOB_LIST
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_REFRESHING_JOB_LIST :: "Error refreshing job list"
/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_FILE_COUNT
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_RETRIEVING_FILE_COUNT :: 11
/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_FILE_COUNT
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_RETRIEVING_FILE_COUNT :: "Error retrieving file count"
/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_TOO_MANY_JOBS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_TOO_MANY_JOBS :: 12
/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_TOO_MANY_JOBS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_TOO_MANY_JOBS :: "Too many jobs"
/// @brief Original
/// motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST :: 13
/// @brief Original
/// motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST :: "Failed retrieving job name from list"
/// @brief Original
/// motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE :: 14
/// @brief Original
/// motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInformJobCrudResultCodes_STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE :: "Error adding job name to service response"
/// @brief Traverse every original field of complete
/// motoros2_interfaces/msg/InformJobCrudResultCodes.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesMsgInformJobCrudResultCodes :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgInformJobCrudResultCodes, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original motoros2_interfaces/msg/InformJobCrudResultCodes field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesMsgInformJobCrudResultCodes :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgInformJobCrudResultCodes, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Motoros2_interfacesMsgInformJobCrudResultCodes(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/msg/InformJobCrudResultCodes.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesMsgInformJobCrudResultCodes :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesMsgInformJobCrudResultCodes, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesMsgInformJobCrudResultCodes(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/msg/InitTrajEnum value.
/// @details Retain all 1 original fields and 34 constants. Wire extent 2..2 bytes.
Ros2Motoros2_interfacesMsgInitTrajEnum :: struct {
    /// @brief Original motoros2_interfaces/msg/InitTrajEnum.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u16,
}
/// @brief Original complete motoros2_interfaces/msg/InitTrajEnum minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgInitTrajEnum_Minimum_Wire_Bytes :: 2
/// @brief Original complete motoros2_interfaces/msg/InitTrajEnum maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgInitTrajEnum_Maximum_Wire_Bytes :: 2
/// @brief Original complete motoros2_interfaces/msg/InitTrajEnum codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgInitTrajEnum_Codec_Identity :: "UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763"
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_OK :: 0
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_OK_STR :: "OK"
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_UNSPECIFIED :: 200
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_UNSPECIFIED_STR :: "Unspecified failure"
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_SMALL :: 201
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_SMALL_STR :: "Trajectory must contain at least two points."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_BIG :: 202
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_TOO_BIG_STR :: "Trajectory contains too many points (Not enough memory)."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_ALREADY_IN_MOTION :: 203
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_ALREADY_IN_MOTION_STR :: "Already running a trajectory."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_STARTING_POS :: 204
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS_STR
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_STARTING_POS_STR :: "The first point must match the robot's current position."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_VELOCITY :: 205
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_VELOCITY_STR :: "The commanded velocity is too high."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_JOINTNAME :: 206
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_JOINTNAME_STR :: "Invalid joint name specified. Check motoros2_config.yaml."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INCOMPLETE_JOINTLIST :: 207
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST_STR
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INCOMPLETE_JOINTLIST_STR :: "Trajectory must contain data for all joints."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_TIME :: 208
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_TIME_STR :: "Invalid time in trajectory."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_MODE :: 209
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_MODE_STR :: "Must call start_traj_mode service"
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_BACKWARD_TIME :: 210
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_BACKWARD_TIME_STR :: "Trajectory message contains waypoints that are not strictly increasing in time."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS :: 211
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR :: "Trajectory did not contain position data for all axes."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES :: 212
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR :: "Trajectory did not contain velocity data for all axes."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_VELOCITY :: 213
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY_STR
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_VELOCITY_STR :: "The final point in the trajectory must have zero velocity."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_ACCELERATION :: 214
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR :: "The final point in the trajectory must have zero acceleration."
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_DUPLICATE_JOINT_NAME :: 215
/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME_STR
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgInitTrajEnum_INIT_TRAJ_DUPLICATE_JOINT_NAME_STR :: "The trajectory contains duplicate joint names."
/// @brief Traverse every original field of complete motoros2_interfaces/msg/InitTrajEnum.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesMsgInitTrajEnum :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgInitTrajEnum, cursor: ^wire.Cursor)
{
    value.field_value = u16(wire.number(cursor, u64(value.field_value), 2))
}
/// @brief Encode every complete original motoros2_interfaces/msg/InitTrajEnum field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesMsgInitTrajEnum :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgInitTrajEnum, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2)], writing = true}
    fields_Ros2Motoros2_interfacesMsgInitTrajEnum(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/msg/InitTrajEnum.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesMsgInitTrajEnum :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesMsgInitTrajEnum, code: u32)
{
    if len(bytes) < 2 || len(bytes) > 2 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesMsgInitTrajEnum(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/msg/IoResultCodes value.
/// @details Retain all 0 original fields and 13 constants. Wire extent 0..0 bytes.
Ros2Motoros2_interfacesMsgIoResultCodes :: struct {
}
/// @brief Original complete motoros2_interfaces/msg/IoResultCodes minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgIoResultCodes_Minimum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/msg/IoResultCodes maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgIoResultCodes_Maximum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/msg/IoResultCodes codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgIoResultCodes_Codec_Identity :: "UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915"
/// @brief Original motoros2_interfaces/msg/IoResultCodes.OK constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_OK :: 0
/// @brief Original motoros2_interfaces/msg/IoResultCodes.OK_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_OK_STR :: "Success"
/// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_READ_ADDRESS_INVALID :: 1001
/// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_READ_ADDRESS_INVALID_STR :: "Address cannot be read from (out of readable range)"
/// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_WRITE_ADDRESS_INVALID :: 1002
/// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_WRITE_ADDRESS_INVALID_STR :: "Address cannot be written to (out of writable range)"
/// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_WRITE_VALUE_INVALID :: 1003
/// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_WRITE_VALUE_INVALID_STR :: "Illegal value for the type of IO element addressed"
/// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_READ_API_ERROR :: 1004
/// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_READ_API_ERROR_STR :: "The MotoPlus function mpReadIO returned -1. No further information is available"
/// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_WRITE_API_ERROR :: 1005
/// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_WRITE_API_ERROR_STR :: "The MotoPlus function mpWriteIO returned -1. No further information is available"
/// @brief Original motoros2_interfaces/msg/IoResultCodes.UNKNOWN_API_ERROR_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgIoResultCodes_UNKNOWN_API_ERROR_STR :: "Unknown error accessing I/O. No further information is available"
/// @brief Traverse every original field of complete motoros2_interfaces/msg/IoResultCodes.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesMsgIoResultCodes :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgIoResultCodes, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original motoros2_interfaces/msg/IoResultCodes field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesMsgIoResultCodes :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgIoResultCodes, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Motoros2_interfacesMsgIoResultCodes(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/msg/IoResultCodes.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesMsgIoResultCodes :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesMsgIoResultCodes, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesMsgIoResultCodes(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/msg/MotionReadyEnum value.
/// @details Retain all 1 original fields and 38 constants. Wire extent 2..2 bytes.
Ros2Motoros2_interfacesMsgMotionReadyEnum :: struct {
    /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u16,
}
/// @brief Original complete motoros2_interfaces/msg/MotionReadyEnum minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgMotionReadyEnum_Minimum_Wire_Bytes :: 2
/// @brief Original complete motoros2_interfaces/msg/MotionReadyEnum maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgMotionReadyEnum_Maximum_Wire_Bytes :: 2
/// @brief Original complete motoros2_interfaces/msg/MotionReadyEnum codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgMotionReadyEnum_Codec_Identity :: "UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_READY :: 1
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_READY_STR :: "Ready"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_UNSPECIFIED :: 100
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_UNSPECIFIED_STR :: "Unspecified"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ALARM :: 101
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ALARM_STR :: "The controller has an active Alarm"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ERROR :: 102
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ERROR_STR :: "The controller has an active Error"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ESTOP :: 103
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ESTOP_STR :: "The controller is in E-Stop"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_PLAY :: 104
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_PLAY_STR :: "The teach pendant must not be in TEACH mode"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_REMOTE :: 105
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_REMOTE_STR :: "The teach pendant must be in REMOTE mode"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_OFF :: 106
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_OFF_STR :: "Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_HOLD :: 107
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_HOLD_STR :: "The controller is in HOLD"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_JOB_NOT_STARTED :: 108
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_JOB_NOT_STARTED_STR :: "The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_ON_WAIT_CMD :: 109
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_ON_WAIT_CMD_STR :: "INFORM job is not on a WAIT command. Check the format of INIT_ROS"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_PFL_ACTIVE :: 111
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_PFL_ACTIVE_STR :: "A PFL event has occurred. Please return the robot to a safe state"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_INC_MOVE_ERROR :: 112
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_INC_MOVE_ERROR_STR :: "The controller is in an error state. Please call reset_error to attempt to clear the error"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_PROGRAM_RUNNING :: 113
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING_STR
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_PROGRAM_RUNNING_STR :: "Controller is running another job"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_TRAJ_MODE_ACTIVE :: 114
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR :: "Another trajectory mode is already active. Please call stop_traj_mode service"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_CONT_CYCLE_MODE :: 115
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE_STR
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_NOT_CONT_CYCLE_MODE_STR :: "AUTO cycle mode not set. Please set the cycle mode to AUTO"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_MAJOR_ALARM :: 116
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_MAJOR_ALARM_STR :: "Major Alarms can't be reset. Please check the teach pendant"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ECO_MODE :: 117
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_ECO_MODE_STR :: "Couldn't disable eco mode"
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_ON_TIMEOUT :: 118
/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgMotionReadyEnum_NOT_READY_SERVO_ON_TIMEOUT_STR :: "Timed out while waiting for servo on"
/// @brief Traverse every original field of complete motoros2_interfaces/msg/MotionReadyEnum.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesMsgMotionReadyEnum :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgMotionReadyEnum, cursor: ^wire.Cursor)
{
    value.field_value = u16(wire.number(cursor, u64(value.field_value), 2))
}
/// @brief Encode every complete original motoros2_interfaces/msg/MotionReadyEnum field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesMsgMotionReadyEnum :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgMotionReadyEnum, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2)], writing = true}
    fields_Ros2Motoros2_interfacesMsgMotionReadyEnum(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/msg/MotionReadyEnum.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesMsgMotionReadyEnum :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesMsgMotionReadyEnum, code: u32)
{
    if len(bytes) < 2 || len(bytes) > 2 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesMsgMotionReadyEnum(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/msg/QueueResultEnum value.
/// @details Retain all 1 original fields and 12 constants. Wire extent 2..2 bytes.
Ros2Motoros2_interfacesMsgQueueResultEnum :: struct {
    /// @brief Original motoros2_interfaces/msg/QueueResultEnum.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u16,
}
/// @brief Original complete motoros2_interfaces/msg/QueueResultEnum minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgQueueResultEnum_Minimum_Wire_Bytes :: 2
/// @brief Original complete motoros2_interfaces/msg/QueueResultEnum maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgQueueResultEnum_Maximum_Wire_Bytes :: 2
/// @brief Original complete motoros2_interfaces/msg/QueueResultEnum codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgQueueResultEnum_Codec_Identity :: "UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23"
/// @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgQueueResultEnum_SUCCESS :: 1
/// @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgQueueResultEnum_SUCCESS_STR :: ""
/// @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgQueueResultEnum_WRONG_MODE :: 2
/// @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgQueueResultEnum_WRONG_MODE_STR :: "Must call start_point_queue_mode service"
/// @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgQueueResultEnum_INIT_FAILURE :: 3
/// @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgQueueResultEnum_INIT_FAILURE_STR :: "Failed to initialize the streaming trajectory"
/// @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgQueueResultEnum_BUSY :: 4
/// @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgQueueResultEnum_BUSY_STR :: "Busy processing the previous trajectory point. Please resend the next point shortly"
/// @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgQueueResultEnum_INVALID_JOINT_LIST :: 5
/// @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgQueueResultEnum_INVALID_JOINT_LIST_STR :: "Point must contain data for all joints"
/// @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgQueueResultEnum_UNABLE_TO_PROCESS_POINT :: 6
/// @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgQueueResultEnum_UNABLE_TO_PROCESS_POINT_STR :: "Error while processing the trajectory point. Check debug log for more details"
/// @brief Traverse every original field of complete motoros2_interfaces/msg/QueueResultEnum.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesMsgQueueResultEnum :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgQueueResultEnum, cursor: ^wire.Cursor)
{
    value.field_value = u16(wire.number(cursor, u64(value.field_value), 2))
}
/// @brief Encode every complete original motoros2_interfaces/msg/QueueResultEnum field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesMsgQueueResultEnum :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgQueueResultEnum, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2)], writing = true}
    fields_Ros2Motoros2_interfacesMsgQueueResultEnum(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/msg/QueueResultEnum.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesMsgQueueResultEnum :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesMsgQueueResultEnum, code: u32)
{
    if len(bytes) < 2 || len(bytes) > 2 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesMsgQueueResultEnum(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/msg/SelectionResultCodes value.
/// @details Retain all 1 original fields and 8 constants. Wire extent 4..4 bytes.
Ros2Motoros2_interfacesMsgSelectionResultCodes :: struct {
    /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.value field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u32,
}
/// @brief Original complete motoros2_interfaces/msg/SelectionResultCodes minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgSelectionResultCodes_Minimum_Wire_Bytes :: 4
/// @brief Original complete motoros2_interfaces/msg/SelectionResultCodes maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgSelectionResultCodes_Maximum_Wire_Bytes :: 4
/// @brief Original complete motoros2_interfaces/msg/SelectionResultCodes codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesMsgSelectionResultCodes_Codec_Identity :: "UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602"
/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgSelectionResultCodes_OK :: 0
/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgSelectionResultCodes_OK_STR :: ""
/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROLLER_STATE :: 400
/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE_STR
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROLLER_STATE_STR :: "Pendant is not in REMOTE mode"
/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROL_GROUP :: 401
/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP_STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_CONTROL_GROUP_STR :: "Invalid control group"
/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_SELECTION_INDEX :: 402
/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX_STR
/// constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Motoros2_interfacesMsgSelectionResultCodes_INVALID_SELECTION_INDEX_STR :: "Invalid tool selection"
/// @brief Traverse every original field of complete motoros2_interfaces/msg/SelectionResultCodes.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesMsgSelectionResultCodes :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgSelectionResultCodes, cursor: ^wire.Cursor)
{
    value.field_value = u32(wire.number(cursor, u64(value.field_value), 4))
}
/// @brief Encode every complete original motoros2_interfaces/msg/SelectionResultCodes field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesMsgSelectionResultCodes :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesMsgSelectionResultCodes, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Motoros2_interfacesMsgSelectionResultCodes(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/msg/SelectionResultCodes.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesMsgSelectionResultCodes :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesMsgSelectionResultCodes, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesMsgSelectionResultCodes(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/GetActiveAlarmInfo_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request :: struct {
}
/// @brief Original complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request_Codec_Identity :: "UWVMROS1_aadcd63f3bc47424c38767afdc1589561e3c90e8aeae9bdceef88b1033d57a7e"
/// @brief Traverse every original field of complete
/// motoros2_interfaces/srv/GetActiveAlarmInfo_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original motoros2_interfaces/srv/GetActiveAlarmInfo_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/GetActiveAlarmInfo_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/GetActiveAlarmInfo_Response value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 16..32768 bytes.
Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32,
    /// @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.result_message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_result_message: wire.Text(512, false),
    /// @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.alarms field.
    /// @details Original type motoros2_interfaces/msg/AlarmInfo. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_alarms: wire.Sequence(Ros2Motoros2_interfacesMsgAlarmInfo, 16),
    /// @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.errors field.
    /// @details Original type motoros2_interfaces/msg/ErrorInfo. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_errors: wire.Sequence(Ros2Motoros2_interfacesMsgErrorInfo, 16),
}
/// @brief Original complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_Minimum_Wire_Bytes :: 16
/// @brief Original complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_Maximum_Wire_Bytes :: 32768
/// @brief Original complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response_Codec_Identity :: "UWVMROS1_e11bdbb95b6ded88d035696260c58dad32bcf3604aa4e89dd41c0dab26541567"
/// @brief Traverse every original field of complete
/// motoros2_interfaces/srv/GetActiveAlarmInfo_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u32(wire.number(cursor, u64(value.field_result_code), 4))
    wire.text(cursor, &value.field_result_message)
    value.field_alarms.size = u32(wire.number(cursor, u64(value.field_alarms.size), 4))
    if value.field_alarms.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_alarms.size) {
        fields_Ros2Motoros2_interfacesMsgAlarmInfo(&value.field_alarms.items[index], cursor)
    }
    value.field_errors.size = u32(wire.number(cursor, u64(value.field_errors.size), 4))
    if value.field_errors.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_errors.size) {
        fields_Ros2Motoros2_interfacesMsgErrorInfo(&value.field_errors.items[index], cursor)
    }
}
/// @brief Encode every complete original motoros2_interfaces/srv/GetActiveAlarmInfo_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 32768)], writing = true}
    fields_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 32768 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/ListInformJobs_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Motoros2_interfacesSrvListInformJobs_Request :: struct {
}
/// @brief Original complete motoros2_interfaces/srv/ListInformJobs_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvListInformJobs_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/srv/ListInformJobs_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvListInformJobs_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/srv/ListInformJobs_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvListInformJobs_Request_Codec_Identity :: "UWVMROS1_e77eedadef98d98321b1757b88284022afcdb1ffef52b98820b0c4ba596d643c"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/ListInformJobs_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvListInformJobs_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvListInformJobs_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original motoros2_interfaces/srv/ListInformJobs_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvListInformJobs_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvListInformJobs_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Motoros2_interfacesSrvListInformJobs_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/ListInformJobs_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvListInformJobs_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvListInformJobs_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvListInformJobs_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/ListInformJobs_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 12..8780 bytes.
Ros2Motoros2_interfacesSrvListInformJobs_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/ListInformJobs_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32,
    /// @brief Original motoros2_interfaces/srv/ListInformJobs_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
    /// @brief Original motoros2_interfaces/srv/ListInformJobs_Response.names field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Shape sequence;
    /// bound/count 16 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_names: wire.Sequence(wire.Text(512, false), 16),
}
/// @brief Original complete motoros2_interfaces/srv/ListInformJobs_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvListInformJobs_Response_Minimum_Wire_Bytes :: 12
/// @brief Original complete motoros2_interfaces/srv/ListInformJobs_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvListInformJobs_Response_Maximum_Wire_Bytes :: 8780
/// @brief Original complete motoros2_interfaces/srv/ListInformJobs_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvListInformJobs_Response_Codec_Identity :: "UWVMROS1_49021f0abc00f8df1ef49605a244cb6bba8d8b45ece5365ae35d747d2506eadc"
/// @brief Traverse every original field of complete
/// motoros2_interfaces/srv/ListInformJobs_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvListInformJobs_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvListInformJobs_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u32(wire.number(cursor, u64(value.field_result_code), 4))
    wire.text(cursor, &value.field_message)
    value.field_names.size = u32(wire.number(cursor, u64(value.field_names.size), 4))
    if value.field_names.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_names.size) {
        wire.text(cursor, &value.field_names.items[index])
    }
}
/// @brief Encode every complete original motoros2_interfaces/srv/ListInformJobs_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvListInformJobs_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvListInformJobs_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8780)], writing = true}
    fields_Ros2Motoros2_interfacesSrvListInformJobs_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/ListInformJobs_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvListInformJobs_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvListInformJobs_Response, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 8780 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvListInformJobs_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/QueueTrajPoint_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 28..1228 bytes.
Ros2Motoros2_interfacesSrvQueueTrajPoint_Request :: struct {
    /// @brief Original motoros2_interfaces/srv/QueueTrajPoint_Request.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names: wire.Sequence(wire.Text(64, false), 12),
    /// @brief Original motoros2_interfaces/srv/QueueTrajPoint_Request.point field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_point: Ros2Trajectory_msgsMsgJointTrajectoryPoint,
}
/// @brief Original complete motoros2_interfaces/srv/QueueTrajPoint_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvQueueTrajPoint_Request_Minimum_Wire_Bytes :: 28
/// @brief Original complete motoros2_interfaces/srv/QueueTrajPoint_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvQueueTrajPoint_Request_Maximum_Wire_Bytes :: 1228
/// @brief Original complete motoros2_interfaces/srv/QueueTrajPoint_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvQueueTrajPoint_Request_Codec_Identity :: "UWVMROS1_3d37f9981d6abaca33ec0b5378fa3a1ac301791cc9be94d5bdcf4ea6aa81b8d0"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/QueueTrajPoint_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvQueueTrajPoint_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvQueueTrajPoint_Request, cursor: ^wire.Cursor)
{
    value.field_joint_names.size = u32(wire.number(cursor, u64(value.field_joint_names.size), 4))
    if value.field_joint_names.size > 12 { cursor.code = 22; return }
    for index in 0..<int(value.field_joint_names.size) {
        wire.text(cursor, &value.field_joint_names.items[index])
    }
    fields_Ros2Trajectory_msgsMsgJointTrajectoryPoint(&value.field_point, cursor)
}
/// @brief Encode every complete original motoros2_interfaces/srv/QueueTrajPoint_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvQueueTrajPoint_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvQueueTrajPoint_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1228)], writing = true}
    fields_Ros2Motoros2_interfacesSrvQueueTrajPoint_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/QueueTrajPoint_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvQueueTrajPoint_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvQueueTrajPoint_Request, code: u32)
{
    if len(bytes) < 28 || len(bytes) > 1228 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvQueueTrajPoint_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/QueueTrajPoint_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Motoros2_interfacesSrvQueueTrajPoint_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/QueueTrajPoint_Response.result_code field.
    /// @details Original type motoros2_interfaces/msg/QueueResultEnum. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_result_code: Ros2Motoros2_interfacesMsgQueueResultEnum,
    /// @brief Original motoros2_interfaces/srv/QueueTrajPoint_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete motoros2_interfaces/srv/QueueTrajPoint_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvQueueTrajPoint_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete motoros2_interfaces/srv/QueueTrajPoint_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvQueueTrajPoint_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete motoros2_interfaces/srv/QueueTrajPoint_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvQueueTrajPoint_Response_Codec_Identity :: "UWVMROS1_d4887ed24d39332a5ccfd4a3d072004dd8f314fe5c166bf0bd57520a826cbccd"
/// @brief Traverse every original field of complete
/// motoros2_interfaces/srv/QueueTrajPoint_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvQueueTrajPoint_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvQueueTrajPoint_Response, cursor: ^wire.Cursor)
{
    fields_Ros2Motoros2_interfacesMsgQueueResultEnum(&value.field_result_code, cursor)
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original motoros2_interfaces/srv/QueueTrajPoint_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvQueueTrajPoint_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvQueueTrajPoint_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Motoros2_interfacesSrvQueueTrajPoint_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/QueueTrajPoint_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvQueueTrajPoint_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvQueueTrajPoint_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvQueueTrajPoint_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/ReadGroupIO_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Motoros2_interfacesSrvReadGroupIO_Request :: struct {
    /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Request.address field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_address: u32,
}
/// @brief Original complete motoros2_interfaces/srv/ReadGroupIO_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadGroupIO_Request_Minimum_Wire_Bytes :: 4
/// @brief Original complete motoros2_interfaces/srv/ReadGroupIO_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadGroupIO_Request_Maximum_Wire_Bytes :: 4
/// @brief Original complete motoros2_interfaces/srv/ReadGroupIO_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadGroupIO_Request_Codec_Identity :: "UWVMROS1_6ee09ac379e169fc23b81a551e9a9ed21c3f82b5010859984e911b17152beb7f"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/ReadGroupIO_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvReadGroupIO_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvReadGroupIO_Request, cursor: ^wire.Cursor)
{
    value.field_address = u32(wire.number(cursor, u64(value.field_address), 4))
}
/// @brief Encode every complete original motoros2_interfaces/srv/ReadGroupIO_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvReadGroupIO_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvReadGroupIO_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Motoros2_interfacesSrvReadGroupIO_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/ReadGroupIO_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvReadGroupIO_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvReadGroupIO_Request, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvReadGroupIO_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/ReadGroupIO_Response value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 10..522 bytes.
Ros2Motoros2_interfacesSrvReadGroupIO_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32,
    /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
    /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool,
    /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u8,
}
/// @brief Original complete motoros2_interfaces/srv/ReadGroupIO_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadGroupIO_Response_Minimum_Wire_Bytes :: 10
/// @brief Original complete motoros2_interfaces/srv/ReadGroupIO_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadGroupIO_Response_Maximum_Wire_Bytes :: 522
/// @brief Original complete motoros2_interfaces/srv/ReadGroupIO_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadGroupIO_Response_Codec_Identity :: "UWVMROS1_292fcf6e8c46a2509ee4cc5238d443157f37fed0de898367248b967e9001ea0d"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/ReadGroupIO_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvReadGroupIO_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvReadGroupIO_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u32(wire.number(cursor, u64(value.field_result_code), 4))
    wire.text(cursor, &value.field_message)
    value.field_success = wire.boolean(cursor, value.field_success)
    value.field_value = u8(wire.number(cursor, u64(value.field_value), 1))
}
/// @brief Encode every complete original motoros2_interfaces/srv/ReadGroupIO_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvReadGroupIO_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvReadGroupIO_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 522)], writing = true}
    fields_Ros2Motoros2_interfacesSrvReadGroupIO_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/ReadGroupIO_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvReadGroupIO_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvReadGroupIO_Response, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 522 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvReadGroupIO_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/ReadMRegister_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Motoros2_interfacesSrvReadMRegister_Request :: struct {
    /// @brief Original motoros2_interfaces/srv/ReadMRegister_Request.address field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_address: u32,
}
/// @brief Original complete motoros2_interfaces/srv/ReadMRegister_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadMRegister_Request_Minimum_Wire_Bytes :: 4
/// @brief Original complete motoros2_interfaces/srv/ReadMRegister_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadMRegister_Request_Maximum_Wire_Bytes :: 4
/// @brief Original complete motoros2_interfaces/srv/ReadMRegister_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadMRegister_Request_Codec_Identity :: "UWVMROS1_f31f0983466054f5ac5dcb2ab80ab7721d606a681b833ebb376cc87f96054f6f"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/ReadMRegister_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvReadMRegister_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvReadMRegister_Request, cursor: ^wire.Cursor)
{
    value.field_address = u32(wire.number(cursor, u64(value.field_address), 4))
}
/// @brief Encode every complete original motoros2_interfaces/srv/ReadMRegister_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvReadMRegister_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvReadMRegister_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Motoros2_interfacesSrvReadMRegister_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/ReadMRegister_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvReadMRegister_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvReadMRegister_Request, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvReadMRegister_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/ReadMRegister_Response value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 11..523 bytes.
Ros2Motoros2_interfacesSrvReadMRegister_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/ReadMRegister_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32,
    /// @brief Original motoros2_interfaces/srv/ReadMRegister_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
    /// @brief Original motoros2_interfaces/srv/ReadMRegister_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool,
    /// @brief Original motoros2_interfaces/srv/ReadMRegister_Response.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u16,
}
/// @brief Original complete motoros2_interfaces/srv/ReadMRegister_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadMRegister_Response_Minimum_Wire_Bytes :: 11
/// @brief Original complete motoros2_interfaces/srv/ReadMRegister_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadMRegister_Response_Maximum_Wire_Bytes :: 523
/// @brief Original complete motoros2_interfaces/srv/ReadMRegister_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadMRegister_Response_Codec_Identity :: "UWVMROS1_8d6ded2876adfa2079711205cb0110a82ead6f51db05f266bf285308cd815a04"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/ReadMRegister_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvReadMRegister_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvReadMRegister_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u32(wire.number(cursor, u64(value.field_result_code), 4))
    wire.text(cursor, &value.field_message)
    value.field_success = wire.boolean(cursor, value.field_success)
    value.field_value = u16(wire.number(cursor, u64(value.field_value), 2))
}
/// @brief Encode every complete original motoros2_interfaces/srv/ReadMRegister_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvReadMRegister_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvReadMRegister_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 523)], writing = true}
    fields_Ros2Motoros2_interfacesSrvReadMRegister_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/ReadMRegister_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvReadMRegister_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvReadMRegister_Response, code: u32)
{
    if len(bytes) < 11 || len(bytes) > 523 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvReadMRegister_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/ReadSingleIO_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Motoros2_interfacesSrvReadSingleIO_Request :: struct {
    /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Request.address field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_address: u32,
}
/// @brief Original complete motoros2_interfaces/srv/ReadSingleIO_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadSingleIO_Request_Minimum_Wire_Bytes :: 4
/// @brief Original complete motoros2_interfaces/srv/ReadSingleIO_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadSingleIO_Request_Maximum_Wire_Bytes :: 4
/// @brief Original complete motoros2_interfaces/srv/ReadSingleIO_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadSingleIO_Request_Codec_Identity :: "UWVMROS1_30e28db303b772f26b2b3cf6165a0ff79037d037d60e8115b4ee8e177f17e8bb"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/ReadSingleIO_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvReadSingleIO_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvReadSingleIO_Request, cursor: ^wire.Cursor)
{
    value.field_address = u32(wire.number(cursor, u64(value.field_address), 4))
}
/// @brief Encode every complete original motoros2_interfaces/srv/ReadSingleIO_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvReadSingleIO_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvReadSingleIO_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Motoros2_interfacesSrvReadSingleIO_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/ReadSingleIO_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvReadSingleIO_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvReadSingleIO_Request, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvReadSingleIO_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/ReadSingleIO_Response value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 13..525 bytes.
Ros2Motoros2_interfacesSrvReadSingleIO_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32,
    /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
    /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool,
    /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.value field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: i32,
}
/// @brief Original complete motoros2_interfaces/srv/ReadSingleIO_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadSingleIO_Response_Minimum_Wire_Bytes :: 13
/// @brief Original complete motoros2_interfaces/srv/ReadSingleIO_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadSingleIO_Response_Maximum_Wire_Bytes :: 525
/// @brief Original complete motoros2_interfaces/srv/ReadSingleIO_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvReadSingleIO_Response_Codec_Identity :: "UWVMROS1_b42013571274e85769ffac4d47129de8b76e4a675bdef3efefebc9ee19e92082"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/ReadSingleIO_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvReadSingleIO_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvReadSingleIO_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u32(wire.number(cursor, u64(value.field_result_code), 4))
    wire.text(cursor, &value.field_message)
    value.field_success = wire.boolean(cursor, value.field_success)
    value.field_value = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_value), 4))
}
/// @brief Encode every complete original motoros2_interfaces/srv/ReadSingleIO_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvReadSingleIO_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvReadSingleIO_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 525)], writing = true}
    fields_Ros2Motoros2_interfacesSrvReadSingleIO_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/ReadSingleIO_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvReadSingleIO_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvReadSingleIO_Response, code: u32)
{
    if len(bytes) < 13 || len(bytes) > 525 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvReadSingleIO_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/ResetError_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Motoros2_interfacesSrvResetError_Request :: struct {
}
/// @brief Original complete motoros2_interfaces/srv/ResetError_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvResetError_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/srv/ResetError_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvResetError_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/srv/ResetError_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvResetError_Request_Codec_Identity :: "UWVMROS1_2737855d0608478946e2d9ab7f06c92585199c1082ec8406a012f50ad56beae3"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/ResetError_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvResetError_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvResetError_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original motoros2_interfaces/srv/ResetError_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvResetError_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvResetError_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Motoros2_interfacesSrvResetError_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/ResetError_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvResetError_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvResetError_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvResetError_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/ResetError_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Motoros2_interfacesSrvResetError_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/ResetError_Response.result_code field.
    /// @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum,
    /// @brief Original motoros2_interfaces/srv/ResetError_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete motoros2_interfaces/srv/ResetError_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvResetError_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete motoros2_interfaces/srv/ResetError_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvResetError_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete motoros2_interfaces/srv/ResetError_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvResetError_Response_Codec_Identity :: "UWVMROS1_0af14ee02c157ecc39b143225a580e475473306389ccc3ba198cf22ca47d82f3"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/ResetError_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvResetError_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvResetError_Response, cursor: ^wire.Cursor)
{
    fields_Ros2Motoros2_interfacesMsgMotionReadyEnum(&value.field_result_code, cursor)
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original motoros2_interfaces/srv/ResetError_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvResetError_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvResetError_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Motoros2_interfacesSrvResetError_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/ResetError_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvResetError_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvResetError_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvResetError_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/SelectMotionTool_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Motoros2_interfacesSrvSelectMotionTool_Request :: struct {
    /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Request.group_number field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group_number: u32,
    /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Request.tool_number field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tool_number: u32,
}
/// @brief Original complete motoros2_interfaces/srv/SelectMotionTool_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvSelectMotionTool_Request_Minimum_Wire_Bytes :: 8
/// @brief Original complete motoros2_interfaces/srv/SelectMotionTool_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvSelectMotionTool_Request_Maximum_Wire_Bytes :: 8
/// @brief Original complete motoros2_interfaces/srv/SelectMotionTool_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvSelectMotionTool_Request_Codec_Identity :: "UWVMROS1_e6c884ae0a97337c1e441efe099b7869dc95205fcbca0a8082d4d9b06f5b438c"
/// @brief Traverse every original field of complete
/// motoros2_interfaces/srv/SelectMotionTool_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvSelectMotionTool_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvSelectMotionTool_Request, cursor: ^wire.Cursor)
{
    value.field_group_number = u32(wire.number(cursor, u64(value.field_group_number), 4))
    value.field_tool_number = u32(wire.number(cursor, u64(value.field_tool_number), 4))
}
/// @brief Encode every complete original motoros2_interfaces/srv/SelectMotionTool_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvSelectMotionTool_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvSelectMotionTool_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Motoros2_interfacesSrvSelectMotionTool_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/SelectMotionTool_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvSelectMotionTool_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvSelectMotionTool_Request, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvSelectMotionTool_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/SelectMotionTool_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 9..521 bytes.
Ros2Motoros2_interfacesSrvSelectMotionTool_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.result_code field.
    /// @details Original type motoros2_interfaces/msg/SelectionResultCodes. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_result_code: Ros2Motoros2_interfacesMsgSelectionResultCodes,
    /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
    /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool,
}
/// @brief Original complete motoros2_interfaces/srv/SelectMotionTool_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvSelectMotionTool_Response_Minimum_Wire_Bytes :: 9
/// @brief Original complete motoros2_interfaces/srv/SelectMotionTool_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvSelectMotionTool_Response_Maximum_Wire_Bytes :: 521
/// @brief Original complete motoros2_interfaces/srv/SelectMotionTool_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvSelectMotionTool_Response_Codec_Identity :: "UWVMROS1_088349a49c14c52282c25b428628462c48618c3b5202df560dcc5c9bed742640"
/// @brief Traverse every original field of complete
/// motoros2_interfaces/srv/SelectMotionTool_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvSelectMotionTool_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvSelectMotionTool_Response, cursor: ^wire.Cursor)
{
    fields_Ros2Motoros2_interfacesMsgSelectionResultCodes(&value.field_result_code, cursor)
    wire.text(cursor, &value.field_message)
    value.field_success = wire.boolean(cursor, value.field_success)
}
/// @brief Encode every complete original motoros2_interfaces/srv/SelectMotionTool_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvSelectMotionTool_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvSelectMotionTool_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 521)], writing = true}
    fields_Ros2Motoros2_interfacesSrvSelectMotionTool_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/SelectMotionTool_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvSelectMotionTool_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvSelectMotionTool_Response, code: u32)
{
    if len(bytes) < 9 || len(bytes) > 521 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvSelectMotionTool_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/StartPointQueueMode_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Motoros2_interfacesSrvStartPointQueueMode_Request :: struct {
}
/// @brief Original complete motoros2_interfaces/srv/StartPointQueueMode_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvStartPointQueueMode_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/srv/StartPointQueueMode_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvStartPointQueueMode_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/srv/StartPointQueueMode_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvStartPointQueueMode_Request_Codec_Identity :: "UWVMROS1_58a4827fc6535ef0ffc64ee25c5c4af75aa0fe199fa0350a88a95d2e991164a1"
/// @brief Traverse every original field of complete
/// motoros2_interfaces/srv/StartPointQueueMode_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvStartPointQueueMode_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvStartPointQueueMode_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original motoros2_interfaces/srv/StartPointQueueMode_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvStartPointQueueMode_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvStartPointQueueMode_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Motoros2_interfacesSrvStartPointQueueMode_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/StartPointQueueMode_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvStartPointQueueMode_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvStartPointQueueMode_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvStartPointQueueMode_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/StartPointQueueMode_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Motoros2_interfacesSrvStartPointQueueMode_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/StartPointQueueMode_Response.result_code field.
    /// @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum,
    /// @brief Original motoros2_interfaces/srv/StartPointQueueMode_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete motoros2_interfaces/srv/StartPointQueueMode_Response minimum wire
/// bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvStartPointQueueMode_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete motoros2_interfaces/srv/StartPointQueueMode_Response maximum wire
/// bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvStartPointQueueMode_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete motoros2_interfaces/srv/StartPointQueueMode_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvStartPointQueueMode_Response_Codec_Identity :: "UWVMROS1_bc553d5640e1c4644a5d5bdc2dfcefc9dbe789ef1e2a23dd620f08963467b6ff"
/// @brief Traverse every original field of complete
/// motoros2_interfaces/srv/StartPointQueueMode_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvStartPointQueueMode_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvStartPointQueueMode_Response, cursor: ^wire.Cursor)
{
    fields_Ros2Motoros2_interfacesMsgMotionReadyEnum(&value.field_result_code, cursor)
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original motoros2_interfaces/srv/StartPointQueueMode_Response
/// field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvStartPointQueueMode_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvStartPointQueueMode_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Motoros2_interfacesSrvStartPointQueueMode_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original
/// motoros2_interfaces/srv/StartPointQueueMode_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvStartPointQueueMode_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvStartPointQueueMode_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvStartPointQueueMode_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/StartTrajMode_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Motoros2_interfacesSrvStartTrajMode_Request :: struct {
}
/// @brief Original complete motoros2_interfaces/srv/StartTrajMode_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvStartTrajMode_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/srv/StartTrajMode_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvStartTrajMode_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete motoros2_interfaces/srv/StartTrajMode_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvStartTrajMode_Request_Codec_Identity :: "UWVMROS1_0b8b2ad5db5901047035e1070b675618afc516a1ae8c3308cfdcad1174d34789"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/StartTrajMode_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvStartTrajMode_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvStartTrajMode_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original motoros2_interfaces/srv/StartTrajMode_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvStartTrajMode_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvStartTrajMode_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Motoros2_interfacesSrvStartTrajMode_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/StartTrajMode_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvStartTrajMode_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvStartTrajMode_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvStartTrajMode_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/StartTrajMode_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Motoros2_interfacesSrvStartTrajMode_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/StartTrajMode_Response.result_code field.
    /// @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum,
    /// @brief Original motoros2_interfaces/srv/StartTrajMode_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
}
/// @brief Original complete motoros2_interfaces/srv/StartTrajMode_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvStartTrajMode_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete motoros2_interfaces/srv/StartTrajMode_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvStartTrajMode_Response_Maximum_Wire_Bytes :: 518
/// @brief Original complete motoros2_interfaces/srv/StartTrajMode_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvStartTrajMode_Response_Codec_Identity :: "UWVMROS1_170e25737e6a2b06f5d5d9f331d748c97cf0306284271757953a4a801c722939"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/StartTrajMode_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvStartTrajMode_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvStartTrajMode_Response, cursor: ^wire.Cursor)
{
    fields_Ros2Motoros2_interfacesMsgMotionReadyEnum(&value.field_result_code, cursor)
    wire.text(cursor, &value.field_message)
}
/// @brief Encode every complete original motoros2_interfaces/srv/StartTrajMode_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvStartTrajMode_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvStartTrajMode_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Motoros2_interfacesSrvStartTrajMode_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/StartTrajMode_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvStartTrajMode_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvStartTrajMode_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvStartTrajMode_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/WriteGroupIO_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..5 bytes.
Ros2Motoros2_interfacesSrvWriteGroupIO_Request :: struct {
    /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Request.address field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_address: u32,
    /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Request.value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u8,
}
/// @brief Original complete motoros2_interfaces/srv/WriteGroupIO_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteGroupIO_Request_Minimum_Wire_Bytes :: 5
/// @brief Original complete motoros2_interfaces/srv/WriteGroupIO_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteGroupIO_Request_Maximum_Wire_Bytes :: 5
/// @brief Original complete motoros2_interfaces/srv/WriteGroupIO_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteGroupIO_Request_Codec_Identity :: "UWVMROS1_2d348ed71408a0dd1dd28ee2ed2ca1db56bb07a14546d0fe13ccf64e8553d52c"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/WriteGroupIO_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvWriteGroupIO_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvWriteGroupIO_Request, cursor: ^wire.Cursor)
{
    value.field_address = u32(wire.number(cursor, u64(value.field_address), 4))
    value.field_value = u8(wire.number(cursor, u64(value.field_value), 1))
}
/// @brief Encode every complete original motoros2_interfaces/srv/WriteGroupIO_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvWriteGroupIO_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvWriteGroupIO_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5)], writing = true}
    fields_Ros2Motoros2_interfacesSrvWriteGroupIO_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/WriteGroupIO_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvWriteGroupIO_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvWriteGroupIO_Request, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 5 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvWriteGroupIO_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/WriteGroupIO_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 9..521 bytes.
Ros2Motoros2_interfacesSrvWriteGroupIO_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32,
    /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
    /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool,
}
/// @brief Original complete motoros2_interfaces/srv/WriteGroupIO_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteGroupIO_Response_Minimum_Wire_Bytes :: 9
/// @brief Original complete motoros2_interfaces/srv/WriteGroupIO_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteGroupIO_Response_Maximum_Wire_Bytes :: 521
/// @brief Original complete motoros2_interfaces/srv/WriteGroupIO_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteGroupIO_Response_Codec_Identity :: "UWVMROS1_06769934711b27fd32cdcbf849504e160189ee82ea32e0e71a2903af47c5d766"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/WriteGroupIO_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvWriteGroupIO_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvWriteGroupIO_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u32(wire.number(cursor, u64(value.field_result_code), 4))
    wire.text(cursor, &value.field_message)
    value.field_success = wire.boolean(cursor, value.field_success)
}
/// @brief Encode every complete original motoros2_interfaces/srv/WriteGroupIO_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvWriteGroupIO_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvWriteGroupIO_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 521)], writing = true}
    fields_Ros2Motoros2_interfacesSrvWriteGroupIO_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/WriteGroupIO_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvWriteGroupIO_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvWriteGroupIO_Response, code: u32)
{
    if len(bytes) < 9 || len(bytes) > 521 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvWriteGroupIO_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/WriteMRegister_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..6 bytes.
Ros2Motoros2_interfacesSrvWriteMRegister_Request :: struct {
    /// @brief Original motoros2_interfaces/srv/WriteMRegister_Request.address field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_address: u32,
    /// @brief Original motoros2_interfaces/srv/WriteMRegister_Request.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u16,
}
/// @brief Original complete motoros2_interfaces/srv/WriteMRegister_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteMRegister_Request_Minimum_Wire_Bytes :: 6
/// @brief Original complete motoros2_interfaces/srv/WriteMRegister_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteMRegister_Request_Maximum_Wire_Bytes :: 6
/// @brief Original complete motoros2_interfaces/srv/WriteMRegister_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteMRegister_Request_Codec_Identity :: "UWVMROS1_8df4536be27f0632052725d5616fd5b047f49fc306fc7735854d9de4fb15d4ef"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/WriteMRegister_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvWriteMRegister_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvWriteMRegister_Request, cursor: ^wire.Cursor)
{
    value.field_address = u32(wire.number(cursor, u64(value.field_address), 4))
    value.field_value = u16(wire.number(cursor, u64(value.field_value), 2))
}
/// @brief Encode every complete original motoros2_interfaces/srv/WriteMRegister_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvWriteMRegister_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvWriteMRegister_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 6)], writing = true}
    fields_Ros2Motoros2_interfacesSrvWriteMRegister_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/WriteMRegister_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvWriteMRegister_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvWriteMRegister_Request, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 6 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvWriteMRegister_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/WriteMRegister_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 9..521 bytes.
Ros2Motoros2_interfacesSrvWriteMRegister_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/WriteMRegister_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32,
    /// @brief Original motoros2_interfaces/srv/WriteMRegister_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
    /// @brief Original motoros2_interfaces/srv/WriteMRegister_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool,
}
/// @brief Original complete motoros2_interfaces/srv/WriteMRegister_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteMRegister_Response_Minimum_Wire_Bytes :: 9
/// @brief Original complete motoros2_interfaces/srv/WriteMRegister_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteMRegister_Response_Maximum_Wire_Bytes :: 521
/// @brief Original complete motoros2_interfaces/srv/WriteMRegister_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteMRegister_Response_Codec_Identity :: "UWVMROS1_a61cc0596a7545ef4836bdc64dc9d6b4ed99b0abd18a726eb37e6215f51c729a"
/// @brief Traverse every original field of complete
/// motoros2_interfaces/srv/WriteMRegister_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvWriteMRegister_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvWriteMRegister_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u32(wire.number(cursor, u64(value.field_result_code), 4))
    wire.text(cursor, &value.field_message)
    value.field_success = wire.boolean(cursor, value.field_success)
}
/// @brief Encode every complete original motoros2_interfaces/srv/WriteMRegister_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvWriteMRegister_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvWriteMRegister_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 521)], writing = true}
    fields_Ros2Motoros2_interfacesSrvWriteMRegister_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/WriteMRegister_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvWriteMRegister_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvWriteMRegister_Response, code: u32)
{
    if len(bytes) < 9 || len(bytes) > 521 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvWriteMRegister_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/WriteSingleIO_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Motoros2_interfacesSrvWriteSingleIO_Request :: struct {
    /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Request.address field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_address: u32,
    /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Request.value field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: i32,
}
/// @brief Original complete motoros2_interfaces/srv/WriteSingleIO_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteSingleIO_Request_Minimum_Wire_Bytes :: 8
/// @brief Original complete motoros2_interfaces/srv/WriteSingleIO_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteSingleIO_Request_Maximum_Wire_Bytes :: 8
/// @brief Original complete motoros2_interfaces/srv/WriteSingleIO_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteSingleIO_Request_Codec_Identity :: "UWVMROS1_6361affcd8b7ebaaa1fe6b5806e64a7c18f7a96a1178614cfce487de813a6392"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/WriteSingleIO_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvWriteSingleIO_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvWriteSingleIO_Request, cursor: ^wire.Cursor)
{
    value.field_address = u32(wire.number(cursor, u64(value.field_address), 4))
    value.field_value = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_value), 4))
}
/// @brief Encode every complete original motoros2_interfaces/srv/WriteSingleIO_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvWriteSingleIO_Request :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvWriteSingleIO_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Motoros2_interfacesSrvWriteSingleIO_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/WriteSingleIO_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvWriteSingleIO_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvWriteSingleIO_Request, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvWriteSingleIO_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original motoros2_interfaces/srv/WriteSingleIO_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 9..521 bytes.
Ros2Motoros2_interfacesSrvWriteSingleIO_Response :: struct {
    /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.result_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result_code: u32,
    /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_message: wire.Text(512, false),
    /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_success: bool,
}
/// @brief Original complete motoros2_interfaces/srv/WriteSingleIO_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteSingleIO_Response_Minimum_Wire_Bytes :: 9
/// @brief Original complete motoros2_interfaces/srv/WriteSingleIO_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteSingleIO_Response_Maximum_Wire_Bytes :: 521
/// @brief Original complete motoros2_interfaces/srv/WriteSingleIO_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Motoros2_interfacesSrvWriteSingleIO_Response_Codec_Identity :: "UWVMROS1_12328db372a572fe9b0c7207331a7971d5d7c9033376e3be410db579b85fb794"
/// @brief Traverse every original field of complete motoros2_interfaces/srv/WriteSingleIO_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Motoros2_interfacesSrvWriteSingleIO_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvWriteSingleIO_Response, cursor: ^wire.Cursor)
{
    value.field_result_code = u32(wire.number(cursor, u64(value.field_result_code), 4))
    wire.text(cursor, &value.field_message)
    value.field_success = wire.boolean(cursor, value.field_success)
}
/// @brief Encode every complete original motoros2_interfaces/srv/WriteSingleIO_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Motoros2_interfacesSrvWriteSingleIO_Response :: proc "contextless"(
    value: ^Ros2Motoros2_interfacesSrvWriteSingleIO_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 521)], writing = true}
    fields_Ros2Motoros2_interfacesSrvWriteSingleIO_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original motoros2_interfaces/srv/WriteSingleIO_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Motoros2_interfacesSrvWriteSingleIO_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Motoros2_interfacesSrvWriteSingleIO_Response, code: u32)
{
    if len(bytes) < 9 || len(bytes) > 521 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Motoros2_interfacesSrvWriteSingleIO_Response(&value, &cursor)
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

/// @brief Complete original tf2_msgs/msg/TFMessage value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..10372 bytes.
Ros2Tf2_msgsMsgTFMessage :: struct {
    /// @brief Original tf2_msgs/msg/TFMessage.transforms field.
    /// @details Original type geometry_msgs/msg/TransformStamped. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_transforms: wire.Sequence(Ros2Geometry_msgsMsgTransformStamped, 16),
}
/// @brief Original complete tf2_msgs/msg/TFMessage minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Tf2_msgsMsgTFMessage_Minimum_Wire_Bytes :: 4
/// @brief Original complete tf2_msgs/msg/TFMessage maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Tf2_msgsMsgTFMessage_Maximum_Wire_Bytes :: 10372
/// @brief Original complete tf2_msgs/msg/TFMessage codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Tf2_msgsMsgTFMessage_Codec_Identity :: "UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a"
/// @brief Traverse every original field of complete tf2_msgs/msg/TFMessage.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Tf2_msgsMsgTFMessage :: proc "contextless"(
    value: ^Ros2Tf2_msgsMsgTFMessage, cursor: ^wire.Cursor)
{
    value.field_transforms.size = u32(wire.number(cursor, u64(value.field_transforms.size), 4))
    if value.field_transforms.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_transforms.size) {
        fields_Ros2Geometry_msgsMsgTransformStamped(&value.field_transforms.items[index], cursor)
    }
}
/// @brief Encode every complete original tf2_msgs/msg/TFMessage field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Tf2_msgsMsgTFMessage :: proc "contextless"(
    value: ^Ros2Tf2_msgsMsgTFMessage, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 10372)], writing = true}
    fields_Ros2Tf2_msgsMsgTFMessage(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original tf2_msgs/msg/TFMessage.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Tf2_msgsMsgTFMessage :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Tf2_msgsMsgTFMessage, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 10372 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Tf2_msgsMsgTFMessage(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}


// DEFAULT_FACTORIES_BEGIN

// @brief Construct all original builtin_interfaces/msg/Duration defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Builtin_interfacesMsgDuration :: proc "contextless"() -> (Ros2Builtin_interfacesMsgDuration, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Builtin_interfacesMsgDuration(bytes)
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

// @brief Construct all original geometry_msgs/msg/TransformStamped defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Geometry_msgsMsgTransformStamped :: proc "contextless"() -> (Ros2Geometry_msgsMsgTransformStamped, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 240, 63,
    }
    return decode_Ros2Geometry_msgsMsgTransformStamped(bytes)
}

// @brief Construct all original industrial_msgs/msg/DebugLevel defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsMsgDebugLevel :: proc "contextless"() -> (Ros2Industrial_msgsMsgDebugLevel, u32) {
    bytes := []u8{0}
    return decode_Ros2Industrial_msgsMsgDebugLevel(bytes)
}

// @brief Construct all original industrial_msgs/msg/DeviceInfo defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsMsgDeviceInfo :: proc "contextless"() -> (Ros2Industrial_msgsMsgDeviceInfo, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros2Industrial_msgsMsgDeviceInfo(bytes)
}

// @brief Construct all original industrial_msgs/msg/RobotMode defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsMsgRobotMode :: proc "contextless"() -> (Ros2Industrial_msgsMsgRobotMode, u32) {
    bytes := []u8{0}
    return decode_Ros2Industrial_msgsMsgRobotMode(bytes)
}

// @brief Construct all original industrial_msgs/msg/TriState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsMsgTriState :: proc "contextless"() -> (Ros2Industrial_msgsMsgTriState, u32) {
    bytes := []u8{0}
    return decode_Ros2Industrial_msgsMsgTriState(bytes)
}

// @brief Construct all original industrial_msgs/msg/RobotStatus defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsMsgRobotStatus :: proc "contextless"() -> (Ros2Industrial_msgsMsgRobotStatus, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Industrial_msgsMsgRobotStatus(bytes)
}

// @brief Construct all original industrial_msgs/msg/ServiceReturnCode defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsMsgServiceReturnCode :: proc "contextless"() -> (Ros2Industrial_msgsMsgServiceReturnCode, u32) {
    bytes := []u8{0}
    return decode_Ros2Industrial_msgsMsgServiceReturnCode(bytes)
}

// @brief Construct all original industrial_msgs/srv/CmdJointTrajectory_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsSrvCmdJointTrajectory_Request :: proc "contextless"() -> (Ros2Industrial_msgsSrvCmdJointTrajectory_Request, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros2Industrial_msgsSrvCmdJointTrajectory_Request(bytes)
}

// @brief Construct all original industrial_msgs/srv/CmdJointTrajectory_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsSrvCmdJointTrajectory_Response :: proc "contextless"() -> (Ros2Industrial_msgsSrvCmdJointTrajectory_Response, u32) {
    bytes := []u8{0}
    return decode_Ros2Industrial_msgsSrvCmdJointTrajectory_Response(bytes)
}

// @brief Construct all original industrial_msgs/srv/GetRobotInfo_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsSrvGetRobotInfo_Request :: proc "contextless"() -> (Ros2Industrial_msgsSrvGetRobotInfo_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Industrial_msgsSrvGetRobotInfo_Request(bytes)
}

// @brief Construct all original industrial_msgs/srv/GetRobotInfo_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsSrvGetRobotInfo_Response :: proc "contextless"() -> (Ros2Industrial_msgsSrvGetRobotInfo_Response, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Industrial_msgsSrvGetRobotInfo_Response(bytes)
}

// @brief Construct all original industrial_msgs/srv/SetDrivePower_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsSrvSetDrivePower_Request :: proc "contextless"() -> (Ros2Industrial_msgsSrvSetDrivePower_Request, u32) {
    bytes := []u8{0}
    return decode_Ros2Industrial_msgsSrvSetDrivePower_Request(bytes)
}

// @brief Construct all original industrial_msgs/srv/SetDrivePower_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsSrvSetDrivePower_Response :: proc "contextless"() -> (Ros2Industrial_msgsSrvSetDrivePower_Response, u32) {
    bytes := []u8{0}
    return decode_Ros2Industrial_msgsSrvSetDrivePower_Response(bytes)
}

// @brief Construct all original industrial_msgs/srv/SetRemoteLoggerLevel_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request :: proc "contextless"() -> (Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request, u32) {
    bytes := []u8{0}
    return decode_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request(bytes)
}

// @brief Construct all original industrial_msgs/srv/SetRemoteLoggerLevel_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response :: proc "contextless"() -> (Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response, u32) {
    bytes := []u8{0}
    return decode_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response(bytes)
}

// @brief Construct all original industrial_msgs/srv/StartMotion_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsSrvStartMotion_Request :: proc "contextless"() -> (Ros2Industrial_msgsSrvStartMotion_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Industrial_msgsSrvStartMotion_Request(bytes)
}

// @brief Construct all original industrial_msgs/srv/StartMotion_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsSrvStartMotion_Response :: proc "contextless"() -> (Ros2Industrial_msgsSrvStartMotion_Response, u32) {
    bytes := []u8{0}
    return decode_Ros2Industrial_msgsSrvStartMotion_Response(bytes)
}

// @brief Construct all original industrial_msgs/srv/StopMotion_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsSrvStopMotion_Request :: proc "contextless"() -> (Ros2Industrial_msgsSrvStopMotion_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Industrial_msgsSrvStopMotion_Request(bytes)
}

// @brief Construct all original industrial_msgs/srv/StopMotion_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Industrial_msgsSrvStopMotion_Response :: proc "contextless"() -> (Ros2Industrial_msgsSrvStopMotion_Response, u32) {
    bytes := []u8{0}
    return decode_Ros2Industrial_msgsSrvStopMotion_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/msg/AlarmCauseRemedy defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesMsgAlarmCauseRemedy :: proc "contextless"() -> (Ros2Motoros2_interfacesMsgAlarmCauseRemedy, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesMsgAlarmCauseRemedy(bytes)
}

// @brief Construct all original motoros2_interfaces/msg/AlarmInfo defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesMsgAlarmInfo :: proc "contextless"() -> (Ros2Motoros2_interfacesMsgAlarmInfo, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Motoros2_interfacesMsgAlarmInfo(bytes)
}

// @brief Construct all original motoros2_interfaces/msg/ErrorInfo defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesMsgErrorInfo :: proc "contextless"() -> (Ros2Motoros2_interfacesMsgErrorInfo, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros2Motoros2_interfacesMsgErrorInfo(bytes)
}

// @brief Construct all original motoros2_interfaces/msg/InformJobCrudResultCodes defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesMsgInformJobCrudResultCodes :: proc "contextless"() -> (Ros2Motoros2_interfacesMsgInformJobCrudResultCodes, u32) {
    bytes := []u8{}
    return decode_Ros2Motoros2_interfacesMsgInformJobCrudResultCodes(bytes)
}

// @brief Construct all original motoros2_interfaces/msg/InitTrajEnum defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesMsgInitTrajEnum :: proc "contextless"() -> (Ros2Motoros2_interfacesMsgInitTrajEnum, u32) {
    bytes := []u8{0, 0}
    return decode_Ros2Motoros2_interfacesMsgInitTrajEnum(bytes)
}

// @brief Construct all original motoros2_interfaces/msg/IoResultCodes defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesMsgIoResultCodes :: proc "contextless"() -> (Ros2Motoros2_interfacesMsgIoResultCodes, u32) {
    bytes := []u8{}
    return decode_Ros2Motoros2_interfacesMsgIoResultCodes(bytes)
}

// @brief Construct all original motoros2_interfaces/msg/MotionReadyEnum defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesMsgMotionReadyEnum :: proc "contextless"() -> (Ros2Motoros2_interfacesMsgMotionReadyEnum, u32) {
    bytes := []u8{0, 0}
    return decode_Ros2Motoros2_interfacesMsgMotionReadyEnum(bytes)
}

// @brief Construct all original motoros2_interfaces/msg/QueueResultEnum defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesMsgQueueResultEnum :: proc "contextless"() -> (Ros2Motoros2_interfacesMsgQueueResultEnum, u32) {
    bytes := []u8{0, 0}
    return decode_Ros2Motoros2_interfacesMsgQueueResultEnum(bytes)
}

// @brief Construct all original motoros2_interfaces/msg/SelectionResultCodes defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesMsgSelectionResultCodes :: proc "contextless"() -> (Ros2Motoros2_interfacesMsgSelectionResultCodes, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesMsgSelectionResultCodes(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/GetActiveAlarmInfo_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/GetActiveAlarmInfo_Response defaults with complete
// typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/ListInformJobs_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvListInformJobs_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvListInformJobs_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Motoros2_interfacesSrvListInformJobs_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/ListInformJobs_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvListInformJobs_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvListInformJobs_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvListInformJobs_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/QueueTrajPoint_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvQueueTrajPoint_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvQueueTrajPoint_Request, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Motoros2_interfacesSrvQueueTrajPoint_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/QueueTrajPoint_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvQueueTrajPoint_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvQueueTrajPoint_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvQueueTrajPoint_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/ReadGroupIO_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvReadGroupIO_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvReadGroupIO_Request, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvReadGroupIO_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/ReadGroupIO_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvReadGroupIO_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvReadGroupIO_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvReadGroupIO_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/ReadMRegister_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvReadMRegister_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvReadMRegister_Request, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvReadMRegister_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/ReadMRegister_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvReadMRegister_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvReadMRegister_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvReadMRegister_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/ReadSingleIO_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvReadSingleIO_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvReadSingleIO_Request, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvReadSingleIO_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/ReadSingleIO_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvReadSingleIO_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvReadSingleIO_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvReadSingleIO_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/ResetError_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvResetError_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvResetError_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Motoros2_interfacesSrvResetError_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/ResetError_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvResetError_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvResetError_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvResetError_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/SelectMotionTool_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvSelectMotionTool_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvSelectMotionTool_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvSelectMotionTool_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/SelectMotionTool_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvSelectMotionTool_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvSelectMotionTool_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvSelectMotionTool_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/StartPointQueueMode_Request defaults with complete
// typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvStartPointQueueMode_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvStartPointQueueMode_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Motoros2_interfacesSrvStartPointQueueMode_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/StartPointQueueMode_Response defaults with complete
// typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvStartPointQueueMode_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvStartPointQueueMode_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvStartPointQueueMode_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/StartTrajMode_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvStartTrajMode_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvStartTrajMode_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Motoros2_interfacesSrvStartTrajMode_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/StartTrajMode_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvStartTrajMode_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvStartTrajMode_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvStartTrajMode_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/WriteGroupIO_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvWriteGroupIO_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvWriteGroupIO_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvWriteGroupIO_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/WriteGroupIO_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvWriteGroupIO_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvWriteGroupIO_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvWriteGroupIO_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/WriteMRegister_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvWriteMRegister_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvWriteMRegister_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvWriteMRegister_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/WriteMRegister_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvWriteMRegister_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvWriteMRegister_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvWriteMRegister_Response(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/WriteSingleIO_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvWriteSingleIO_Request :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvWriteSingleIO_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvWriteSingleIO_Request(bytes)
}

// @brief Construct all original motoros2_interfaces/srv/WriteSingleIO_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Motoros2_interfacesSrvWriteSingleIO_Response :: proc "contextless"() -> (Ros2Motoros2_interfacesSrvWriteSingleIO_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Motoros2_interfacesSrvWriteSingleIO_Response(bytes)
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

// @brief Construct all original tf2_msgs/msg/TFMessage defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Tf2_msgsMsgTFMessage :: proc "contextless"() -> (Ros2Tf2_msgsMsgTFMessage, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Tf2_msgsMsgTFMessage(bytes)
}
