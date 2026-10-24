// @file records.odin
// @brief Complete owned original FANUC ROS 2 records and codecs.
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

/// @brief Complete original fanuc_msgs/msg/IOType value.
/// @details Retain all 1 original fields and 18 constants. Wire extent 4..68 bytes.
Ros2Fanuc_msgsMsgIOType :: struct {
    /// @brief Original fanuc_msgs/msg/IOType.type field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_type: wire.Text(64, false),
}
/// @brief Original complete fanuc_msgs/msg/IOType minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgIOType_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/msg/IOType maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgIOType_Maximum_Wire_Bytes :: 68
/// @brief Original complete fanuc_msgs/msg/IOType codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgIOType_Codec_Identity :: "UWVMROS1_1815aa6b1bcab1efe21de0e31570ca650553b5c70f0793301f82c0ca7934c586"
/// @brief Original fanuc_msgs/msg/IOType.AI constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_AI :: "AI"
/// @brief Original fanuc_msgs/msg/IOType.AO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_AO :: "AO"
/// @brief Original fanuc_msgs/msg/IOType.DI constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_DI :: "DI"
/// @brief Original fanuc_msgs/msg/IOType.DO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_DO :: "DO"
/// @brief Original fanuc_msgs/msg/IOType.RI constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_RI :: "RI"
/// @brief Original fanuc_msgs/msg/IOType.RO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_RO :: "RO"
/// @brief Original fanuc_msgs/msg/IOType.SI constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_SI :: "SI"
/// @brief Original fanuc_msgs/msg/IOType.SO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_SO :: "SO"
/// @brief Original fanuc_msgs/msg/IOType.WI constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_WI :: "WI"
/// @brief Original fanuc_msgs/msg/IOType.WO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_WO :: "WO"
/// @brief Original fanuc_msgs/msg/IOType.UI constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_UI :: "UI"
/// @brief Original fanuc_msgs/msg/IOType.UO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_UO :: "UO"
/// @brief Original fanuc_msgs/msg/IOType.WSI constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_WSI :: "WSI"
/// @brief Original fanuc_msgs/msg/IOType.WSO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_WSO :: "WSO"
/// @brief Original fanuc_msgs/msg/IOType.F constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_F :: "F"
/// @brief Original fanuc_msgs/msg/IOType.M constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_M :: "M"
/// @brief Original fanuc_msgs/msg/IOType.GI constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_GI :: "GI"
/// @brief Original fanuc_msgs/msg/IOType.GO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgIOType_GO :: "GO"
/// @brief Traverse every original field of complete fanuc_msgs/msg/IOType.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgIOType :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgIOType, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_type)
}
/// @brief Encode every complete original fanuc_msgs/msg/IOType field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgIOType :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgIOType, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 68)], writing = true}
    fields_Ros2Fanuc_msgsMsgIOType(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/IOType.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgIOType :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgIOType, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 68 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgIOType(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/AnalogIO value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..74 bytes.
Ros2Fanuc_msgsMsgAnalogIO :: struct {
    /// @brief Original fanuc_msgs/msg/AnalogIO.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_io_type: Ros2Fanuc_msgsMsgIOType,
    /// @brief Original fanuc_msgs/msg/AnalogIO.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
    /// @brief Original fanuc_msgs/msg/AnalogIO.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f32,
}
/// @brief Original complete fanuc_msgs/msg/AnalogIO minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgAnalogIO_Minimum_Wire_Bytes :: 10
/// @brief Original complete fanuc_msgs/msg/AnalogIO maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgAnalogIO_Maximum_Wire_Bytes :: 74
/// @brief Original complete fanuc_msgs/msg/AnalogIO codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgAnalogIO_Codec_Identity :: "UWVMROS1_d62097527ba99bf6e803283350161cd1415173a22eb3cb20331a232366076d00"
/// @brief Traverse every original field of complete fanuc_msgs/msg/AnalogIO.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgAnalogIO :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgAnalogIO, cursor: ^wire.Cursor)
{
    fields_Ros2Fanuc_msgsMsgIOType(&value.field_io_type, cursor)
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
    value.field_value = wire.float32(cursor, value.field_value)
}
/// @brief Encode every complete original fanuc_msgs/msg/AnalogIO field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgAnalogIO :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgAnalogIO, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 74)], writing = true}
    fields_Ros2Fanuc_msgsMsgAnalogIO(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/AnalogIO.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgAnalogIO :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgAnalogIO, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 74 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgAnalogIO(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/AnalogIOCmd value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..2372 bytes.
Ros2Fanuc_msgsMsgAnalogIOCmd :: struct {
    /// @brief Original fanuc_msgs/msg/AnalogIOCmd.values field.
    /// @details Original type fanuc_msgs/msg/AnalogIO. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_values: wire.Sequence(Ros2Fanuc_msgsMsgAnalogIO, 32),
}
/// @brief Original complete fanuc_msgs/msg/AnalogIOCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgAnalogIOCmd_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/msg/AnalogIOCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgAnalogIOCmd_Maximum_Wire_Bytes :: 2372
/// @brief Original complete fanuc_msgs/msg/AnalogIOCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgAnalogIOCmd_Codec_Identity :: "UWVMROS1_62f38a088ed23f8daf7163f26514ae1aabd7b1b64845ccdbc281cb7839d857ba"
/// @brief Traverse every original field of complete fanuc_msgs/msg/AnalogIOCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgAnalogIOCmd :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgAnalogIOCmd, cursor: ^wire.Cursor)
{
    value.field_values.size = u32(wire.number(cursor, u64(value.field_values.size), 4))
    if value.field_values.size > 32 { cursor.code = 22; return }
    for index in 0..<int(value.field_values.size) {
        fields_Ros2Fanuc_msgsMsgAnalogIO(&value.field_values.items[index], cursor)
    }
}
/// @brief Encode every complete original fanuc_msgs/msg/AnalogIOCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgAnalogIOCmd :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgAnalogIOCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2372)], writing = true}
    fields_Ros2Fanuc_msgsMsgAnalogIOCmd(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/AnalogIOCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgAnalogIOCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgAnalogIOCmd, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 2372 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgAnalogIOCmd(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/AnalogIOState value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..2372 bytes.
Ros2Fanuc_msgsMsgAnalogIOState :: struct {
    /// @brief Original fanuc_msgs/msg/AnalogIOState.values field.
    /// @details Original type fanuc_msgs/msg/AnalogIO. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_values: wire.Sequence(Ros2Fanuc_msgsMsgAnalogIO, 32),
}
/// @brief Original complete fanuc_msgs/msg/AnalogIOState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgAnalogIOState_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/msg/AnalogIOState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgAnalogIOState_Maximum_Wire_Bytes :: 2372
/// @brief Original complete fanuc_msgs/msg/AnalogIOState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgAnalogIOState_Codec_Identity :: "UWVMROS1_820b41fecbf6db8e2b2e67d60cd1167cf474b22ca6c489f4d2d64dd33eaac9a4"
/// @brief Traverse every original field of complete fanuc_msgs/msg/AnalogIOState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgAnalogIOState :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgAnalogIOState, cursor: ^wire.Cursor)
{
    value.field_values.size = u32(wire.number(cursor, u64(value.field_values.size), 4))
    if value.field_values.size > 32 { cursor.code = 22; return }
    for index in 0..<int(value.field_values.size) {
        fields_Ros2Fanuc_msgsMsgAnalogIO(&value.field_values.items[index], cursor)
    }
}
/// @brief Encode every complete original fanuc_msgs/msg/AnalogIOState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgAnalogIOState :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgAnalogIOState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2372)], writing = true}
    fields_Ros2Fanuc_msgsMsgAnalogIOState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/AnalogIOState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgAnalogIOState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgAnalogIOState, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 2372 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgAnalogIOState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/BoolIO value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 7..71 bytes.
Ros2Fanuc_msgsMsgBoolIO :: struct {
    /// @brief Original fanuc_msgs/msg/BoolIO.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_io_type: Ros2Fanuc_msgsMsgIOType,
    /// @brief Original fanuc_msgs/msg/BoolIO.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
    /// @brief Original fanuc_msgs/msg/BoolIO.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: bool,
}
/// @brief Original complete fanuc_msgs/msg/BoolIO minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgBoolIO_Minimum_Wire_Bytes :: 7
/// @brief Original complete fanuc_msgs/msg/BoolIO maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgBoolIO_Maximum_Wire_Bytes :: 71
/// @brief Original complete fanuc_msgs/msg/BoolIO codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgBoolIO_Codec_Identity :: "UWVMROS1_9209ae1b8f5407a31beface0a3286f58bd823aabdc560c2a4bf4a9b1ca125aa7"
/// @brief Traverse every original field of complete fanuc_msgs/msg/BoolIO.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgBoolIO :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgBoolIO, cursor: ^wire.Cursor)
{
    fields_Ros2Fanuc_msgsMsgIOType(&value.field_io_type, cursor)
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
    value.field_value = wire.boolean(cursor, value.field_value)
}
/// @brief Encode every complete original fanuc_msgs/msg/BoolIO field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgBoolIO :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgBoolIO, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 71)], writing = true}
    fields_Ros2Fanuc_msgsMsgBoolIO(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/BoolIO.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgBoolIO :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgBoolIO, code: u32)
{
    if len(bytes) < 7 || len(bytes) > 71 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgBoolIO(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/CollaborativeSpeedScaling value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Fanuc_msgsMsgCollaborativeSpeedScaling :: struct {
    /// @brief Original fanuc_msgs/msg/CollaborativeSpeedScaling.collaborative_speed_scaling field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_collaborative_speed_scaling: f64,
}
/// @brief Original complete fanuc_msgs/msg/CollaborativeSpeedScaling minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgCollaborativeSpeedScaling_Minimum_Wire_Bytes :: 8
/// @brief Original complete fanuc_msgs/msg/CollaborativeSpeedScaling maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgCollaborativeSpeedScaling_Maximum_Wire_Bytes :: 8
/// @brief Original complete fanuc_msgs/msg/CollaborativeSpeedScaling codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgCollaborativeSpeedScaling_Codec_Identity :: "UWVMROS1_693a3b581527d2eaf0f697f31e87ca2da428d1f51b821d42d6b06af387a2fb45"
/// @brief Traverse every original field of complete fanuc_msgs/msg/CollaborativeSpeedScaling.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgCollaborativeSpeedScaling :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgCollaborativeSpeedScaling, cursor: ^wire.Cursor)
{
    value.field_collaborative_speed_scaling = wire.float64(cursor, value.field_collaborative_speed_scaling)
}
/// @brief Encode every complete original fanuc_msgs/msg/CollaborativeSpeedScaling field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgCollaborativeSpeedScaling :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgCollaborativeSpeedScaling, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Fanuc_msgsMsgCollaborativeSpeedScaling(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/CollaborativeSpeedScaling.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgCollaborativeSpeedScaling :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgCollaborativeSpeedScaling, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgCollaborativeSpeedScaling(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/ConnectionStatus value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Fanuc_msgsMsgConnectionStatus :: struct {
    /// @brief Original fanuc_msgs/msg/ConnectionStatus.is_connected field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_is_connected: bool,
}
/// @brief Original complete fanuc_msgs/msg/ConnectionStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgConnectionStatus_Minimum_Wire_Bytes :: 1
/// @brief Original complete fanuc_msgs/msg/ConnectionStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgConnectionStatus_Maximum_Wire_Bytes :: 1
/// @brief Original complete fanuc_msgs/msg/ConnectionStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgConnectionStatus_Codec_Identity :: "UWVMROS1_8ce24fb87538922b1f3c0ae856eb223d716143064eb46a6cfce5fec01b45b078"
/// @brief Traverse every original field of complete fanuc_msgs/msg/ConnectionStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgConnectionStatus :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgConnectionStatus, cursor: ^wire.Cursor)
{
    value.field_is_connected = wire.boolean(cursor, value.field_is_connected)
}
/// @brief Encode every complete original fanuc_msgs/msg/ConnectionStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgConnectionStatus :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgConnectionStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Fanuc_msgsMsgConnectionStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/ConnectionStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgConnectionStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgConnectionStatus, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgConnectionStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/ForceSensor value.
/// @details Retain all 7 original fields and 0 constants. Wire extent 28..28 bytes.
Ros2Fanuc_msgsMsgForceSensor :: struct {
    /// @brief Original fanuc_msgs/msg/ForceSensor.force_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_force_x: f32,
    /// @brief Original fanuc_msgs/msg/ForceSensor.force_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_force_y: f32,
    /// @brief Original fanuc_msgs/msg/ForceSensor.force_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_force_z: f32,
    /// @brief Original fanuc_msgs/msg/ForceSensor.moment_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_moment_x: f32,
    /// @brief Original fanuc_msgs/msg/ForceSensor.moment_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_moment_y: f32,
    /// @brief Original fanuc_msgs/msg/ForceSensor.moment_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_moment_z: f32,
    /// @brief Original fanuc_msgs/msg/ForceSensor.fs_type field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_fs_type: u32,
}
/// @brief Original complete fanuc_msgs/msg/ForceSensor minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgForceSensor_Minimum_Wire_Bytes :: 28
/// @brief Original complete fanuc_msgs/msg/ForceSensor maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgForceSensor_Maximum_Wire_Bytes :: 28
/// @brief Original complete fanuc_msgs/msg/ForceSensor codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgForceSensor_Codec_Identity :: "UWVMROS1_06c99b43d7347646179850f3ba79192da7ce71296667d93d88659efbc1004032"
/// @brief Traverse every original field of complete fanuc_msgs/msg/ForceSensor.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgForceSensor :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgForceSensor, cursor: ^wire.Cursor)
{
    value.field_force_x = wire.float32(cursor, value.field_force_x)
    value.field_force_y = wire.float32(cursor, value.field_force_y)
    value.field_force_z = wire.float32(cursor, value.field_force_z)
    value.field_moment_x = wire.float32(cursor, value.field_moment_x)
    value.field_moment_y = wire.float32(cursor, value.field_moment_y)
    value.field_moment_z = wire.float32(cursor, value.field_moment_z)
    value.field_fs_type = u32(wire.number(cursor, u64(value.field_fs_type), 4))
}
/// @brief Encode every complete original fanuc_msgs/msg/ForceSensor field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgForceSensor :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgForceSensor, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 28)], writing = true}
    fields_Ros2Fanuc_msgsMsgForceSensor(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/ForceSensor.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgForceSensor :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgForceSensor, code: u32)
{
    if len(bytes) < 28 || len(bytes) > 28 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgForceSensor(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/Frame value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 24..24 bytes.
Ros2Fanuc_msgsMsgFrame :: struct {
    /// @brief Original fanuc_msgs/msg/Frame.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f32,
    /// @brief Original fanuc_msgs/msg/Frame.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f32,
    /// @brief Original fanuc_msgs/msg/Frame.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f32,
    /// @brief Original fanuc_msgs/msg/Frame.w field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_w: f32,
    /// @brief Original fanuc_msgs/msg/Frame.p field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_p: f32,
    /// @brief Original fanuc_msgs/msg/Frame.r field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_r: f32,
}
/// @brief Original complete fanuc_msgs/msg/Frame minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgFrame_Minimum_Wire_Bytes :: 24
/// @brief Original complete fanuc_msgs/msg/Frame maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgFrame_Maximum_Wire_Bytes :: 24
/// @brief Original complete fanuc_msgs/msg/Frame codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgFrame_Codec_Identity :: "UWVMROS1_609d1b7e49315f7f0a0fe86fa997673acd0d009e57b563690f36624b59b9effb"
/// @brief Traverse every original field of complete fanuc_msgs/msg/Frame.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgFrame :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgFrame, cursor: ^wire.Cursor)
{
    value.field_x = wire.float32(cursor, value.field_x)
    value.field_y = wire.float32(cursor, value.field_y)
    value.field_z = wire.float32(cursor, value.field_z)
    value.field_w = wire.float32(cursor, value.field_w)
    value.field_p = wire.float32(cursor, value.field_p)
    value.field_r = wire.float32(cursor, value.field_r)
}
/// @brief Encode every complete original fanuc_msgs/msg/Frame field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgFrame :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgFrame, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 24)], writing = true}
    fields_Ros2Fanuc_msgsMsgFrame(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/Frame.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgFrame :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgFrame, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 24 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgFrame(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/IOCmd value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..2276 bytes.
Ros2Fanuc_msgsMsgIOCmd :: struct {
    /// @brief Original fanuc_msgs/msg/IOCmd.values field.
    /// @details Original type fanuc_msgs/msg/BoolIO. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_values: wire.Sequence(Ros2Fanuc_msgsMsgBoolIO, 32),
}
/// @brief Original complete fanuc_msgs/msg/IOCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgIOCmd_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/msg/IOCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgIOCmd_Maximum_Wire_Bytes :: 2276
/// @brief Original complete fanuc_msgs/msg/IOCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgIOCmd_Codec_Identity :: "UWVMROS1_462552bbaa3c9ed4caaf3108960d514e4ab61fcf2d6a84f0465b485bec1de45d"
/// @brief Traverse every original field of complete fanuc_msgs/msg/IOCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgIOCmd :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgIOCmd, cursor: ^wire.Cursor)
{
    value.field_values.size = u32(wire.number(cursor, u64(value.field_values.size), 4))
    if value.field_values.size > 32 { cursor.code = 22; return }
    for index in 0..<int(value.field_values.size) {
        fields_Ros2Fanuc_msgsMsgBoolIO(&value.field_values.items[index], cursor)
    }
}
/// @brief Encode every complete original fanuc_msgs/msg/IOCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgIOCmd :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgIOCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2276)], writing = true}
    fields_Ros2Fanuc_msgsMsgIOCmd(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/IOCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgIOCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgIOCmd, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 2276 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgIOCmd(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/IOState value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..2276 bytes.
Ros2Fanuc_msgsMsgIOState :: struct {
    /// @brief Original fanuc_msgs/msg/IOState.values field.
    /// @details Original type fanuc_msgs/msg/BoolIO. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_values: wire.Sequence(Ros2Fanuc_msgsMsgBoolIO, 32),
}
/// @brief Original complete fanuc_msgs/msg/IOState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgIOState_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/msg/IOState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgIOState_Maximum_Wire_Bytes :: 2276
/// @brief Original complete fanuc_msgs/msg/IOState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgIOState_Codec_Identity :: "UWVMROS1_332533445014c03d626a2c4dbdffd9421748aa6b73f49d407441fd6b9f2b24d8"
/// @brief Traverse every original field of complete fanuc_msgs/msg/IOState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgIOState :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgIOState, cursor: ^wire.Cursor)
{
    value.field_values.size = u32(wire.number(cursor, u64(value.field_values.size), 4))
    if value.field_values.size > 32 { cursor.code = 22; return }
    for index in 0..<int(value.field_values.size) {
        fields_Ros2Fanuc_msgsMsgBoolIO(&value.field_values.items[index], cursor)
    }
}
/// @brief Encode every complete original fanuc_msgs/msg/IOState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgIOState :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgIOState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2276)], writing = true}
    fields_Ros2Fanuc_msgsMsgIOState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/IOState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgIOState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgIOState, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 2276 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgIOState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/NumReg value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..6 bytes.
Ros2Fanuc_msgsMsgNumReg :: struct {
    /// @brief Original fanuc_msgs/msg/NumReg.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
    /// @brief Original fanuc_msgs/msg/NumReg.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f32,
}
/// @brief Original complete fanuc_msgs/msg/NumReg minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgNumReg_Minimum_Wire_Bytes :: 6
/// @brief Original complete fanuc_msgs/msg/NumReg maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgNumReg_Maximum_Wire_Bytes :: 6
/// @brief Original complete fanuc_msgs/msg/NumReg codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgNumReg_Codec_Identity :: "UWVMROS1_0fb9344c5768ea52ab072939f368f1e73dcc0ff83e74b4cb6d35fca47c1d29cc"
/// @brief Traverse every original field of complete fanuc_msgs/msg/NumReg.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgNumReg :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgNumReg, cursor: ^wire.Cursor)
{
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
    value.field_value = wire.float32(cursor, value.field_value)
}
/// @brief Encode every complete original fanuc_msgs/msg/NumReg field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgNumReg :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgNumReg, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 6)], writing = true}
    fields_Ros2Fanuc_msgsMsgNumReg(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/NumReg.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgNumReg :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgNumReg, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 6 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgNumReg(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/NumRegCmd value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..196 bytes.
Ros2Fanuc_msgsMsgNumRegCmd :: struct {
    /// @brief Original fanuc_msgs/msg/NumRegCmd.values field.
    /// @details Original type fanuc_msgs/msg/NumReg. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_values: wire.Sequence(Ros2Fanuc_msgsMsgNumReg, 32),
}
/// @brief Original complete fanuc_msgs/msg/NumRegCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgNumRegCmd_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/msg/NumRegCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgNumRegCmd_Maximum_Wire_Bytes :: 196
/// @brief Original complete fanuc_msgs/msg/NumRegCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgNumRegCmd_Codec_Identity :: "UWVMROS1_9c76500073889377525a0802c46bd96589a2639dd9534cf7ad2b9956cd95b5b6"
/// @brief Traverse every original field of complete fanuc_msgs/msg/NumRegCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgNumRegCmd :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgNumRegCmd, cursor: ^wire.Cursor)
{
    value.field_values.size = u32(wire.number(cursor, u64(value.field_values.size), 4))
    if value.field_values.size > 32 { cursor.code = 22; return }
    for index in 0..<int(value.field_values.size) {
        fields_Ros2Fanuc_msgsMsgNumReg(&value.field_values.items[index], cursor)
    }
}
/// @brief Encode every complete original fanuc_msgs/msg/NumRegCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgNumRegCmd :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgNumRegCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 196)], writing = true}
    fields_Ros2Fanuc_msgsMsgNumRegCmd(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/NumRegCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgNumRegCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgNumRegCmd, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 196 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgNumRegCmd(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/NumRegState value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..196 bytes.
Ros2Fanuc_msgsMsgNumRegState :: struct {
    /// @brief Original fanuc_msgs/msg/NumRegState.values field.
    /// @details Original type fanuc_msgs/msg/NumReg. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_values: wire.Sequence(Ros2Fanuc_msgsMsgNumReg, 32),
}
/// @brief Original complete fanuc_msgs/msg/NumRegState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgNumRegState_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/msg/NumRegState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgNumRegState_Maximum_Wire_Bytes :: 196
/// @brief Original complete fanuc_msgs/msg/NumRegState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgNumRegState_Codec_Identity :: "UWVMROS1_9c8ff4917a6dd033e6a6776ae8525e93c2924d776f05fd54e7e8d2251fc48b3a"
/// @brief Traverse every original field of complete fanuc_msgs/msg/NumRegState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgNumRegState :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgNumRegState, cursor: ^wire.Cursor)
{
    value.field_values.size = u32(wire.number(cursor, u64(value.field_values.size), 4))
    if value.field_values.size > 32 { cursor.code = 22; return }
    for index in 0..<int(value.field_values.size) {
        fields_Ros2Fanuc_msgsMsgNumReg(&value.field_values.items[index], cursor)
    }
}
/// @brief Encode every complete original fanuc_msgs/msg/NumRegState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgNumRegState :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgNumRegState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 196)], writing = true}
    fields_Ros2Fanuc_msgsMsgNumRegState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/NumRegState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgNumRegState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgNumRegState, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 196 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgNumRegState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/RMIStatus value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 24..1048 bytes.
Ros2Fanuc_msgsMsgRMIStatus :: struct {
    /// @brief Original fanuc_msgs/msg/RMIStatus.program_status field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_program_status: u32,
    /// @brief Original fanuc_msgs/msg/RMIStatus.next_sequence field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_next_sequence: u32,
    /// @brief Original fanuc_msgs/msg/RMIStatus.last_sequence field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_last_sequence: u32,
    /// @brief Original fanuc_msgs/msg/RMIStatus.last_sequence_error field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_last_sequence_error: i32,
    /// @brief Original fanuc_msgs/msg/RMIStatus.last_sequence_instruction field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_last_sequence_instruction: wire.Text(512, false),
    /// @brief Original fanuc_msgs/msg/RMIStatus.last_sequence_error_message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_last_sequence_error_message: wire.Text(512, false),
}
/// @brief Original complete fanuc_msgs/msg/RMIStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgRMIStatus_Minimum_Wire_Bytes :: 24
/// @brief Original complete fanuc_msgs/msg/RMIStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgRMIStatus_Maximum_Wire_Bytes :: 1048
/// @brief Original complete fanuc_msgs/msg/RMIStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgRMIStatus_Codec_Identity :: "UWVMROS1_dc2e7eaabf44807142581905838f8951653682a6c6d61ebcf56494b16a10d5e8"
/// @brief Traverse every original field of complete fanuc_msgs/msg/RMIStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgRMIStatus :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgRMIStatus, cursor: ^wire.Cursor)
{
    value.field_program_status = u32(wire.number(cursor, u64(value.field_program_status), 4))
    value.field_next_sequence = u32(wire.number(cursor, u64(value.field_next_sequence), 4))
    value.field_last_sequence = u32(wire.number(cursor, u64(value.field_last_sequence), 4))
    value.field_last_sequence_error = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_last_sequence_error), 4))
    wire.text(cursor, &value.field_last_sequence_instruction)
    wire.text(cursor, &value.field_last_sequence_error_message)
}
/// @brief Encode every complete original fanuc_msgs/msg/RMIStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgRMIStatus :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgRMIStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1048)], writing = true}
    fields_Ros2Fanuc_msgsMsgRMIStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/RMIStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgRMIStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgRMIStatus, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 1048 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgRMIStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/RobotStatus value.
/// @details Retain all 5 original fields and 5 constants. Wire extent 5..5 bytes.
Ros2Fanuc_msgsMsgRobotStatus :: struct {
    /// @brief Original fanuc_msgs/msg/RobotStatus.in_error field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_error: bool,
    /// @brief Original fanuc_msgs/msg/RobotStatus.tp_enabled field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tp_enabled: bool,
    /// @brief Original fanuc_msgs/msg/RobotStatus.e_stopped field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_e_stopped: bool,
    /// @brief Original fanuc_msgs/msg/RobotStatus.motion_possible field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motion_possible: bool,
    /// @brief Original fanuc_msgs/msg/RobotStatus.contact_stop_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_contact_stop_mode: u8,
}
/// @brief Original complete fanuc_msgs/msg/RobotStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgRobotStatus_Minimum_Wire_Bytes :: 5
/// @brief Original complete fanuc_msgs/msg/RobotStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgRobotStatus_Maximum_Wire_Bytes :: 5
/// @brief Original complete fanuc_msgs/msg/RobotStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgRobotStatus_Codec_Identity :: "UWVMROS1_3f31ee3631dc6f4c90eb5ded6209ccebf0f4193ddfe5f5032bdd2bcd71f8cc31"
/// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_NONE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_NONE :: 0
/// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_SAFE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_SAFE :: 1
/// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_STOP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_STOP :: 2
/// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_DSBL constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_DSBL :: 3
/// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_ESCP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsMsgRobotStatus_CONTACT_STOP_MODE_ESCP :: 4
/// @brief Traverse every original field of complete fanuc_msgs/msg/RobotStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgRobotStatus :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgRobotStatus, cursor: ^wire.Cursor)
{
    value.field_in_error = wire.boolean(cursor, value.field_in_error)
    value.field_tp_enabled = wire.boolean(cursor, value.field_tp_enabled)
    value.field_e_stopped = wire.boolean(cursor, value.field_e_stopped)
    value.field_motion_possible = wire.boolean(cursor, value.field_motion_possible)
    value.field_contact_stop_mode = u8(wire.number(cursor, u64(value.field_contact_stop_mode), 1))
}
/// @brief Encode every complete original fanuc_msgs/msg/RobotStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgRobotStatus :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgRobotStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5)], writing = true}
    fields_Ros2Fanuc_msgsMsgRobotStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/RobotStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgRobotStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgRobotStatus, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 5 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgRobotStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/msg/RobotStatusExt value.
/// @details Retain all 6 original fields and 0 constants. Wire extent 18..1042 bytes.
Ros2Fanuc_msgsMsgRobotStatusExt :: struct {
    /// @brief Original fanuc_msgs/msg/RobotStatusExt.error_code field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_error_code: wire.Text(512, false),
    /// @brief Original fanuc_msgs/msg/RobotStatusExt.in_motion field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_motion: bool,
    /// @brief Original fanuc_msgs/msg/RobotStatusExt.drives_powered field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_drives_powered: bool,
    /// @brief Original fanuc_msgs/msg/RobotStatusExt.gen_override field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_gen_override: i32,
    /// @brief Original fanuc_msgs/msg/RobotStatusExt.speed_clamp_limit field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speed_clamp_limit: f32,
    /// @brief Original fanuc_msgs/msg/RobotStatusExt.control_mode field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_control_mode: wire.Text(512, false),
}
/// @brief Original complete fanuc_msgs/msg/RobotStatusExt minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgRobotStatusExt_Minimum_Wire_Bytes :: 18
/// @brief Original complete fanuc_msgs/msg/RobotStatusExt maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgRobotStatusExt_Maximum_Wire_Bytes :: 1042
/// @brief Original complete fanuc_msgs/msg/RobotStatusExt codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsMsgRobotStatusExt_Codec_Identity :: "UWVMROS1_8ba47a11bfbe02026fe79b32e1ed02e5f609499ea55bb57c9f09af9fba389648"
/// @brief Traverse every original field of complete fanuc_msgs/msg/RobotStatusExt.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsMsgRobotStatusExt :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgRobotStatusExt, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_error_code)
    value.field_in_motion = wire.boolean(cursor, value.field_in_motion)
    value.field_drives_powered = wire.boolean(cursor, value.field_drives_powered)
    value.field_gen_override = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_gen_override), 4))
    value.field_speed_clamp_limit = wire.float32(cursor, value.field_speed_clamp_limit)
    wire.text(cursor, &value.field_control_mode)
}
/// @brief Encode every complete original fanuc_msgs/msg/RobotStatusExt field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsMsgRobotStatusExt :: proc "contextless"(
    value: ^Ros2Fanuc_msgsMsgRobotStatusExt, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1042)], writing = true}
    fields_Ros2Fanuc_msgsMsgRobotStatusExt(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/msg/RobotStatusExt.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsMsgRobotStatusExt :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsMsgRobotStatusExt, code: u32)
{
    if len(bytes) < 18 || len(bytes) > 1042 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsMsgRobotStatusExt(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/CfgForceSensor_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Fanuc_msgsSrvCfgForceSensor_Request :: struct {
    /// @brief Original fanuc_msgs/srv/CfgForceSensor_Request.do_reset field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_do_reset: u32,
    /// @brief Original fanuc_msgs/srv/CfgForceSensor_Request.fs_type field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_fs_type: u32,
}
/// @brief Original complete fanuc_msgs/srv/CfgForceSensor_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvCfgForceSensor_Request_Minimum_Wire_Bytes :: 8
/// @brief Original complete fanuc_msgs/srv/CfgForceSensor_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvCfgForceSensor_Request_Maximum_Wire_Bytes :: 8
/// @brief Original complete fanuc_msgs/srv/CfgForceSensor_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvCfgForceSensor_Request_Codec_Identity :: "UWVMROS1_01973ed21546cb747ad2ce2a990a8ec4e70efb66e1c8fc8856cf1082870984ff"
/// @brief Traverse every original field of complete fanuc_msgs/srv/CfgForceSensor_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvCfgForceSensor_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvCfgForceSensor_Request, cursor: ^wire.Cursor)
{
    value.field_do_reset = u32(wire.number(cursor, u64(value.field_do_reset), 4))
    value.field_fs_type = u32(wire.number(cursor, u64(value.field_fs_type), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/CfgForceSensor_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvCfgForceSensor_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvCfgForceSensor_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Fanuc_msgsSrvCfgForceSensor_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/CfgForceSensor_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvCfgForceSensor_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvCfgForceSensor_Request, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvCfgForceSensor_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/CfgForceSensor_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvCfgForceSensor_Response :: struct {
    /// @brief Original fanuc_msgs/srv/CfgForceSensor_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/CfgForceSensor_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvCfgForceSensor_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/CfgForceSensor_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvCfgForceSensor_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/CfgForceSensor_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvCfgForceSensor_Response_Codec_Identity :: "UWVMROS1_41799ce44c937b1524889391db61e2b4d35795055cb4bbacfe5cc8bbd5b9a37b"
/// @brief Traverse every original field of complete fanuc_msgs/srv/CfgForceSensor_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvCfgForceSensor_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvCfgForceSensor_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/CfgForceSensor_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvCfgForceSensor_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvCfgForceSensor_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvCfgForceSensor_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/CfgForceSensor_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvCfgForceSensor_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvCfgForceSensor_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvCfgForceSensor_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetAnalogIO_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..70 bytes.
Ros2Fanuc_msgsSrvGetAnalogIO_Request :: struct {
    /// @brief Original fanuc_msgs/srv/GetAnalogIO_Request.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_io_type: Ros2Fanuc_msgsMsgIOType,
    /// @brief Original fanuc_msgs/srv/GetAnalogIO_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
}
/// @brief Original complete fanuc_msgs/srv/GetAnalogIO_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetAnalogIO_Request_Minimum_Wire_Bytes :: 6
/// @brief Original complete fanuc_msgs/srv/GetAnalogIO_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetAnalogIO_Request_Maximum_Wire_Bytes :: 70
/// @brief Original complete fanuc_msgs/srv/GetAnalogIO_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetAnalogIO_Request_Codec_Identity :: "UWVMROS1_cd567f97de2de581975c3d4f280eec545dea37c941d316fc3708bbc4d3af94d9"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetAnalogIO_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetAnalogIO_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetAnalogIO_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Fanuc_msgsMsgIOType(&value.field_io_type, cursor)
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetAnalogIO_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetAnalogIO_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetAnalogIO_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 70)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetAnalogIO_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetAnalogIO_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetAnalogIO_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetAnalogIO_Request, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 70 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetAnalogIO_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetAnalogIO_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Fanuc_msgsSrvGetAnalogIO_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetAnalogIO_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/GetAnalogIO_Response.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f32,
}
/// @brief Original complete fanuc_msgs/srv/GetAnalogIO_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetAnalogIO_Response_Minimum_Wire_Bytes :: 8
/// @brief Original complete fanuc_msgs/srv/GetAnalogIO_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetAnalogIO_Response_Maximum_Wire_Bytes :: 8
/// @brief Original complete fanuc_msgs/srv/GetAnalogIO_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetAnalogIO_Response_Codec_Identity :: "UWVMROS1_3b53d3ce95d95454a782778c160fcc102ead869c5681c9c67224c373fef1b217"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetAnalogIO_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetAnalogIO_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetAnalogIO_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_value = wire.float32(cursor, value.field_value)
}
/// @brief Encode every complete original fanuc_msgs/srv/GetAnalogIO_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetAnalogIO_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetAnalogIO_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetAnalogIO_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetAnalogIO_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetAnalogIO_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetAnalogIO_Response, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetAnalogIO_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetBoolIO_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..70 bytes.
Ros2Fanuc_msgsSrvGetBoolIO_Request :: struct {
    /// @brief Original fanuc_msgs/srv/GetBoolIO_Request.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_io_type: Ros2Fanuc_msgsMsgIOType,
    /// @brief Original fanuc_msgs/srv/GetBoolIO_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
}
/// @brief Original complete fanuc_msgs/srv/GetBoolIO_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetBoolIO_Request_Minimum_Wire_Bytes :: 6
/// @brief Original complete fanuc_msgs/srv/GetBoolIO_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetBoolIO_Request_Maximum_Wire_Bytes :: 70
/// @brief Original complete fanuc_msgs/srv/GetBoolIO_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetBoolIO_Request_Codec_Identity :: "UWVMROS1_ce8c4b1efd2828e92656e897baf041e8965367a236079231101807c898d4b50c"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetBoolIO_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetBoolIO_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetBoolIO_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Fanuc_msgsMsgIOType(&value.field_io_type, cursor)
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetBoolIO_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetBoolIO_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetBoolIO_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 70)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetBoolIO_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetBoolIO_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetBoolIO_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetBoolIO_Request, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 70 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetBoolIO_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetBoolIO_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..5 bytes.
Ros2Fanuc_msgsSrvGetBoolIO_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetBoolIO_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/GetBoolIO_Response.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: bool,
}
/// @brief Original complete fanuc_msgs/srv/GetBoolIO_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetBoolIO_Response_Minimum_Wire_Bytes :: 5
/// @brief Original complete fanuc_msgs/srv/GetBoolIO_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetBoolIO_Response_Maximum_Wire_Bytes :: 5
/// @brief Original complete fanuc_msgs/srv/GetBoolIO_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetBoolIO_Response_Codec_Identity :: "UWVMROS1_7dbdcdde8d76c4ef422ea158551dd912273220c25a08f28fc8d19fdf8bc8a01c"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetBoolIO_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetBoolIO_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetBoolIO_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_value = wire.boolean(cursor, value.field_value)
}
/// @brief Encode every complete original fanuc_msgs/srv/GetBoolIO_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetBoolIO_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetBoolIO_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetBoolIO_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetBoolIO_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetBoolIO_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetBoolIO_Response, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 5 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetBoolIO_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetCartesianPosition_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Fanuc_msgsSrvGetCartesianPosition_Request :: struct {
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/GetCartesianPosition_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetCartesianPosition_Request_Minimum_Wire_Bytes :: 1
/// @brief Original complete fanuc_msgs/srv/GetCartesianPosition_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetCartesianPosition_Request_Maximum_Wire_Bytes :: 1
/// @brief Original complete fanuc_msgs/srv/GetCartesianPosition_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetCartesianPosition_Request_Codec_Identity :: "UWVMROS1_a694a17bde88131efcadac4f134464a7777beab4b09e17624ae7b173ab62c3e4"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetCartesianPosition_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetCartesianPosition_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetCartesianPosition_Request, cursor: ^wire.Cursor)
{
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetCartesianPosition_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetCartesianPosition_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetCartesianPosition_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetCartesianPosition_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetCartesianPosition_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetCartesianPosition_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetCartesianPosition_Request, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetCartesianPosition_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetCartesianPosition_Response value.
/// @details Retain all 21 original fields and 0 constants. Wire extent 54..54 bytes.
Ros2Fanuc_msgsSrvGetCartesianPosition_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.timetag field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_timetag: i32,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.utool field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_utool: u8,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.uframe field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_uframe: u8,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.front field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_front: u8,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.up field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_up: u8,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.left field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_left: u8,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.flip field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_flip: u8,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.turn4 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_turn4: i8,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.turn5 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_turn5: i8,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.turn6 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_turn6: i8,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f32,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f32,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f32,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.w field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_w: f32,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.p field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_p: f32,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.r field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_r: f32,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.ext1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ext1: f32,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.ext2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ext2: f32,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.ext3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ext3: f32,
    /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/GetCartesianPosition_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetCartesianPosition_Response_Minimum_Wire_Bytes :: 54
/// @brief Original complete fanuc_msgs/srv/GetCartesianPosition_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetCartesianPosition_Response_Maximum_Wire_Bytes :: 54
/// @brief Original complete fanuc_msgs/srv/GetCartesianPosition_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetCartesianPosition_Response_Codec_Identity :: "UWVMROS1_0516f0145717b06550674e02f0b9c47f9b312f4f361c791f56257fbb79e67329"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetCartesianPosition_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetCartesianPosition_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetCartesianPosition_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_timetag = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_timetag), 4))
    value.field_utool = u8(wire.number(cursor, u64(value.field_utool), 1))
    value.field_uframe = u8(wire.number(cursor, u64(value.field_uframe), 1))
    value.field_front = u8(wire.number(cursor, u64(value.field_front), 1))
    value.field_up = u8(wire.number(cursor, u64(value.field_up), 1))
    value.field_left = u8(wire.number(cursor, u64(value.field_left), 1))
    value.field_flip = u8(wire.number(cursor, u64(value.field_flip), 1))
    value.field_turn4 = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_turn4), 1))
    value.field_turn5 = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_turn5), 1))
    value.field_turn6 = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_turn6), 1))
    value.field_x = wire.float32(cursor, value.field_x)
    value.field_y = wire.float32(cursor, value.field_y)
    value.field_z = wire.float32(cursor, value.field_z)
    value.field_w = wire.float32(cursor, value.field_w)
    value.field_p = wire.float32(cursor, value.field_p)
    value.field_r = wire.float32(cursor, value.field_r)
    value.field_ext1 = wire.float32(cursor, value.field_ext1)
    value.field_ext2 = wire.float32(cursor, value.field_ext2)
    value.field_ext3 = wire.float32(cursor, value.field_ext3)
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetCartesianPosition_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetCartesianPosition_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetCartesianPosition_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 54)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetCartesianPosition_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetCartesianPosition_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetCartesianPosition_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetCartesianPosition_Response, code: u32)
{
    if len(bytes) < 54 || len(bytes) > 54 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetCartesianPosition_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetGroupIO_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..70 bytes.
Ros2Fanuc_msgsSrvGetGroupIO_Request :: struct {
    /// @brief Original fanuc_msgs/srv/GetGroupIO_Request.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_io_type: Ros2Fanuc_msgsMsgIOType,
    /// @brief Original fanuc_msgs/srv/GetGroupIO_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
}
/// @brief Original complete fanuc_msgs/srv/GetGroupIO_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetGroupIO_Request_Minimum_Wire_Bytes :: 6
/// @brief Original complete fanuc_msgs/srv/GetGroupIO_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetGroupIO_Request_Maximum_Wire_Bytes :: 70
/// @brief Original complete fanuc_msgs/srv/GetGroupIO_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetGroupIO_Request_Codec_Identity :: "UWVMROS1_dbd2e8e791e8debc745843827ed296b51bf84159f4c4fe5d912c231d621de216"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetGroupIO_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetGroupIO_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetGroupIO_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Fanuc_msgsMsgIOType(&value.field_io_type, cursor)
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetGroupIO_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetGroupIO_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetGroupIO_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 70)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetGroupIO_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetGroupIO_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetGroupIO_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetGroupIO_Request, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 70 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetGroupIO_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetGroupIO_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..6 bytes.
Ros2Fanuc_msgsSrvGetGroupIO_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetGroupIO_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/GetGroupIO_Response.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u16,
}
/// @brief Original complete fanuc_msgs/srv/GetGroupIO_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetGroupIO_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete fanuc_msgs/srv/GetGroupIO_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetGroupIO_Response_Maximum_Wire_Bytes :: 6
/// @brief Original complete fanuc_msgs/srv/GetGroupIO_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetGroupIO_Response_Codec_Identity :: "UWVMROS1_9e131b91f36badc90ddae54a9855095241ab86c51b419b684d62879fae0bda7f"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetGroupIO_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetGroupIO_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetGroupIO_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_value = u16(wire.number(cursor, u64(value.field_value), 2))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetGroupIO_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetGroupIO_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetGroupIO_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 6)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetGroupIO_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetGroupIO_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetGroupIO_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetGroupIO_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 6 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetGroupIO_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetNumReg_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 2..2 bytes.
Ros2Fanuc_msgsSrvGetNumReg_Request :: struct {
    /// @brief Original fanuc_msgs/srv/GetNumReg_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
}
/// @brief Original complete fanuc_msgs/srv/GetNumReg_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetNumReg_Request_Minimum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/GetNumReg_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetNumReg_Request_Maximum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/GetNumReg_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetNumReg_Request_Codec_Identity :: "UWVMROS1_727b5ff4ab9c8976280df12e80d3aee03b31288087adb94ee82161574fc8dcb5"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetNumReg_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetNumReg_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetNumReg_Request, cursor: ^wire.Cursor)
{
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetNumReg_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetNumReg_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetNumReg_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetNumReg_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetNumReg_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetNumReg_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetNumReg_Request, code: u32)
{
    if len(bytes) < 2 || len(bytes) > 2 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetNumReg_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetNumReg_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Fanuc_msgsSrvGetNumReg_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetNumReg_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/GetNumReg_Response.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f32,
}
/// @brief Original complete fanuc_msgs/srv/GetNumReg_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetNumReg_Response_Minimum_Wire_Bytes :: 8
/// @brief Original complete fanuc_msgs/srv/GetNumReg_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetNumReg_Response_Maximum_Wire_Bytes :: 8
/// @brief Original complete fanuc_msgs/srv/GetNumReg_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetNumReg_Response_Codec_Identity :: "UWVMROS1_78ae7ff82b3b2cd7d512fee8335f14a0759a71425fcf3d1b150dbe5e2a0179b3"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetNumReg_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetNumReg_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetNumReg_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_value = wire.float32(cursor, value.field_value)
}
/// @brief Encode every complete original fanuc_msgs/srv/GetNumReg_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetNumReg_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetNumReg_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetNumReg_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetNumReg_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetNumReg_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetNumReg_Response, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetNumReg_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetPayloadComp_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 2..2 bytes.
Ros2Fanuc_msgsSrvGetPayloadComp_Request :: struct {
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Request.payload_schedule_id field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_payload_schedule_id: u16,
}
/// @brief Original complete fanuc_msgs/srv/GetPayloadComp_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadComp_Request_Minimum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/GetPayloadComp_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadComp_Request_Maximum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/GetPayloadComp_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadComp_Request_Codec_Identity :: "UWVMROS1_d48b88619f4a68ceeed02336e9ef078c27905707a21d977448fbbfbd560f398d"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetPayloadComp_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetPayloadComp_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPayloadComp_Request, cursor: ^wire.Cursor)
{
    value.field_payload_schedule_id = u16(wire.number(cursor, u64(value.field_payload_schedule_id), 2))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetPayloadComp_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetPayloadComp_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPayloadComp_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetPayloadComp_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetPayloadComp_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetPayloadComp_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetPayloadComp_Request, code: u32)
{
    if len(bytes) < 2 || len(bytes) > 2 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetPayloadComp_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetPayloadComp_Response value.
/// @details Retain all 8 original fields and 0 constants. Wire extent 32..32 bytes.
Ros2Fanuc_msgsSrvGetPayloadComp_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.mass field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mass: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.cg_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cg_x: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.cg_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cg_y: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.cg_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cg_z: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.in_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_x: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.in_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_y: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.in_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_z: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/GetPayloadComp_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadComp_Response_Minimum_Wire_Bytes :: 32
/// @brief Original complete fanuc_msgs/srv/GetPayloadComp_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadComp_Response_Maximum_Wire_Bytes :: 32
/// @brief Original complete fanuc_msgs/srv/GetPayloadComp_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadComp_Response_Codec_Identity :: "UWVMROS1_012b216c949f99755a36678b6be28d032f698b472ce4fa9ba975bc6d453ae4e4"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetPayloadComp_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetPayloadComp_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPayloadComp_Response, cursor: ^wire.Cursor)
{
    value.field_mass = wire.float32(cursor, value.field_mass)
    value.field_cg_x = wire.float32(cursor, value.field_cg_x)
    value.field_cg_y = wire.float32(cursor, value.field_cg_y)
    value.field_cg_z = wire.float32(cursor, value.field_cg_z)
    value.field_in_x = wire.float32(cursor, value.field_in_x)
    value.field_in_y = wire.float32(cursor, value.field_in_y)
    value.field_in_z = wire.float32(cursor, value.field_in_z)
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetPayloadComp_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetPayloadComp_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPayloadComp_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 32)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetPayloadComp_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetPayloadComp_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetPayloadComp_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetPayloadComp_Response, code: u32)
{
    if len(bytes) < 32 || len(bytes) > 32 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetPayloadComp_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetPayloadID_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Fanuc_msgsSrvGetPayloadID_Request :: struct {
}
/// @brief Original complete fanuc_msgs/srv/GetPayloadID_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadID_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete fanuc_msgs/srv/GetPayloadID_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadID_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete fanuc_msgs/srv/GetPayloadID_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadID_Request_Codec_Identity :: "UWVMROS1_6c943659905c8adc7aa4b73832584994c83bfe009d18dc30a11d99b9fc0d6eef"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetPayloadID_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetPayloadID_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPayloadID_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original fanuc_msgs/srv/GetPayloadID_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetPayloadID_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPayloadID_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetPayloadID_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetPayloadID_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetPayloadID_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetPayloadID_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetPayloadID_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetPayloadID_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..6 bytes.
Ros2Fanuc_msgsSrvGetPayloadID_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetPayloadID_Response.payload_schedule_id field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_payload_schedule_id: u16,
    /// @brief Original fanuc_msgs/srv/GetPayloadID_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/GetPayloadID_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadID_Response_Minimum_Wire_Bytes :: 6
/// @brief Original complete fanuc_msgs/srv/GetPayloadID_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadID_Response_Maximum_Wire_Bytes :: 6
/// @brief Original complete fanuc_msgs/srv/GetPayloadID_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadID_Response_Codec_Identity :: "UWVMROS1_5551f4eab590c87fd7679d593c9c446903bdaa02aa1ed2512b146768122a950c"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetPayloadID_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetPayloadID_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPayloadID_Response, cursor: ^wire.Cursor)
{
    value.field_payload_schedule_id = u16(wire.number(cursor, u64(value.field_payload_schedule_id), 2))
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetPayloadID_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetPayloadID_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPayloadID_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 6)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetPayloadID_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetPayloadID_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetPayloadID_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetPayloadID_Response, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 6 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetPayloadID_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetPayloadValue_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 2..2 bytes.
Ros2Fanuc_msgsSrvGetPayloadValue_Request :: struct {
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Request.payload_schedule_id field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_payload_schedule_id: u16,
}
/// @brief Original complete fanuc_msgs/srv/GetPayloadValue_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadValue_Request_Minimum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/GetPayloadValue_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadValue_Request_Maximum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/GetPayloadValue_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadValue_Request_Codec_Identity :: "UWVMROS1_d82667bd644873ae4fa5de0289ed94791eb2a7af49c1b8f86ed7f91cf875407a"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetPayloadValue_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetPayloadValue_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPayloadValue_Request, cursor: ^wire.Cursor)
{
    value.field_payload_schedule_id = u16(wire.number(cursor, u64(value.field_payload_schedule_id), 2))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetPayloadValue_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetPayloadValue_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPayloadValue_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetPayloadValue_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetPayloadValue_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetPayloadValue_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetPayloadValue_Request, code: u32)
{
    if len(bytes) < 2 || len(bytes) > 2 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetPayloadValue_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetPayloadValue_Response value.
/// @details Retain all 8 original fields and 0 constants. Wire extent 32..32 bytes.
Ros2Fanuc_msgsSrvGetPayloadValue_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.mass field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mass: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.cg_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cg_x: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.cg_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cg_y: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.cg_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cg_z: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.in_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_x: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.in_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_y: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.in_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_z: f32,
    /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/GetPayloadValue_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadValue_Response_Minimum_Wire_Bytes :: 32
/// @brief Original complete fanuc_msgs/srv/GetPayloadValue_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadValue_Response_Maximum_Wire_Bytes :: 32
/// @brief Original complete fanuc_msgs/srv/GetPayloadValue_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPayloadValue_Response_Codec_Identity :: "UWVMROS1_c3361ceec2ccd5b4d3ef566cbd885f8cddba75b4f1dc1712144147827689f06d"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetPayloadValue_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetPayloadValue_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPayloadValue_Response, cursor: ^wire.Cursor)
{
    value.field_mass = wire.float32(cursor, value.field_mass)
    value.field_cg_x = wire.float32(cursor, value.field_cg_x)
    value.field_cg_y = wire.float32(cursor, value.field_cg_y)
    value.field_cg_z = wire.float32(cursor, value.field_cg_z)
    value.field_in_x = wire.float32(cursor, value.field_in_x)
    value.field_in_y = wire.float32(cursor, value.field_in_y)
    value.field_in_z = wire.float32(cursor, value.field_in_z)
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetPayloadValue_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetPayloadValue_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPayloadValue_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 32)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetPayloadValue_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetPayloadValue_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetPayloadValue_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetPayloadValue_Response, code: u32)
{
    if len(bytes) < 32 || len(bytes) > 32 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetPayloadValue_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetPosReg_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 2..2 bytes.
Ros2Fanuc_msgsSrvGetPosReg_Request :: struct {
    /// @brief Original fanuc_msgs/srv/GetPosReg_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
}
/// @brief Original complete fanuc_msgs/srv/GetPosReg_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPosReg_Request_Minimum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/GetPosReg_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPosReg_Request_Maximum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/GetPosReg_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPosReg_Request_Codec_Identity :: "UWVMROS1_f7f1391c5ea385bff615d95c5e38f01a809828b142112829dc436916b063505a"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetPosReg_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetPosReg_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPosReg_Request, cursor: ^wire.Cursor)
{
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetPosReg_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetPosReg_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPosReg_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetPosReg_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetPosReg_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetPosReg_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetPosReg_Request, code: u32)
{
    if len(bytes) < 2 || len(bytes) > 2 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetPosReg_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetPosReg_Response value.
/// @details Retain all 29 original fields and 0 constants. Wire extent 89..601 bytes.
Ros2Fanuc_msgsSrvGetPosReg_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.representation field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_representation: wire.Text(512, false),
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.utool field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_utool: u8,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.uframe field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_uframe: u8,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.front field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_front: u8,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.up field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_up: u8,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.left field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_left: u8,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.flip field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_flip: u8,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.turn4 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_turn4: i8,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.turn5 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_turn5: i8,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.turn6 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_turn6: i8,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.w field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_w: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.p field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_p: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.r field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_r: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.ext1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ext1: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.ext2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ext2: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.ext3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ext3: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j1: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j2: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j3: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j4: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j5 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j5: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j6 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j6: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j7 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j7: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j8 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j8: f32,
    /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j9 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j9: f32,
}
/// @brief Original complete fanuc_msgs/srv/GetPosReg_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPosReg_Response_Minimum_Wire_Bytes :: 89
/// @brief Original complete fanuc_msgs/srv/GetPosReg_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPosReg_Response_Maximum_Wire_Bytes :: 601
/// @brief Original complete fanuc_msgs/srv/GetPosReg_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetPosReg_Response_Codec_Identity :: "UWVMROS1_e540225b0d532c460905582ad99ee175dd771e971c7e75f5dfb9325d39ed6b27"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetPosReg_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetPosReg_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPosReg_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    wire.text(cursor, &value.field_representation)
    value.field_utool = u8(wire.number(cursor, u64(value.field_utool), 1))
    value.field_uframe = u8(wire.number(cursor, u64(value.field_uframe), 1))
    value.field_front = u8(wire.number(cursor, u64(value.field_front), 1))
    value.field_up = u8(wire.number(cursor, u64(value.field_up), 1))
    value.field_left = u8(wire.number(cursor, u64(value.field_left), 1))
    value.field_flip = u8(wire.number(cursor, u64(value.field_flip), 1))
    value.field_turn4 = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_turn4), 1))
    value.field_turn5 = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_turn5), 1))
    value.field_turn6 = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_turn6), 1))
    value.field_x = wire.float32(cursor, value.field_x)
    value.field_y = wire.float32(cursor, value.field_y)
    value.field_z = wire.float32(cursor, value.field_z)
    value.field_w = wire.float32(cursor, value.field_w)
    value.field_p = wire.float32(cursor, value.field_p)
    value.field_r = wire.float32(cursor, value.field_r)
    value.field_ext1 = wire.float32(cursor, value.field_ext1)
    value.field_ext2 = wire.float32(cursor, value.field_ext2)
    value.field_ext3 = wire.float32(cursor, value.field_ext3)
    value.field_j1 = wire.float32(cursor, value.field_j1)
    value.field_j2 = wire.float32(cursor, value.field_j2)
    value.field_j3 = wire.float32(cursor, value.field_j3)
    value.field_j4 = wire.float32(cursor, value.field_j4)
    value.field_j5 = wire.float32(cursor, value.field_j5)
    value.field_j6 = wire.float32(cursor, value.field_j6)
    value.field_j7 = wire.float32(cursor, value.field_j7)
    value.field_j8 = wire.float32(cursor, value.field_j8)
    value.field_j9 = wire.float32(cursor, value.field_j9)
}
/// @brief Encode every complete original fanuc_msgs/srv/GetPosReg_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetPosReg_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetPosReg_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 601)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetPosReg_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetPosReg_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetPosReg_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetPosReg_Response, code: u32)
{
    if len(bytes) < 89 || len(bytes) > 601 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetPosReg_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetTCPSpeed_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Fanuc_msgsSrvGetTCPSpeed_Request :: struct {
    /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/GetTCPSpeed_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetTCPSpeed_Request_Minimum_Wire_Bytes :: 1
/// @brief Original complete fanuc_msgs/srv/GetTCPSpeed_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetTCPSpeed_Request_Maximum_Wire_Bytes :: 1
/// @brief Original complete fanuc_msgs/srv/GetTCPSpeed_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetTCPSpeed_Request_Codec_Identity :: "UWVMROS1_6bdfd44465b75bbd4e232f802dbd3c0bfa28e90a93f9a28b3c15fb150bce7ac7"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetTCPSpeed_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetTCPSpeed_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetTCPSpeed_Request, cursor: ^wire.Cursor)
{
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetTCPSpeed_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetTCPSpeed_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetTCPSpeed_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetTCPSpeed_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetTCPSpeed_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetTCPSpeed_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetTCPSpeed_Request, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetTCPSpeed_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetTCPSpeed_Response value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 13..13 bytes.
Ros2Fanuc_msgsSrvGetTCPSpeed_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.timetag field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_timetag: i32,
    /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speed: f32,
    /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/GetTCPSpeed_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetTCPSpeed_Response_Minimum_Wire_Bytes :: 13
/// @brief Original complete fanuc_msgs/srv/GetTCPSpeed_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetTCPSpeed_Response_Maximum_Wire_Bytes :: 13
/// @brief Original complete fanuc_msgs/srv/GetTCPSpeed_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetTCPSpeed_Response_Codec_Identity :: "UWVMROS1_3ec07d99342f275506452f32076f9e1ea01bf32f43662311708a9b44ca951147"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetTCPSpeed_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetTCPSpeed_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetTCPSpeed_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_timetag = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_timetag), 4))
    value.field_speed = wire.float32(cursor, value.field_speed)
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetTCPSpeed_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetTCPSpeed_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetTCPSpeed_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 13)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetTCPSpeed_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetTCPSpeed_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetTCPSpeed_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetTCPSpeed_Response, code: u32)
{
    if len(bytes) < 13 || len(bytes) > 13 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetTCPSpeed_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetUFrameData_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 2..2 bytes.
Ros2Fanuc_msgsSrvGetUFrameData_Request :: struct {
    /// @brief Original fanuc_msgs/srv/GetUFrameData_Request.uframe_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_uframe_number: u8,
    /// @brief Original fanuc_msgs/srv/GetUFrameData_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/GetUFrameData_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUFrameData_Request_Minimum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/GetUFrameData_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUFrameData_Request_Maximum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/GetUFrameData_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUFrameData_Request_Codec_Identity :: "UWVMROS1_c1ef7077fd7f61ed8ff46931c8e39c5950658cfe1d36cffac10083ab304307be"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetUFrameData_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetUFrameData_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetUFrameData_Request, cursor: ^wire.Cursor)
{
    value.field_uframe_number = u8(wire.number(cursor, u64(value.field_uframe_number), 1))
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetUFrameData_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetUFrameData_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetUFrameData_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetUFrameData_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetUFrameData_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetUFrameData_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetUFrameData_Request, code: u32)
{
    if len(bytes) < 2 || len(bytes) > 2 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetUFrameData_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetUFrameData_Response value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 30..30 bytes.
Ros2Fanuc_msgsSrvGetUFrameData_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetUFrameData_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/GetUFrameData_Response.uframe_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_uframe_number: u8,
    /// @brief Original fanuc_msgs/srv/GetUFrameData_Response.frame field.
    /// @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_frame: Ros2Fanuc_msgsMsgFrame,
    /// @brief Original fanuc_msgs/srv/GetUFrameData_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/GetUFrameData_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUFrameData_Response_Minimum_Wire_Bytes :: 30
/// @brief Original complete fanuc_msgs/srv/GetUFrameData_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUFrameData_Response_Maximum_Wire_Bytes :: 30
/// @brief Original complete fanuc_msgs/srv/GetUFrameData_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUFrameData_Response_Codec_Identity :: "UWVMROS1_f956e1447bd4a15f547fdf5d6775836018d50153270fe8863c4b30d83422fd2e"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetUFrameData_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetUFrameData_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetUFrameData_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_uframe_number = u8(wire.number(cursor, u64(value.field_uframe_number), 1))
    fields_Ros2Fanuc_msgsMsgFrame(&value.field_frame, cursor)
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetUFrameData_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetUFrameData_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetUFrameData_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 30)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetUFrameData_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetUFrameData_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetUFrameData_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetUFrameData_Response, code: u32)
{
    if len(bytes) < 30 || len(bytes) > 30 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetUFrameData_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetUFrameUTool_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Fanuc_msgsSrvGetUFrameUTool_Request :: struct {
    /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/GetUFrameUTool_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUFrameUTool_Request_Minimum_Wire_Bytes :: 1
/// @brief Original complete fanuc_msgs/srv/GetUFrameUTool_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUFrameUTool_Request_Maximum_Wire_Bytes :: 1
/// @brief Original complete fanuc_msgs/srv/GetUFrameUTool_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUFrameUTool_Request_Codec_Identity :: "UWVMROS1_3d57da6f8003b33b2a079d4f284eb0f182d7e088074112b7f4ee25d3113bd443"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetUFrameUTool_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetUFrameUTool_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetUFrameUTool_Request, cursor: ^wire.Cursor)
{
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetUFrameUTool_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetUFrameUTool_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetUFrameUTool_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetUFrameUTool_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetUFrameUTool_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetUFrameUTool_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetUFrameUTool_Request, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetUFrameUTool_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetUFrameUTool_Response value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 7..7 bytes.
Ros2Fanuc_msgsSrvGetUFrameUTool_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.uframe_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_uframe_number: u8,
    /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.utool_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_utool_number: u8,
    /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/GetUFrameUTool_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUFrameUTool_Response_Minimum_Wire_Bytes :: 7
/// @brief Original complete fanuc_msgs/srv/GetUFrameUTool_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUFrameUTool_Response_Maximum_Wire_Bytes :: 7
/// @brief Original complete fanuc_msgs/srv/GetUFrameUTool_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUFrameUTool_Response_Codec_Identity :: "UWVMROS1_f9cb64b89f17b6811e4073b9f94d0fd6844d21ec4b846f78bfd13cb14a35a6b3"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetUFrameUTool_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetUFrameUTool_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetUFrameUTool_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_uframe_number = u8(wire.number(cursor, u64(value.field_uframe_number), 1))
    value.field_utool_number = u8(wire.number(cursor, u64(value.field_utool_number), 1))
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetUFrameUTool_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetUFrameUTool_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetUFrameUTool_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 7)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetUFrameUTool_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetUFrameUTool_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetUFrameUTool_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetUFrameUTool_Response, code: u32)
{
    if len(bytes) < 7 || len(bytes) > 7 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetUFrameUTool_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetUToolData_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 2..2 bytes.
Ros2Fanuc_msgsSrvGetUToolData_Request :: struct {
    /// @brief Original fanuc_msgs/srv/GetUToolData_Request.utool_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_utool_number: u8,
    /// @brief Original fanuc_msgs/srv/GetUToolData_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/GetUToolData_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUToolData_Request_Minimum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/GetUToolData_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUToolData_Request_Maximum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/GetUToolData_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUToolData_Request_Codec_Identity :: "UWVMROS1_10c3799dcb1b09dbcb6d1b794a00ecfaf69a8f457d95eeb92855f79dba7be1bc"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetUToolData_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetUToolData_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetUToolData_Request, cursor: ^wire.Cursor)
{
    value.field_utool_number = u8(wire.number(cursor, u64(value.field_utool_number), 1))
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetUToolData_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetUToolData_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetUToolData_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetUToolData_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetUToolData_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetUToolData_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetUToolData_Request, code: u32)
{
    if len(bytes) < 2 || len(bytes) > 2 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetUToolData_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/GetUToolData_Response value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 30..30 bytes.
Ros2Fanuc_msgsSrvGetUToolData_Response :: struct {
    /// @brief Original fanuc_msgs/srv/GetUToolData_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/GetUToolData_Response.utool_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_utool_number: u8,
    /// @brief Original fanuc_msgs/srv/GetUToolData_Response.frame field.
    /// @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_frame: Ros2Fanuc_msgsMsgFrame,
    /// @brief Original fanuc_msgs/srv/GetUToolData_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/GetUToolData_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUToolData_Response_Minimum_Wire_Bytes :: 30
/// @brief Original complete fanuc_msgs/srv/GetUToolData_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUToolData_Response_Maximum_Wire_Bytes :: 30
/// @brief Original complete fanuc_msgs/srv/GetUToolData_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvGetUToolData_Response_Codec_Identity :: "UWVMROS1_f3a2b94f337cec9c58156b803675f38885350cc3fc3171234c0d361afc800d81"
/// @brief Traverse every original field of complete fanuc_msgs/srv/GetUToolData_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvGetUToolData_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetUToolData_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_utool_number = u8(wire.number(cursor, u64(value.field_utool_number), 1))
    fields_Ros2Fanuc_msgsMsgFrame(&value.field_frame, cursor)
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/GetUToolData_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvGetUToolData_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvGetUToolData_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 30)], writing = true}
    fields_Ros2Fanuc_msgsSrvGetUToolData_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/GetUToolData_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvGetUToolData_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvGetUToolData_Response, code: u32)
{
    if len(bytes) < 30 || len(bytes) > 30 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvGetUToolData_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/ReadError_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Fanuc_msgsSrvReadError_Request :: struct {
    /// @brief Original fanuc_msgs/srv/ReadError_Request.count field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_count: u8,
}
/// @brief Original complete fanuc_msgs/srv/ReadError_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvReadError_Request_Minimum_Wire_Bytes :: 1
/// @brief Original complete fanuc_msgs/srv/ReadError_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvReadError_Request_Maximum_Wire_Bytes :: 1
/// @brief Original complete fanuc_msgs/srv/ReadError_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvReadError_Request_Codec_Identity :: "UWVMROS1_4b67ed8e2ecccefb6bdead80249f5916e6ea192d822183292db43351839fb6f9"
/// @brief Traverse every original field of complete fanuc_msgs/srv/ReadError_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvReadError_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvReadError_Request, cursor: ^wire.Cursor)
{
    value.field_count = u8(wire.number(cursor, u64(value.field_count), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/ReadError_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvReadError_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvReadError_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Fanuc_msgsSrvReadError_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/ReadError_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvReadError_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvReadError_Request, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvReadError_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/ReadError_Response value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 25..2585 bytes.
Ros2Fanuc_msgsSrvReadError_Response :: struct {
    /// @brief Original fanuc_msgs/srv/ReadError_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/ReadError_Response.count field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_count: u8,
    /// @brief Original fanuc_msgs/srv/ReadError_Response.error_data field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Shape array; bound/count
    /// 5 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_error_data: [5]wire.Text(512, false),
}
/// @brief Original complete fanuc_msgs/srv/ReadError_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvReadError_Response_Minimum_Wire_Bytes :: 25
/// @brief Original complete fanuc_msgs/srv/ReadError_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvReadError_Response_Maximum_Wire_Bytes :: 2585
/// @brief Original complete fanuc_msgs/srv/ReadError_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvReadError_Response_Codec_Identity :: "UWVMROS1_6e28db10c7afb06cb1256f6d74a43e26c5efa6c13fec8826ae0e623a5eb954b6"
/// @brief Traverse every original field of complete fanuc_msgs/srv/ReadError_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvReadError_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvReadError_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_count = u8(wire.number(cursor, u64(value.field_count), 1))
    for index in 0..<5 {
        wire.text(cursor, &value.field_error_data[index])
    }
}
/// @brief Encode every complete original fanuc_msgs/srv/ReadError_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvReadError_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvReadError_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2585)], writing = true}
    fields_Ros2Fanuc_msgsSrvReadError_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/ReadError_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvReadError_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvReadError_Response, code: u32)
{
    if len(bytes) < 25 || len(bytes) > 2585 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvReadError_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/Reset_Request value.
/// @details Retain all 0 original fields and 0 constants. Wire extent 0..0 bytes.
Ros2Fanuc_msgsSrvReset_Request :: struct {
}
/// @brief Original complete fanuc_msgs/srv/Reset_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvReset_Request_Minimum_Wire_Bytes :: 0
/// @brief Original complete fanuc_msgs/srv/Reset_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvReset_Request_Maximum_Wire_Bytes :: 0
/// @brief Original complete fanuc_msgs/srv/Reset_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvReset_Request_Codec_Identity :: "UWVMROS1_b73f661d569f6af8dad1cd6625f4c0c55ef2c14c79b3e9af0f17fdc02736abc4"
/// @brief Traverse every original field of complete fanuc_msgs/srv/Reset_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvReset_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvReset_Request, cursor: ^wire.Cursor)
{
}
/// @brief Encode every complete original fanuc_msgs/srv/Reset_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvReset_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvReset_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 0)], writing = true}
    fields_Ros2Fanuc_msgsSrvReset_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/Reset_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvReset_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvReset_Request, code: u32)
{
    if len(bytes) < 0 || len(bytes) > 0 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvReset_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/Reset_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvReset_Response :: struct {
    /// @brief Original fanuc_msgs/srv/Reset_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/Reset_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvReset_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/Reset_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvReset_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/Reset_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvReset_Response_Codec_Identity :: "UWVMROS1_5e9b92e5a112b4934ce0893afaa09156fdb47c26b0aa6ae9a27d61920d308ab8"
/// @brief Traverse every original field of complete fanuc_msgs/srv/Reset_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvReset_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvReset_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/Reset_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvReset_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvReset_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvReset_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/Reset_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvReset_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvReset_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvReset_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetAnalogIO_Request value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 10..74 bytes.
Ros2Fanuc_msgsSrvSetAnalogIO_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SetAnalogIO_Request.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_io_type: Ros2Fanuc_msgsMsgIOType,
    /// @brief Original fanuc_msgs/srv/SetAnalogIO_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
    /// @brief Original fanuc_msgs/srv/SetAnalogIO_Request.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f32,
}
/// @brief Original complete fanuc_msgs/srv/SetAnalogIO_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetAnalogIO_Request_Minimum_Wire_Bytes :: 10
/// @brief Original complete fanuc_msgs/srv/SetAnalogIO_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetAnalogIO_Request_Maximum_Wire_Bytes :: 74
/// @brief Original complete fanuc_msgs/srv/SetAnalogIO_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetAnalogIO_Request_Codec_Identity :: "UWVMROS1_a6bb4acfae23db79464faff849f359657537026d7c79f8a6c60259caec5e87f4"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetAnalogIO_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetAnalogIO_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetAnalogIO_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Fanuc_msgsMsgIOType(&value.field_io_type, cursor)
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
    value.field_value = wire.float32(cursor, value.field_value)
}
/// @brief Encode every complete original fanuc_msgs/srv/SetAnalogIO_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetAnalogIO_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetAnalogIO_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 74)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetAnalogIO_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetAnalogIO_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetAnalogIO_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetAnalogIO_Request, code: u32)
{
    if len(bytes) < 10 || len(bytes) > 74 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetAnalogIO_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetAnalogIO_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvSetAnalogIO_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SetAnalogIO_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/SetAnalogIO_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetAnalogIO_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetAnalogIO_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetAnalogIO_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetAnalogIO_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetAnalogIO_Response_Codec_Identity :: "UWVMROS1_aeac383e2c4a292f1237494bff5b261cd0197542e00456b4ee0edf9b7fe8a39b"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetAnalogIO_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetAnalogIO_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetAnalogIO_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetAnalogIO_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetAnalogIO_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetAnalogIO_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetAnalogIO_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetAnalogIO_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetAnalogIO_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetAnalogIO_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetAnalogIO_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetBoolIO_Request value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 7..71 bytes.
Ros2Fanuc_msgsSrvSetBoolIO_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SetBoolIO_Request.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_io_type: Ros2Fanuc_msgsMsgIOType,
    /// @brief Original fanuc_msgs/srv/SetBoolIO_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
    /// @brief Original fanuc_msgs/srv/SetBoolIO_Request.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: bool,
}
/// @brief Original complete fanuc_msgs/srv/SetBoolIO_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetBoolIO_Request_Minimum_Wire_Bytes :: 7
/// @brief Original complete fanuc_msgs/srv/SetBoolIO_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetBoolIO_Request_Maximum_Wire_Bytes :: 71
/// @brief Original complete fanuc_msgs/srv/SetBoolIO_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetBoolIO_Request_Codec_Identity :: "UWVMROS1_0e8ace58c769670a2519e733d020a3ca902bff99982514d5cd9ecda391c1a4cf"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetBoolIO_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetBoolIO_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetBoolIO_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Fanuc_msgsMsgIOType(&value.field_io_type, cursor)
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
    value.field_value = wire.boolean(cursor, value.field_value)
}
/// @brief Encode every complete original fanuc_msgs/srv/SetBoolIO_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetBoolIO_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetBoolIO_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 71)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetBoolIO_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetBoolIO_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetBoolIO_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetBoolIO_Request, code: u32)
{
    if len(bytes) < 7 || len(bytes) > 71 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetBoolIO_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetBoolIO_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvSetBoolIO_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SetBoolIO_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/SetBoolIO_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetBoolIO_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetBoolIO_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetBoolIO_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetBoolIO_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetBoolIO_Response_Codec_Identity :: "UWVMROS1_c9c68ca577dd6e4d1743385d9c69c8f1c6e0780ae247877d823ab97a68e675a0"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetBoolIO_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetBoolIO_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetBoolIO_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetBoolIO_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetBoolIO_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetBoolIO_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetBoolIO_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetBoolIO_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetBoolIO_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetBoolIO_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetBoolIO_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetGenOverride_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Fanuc_msgsSrvSetGenOverride_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SetGenOverride_Request.value field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: i8,
}
/// @brief Original complete fanuc_msgs/srv/SetGenOverride_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetGenOverride_Request_Minimum_Wire_Bytes :: 1
/// @brief Original complete fanuc_msgs/srv/SetGenOverride_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetGenOverride_Request_Maximum_Wire_Bytes :: 1
/// @brief Original complete fanuc_msgs/srv/SetGenOverride_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetGenOverride_Request_Codec_Identity :: "UWVMROS1_7d321e33aaf6f58013c33ffc012c1ddbd27aefff3f21d7456030a1d590362039"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetGenOverride_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetGenOverride_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetGenOverride_Request, cursor: ^wire.Cursor)
{
    value.field_value = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_value), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetGenOverride_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetGenOverride_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetGenOverride_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetGenOverride_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetGenOverride_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetGenOverride_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetGenOverride_Request, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetGenOverride_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetGenOverride_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvSetGenOverride_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SetGenOverride_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/SetGenOverride_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetGenOverride_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetGenOverride_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetGenOverride_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetGenOverride_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetGenOverride_Response_Codec_Identity :: "UWVMROS1_1ffcb25cad7dbf51c216753dac2c117a191fb081a5a562e63d34d447e61f0a59"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetGenOverride_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetGenOverride_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetGenOverride_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetGenOverride_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetGenOverride_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetGenOverride_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetGenOverride_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetGenOverride_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetGenOverride_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetGenOverride_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetGenOverride_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetGroupIO_Request value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 8..72 bytes.
Ros2Fanuc_msgsSrvSetGroupIO_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SetGroupIO_Request.io_type field.
    /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_io_type: Ros2Fanuc_msgsMsgIOType,
    /// @brief Original fanuc_msgs/srv/SetGroupIO_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
    /// @brief Original fanuc_msgs/srv/SetGroupIO_Request.value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u16,
}
/// @brief Original complete fanuc_msgs/srv/SetGroupIO_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetGroupIO_Request_Minimum_Wire_Bytes :: 8
/// @brief Original complete fanuc_msgs/srv/SetGroupIO_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetGroupIO_Request_Maximum_Wire_Bytes :: 72
/// @brief Original complete fanuc_msgs/srv/SetGroupIO_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetGroupIO_Request_Codec_Identity :: "UWVMROS1_42a76aec283e26e3a2c99bb27a23778e34effb6c3328754793f783038a2b84bd"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetGroupIO_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetGroupIO_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetGroupIO_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Fanuc_msgsMsgIOType(&value.field_io_type, cursor)
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
    value.field_value = u16(wire.number(cursor, u64(value.field_value), 2))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetGroupIO_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetGroupIO_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetGroupIO_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 72)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetGroupIO_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetGroupIO_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetGroupIO_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetGroupIO_Request, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 72 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetGroupIO_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetGroupIO_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvSetGroupIO_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SetGroupIO_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/SetGroupIO_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetGroupIO_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetGroupIO_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetGroupIO_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetGroupIO_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetGroupIO_Response_Codec_Identity :: "UWVMROS1_aa6d2c99e8817273f8f2ab179df61d60efd8ee2cee0e1ec76c647956e22bff17"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetGroupIO_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetGroupIO_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetGroupIO_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetGroupIO_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetGroupIO_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetGroupIO_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetGroupIO_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetGroupIO_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetGroupIO_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetGroupIO_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetGroupIO_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetNumReg_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..6 bytes.
Ros2Fanuc_msgsSrvSetNumReg_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SetNumReg_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
    /// @brief Original fanuc_msgs/srv/SetNumReg_Request.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: f32,
}
/// @brief Original complete fanuc_msgs/srv/SetNumReg_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetNumReg_Request_Minimum_Wire_Bytes :: 6
/// @brief Original complete fanuc_msgs/srv/SetNumReg_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetNumReg_Request_Maximum_Wire_Bytes :: 6
/// @brief Original complete fanuc_msgs/srv/SetNumReg_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetNumReg_Request_Codec_Identity :: "UWVMROS1_7e362b671b8770db33f3876308c41a930863a0805771fa05fcbb170782207e36"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetNumReg_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetNumReg_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetNumReg_Request, cursor: ^wire.Cursor)
{
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
    value.field_value = wire.float32(cursor, value.field_value)
}
/// @brief Encode every complete original fanuc_msgs/srv/SetNumReg_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetNumReg_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetNumReg_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 6)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetNumReg_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetNumReg_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetNumReg_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetNumReg_Request, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 6 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetNumReg_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetNumReg_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvSetNumReg_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SetNumReg_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/SetNumReg_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetNumReg_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetNumReg_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetNumReg_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetNumReg_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetNumReg_Response_Codec_Identity :: "UWVMROS1_7c7850ad8bb5c861d9b436311a8cf985e2e029d362877be80c5a6cb19021e482"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetNumReg_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetNumReg_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetNumReg_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetNumReg_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetNumReg_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetNumReg_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetNumReg_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetNumReg_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetNumReg_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetNumReg_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetNumReg_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetPayloadComp_Request value.
/// @details Retain all 8 original fields and 0 constants. Wire extent 30..30 bytes.
Ros2Fanuc_msgsSrvSetPayloadComp_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.payload_schedule_id field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_payload_schedule_id: u16,
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.mass field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mass: f32,
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.cg_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cg_x: f32,
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.cg_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cg_y: f32,
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.cg_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cg_z: f32,
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.in_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_x: f32,
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.in_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_y: f32,
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.in_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_z: f32,
}
/// @brief Original complete fanuc_msgs/srv/SetPayloadComp_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadComp_Request_Minimum_Wire_Bytes :: 30
/// @brief Original complete fanuc_msgs/srv/SetPayloadComp_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadComp_Request_Maximum_Wire_Bytes :: 30
/// @brief Original complete fanuc_msgs/srv/SetPayloadComp_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadComp_Request_Codec_Identity :: "UWVMROS1_92c495d71657249e15c172e850aa91869929a25817437567778df1b01d9037a8"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetPayloadComp_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetPayloadComp_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPayloadComp_Request, cursor: ^wire.Cursor)
{
    value.field_payload_schedule_id = u16(wire.number(cursor, u64(value.field_payload_schedule_id), 2))
    value.field_mass = wire.float32(cursor, value.field_mass)
    value.field_cg_x = wire.float32(cursor, value.field_cg_x)
    value.field_cg_y = wire.float32(cursor, value.field_cg_y)
    value.field_cg_z = wire.float32(cursor, value.field_cg_z)
    value.field_in_x = wire.float32(cursor, value.field_in_x)
    value.field_in_y = wire.float32(cursor, value.field_in_y)
    value.field_in_z = wire.float32(cursor, value.field_in_z)
}
/// @brief Encode every complete original fanuc_msgs/srv/SetPayloadComp_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetPayloadComp_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPayloadComp_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 30)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetPayloadComp_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetPayloadComp_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetPayloadComp_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetPayloadComp_Request, code: u32)
{
    if len(bytes) < 30 || len(bytes) > 30 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetPayloadComp_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetPayloadComp_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvSetPayloadComp_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SetPayloadComp_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/SetPayloadComp_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadComp_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetPayloadComp_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadComp_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetPayloadComp_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadComp_Response_Codec_Identity :: "UWVMROS1_37a9876e2a9c514fa8c4337ff1351f778d350318bdc6d8aa5d569b4039a2f76b"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetPayloadComp_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetPayloadComp_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPayloadComp_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetPayloadComp_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetPayloadComp_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPayloadComp_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetPayloadComp_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetPayloadComp_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetPayloadComp_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetPayloadComp_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetPayloadComp_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetPayloadID_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 2..2 bytes.
Ros2Fanuc_msgsSrvSetPayloadID_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SetPayloadID_Request.payload_schedule_id field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_payload_schedule_id: u16,
}
/// @brief Original complete fanuc_msgs/srv/SetPayloadID_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadID_Request_Minimum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/SetPayloadID_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadID_Request_Maximum_Wire_Bytes :: 2
/// @brief Original complete fanuc_msgs/srv/SetPayloadID_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadID_Request_Codec_Identity :: "UWVMROS1_aa15b59db17d2afb7ef9e74676a9b744763954ae063efafb91a3ab3c9852a1c0"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetPayloadID_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetPayloadID_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPayloadID_Request, cursor: ^wire.Cursor)
{
    value.field_payload_schedule_id = u16(wire.number(cursor, u64(value.field_payload_schedule_id), 2))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetPayloadID_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetPayloadID_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPayloadID_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetPayloadID_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetPayloadID_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetPayloadID_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetPayloadID_Request, code: u32)
{
    if len(bytes) < 2 || len(bytes) > 2 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetPayloadID_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetPayloadID_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvSetPayloadID_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SetPayloadID_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/SetPayloadID_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadID_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetPayloadID_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadID_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetPayloadID_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadID_Response_Codec_Identity :: "UWVMROS1_7b704b36da10dc71b4cfaad92ea02ed22e4966077dc0940b03b8b8e49c5769c7"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetPayloadID_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetPayloadID_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPayloadID_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetPayloadID_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetPayloadID_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPayloadID_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetPayloadID_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetPayloadID_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetPayloadID_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetPayloadID_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetPayloadID_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetPayloadValue_Request value.
/// @details Retain all 9 original fields and 0 constants. Wire extent 31..31 bytes.
Ros2Fanuc_msgsSrvSetPayloadValue_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.payload_schedule_id field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_payload_schedule_id: u16,
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.mass field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mass: f32,
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.cg_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cg_x: f32,
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.cg_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cg_y: f32,
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.cg_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cg_z: f32,
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.use_in field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_in: bool,
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.in_x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_x: f32,
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.in_y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_y: f32,
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.in_z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_in_z: f32,
}
/// @brief Original complete fanuc_msgs/srv/SetPayloadValue_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadValue_Request_Minimum_Wire_Bytes :: 31
/// @brief Original complete fanuc_msgs/srv/SetPayloadValue_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadValue_Request_Maximum_Wire_Bytes :: 31
/// @brief Original complete fanuc_msgs/srv/SetPayloadValue_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadValue_Request_Codec_Identity :: "UWVMROS1_5d56ce8f2f8df9c3450d6a5dc77e9e77861471805aa6b9c6f8815c2e7c324974"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetPayloadValue_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetPayloadValue_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPayloadValue_Request, cursor: ^wire.Cursor)
{
    value.field_payload_schedule_id = u16(wire.number(cursor, u64(value.field_payload_schedule_id), 2))
    value.field_mass = wire.float32(cursor, value.field_mass)
    value.field_cg_x = wire.float32(cursor, value.field_cg_x)
    value.field_cg_y = wire.float32(cursor, value.field_cg_y)
    value.field_cg_z = wire.float32(cursor, value.field_cg_z)
    value.field_use_in = wire.boolean(cursor, value.field_use_in)
    value.field_in_x = wire.float32(cursor, value.field_in_x)
    value.field_in_y = wire.float32(cursor, value.field_in_y)
    value.field_in_z = wire.float32(cursor, value.field_in_z)
}
/// @brief Encode every complete original fanuc_msgs/srv/SetPayloadValue_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetPayloadValue_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPayloadValue_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 31)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetPayloadValue_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetPayloadValue_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetPayloadValue_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetPayloadValue_Request, code: u32)
{
    if len(bytes) < 31 || len(bytes) > 31 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetPayloadValue_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetPayloadValue_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvSetPayloadValue_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SetPayloadValue_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/SetPayloadValue_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadValue_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetPayloadValue_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadValue_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetPayloadValue_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPayloadValue_Response_Codec_Identity :: "UWVMROS1_09f30071b49ac57353429e8a2862ee80d3dcab9237e8192d008c12a3628cc6ab"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetPayloadValue_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetPayloadValue_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPayloadValue_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetPayloadValue_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetPayloadValue_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPayloadValue_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetPayloadValue_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetPayloadValue_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetPayloadValue_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetPayloadValue_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetPayloadValue_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetPosReg_Request value.
/// @details Retain all 29 original fields and 0 constants. Wire extent 87..599 bytes.
Ros2Fanuc_msgsSrvSetPosReg_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.index field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_index: u16,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.representation field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_representation: wire.Text(512, false),
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.utool field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_utool: u8,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.uframe field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_uframe: u8,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.front field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_front: u8,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.up field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_up: u8,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.left field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_left: u8,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.flip field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_flip: u8,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.turn4 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_turn4: i8,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.turn5 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_turn5: i8,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.turn6 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_turn6: i8,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.w field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_w: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.p field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_p: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.r field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_r: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.ext1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ext1: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.ext2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ext2: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.ext3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ext3: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j1: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j2: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j3: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j4: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j5 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j5: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j6 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j6: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j7 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j7: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j8 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j8: f32,
    /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j9 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_j9: f32,
}
/// @brief Original complete fanuc_msgs/srv/SetPosReg_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPosReg_Request_Minimum_Wire_Bytes :: 87
/// @brief Original complete fanuc_msgs/srv/SetPosReg_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPosReg_Request_Maximum_Wire_Bytes :: 599
/// @brief Original complete fanuc_msgs/srv/SetPosReg_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPosReg_Request_Codec_Identity :: "UWVMROS1_f9af742e55a044a1a363a45cbe4a0a8ce4ca62fcaf43759041cef89149d96d30"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetPosReg_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetPosReg_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPosReg_Request, cursor: ^wire.Cursor)
{
    value.field_index = u16(wire.number(cursor, u64(value.field_index), 2))
    wire.text(cursor, &value.field_representation)
    value.field_utool = u8(wire.number(cursor, u64(value.field_utool), 1))
    value.field_uframe = u8(wire.number(cursor, u64(value.field_uframe), 1))
    value.field_front = u8(wire.number(cursor, u64(value.field_front), 1))
    value.field_up = u8(wire.number(cursor, u64(value.field_up), 1))
    value.field_left = u8(wire.number(cursor, u64(value.field_left), 1))
    value.field_flip = u8(wire.number(cursor, u64(value.field_flip), 1))
    value.field_turn4 = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_turn4), 1))
    value.field_turn5 = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_turn5), 1))
    value.field_turn6 = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_turn6), 1))
    value.field_x = wire.float32(cursor, value.field_x)
    value.field_y = wire.float32(cursor, value.field_y)
    value.field_z = wire.float32(cursor, value.field_z)
    value.field_w = wire.float32(cursor, value.field_w)
    value.field_p = wire.float32(cursor, value.field_p)
    value.field_r = wire.float32(cursor, value.field_r)
    value.field_ext1 = wire.float32(cursor, value.field_ext1)
    value.field_ext2 = wire.float32(cursor, value.field_ext2)
    value.field_ext3 = wire.float32(cursor, value.field_ext3)
    value.field_j1 = wire.float32(cursor, value.field_j1)
    value.field_j2 = wire.float32(cursor, value.field_j2)
    value.field_j3 = wire.float32(cursor, value.field_j3)
    value.field_j4 = wire.float32(cursor, value.field_j4)
    value.field_j5 = wire.float32(cursor, value.field_j5)
    value.field_j6 = wire.float32(cursor, value.field_j6)
    value.field_j7 = wire.float32(cursor, value.field_j7)
    value.field_j8 = wire.float32(cursor, value.field_j8)
    value.field_j9 = wire.float32(cursor, value.field_j9)
}
/// @brief Encode every complete original fanuc_msgs/srv/SetPosReg_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetPosReg_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPosReg_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 599)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetPosReg_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetPosReg_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetPosReg_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetPosReg_Request, code: u32)
{
    if len(bytes) < 87 || len(bytes) > 599 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetPosReg_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetPosReg_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvSetPosReg_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SetPosReg_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/SetPosReg_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPosReg_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetPosReg_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPosReg_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SetPosReg_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetPosReg_Response_Codec_Identity :: "UWVMROS1_fb6f889d30c921df31f55cdc760346eb0d655816e71b52d4aac7a1e56d4e9cb2"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetPosReg_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetPosReg_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPosReg_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetPosReg_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetPosReg_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetPosReg_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetPosReg_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetPosReg_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetPosReg_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetPosReg_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetPosReg_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetUFrameData_Request value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 26..26 bytes.
Ros2Fanuc_msgsSrvSetUFrameData_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SetUFrameData_Request.uframe_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_uframe_number: u8,
    /// @brief Original fanuc_msgs/srv/SetUFrameData_Request.frame field.
    /// @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_frame: Ros2Fanuc_msgsMsgFrame,
    /// @brief Original fanuc_msgs/srv/SetUFrameData_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/SetUFrameData_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUFrameData_Request_Minimum_Wire_Bytes :: 26
/// @brief Original complete fanuc_msgs/srv/SetUFrameData_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUFrameData_Request_Maximum_Wire_Bytes :: 26
/// @brief Original complete fanuc_msgs/srv/SetUFrameData_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUFrameData_Request_Codec_Identity :: "UWVMROS1_a067808d8fe5ca1418e18ac492313ad9211cc8f3bf402ad0ac51a2850a2bc169"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetUFrameData_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetUFrameData_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetUFrameData_Request, cursor: ^wire.Cursor)
{
    value.field_uframe_number = u8(wire.number(cursor, u64(value.field_uframe_number), 1))
    fields_Ros2Fanuc_msgsMsgFrame(&value.field_frame, cursor)
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetUFrameData_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetUFrameData_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetUFrameData_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 26)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetUFrameData_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetUFrameData_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetUFrameData_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetUFrameData_Request, code: u32)
{
    if len(bytes) < 26 || len(bytes) > 26 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetUFrameData_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetUFrameData_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..5 bytes.
Ros2Fanuc_msgsSrvSetUFrameData_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SetUFrameData_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/SetUFrameData_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/SetUFrameData_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUFrameData_Response_Minimum_Wire_Bytes :: 5
/// @brief Original complete fanuc_msgs/srv/SetUFrameData_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUFrameData_Response_Maximum_Wire_Bytes :: 5
/// @brief Original complete fanuc_msgs/srv/SetUFrameData_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUFrameData_Response_Codec_Identity :: "UWVMROS1_f436e4fe5bd06b048f4f53d2df4933ac8eac5a784f31b42ccf13f5eaf1696eee"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetUFrameData_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetUFrameData_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetUFrameData_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetUFrameData_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetUFrameData_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetUFrameData_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetUFrameData_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetUFrameData_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetUFrameData_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetUFrameData_Response, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 5 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetUFrameData_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetUFrameUTool_Request value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 3..3 bytes.
Ros2Fanuc_msgsSrvSetUFrameUTool_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Request.uframe_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_uframe_number: u8,
    /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Request.utool_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_utool_number: u8,
    /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/SetUFrameUTool_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUFrameUTool_Request_Minimum_Wire_Bytes :: 3
/// @brief Original complete fanuc_msgs/srv/SetUFrameUTool_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUFrameUTool_Request_Maximum_Wire_Bytes :: 3
/// @brief Original complete fanuc_msgs/srv/SetUFrameUTool_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUFrameUTool_Request_Codec_Identity :: "UWVMROS1_0b86b0a37e4dc23e0ff651df867f5958e7440bf4712b47779d69ca699af4c09f"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetUFrameUTool_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetUFrameUTool_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetUFrameUTool_Request, cursor: ^wire.Cursor)
{
    value.field_uframe_number = u8(wire.number(cursor, u64(value.field_uframe_number), 1))
    value.field_utool_number = u8(wire.number(cursor, u64(value.field_utool_number), 1))
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetUFrameUTool_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetUFrameUTool_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetUFrameUTool_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 3)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetUFrameUTool_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetUFrameUTool_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetUFrameUTool_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetUFrameUTool_Request, code: u32)
{
    if len(bytes) < 3 || len(bytes) > 3 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetUFrameUTool_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetUFrameUTool_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..5 bytes.
Ros2Fanuc_msgsSrvSetUFrameUTool_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/SetUFrameUTool_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUFrameUTool_Response_Minimum_Wire_Bytes :: 5
/// @brief Original complete fanuc_msgs/srv/SetUFrameUTool_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUFrameUTool_Response_Maximum_Wire_Bytes :: 5
/// @brief Original complete fanuc_msgs/srv/SetUFrameUTool_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUFrameUTool_Response_Codec_Identity :: "UWVMROS1_b77837445c9663f29f23465cc7178a183d245486f74bcff732fc2f4025b82a67"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetUFrameUTool_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetUFrameUTool_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetUFrameUTool_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetUFrameUTool_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetUFrameUTool_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetUFrameUTool_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetUFrameUTool_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetUFrameUTool_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetUFrameUTool_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetUFrameUTool_Response, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 5 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetUFrameUTool_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetUToolData_Request value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 26..26 bytes.
Ros2Fanuc_msgsSrvSetUToolData_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SetUToolData_Request.utool_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_utool_number: u8,
    /// @brief Original fanuc_msgs/srv/SetUToolData_Request.frame field.
    /// @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_frame: Ros2Fanuc_msgsMsgFrame,
    /// @brief Original fanuc_msgs/srv/SetUToolData_Request.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/SetUToolData_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUToolData_Request_Minimum_Wire_Bytes :: 26
/// @brief Original complete fanuc_msgs/srv/SetUToolData_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUToolData_Request_Maximum_Wire_Bytes :: 26
/// @brief Original complete fanuc_msgs/srv/SetUToolData_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUToolData_Request_Codec_Identity :: "UWVMROS1_7d5b911133645744c8def79bc16c8b7c4ee4e87a057ea33741031d6a94e620ab"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetUToolData_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetUToolData_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetUToolData_Request, cursor: ^wire.Cursor)
{
    value.field_utool_number = u8(wire.number(cursor, u64(value.field_utool_number), 1))
    fields_Ros2Fanuc_msgsMsgFrame(&value.field_frame, cursor)
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetUToolData_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetUToolData_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetUToolData_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 26)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetUToolData_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetUToolData_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetUToolData_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetUToolData_Request, code: u32)
{
    if len(bytes) < 26 || len(bytes) > 26 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetUToolData_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SetUToolData_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 5..5 bytes.
Ros2Fanuc_msgsSrvSetUToolData_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SetUToolData_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original fanuc_msgs/srv/SetUToolData_Response.group field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group: u8,
}
/// @brief Original complete fanuc_msgs/srv/SetUToolData_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUToolData_Response_Minimum_Wire_Bytes :: 5
/// @brief Original complete fanuc_msgs/srv/SetUToolData_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUToolData_Response_Maximum_Wire_Bytes :: 5
/// @brief Original complete fanuc_msgs/srv/SetUToolData_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSetUToolData_Response_Codec_Identity :: "UWVMROS1_b33d265f275dfcb5fe20432d5e38b55574c85260135bded477c2d5fa2c85c7cb"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SetUToolData_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSetUToolData_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetUToolData_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_group = u8(wire.number(cursor, u64(value.field_group), 1))
}
/// @brief Encode every complete original fanuc_msgs/srv/SetUToolData_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSetUToolData_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSetUToolData_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5)], writing = true}
    fields_Ros2Fanuc_msgsSrvSetUToolData_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SetUToolData_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSetUToolData_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSetUToolData_Response, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 5 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSetUToolData_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SwitchControlState_Request value.
/// @details Retain all 1 original fields and 2 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvSwitchControlState_Request :: struct {
    /// @brief Original fanuc_msgs/srv/SwitchControlState_Request.status field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_status: u32,
}
/// @brief Original complete fanuc_msgs/srv/SwitchControlState_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSwitchControlState_Request_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SwitchControlState_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSwitchControlState_Request_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SwitchControlState_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSwitchControlState_Request_Codec_Identity :: "UWVMROS1_b485b7071fe2737c7dc8f0360a15b7be30f997430142d8260454fd423172cc21"
/// @brief Original fanuc_msgs/srv/SwitchControlState_Request.STOP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsSrvSwitchControlState_Request_STOP :: 0
/// @brief Original fanuc_msgs/srv/SwitchControlState_Request.START constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Fanuc_msgsSrvSwitchControlState_Request_START :: 1
/// @brief Traverse every original field of complete fanuc_msgs/srv/SwitchControlState_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSwitchControlState_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSwitchControlState_Request, cursor: ^wire.Cursor)
{
    value.field_status = u32(wire.number(cursor, u64(value.field_status), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/SwitchControlState_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSwitchControlState_Request :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSwitchControlState_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvSwitchControlState_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SwitchControlState_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSwitchControlState_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSwitchControlState_Request, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSwitchControlState_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original fanuc_msgs/srv/SwitchControlState_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Fanuc_msgsSrvSwitchControlState_Response :: struct {
    /// @brief Original fanuc_msgs/srv/SwitchControlState_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete fanuc_msgs/srv/SwitchControlState_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSwitchControlState_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SwitchControlState_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSwitchControlState_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete fanuc_msgs/srv/SwitchControlState_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Fanuc_msgsSrvSwitchControlState_Response_Codec_Identity :: "UWVMROS1_8a3d7a3c1037174f4118843e34222ef8811eff3cc885a0c688d98071e1a9496c"
/// @brief Traverse every original field of complete fanuc_msgs/srv/SwitchControlState_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Fanuc_msgsSrvSwitchControlState_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSwitchControlState_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original fanuc_msgs/srv/SwitchControlState_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Fanuc_msgsSrvSwitchControlState_Response :: proc "contextless"(
    value: ^Ros2Fanuc_msgsSrvSwitchControlState_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Fanuc_msgsSrvSwitchControlState_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original fanuc_msgs/srv/SwitchControlState_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Fanuc_msgsSrvSwitchControlState_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Fanuc_msgsSrvSwitchControlState_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Fanuc_msgsSrvSwitchControlState_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/msg/CallParam value.
/// @details Retain all 4 original fields and 10 constants. Wire extent 16..592 bytes.
Ros2Rmi_msgsMsgCallParam :: struct {
    /// @brief Original rmi_msgs/msg/CallParam.type field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_type: wire.Text(64, false),
    /// @brief Original rmi_msgs/msg/CallParam.int_value field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_int_value: i32,
    /// @brief Original rmi_msgs/msg/CallParam.float_value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_float_value: f32,
    /// @brief Original rmi_msgs/msg/CallParam.string_value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_string_value: wire.Text(512, false),
}
/// @brief Original complete rmi_msgs/msg/CallParam minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgCallParam_Minimum_Wire_Bytes :: 16
/// @brief Original complete rmi_msgs/msg/CallParam maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgCallParam_Maximum_Wire_Bytes :: 592
/// @brief Original complete rmi_msgs/msg/CallParam codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgCallParam_Codec_Identity :: "UWVMROS1_ed625d80db6c4314b8373f2d205344d6ab8d71be46182dab5a497d36564a2255"
/// @brief Original rmi_msgs/msg/CallParam.AR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCallParam_AR :: "AR"
/// @brief Original rmi_msgs/msg/CallParam.PR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCallParam_PR :: "PR"
/// @brief Original rmi_msgs/msg/CallParam.SR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCallParam_SR :: "SR"
/// @brief Original rmi_msgs/msg/CallParam.R constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCallParam_R :: "R"
/// @brief Original rmi_msgs/msg/CallParam.P constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCallParam_P :: "P"
/// @brief Original rmi_msgs/msg/CallParam.INT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCallParam_INT :: "INT"
/// @brief Original rmi_msgs/msg/CallParam.INTEGER constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCallParam_INTEGER :: "INT"
/// @brief Original rmi_msgs/msg/CallParam.FLOAT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCallParam_FLOAT :: "FLOAT"
/// @brief Original rmi_msgs/msg/CallParam.STRING constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCallParam_STRING :: "String"
/// @brief Original rmi_msgs/msg/CallParam.STR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCallParam_STR :: "String"
/// @brief Traverse every original field of complete rmi_msgs/msg/CallParam.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsMsgCallParam :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgCallParam, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_type)
    value.field_int_value = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_int_value), 4))
    value.field_float_value = wire.float32(cursor, value.field_float_value)
    wire.text(cursor, &value.field_string_value)
}
/// @brief Encode every complete original rmi_msgs/msg/CallParam field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsMsgCallParam :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgCallParam, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 592)], writing = true}
    fields_Ros2Rmi_msgsMsgCallParam(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/msg/CallParam.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsMsgCallParam :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsMsgCallParam, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 592 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsMsgCallParam(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/msg/Cartesian value.
/// @details Retain all 18 original fields and 0 constants. Wire extent 45..45 bytes.
Ros2Rmi_msgsMsgCartesian :: struct {
    /// @brief Original rmi_msgs/msg/Cartesian.utool field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_utool: i8,
    /// @brief Original rmi_msgs/msg/Cartesian.uframe field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_uframe: i8,
    /// @brief Original rmi_msgs/msg/Cartesian.front field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_front: u8,
    /// @brief Original rmi_msgs/msg/Cartesian.up field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_up: u8,
    /// @brief Original rmi_msgs/msg/Cartesian.left field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_left: u8,
    /// @brief Original rmi_msgs/msg/Cartesian.flip field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_flip: u8,
    /// @brief Original rmi_msgs/msg/Cartesian.turn4 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_turn4: i8,
    /// @brief Original rmi_msgs/msg/Cartesian.turn5 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_turn5: i8,
    /// @brief Original rmi_msgs/msg/Cartesian.turn6 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_turn6: i8,
    /// @brief Original rmi_msgs/msg/Cartesian.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f32,
    /// @brief Original rmi_msgs/msg/Cartesian.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f32,
    /// @brief Original rmi_msgs/msg/Cartesian.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f32,
    /// @brief Original rmi_msgs/msg/Cartesian.w field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_w: f32,
    /// @brief Original rmi_msgs/msg/Cartesian.p field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_p: f32,
    /// @brief Original rmi_msgs/msg/Cartesian.r field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_r: f32,
    /// @brief Original rmi_msgs/msg/Cartesian.ext1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ext1: f32,
    /// @brief Original rmi_msgs/msg/Cartesian.ext2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ext2: f32,
    /// @brief Original rmi_msgs/msg/Cartesian.ext3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ext3: f32,
}
/// @brief Original complete rmi_msgs/msg/Cartesian minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgCartesian_Minimum_Wire_Bytes :: 45
/// @brief Original complete rmi_msgs/msg/Cartesian maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgCartesian_Maximum_Wire_Bytes :: 45
/// @brief Original complete rmi_msgs/msg/Cartesian codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgCartesian_Codec_Identity :: "UWVMROS1_2a0e1fff119007499a63d55c9722f666be1436a9212d9e43b556af347e8e4b40"
/// @brief Traverse every original field of complete rmi_msgs/msg/Cartesian.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsMsgCartesian :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgCartesian, cursor: ^wire.Cursor)
{
    value.field_utool = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_utool), 1))
    value.field_uframe = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_uframe), 1))
    value.field_front = u8(wire.number(cursor, u64(value.field_front), 1))
    value.field_up = u8(wire.number(cursor, u64(value.field_up), 1))
    value.field_left = u8(wire.number(cursor, u64(value.field_left), 1))
    value.field_flip = u8(wire.number(cursor, u64(value.field_flip), 1))
    value.field_turn4 = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_turn4), 1))
    value.field_turn5 = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_turn5), 1))
    value.field_turn6 = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_turn6), 1))
    value.field_x = wire.float32(cursor, value.field_x)
    value.field_y = wire.float32(cursor, value.field_y)
    value.field_z = wire.float32(cursor, value.field_z)
    value.field_w = wire.float32(cursor, value.field_w)
    value.field_p = wire.float32(cursor, value.field_p)
    value.field_r = wire.float32(cursor, value.field_r)
    value.field_ext1 = wire.float32(cursor, value.field_ext1)
    value.field_ext2 = wire.float32(cursor, value.field_ext2)
    value.field_ext3 = wire.float32(cursor, value.field_ext3)
}
/// @brief Encode every complete original rmi_msgs/msg/Cartesian field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsMsgCartesian :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgCartesian, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 45)], writing = true}
    fields_Ros2Rmi_msgsMsgCartesian(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/msg/Cartesian.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsMsgCartesian :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsMsgCartesian, code: u32)
{
    if len(bytes) < 45 || len(bytes) > 45 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsMsgCartesian(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/msg/Command value.
/// @details Retain all 1 original fields and 5 constants. Wire extent 4..68 bytes.
Ros2Rmi_msgsMsgCommand :: struct {
    /// @brief Original rmi_msgs/msg/Command.type field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_type: wire.Text(64, false),
}
/// @brief Original complete rmi_msgs/msg/Command minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgCommand_Minimum_Wire_Bytes :: 4
/// @brief Original complete rmi_msgs/msg/Command maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgCommand_Maximum_Wire_Bytes :: 68
/// @brief Original complete rmi_msgs/msg/Command codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgCommand_Codec_Identity :: "UWVMROS1_d2741856b8cdf57aa716566edfc705957611557b7da5b6099b173903bdd9960c"
/// @brief Original rmi_msgs/msg/Command.INITIAZLIE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommand_INITIAZLIE :: "INITIALIZE"
/// @brief Original rmi_msgs/msg/Command.INIT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommand_INIT :: "INITIALIZE"
/// @brief Original rmi_msgs/msg/Command.ABORT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommand_ABORT :: "ABORT"
/// @brief Original rmi_msgs/msg/Command.PAUSE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommand_PAUSE :: "PAUSE"
/// @brief Original rmi_msgs/msg/Command.RESUME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommand_RESUME :: "RESUME"
/// @brief Traverse every original field of complete rmi_msgs/msg/Command.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsMsgCommand :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgCommand, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_type)
}
/// @brief Encode every complete original rmi_msgs/msg/Command field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsMsgCommand :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgCommand, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 68)], writing = true}
    fields_Ros2Rmi_msgsMsgCommand(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/msg/Command.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsMsgCommand :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsMsgCommand, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 68 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsMsgCommand(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/msg/CommandOptions value.
/// @details Retain all 6 original fields and 8 constants. Wire extent 12..1036 bytes.
Ros2Rmi_msgsMsgCommandOptions :: struct {
    /// @brief Original rmi_msgs/msg/CommandOptions.use_group_mask field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_group_mask: bool,
    /// @brief Original rmi_msgs/msg/CommandOptions.group_mask field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_group_mask: u8,
    /// @brief Original rmi_msgs/msg/CommandOptions.use_rtsa field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_rtsa: bool,
    /// @brief Original rmi_msgs/msg/CommandOptions.rtsa field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_rtsa: wire.Text(512, false),
    /// @brief Original rmi_msgs/msg/CommandOptions.use_pltzmode field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_pltzmode: bool,
    /// @brief Original rmi_msgs/msg/CommandOptions.pltzmode field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_pltzmode: wire.Text(512, false),
}
/// @brief Original complete rmi_msgs/msg/CommandOptions minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgCommandOptions_Minimum_Wire_Bytes :: 12
/// @brief Original complete rmi_msgs/msg/CommandOptions maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgCommandOptions_Maximum_Wire_Bytes :: 1036
/// @brief Original complete rmi_msgs/msg/CommandOptions codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgCommandOptions_Codec_Identity :: "UWVMROS1_0be0c508035725bf9686807cb8b5267e23f709b7aa34b0910a44ff3604670147"
/// @brief Original rmi_msgs/msg/CommandOptions.RTSA_ON constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommandOptions_RTSA_ON :: "ON"
/// @brief Original rmi_msgs/msg/CommandOptions.RTSA_OFF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommandOptions_RTSA_OFF :: "OFF"
/// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_ZERODN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommandOptions_PLTZ_ZERODN :: "ZERODN"
/// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_ZEROUP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommandOptions_PLTZ_ZEROUP :: "ZEROUP"
/// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_PSPIDN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommandOptions_PLTZ_PSPIDN :: "PSPIDN"
/// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_PSPIUP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommandOptions_PLTZ_PSPIUP :: "PSPIUP"
/// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_MSPIDN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommandOptions_PLTZ_MSPIDN :: "MSPIDN"
/// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_MSPIUP constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgCommandOptions_PLTZ_MSPIUP :: "MSPIUP"
/// @brief Traverse every original field of complete rmi_msgs/msg/CommandOptions.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsMsgCommandOptions :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgCommandOptions, cursor: ^wire.Cursor)
{
    value.field_use_group_mask = wire.boolean(cursor, value.field_use_group_mask)
    value.field_group_mask = u8(wire.number(cursor, u64(value.field_group_mask), 1))
    value.field_use_rtsa = wire.boolean(cursor, value.field_use_rtsa)
    wire.text(cursor, &value.field_rtsa)
    value.field_use_pltzmode = wire.boolean(cursor, value.field_use_pltzmode)
    wire.text(cursor, &value.field_pltzmode)
}
/// @brief Encode every complete original rmi_msgs/msg/CommandOptions field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsMsgCommandOptions :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgCommandOptions, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1036)], writing = true}
    fields_Ros2Rmi_msgsMsgCommandOptions(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/msg/CommandOptions.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsMsgCommandOptions :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsMsgCommandOptions, code: u32)
{
    if len(bytes) < 12 || len(bytes) > 1036 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsMsgCommandOptions(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/msg/Joint value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 36..36 bytes.
Ros2Rmi_msgsMsgJoint :: struct {
    /// @brief Original rmi_msgs/msg/Joint.positions field.
    /// @details Original type float32. Shape array; bound/count 9 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_positions: [9]f32,
}
/// @brief Original complete rmi_msgs/msg/Joint minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgJoint_Minimum_Wire_Bytes :: 36
/// @brief Original complete rmi_msgs/msg/Joint maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgJoint_Maximum_Wire_Bytes :: 36
/// @brief Original complete rmi_msgs/msg/Joint codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgJoint_Codec_Identity :: "UWVMROS1_0ba90adf6cc287bc306fd2a77c52c2e4d62731cfac37bb2cc116ee846249a42d"
/// @brief Traverse every original field of complete rmi_msgs/msg/Joint.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsMsgJoint :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgJoint, cursor: ^wire.Cursor)
{
    for index in 0..<9 {
        value.field_positions[index] = wire.float32(cursor, value.field_positions[index])
    }
}
/// @brief Encode every complete original rmi_msgs/msg/Joint field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsMsgJoint :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgJoint, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 36)], writing = true}
    fields_Ros2Rmi_msgsMsgJoint(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/msg/Joint.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsMsgJoint :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsMsgJoint, code: u32)
{
    if len(bytes) < 36 || len(bytes) > 36 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsMsgJoint(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/msg/MotionInstructionOptions value.
/// @details Retain all 28 original fields and 7 constants. Wire extent 52..2612 bytes.
Ros2Rmi_msgsMsgMotionInstructionOptions :: struct {
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_acc field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_acc: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.acc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_acc: u8,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_offset_pr_number field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_offset_pr_number: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.offset_pr_number field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_offset_pr_number: u16,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_vision_pr_number field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_vision_pr_number: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.vision_pr_number field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_vision_pr_number: u16,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_wrist_joint field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_wrist_joint: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.wrist_joint field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wrist_joint: wire.Text(512, false),
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_mrot field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_mrot: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.mrot field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_mrot: wire.Text(512, false),
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_lcb_type field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_lcb_type: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.lcb_type field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_lcb_type: wire.Text(512, false),
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_lcb_value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_lcb_value: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.lcb_value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_lcb_value: u16,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_port_type field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_port_type: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.port_type field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_port_type: u8,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_port_number field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_port_number: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.port_number field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_port_number: u16,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_port_value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_port_value: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.port_value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_port_value: wire.Text(512, false),
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_tool_offset_pr_number field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_tool_offset_pr_number: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.tool_offset_pr_number field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tool_offset_pr_number: u16,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_alim field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_alim: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.alim field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_alim: i32,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_alim_reg field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_alim_reg: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.alim_reg field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_alim_reg: u16,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_no_blend field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_use_no_blend: bool,
    /// @brief Original rmi_msgs/msg/MotionInstructionOptions.no_blend field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_no_blend: wire.Text(512, false),
}
/// @brief Original complete rmi_msgs/msg/MotionInstructionOptions minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgMotionInstructionOptions_Minimum_Wire_Bytes :: 52
/// @brief Original complete rmi_msgs/msg/MotionInstructionOptions maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgMotionInstructionOptions_Maximum_Wire_Bytes :: 2612
/// @brief Original complete rmi_msgs/msg/MotionInstructionOptions codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgMotionInstructionOptions_Codec_Identity :: "UWVMROS1_f8d9ed2e083c577b0cae8965df71aa99643d12ce5a5a6ce558894edfb756bcc6"
/// @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_TB constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionInstructionOptions_LCB_TYPE_TB :: "TB"
/// @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_TA constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionInstructionOptions_LCB_TYPE_TA :: "TA"
/// @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_DB constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionInstructionOptions_LCB_TYPE_DB :: "DB"
/// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_DOUT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionInstructionOptions_PORT_TYPE_DOUT :: 1
/// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_DO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionInstructionOptions_PORT_TYPE_DO :: 1
/// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_ROUT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionInstructionOptions_PORT_TYPE_ROUT :: 2
/// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_RO constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionInstructionOptions_PORT_TYPE_RO :: 2
/// @brief Traverse every original field of complete rmi_msgs/msg/MotionInstructionOptions.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsMsgMotionInstructionOptions :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgMotionInstructionOptions, cursor: ^wire.Cursor)
{
    value.field_use_acc = wire.boolean(cursor, value.field_use_acc)
    value.field_acc = u8(wire.number(cursor, u64(value.field_acc), 1))
    value.field_use_offset_pr_number = wire.boolean(cursor, value.field_use_offset_pr_number)
    value.field_offset_pr_number = u16(wire.number(cursor, u64(value.field_offset_pr_number), 2))
    value.field_use_vision_pr_number = wire.boolean(cursor, value.field_use_vision_pr_number)
    value.field_vision_pr_number = u16(wire.number(cursor, u64(value.field_vision_pr_number), 2))
    value.field_use_wrist_joint = wire.boolean(cursor, value.field_use_wrist_joint)
    wire.text(cursor, &value.field_wrist_joint)
    value.field_use_mrot = wire.boolean(cursor, value.field_use_mrot)
    wire.text(cursor, &value.field_mrot)
    value.field_use_lcb_type = wire.boolean(cursor, value.field_use_lcb_type)
    wire.text(cursor, &value.field_lcb_type)
    value.field_use_lcb_value = wire.boolean(cursor, value.field_use_lcb_value)
    value.field_lcb_value = u16(wire.number(cursor, u64(value.field_lcb_value), 2))
    value.field_use_port_type = wire.boolean(cursor, value.field_use_port_type)
    value.field_port_type = u8(wire.number(cursor, u64(value.field_port_type), 1))
    value.field_use_port_number = wire.boolean(cursor, value.field_use_port_number)
    value.field_port_number = u16(wire.number(cursor, u64(value.field_port_number), 2))
    value.field_use_port_value = wire.boolean(cursor, value.field_use_port_value)
    wire.text(cursor, &value.field_port_value)
    value.field_use_tool_offset_pr_number = wire.boolean(cursor, value.field_use_tool_offset_pr_number)
    value.field_tool_offset_pr_number = u16(wire.number(cursor, u64(value.field_tool_offset_pr_number), 2))
    value.field_use_alim = wire.boolean(cursor, value.field_use_alim)
    value.field_alim = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_alim), 4))
    value.field_use_alim_reg = wire.boolean(cursor, value.field_use_alim_reg)
    value.field_alim_reg = u16(wire.number(cursor, u64(value.field_alim_reg), 2))
    value.field_use_no_blend = wire.boolean(cursor, value.field_use_no_blend)
    wire.text(cursor, &value.field_no_blend)
}
/// @brief Encode every complete original rmi_msgs/msg/MotionInstructionOptions field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsMsgMotionInstructionOptions :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgMotionInstructionOptions, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2612)], writing = true}
    fields_Ros2Rmi_msgsMsgMotionInstructionOptions(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/msg/MotionInstructionOptions.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsMsgMotionInstructionOptions :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsMsgMotionInstructionOptions, code: u32)
{
    if len(bytes) < 52 || len(bytes) > 2612 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsMsgMotionInstructionOptions(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/msg/MotionType value.
/// @details Retain all 1 original fields and 8 constants. Wire extent 4..68 bytes.
Ros2Rmi_msgsMsgMotionType :: struct {
    /// @brief Original rmi_msgs/msg/MotionType.type field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_type: wire.Text(64, false),
}
/// @brief Original complete rmi_msgs/msg/MotionType minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgMotionType_Minimum_Wire_Bytes :: 4
/// @brief Original complete rmi_msgs/msg/MotionType maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgMotionType_Maximum_Wire_Bytes :: 68
/// @brief Original complete rmi_msgs/msg/MotionType codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgMotionType_Codec_Identity :: "UWVMROS1_c51cc7a32f6853d13bedaf3306dd79e445de6c0d16ae0ec39034ce0ae6d19c8a"
/// @brief Original rmi_msgs/msg/MotionType.J constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionType_J :: "J"
/// @brief Original rmi_msgs/msg/MotionType.JOINT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionType_JOINT :: "J"
/// @brief Original rmi_msgs/msg/MotionType.L constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionType_L :: "L"
/// @brief Original rmi_msgs/msg/MotionType.LINEAR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionType_LINEAR :: "L"
/// @brief Original rmi_msgs/msg/MotionType.C constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionType_C :: "C"
/// @brief Original rmi_msgs/msg/MotionType.CIRCULAR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionType_CIRCULAR :: "C"
/// @brief Original rmi_msgs/msg/MotionType.S constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionType_S :: "S"
/// @brief Original rmi_msgs/msg/MotionType.SPLINE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgMotionType_SPLINE :: "S"
/// @brief Traverse every original field of complete rmi_msgs/msg/MotionType.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsMsgMotionType :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgMotionType, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_type)
}
/// @brief Encode every complete original rmi_msgs/msg/MotionType field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsMsgMotionType :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgMotionType, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 68)], writing = true}
    fields_Ros2Rmi_msgsMsgMotionType(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/msg/MotionType.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsMsgMotionType :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsMsgMotionType, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 68 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsMsgMotionType(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/msg/Representation value.
/// @details Retain all 1 original fields and 5 constants. Wire extent 4..516 bytes.
Ros2Rmi_msgsMsgRepresentation :: struct {
    /// @brief Original rmi_msgs/msg/Representation.representation field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_representation: wire.Text(512, false),
}
/// @brief Original complete rmi_msgs/msg/Representation minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgRepresentation_Minimum_Wire_Bytes :: 4
/// @brief Original complete rmi_msgs/msg/Representation maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgRepresentation_Maximum_Wire_Bytes :: 516
/// @brief Original complete rmi_msgs/msg/Representation codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgRepresentation_Codec_Identity :: "UWVMROS1_b439506f2dc2135bb484b3abb308dfdf5c07367af5a4d6d0f5435ad9bba8ea6f"
/// @brief Original rmi_msgs/msg/Representation.JOINT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgRepresentation_JOINT :: "JOINT"
/// @brief Original rmi_msgs/msg/Representation.J constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgRepresentation_J :: "JOINT"
/// @brief Original rmi_msgs/msg/Representation.CARTESIAN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgRepresentation_CARTESIAN :: "CARTESIAN"
/// @brief Original rmi_msgs/msg/Representation.CART constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgRepresentation_CART :: "CARTESIAN"
/// @brief Original rmi_msgs/msg/Representation.C constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgRepresentation_C :: "CARTESIAN"
/// @brief Traverse every original field of complete rmi_msgs/msg/Representation.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsMsgRepresentation :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgRepresentation, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_representation)
}
/// @brief Encode every complete original rmi_msgs/msg/Representation field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsMsgRepresentation :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgRepresentation, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 516)], writing = true}
    fields_Ros2Rmi_msgsMsgRepresentation(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/msg/Representation.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsMsgRepresentation :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsMsgRepresentation, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 516 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsMsgRepresentation(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/msg/SpeedType value.
/// @details Retain all 1 original fields and 8 constants. Wire extent 4..68 bytes.
Ros2Rmi_msgsMsgSpeedType :: struct {
    /// @brief Original rmi_msgs/msg/SpeedType.type field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_type: wire.Text(64, false),
}
/// @brief Original complete rmi_msgs/msg/SpeedType minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgSpeedType_Minimum_Wire_Bytes :: 4
/// @brief Original complete rmi_msgs/msg/SpeedType maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgSpeedType_Maximum_Wire_Bytes :: 68
/// @brief Original complete rmi_msgs/msg/SpeedType codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgSpeedType_Codec_Identity :: "UWVMROS1_e4f4dbda84d8d8cd4d026b0beb52005663c7c4ee602c8d1e4d5853589777c282"
/// @brief Original rmi_msgs/msg/SpeedType.PERCENT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgSpeedType_PERCENT :: "Percent"
/// @brief Original rmi_msgs/msg/SpeedType.PERCENTAGE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgSpeedType_PERCENTAGE :: "Percent"
/// @brief Original rmi_msgs/msg/SpeedType.MMSEC constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgSpeedType_MMSEC :: "mmSec"
/// @brief Original rmi_msgs/msg/SpeedType.INCHMIN constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgSpeedType_INCHMIN :: "InchMin"
/// @brief Original rmi_msgs/msg/SpeedType.TIME constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgSpeedType_TIME :: "Time"
/// @brief Original rmi_msgs/msg/SpeedType.SECONDS constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgSpeedType_SECONDS :: "Time"
/// @brief Original rmi_msgs/msg/SpeedType.SEC constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgSpeedType_SEC :: "Time"
/// @brief Original rmi_msgs/msg/SpeedType.MSEC constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgSpeedType_MSEC :: "mSec"
/// @brief Traverse every original field of complete rmi_msgs/msg/SpeedType.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsMsgSpeedType :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgSpeedType, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_type)
}
/// @brief Encode every complete original rmi_msgs/msg/SpeedType field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsMsgSpeedType :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgSpeedType, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 68)], writing = true}
    fields_Ros2Rmi_msgsMsgSpeedType(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/msg/SpeedType.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsMsgSpeedType :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsMsgSpeedType, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 68 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsMsgSpeedType(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/msg/TermType value.
/// @details Retain all 1 original fields and 4 constants. Wire extent 4..68 bytes.
Ros2Rmi_msgsMsgTermType :: struct {
    /// @brief Original rmi_msgs/msg/TermType.type field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_type: wire.Text(64, false),
}
/// @brief Original complete rmi_msgs/msg/TermType minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgTermType_Minimum_Wire_Bytes :: 4
/// @brief Original complete rmi_msgs/msg/TermType maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgTermType_Maximum_Wire_Bytes :: 68
/// @brief Original complete rmi_msgs/msg/TermType codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsMsgTermType_Codec_Identity :: "UWVMROS1_5ddbb483126e0ab5799ed865480da457179d83a271581c1471aec940bedc4535"
/// @brief Original rmi_msgs/msg/TermType.FINE constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgTermType_FINE :: "FINE"
/// @brief Original rmi_msgs/msg/TermType.CNT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgTermType_CNT :: "CNT"
/// @brief Original rmi_msgs/msg/TermType.CR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgTermType_CR :: "CR"
/// @brief Original rmi_msgs/msg/TermType.CD constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Rmi_msgsMsgTermType_CD :: "CD"
/// @brief Traverse every original field of complete rmi_msgs/msg/TermType.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsMsgTermType :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgTermType, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_type)
}
/// @brief Encode every complete original rmi_msgs/msg/TermType field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsMsgTermType :: proc "contextless"(
    value: ^Ros2Rmi_msgsMsgTermType, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 68)], writing = true}
    fields_Ros2Rmi_msgsMsgTermType(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/msg/TermType.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsMsgTermType :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsMsgTermType, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 68 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsMsgTermType(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddCall_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..9992 bytes.
Ros2Rmi_msgsSrvAddCall_Request :: struct {
    /// @brief Original rmi_msgs/srv/AddCall_Request.program_name field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_program_name: wire.Text(512, false),
    /// @brief Original rmi_msgs/srv/AddCall_Request.params field.
    /// @details Original type rmi_msgs/msg/CallParam. Shape sequence; bound/count 16 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_params: wire.Sequence(Ros2Rmi_msgsMsgCallParam, 16),
}
/// @brief Original complete rmi_msgs/srv/AddCall_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddCall_Request_Minimum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddCall_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddCall_Request_Maximum_Wire_Bytes :: 9992
/// @brief Original complete rmi_msgs/srv/AddCall_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddCall_Request_Codec_Identity :: "UWVMROS1_4d652cfbaef29487a0a688932ee926d7a4026c5e7ac8a0eace583b503c37bcd8"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddCall_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddCall_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddCall_Request, cursor: ^wire.Cursor)
{
    wire.text(cursor, &value.field_program_name)
    value.field_params.size = u32(wire.number(cursor, u64(value.field_params.size), 4))
    if value.field_params.size > 16 { cursor.code = 22; return }
    for index in 0..<int(value.field_params.size) {
        fields_Ros2Rmi_msgsMsgCallParam(&value.field_params.items[index], cursor)
    }
}
/// @brief Encode every complete original rmi_msgs/srv/AddCall_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddCall_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddCall_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 9992)], writing = true}
    fields_Ros2Rmi_msgsSrvAddCall_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddCall_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddCall_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddCall_Request, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 9992 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddCall_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddCall_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Rmi_msgsSrvAddCall_Response :: struct {
    /// @brief Original rmi_msgs/srv/AddCall_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original rmi_msgs/srv/AddCall_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sequence_id: i32,
}
/// @brief Original complete rmi_msgs/srv/AddCall_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddCall_Response_Minimum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddCall_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddCall_Response_Maximum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddCall_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddCall_Response_Codec_Identity :: "UWVMROS1_4f8495dfc3c69ec640444fd24843a7bb3e30008d90945bdd64817d8acb7964e1"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddCall_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddCall_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddCall_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_sequence_id = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sequence_id), 4))
}
/// @brief Encode every complete original rmi_msgs/srv/AddCall_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddCall_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddCall_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Rmi_msgsSrvAddCall_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddCall_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddCall_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddCall_Response, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddCall_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddMotionInstruction_Request value.
/// @details Retain all 13 original fields and 0 constants. Wire extent 238..4014 bytes.
Ros2Rmi_msgsSrvAddMotionInstruction_Request :: struct {
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.motion_type field.
    /// @details Original type rmi_msgs/msg/MotionType. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_motion_type: Ros2Rmi_msgsMsgMotionType,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.incremental field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_incremental: bool,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.representation field.
    /// @details Original type rmi_msgs/msg/Representation. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_representation: Ros2Rmi_msgsMsgRepresentation,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.joint field.
    /// @details Original type rmi_msgs/msg/Joint. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_joint: Ros2Rmi_msgsMsgJoint,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.cartesian field.
    /// @details Original type rmi_msgs/msg/Cartesian. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_cartesian: Ros2Rmi_msgsMsgCartesian,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.speed_type field.
    /// @details Original type rmi_msgs/msg/SpeedType. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_speed_type: Ros2Rmi_msgsMsgSpeedType,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.speed_value field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speed_value: u16,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.term_type field.
    /// @details Original type rmi_msgs/msg/TermType. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_term_type: Ros2Rmi_msgsMsgTermType,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.term_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_term_value: u8,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.via_representation field.
    /// @details Original type rmi_msgs/msg/Representation. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_via_representation: Ros2Rmi_msgsMsgRepresentation,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.via_joint field.
    /// @details Original type rmi_msgs/msg/Joint. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_via_joint: Ros2Rmi_msgsMsgJoint,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.via_cartesian field.
    /// @details Original type rmi_msgs/msg/Cartesian. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_via_cartesian: Ros2Rmi_msgsMsgCartesian,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.options field.
    /// @details Original type rmi_msgs/msg/MotionInstructionOptions. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_options: Ros2Rmi_msgsMsgMotionInstructionOptions,
}
/// @brief Original complete rmi_msgs/srv/AddMotionInstruction_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddMotionInstruction_Request_Minimum_Wire_Bytes :: 238
/// @brief Original complete rmi_msgs/srv/AddMotionInstruction_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddMotionInstruction_Request_Maximum_Wire_Bytes :: 4014
/// @brief Original complete rmi_msgs/srv/AddMotionInstruction_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddMotionInstruction_Request_Codec_Identity :: "UWVMROS1_3f22c49cb2d32e6a8f3954f3d3cbf0021c87e0363b1f2ded4ac20a97a5b59391"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddMotionInstruction_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddMotionInstruction_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddMotionInstruction_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Rmi_msgsMsgMotionType(&value.field_motion_type, cursor)
    value.field_incremental = wire.boolean(cursor, value.field_incremental)
    fields_Ros2Rmi_msgsMsgRepresentation(&value.field_representation, cursor)
    fields_Ros2Rmi_msgsMsgJoint(&value.field_joint, cursor)
    fields_Ros2Rmi_msgsMsgCartesian(&value.field_cartesian, cursor)
    fields_Ros2Rmi_msgsMsgSpeedType(&value.field_speed_type, cursor)
    value.field_speed_value = u16(wire.number(cursor, u64(value.field_speed_value), 2))
    fields_Ros2Rmi_msgsMsgTermType(&value.field_term_type, cursor)
    value.field_term_value = u8(wire.number(cursor, u64(value.field_term_value), 1))
    fields_Ros2Rmi_msgsMsgRepresentation(&value.field_via_representation, cursor)
    fields_Ros2Rmi_msgsMsgJoint(&value.field_via_joint, cursor)
    fields_Ros2Rmi_msgsMsgCartesian(&value.field_via_cartesian, cursor)
    fields_Ros2Rmi_msgsMsgMotionInstructionOptions(&value.field_options, cursor)
}
/// @brief Encode every complete original rmi_msgs/srv/AddMotionInstruction_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddMotionInstruction_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddMotionInstruction_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4014)], writing = true}
    fields_Ros2Rmi_msgsSrvAddMotionInstruction_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddMotionInstruction_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddMotionInstruction_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddMotionInstruction_Request, code: u32)
{
    if len(bytes) < 238 || len(bytes) > 4014 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddMotionInstruction_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddMotionInstruction_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Rmi_msgsSrvAddMotionInstruction_Response :: struct {
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original rmi_msgs/srv/AddMotionInstruction_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sequence_id: i32,
}
/// @brief Original complete rmi_msgs/srv/AddMotionInstruction_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddMotionInstruction_Response_Minimum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddMotionInstruction_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddMotionInstruction_Response_Maximum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddMotionInstruction_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddMotionInstruction_Response_Codec_Identity :: "UWVMROS1_79fee3e965fda63c3a53ad2178ff48614878acc9f6af74cc27a8c2812b68ac6b"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddMotionInstruction_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddMotionInstruction_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddMotionInstruction_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_sequence_id = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sequence_id), 4))
}
/// @brief Encode every complete original rmi_msgs/srv/AddMotionInstruction_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddMotionInstruction_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddMotionInstruction_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Rmi_msgsSrvAddMotionInstruction_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddMotionInstruction_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddMotionInstruction_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddMotionInstruction_Response, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddMotionInstruction_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddSetPayload_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Rmi_msgsSrvAddSetPayload_Request :: struct {
    /// @brief Original rmi_msgs/srv/AddSetPayload_Request.schedule_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_schedule_number: u8,
}
/// @brief Original complete rmi_msgs/srv/AddSetPayload_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetPayload_Request_Minimum_Wire_Bytes :: 1
/// @brief Original complete rmi_msgs/srv/AddSetPayload_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetPayload_Request_Maximum_Wire_Bytes :: 1
/// @brief Original complete rmi_msgs/srv/AddSetPayload_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetPayload_Request_Codec_Identity :: "UWVMROS1_45da9f81e8c26f49490a4e6eba5c8be0ee67285124540eb1c3e1f2c3e0fd821b"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddSetPayload_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddSetPayload_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddSetPayload_Request, cursor: ^wire.Cursor)
{
    value.field_schedule_number = u8(wire.number(cursor, u64(value.field_schedule_number), 1))
}
/// @brief Encode every complete original rmi_msgs/srv/AddSetPayload_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddSetPayload_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddSetPayload_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Rmi_msgsSrvAddSetPayload_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddSetPayload_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddSetPayload_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddSetPayload_Request, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddSetPayload_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddSetPayload_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Rmi_msgsSrvAddSetPayload_Response :: struct {
    /// @brief Original rmi_msgs/srv/AddSetPayload_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original rmi_msgs/srv/AddSetPayload_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sequence_id: i32,
}
/// @brief Original complete rmi_msgs/srv/AddSetPayload_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetPayload_Response_Minimum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddSetPayload_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetPayload_Response_Maximum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddSetPayload_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetPayload_Response_Codec_Identity :: "UWVMROS1_bfc5bc7b92f292c2980496cb18fbe953ea1b49d45f7950f0125bbbf880bdf72a"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddSetPayload_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddSetPayload_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddSetPayload_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_sequence_id = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sequence_id), 4))
}
/// @brief Encode every complete original rmi_msgs/srv/AddSetPayload_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddSetPayload_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddSetPayload_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Rmi_msgsSrvAddSetPayload_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddSetPayload_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddSetPayload_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddSetPayload_Response, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddSetPayload_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddSetUFrame_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Rmi_msgsSrvAddSetUFrame_Request :: struct {
    /// @brief Original rmi_msgs/srv/AddSetUFrame_Request.frame_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frame_number: u8,
}
/// @brief Original complete rmi_msgs/srv/AddSetUFrame_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetUFrame_Request_Minimum_Wire_Bytes :: 1
/// @brief Original complete rmi_msgs/srv/AddSetUFrame_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetUFrame_Request_Maximum_Wire_Bytes :: 1
/// @brief Original complete rmi_msgs/srv/AddSetUFrame_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetUFrame_Request_Codec_Identity :: "UWVMROS1_64c83dd2be89b4b6dcf3b3c2ea70184971e6a359914ff1a5cd26d4b114d35475"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddSetUFrame_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddSetUFrame_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddSetUFrame_Request, cursor: ^wire.Cursor)
{
    value.field_frame_number = u8(wire.number(cursor, u64(value.field_frame_number), 1))
}
/// @brief Encode every complete original rmi_msgs/srv/AddSetUFrame_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddSetUFrame_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddSetUFrame_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Rmi_msgsSrvAddSetUFrame_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddSetUFrame_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddSetUFrame_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddSetUFrame_Request, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddSetUFrame_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddSetUFrame_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Rmi_msgsSrvAddSetUFrame_Response :: struct {
    /// @brief Original rmi_msgs/srv/AddSetUFrame_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original rmi_msgs/srv/AddSetUFrame_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sequence_id: i32,
}
/// @brief Original complete rmi_msgs/srv/AddSetUFrame_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetUFrame_Response_Minimum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddSetUFrame_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetUFrame_Response_Maximum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddSetUFrame_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetUFrame_Response_Codec_Identity :: "UWVMROS1_e344ef6efacc8d569111d1c6ef4028e1a5bb54af49d3e8f486ae89b83c674647"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddSetUFrame_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddSetUFrame_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddSetUFrame_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_sequence_id = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sequence_id), 4))
}
/// @brief Encode every complete original rmi_msgs/srv/AddSetUFrame_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddSetUFrame_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddSetUFrame_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Rmi_msgsSrvAddSetUFrame_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddSetUFrame_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddSetUFrame_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddSetUFrame_Response, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddSetUFrame_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddSetUTool_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 1..1 bytes.
Ros2Rmi_msgsSrvAddSetUTool_Request :: struct {
    /// @brief Original rmi_msgs/srv/AddSetUTool_Request.tool_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tool_number: u8,
}
/// @brief Original complete rmi_msgs/srv/AddSetUTool_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetUTool_Request_Minimum_Wire_Bytes :: 1
/// @brief Original complete rmi_msgs/srv/AddSetUTool_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetUTool_Request_Maximum_Wire_Bytes :: 1
/// @brief Original complete rmi_msgs/srv/AddSetUTool_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetUTool_Request_Codec_Identity :: "UWVMROS1_d1327022326cd41caed6001449517a41f589e148c38d6db30923922175f05c46"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddSetUTool_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddSetUTool_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddSetUTool_Request, cursor: ^wire.Cursor)
{
    value.field_tool_number = u8(wire.number(cursor, u64(value.field_tool_number), 1))
}
/// @brief Encode every complete original rmi_msgs/srv/AddSetUTool_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddSetUTool_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddSetUTool_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1)], writing = true}
    fields_Ros2Rmi_msgsSrvAddSetUTool_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddSetUTool_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddSetUTool_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddSetUTool_Request, code: u32)
{
    if len(bytes) < 1 || len(bytes) > 1 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddSetUTool_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddSetUTool_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Rmi_msgsSrvAddSetUTool_Response :: struct {
    /// @brief Original rmi_msgs/srv/AddSetUTool_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original rmi_msgs/srv/AddSetUTool_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sequence_id: i32,
}
/// @brief Original complete rmi_msgs/srv/AddSetUTool_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetUTool_Response_Minimum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddSetUTool_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetUTool_Response_Maximum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddSetUTool_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddSetUTool_Response_Codec_Identity :: "UWVMROS1_dd4c36458027b87559200cf5f6aa72a60af2d103f663f2fa9daca47ce8020ff6"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddSetUTool_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddSetUTool_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddSetUTool_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_sequence_id = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sequence_id), 4))
}
/// @brief Encode every complete original rmi_msgs/srv/AddSetUTool_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddSetUTool_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddSetUTool_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Rmi_msgsSrvAddSetUTool_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddSetUTool_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddSetUTool_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddSetUTool_Response, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddSetUTool_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddWaitDIN_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 6..518 bytes.
Ros2Rmi_msgsSrvAddWaitDIN_Request :: struct {
    /// @brief Original rmi_msgs/srv/AddWaitDIN_Request.port_number field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_port_number: u16,
    /// @brief Original rmi_msgs/srv/AddWaitDIN_Request.port_value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_port_value: wire.Text(512, false),
}
/// @brief Original complete rmi_msgs/srv/AddWaitDIN_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddWaitDIN_Request_Minimum_Wire_Bytes :: 6
/// @brief Original complete rmi_msgs/srv/AddWaitDIN_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddWaitDIN_Request_Maximum_Wire_Bytes :: 518
/// @brief Original complete rmi_msgs/srv/AddWaitDIN_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddWaitDIN_Request_Codec_Identity :: "UWVMROS1_c32214f1ff1b0b6980583fc3088f412e856efb5eaa9c336cf798ef8ad85c61ab"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddWaitDIN_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddWaitDIN_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddWaitDIN_Request, cursor: ^wire.Cursor)
{
    value.field_port_number = u16(wire.number(cursor, u64(value.field_port_number), 2))
    wire.text(cursor, &value.field_port_value)
}
/// @brief Encode every complete original rmi_msgs/srv/AddWaitDIN_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddWaitDIN_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddWaitDIN_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 518)], writing = true}
    fields_Ros2Rmi_msgsSrvAddWaitDIN_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddWaitDIN_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddWaitDIN_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddWaitDIN_Request, code: u32)
{
    if len(bytes) < 6 || len(bytes) > 518 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddWaitDIN_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddWaitDIN_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Rmi_msgsSrvAddWaitDIN_Response :: struct {
    /// @brief Original rmi_msgs/srv/AddWaitDIN_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original rmi_msgs/srv/AddWaitDIN_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sequence_id: i32,
}
/// @brief Original complete rmi_msgs/srv/AddWaitDIN_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddWaitDIN_Response_Minimum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddWaitDIN_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddWaitDIN_Response_Maximum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddWaitDIN_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddWaitDIN_Response_Codec_Identity :: "UWVMROS1_7d3933f573619ba49f19df7c11f1d73ef211c17581f660f8c0fbcc152cd519d4"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddWaitDIN_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddWaitDIN_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddWaitDIN_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_sequence_id = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sequence_id), 4))
}
/// @brief Encode every complete original rmi_msgs/srv/AddWaitDIN_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddWaitDIN_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddWaitDIN_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Rmi_msgsSrvAddWaitDIN_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddWaitDIN_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddWaitDIN_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddWaitDIN_Response, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddWaitDIN_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddWaitTime_Request value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Rmi_msgsSrvAddWaitTime_Request :: struct {
    /// @brief Original rmi_msgs/srv/AddWaitTime_Request.time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_time: f32,
}
/// @brief Original complete rmi_msgs/srv/AddWaitTime_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddWaitTime_Request_Minimum_Wire_Bytes :: 4
/// @brief Original complete rmi_msgs/srv/AddWaitTime_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddWaitTime_Request_Maximum_Wire_Bytes :: 4
/// @brief Original complete rmi_msgs/srv/AddWaitTime_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddWaitTime_Request_Codec_Identity :: "UWVMROS1_8487f4b7dcfb044c72f7fb62a31ffe9cdc4321a9ebdaa0550a363e32acbadc46"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddWaitTime_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddWaitTime_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddWaitTime_Request, cursor: ^wire.Cursor)
{
    value.field_time = wire.float32(cursor, value.field_time)
}
/// @brief Encode every complete original rmi_msgs/srv/AddWaitTime_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddWaitTime_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddWaitTime_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Rmi_msgsSrvAddWaitTime_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddWaitTime_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddWaitTime_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddWaitTime_Request, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddWaitTime_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/AddWaitTime_Response value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 8..8 bytes.
Ros2Rmi_msgsSrvAddWaitTime_Response :: struct {
    /// @brief Original rmi_msgs/srv/AddWaitTime_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
    /// @brief Original rmi_msgs/srv/AddWaitTime_Response.sequence_id field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sequence_id: i32,
}
/// @brief Original complete rmi_msgs/srv/AddWaitTime_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddWaitTime_Response_Minimum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddWaitTime_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddWaitTime_Response_Maximum_Wire_Bytes :: 8
/// @brief Original complete rmi_msgs/srv/AddWaitTime_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvAddWaitTime_Response_Codec_Identity :: "UWVMROS1_f9578c08b971f32f91d1c94b8713cafe648e25147394e20c85bb335254fa20c8"
/// @brief Traverse every original field of complete rmi_msgs/srv/AddWaitTime_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvAddWaitTime_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddWaitTime_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
    value.field_sequence_id = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_sequence_id), 4))
}
/// @brief Encode every complete original rmi_msgs/srv/AddWaitTime_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvAddWaitTime_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvAddWaitTime_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 8)], writing = true}
    fields_Ros2Rmi_msgsSrvAddWaitTime_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/AddWaitTime_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvAddWaitTime_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvAddWaitTime_Response, code: u32)
{
    if len(bytes) < 8 || len(bytes) > 8 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvAddWaitTime_Response(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/CallCommand_Request value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 16..1104 bytes.
Ros2Rmi_msgsSrvCallCommand_Request :: struct {
    /// @brief Original rmi_msgs/srv/CallCommand_Request.command field.
    /// @details Original type rmi_msgs/msg/Command. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_command: Ros2Rmi_msgsMsgCommand,
    /// @brief Original rmi_msgs/srv/CallCommand_Request.options field.
    /// @details Original type rmi_msgs/msg/CommandOptions. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_options: Ros2Rmi_msgsMsgCommandOptions,
}
/// @brief Original complete rmi_msgs/srv/CallCommand_Request minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvCallCommand_Request_Minimum_Wire_Bytes :: 16
/// @brief Original complete rmi_msgs/srv/CallCommand_Request maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvCallCommand_Request_Maximum_Wire_Bytes :: 1104
/// @brief Original complete rmi_msgs/srv/CallCommand_Request codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvCallCommand_Request_Codec_Identity :: "UWVMROS1_d1f890a2beec0ca9294ff4f641d1738855d576a917ed05eb34517886c73f381c"
/// @brief Traverse every original field of complete rmi_msgs/srv/CallCommand_Request.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvCallCommand_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvCallCommand_Request, cursor: ^wire.Cursor)
{
    fields_Ros2Rmi_msgsMsgCommand(&value.field_command, cursor)
    fields_Ros2Rmi_msgsMsgCommandOptions(&value.field_options, cursor)
}
/// @brief Encode every complete original rmi_msgs/srv/CallCommand_Request field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvCallCommand_Request :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvCallCommand_Request, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 1104)], writing = true}
    fields_Ros2Rmi_msgsSrvCallCommand_Request(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/CallCommand_Request.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvCallCommand_Request :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvCallCommand_Request, code: u32)
{
    if len(bytes) < 16 || len(bytes) > 1104 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvCallCommand_Request(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original rmi_msgs/srv/CallCommand_Response value.
/// @details Retain all 1 original fields and 0 constants. Wire extent 4..4 bytes.
Ros2Rmi_msgsSrvCallCommand_Response :: struct {
    /// @brief Original rmi_msgs/srv/CallCommand_Response.result field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_result: i32,
}
/// @brief Original complete rmi_msgs/srv/CallCommand_Response minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvCallCommand_Response_Minimum_Wire_Bytes :: 4
/// @brief Original complete rmi_msgs/srv/CallCommand_Response maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvCallCommand_Response_Maximum_Wire_Bytes :: 4
/// @brief Original complete rmi_msgs/srv/CallCommand_Response codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Rmi_msgsSrvCallCommand_Response_Codec_Identity :: "UWVMROS1_64d92e6fadc651073469318ad15d2e98ec3d059c629838cefc5820b17ab6f1bc"
/// @brief Traverse every original field of complete rmi_msgs/srv/CallCommand_Response.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Rmi_msgsSrvCallCommand_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvCallCommand_Response, cursor: ^wire.Cursor)
{
    value.field_result = transmute(i32)u32(wire.number(cursor, u64(transmute(u32)value.field_result), 4))
}
/// @brief Encode every complete original rmi_msgs/srv/CallCommand_Response field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Rmi_msgsSrvCallCommand_Response :: proc "contextless"(
    value: ^Ros2Rmi_msgsSrvCallCommand_Response, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 4)], writing = true}
    fields_Ros2Rmi_msgsSrvCallCommand_Response(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original rmi_msgs/srv/CallCommand_Response.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Rmi_msgsSrvCallCommand_Response :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Rmi_msgsSrvCallCommand_Response, code: u32)
{
    if len(bytes) < 4 || len(bytes) > 4 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Rmi_msgsSrvCallCommand_Response(&value, &cursor)
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

// @brief Construct all original fanuc_msgs/msg/IOType defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgIOType :: proc "contextless"() -> (Ros2Fanuc_msgsMsgIOType, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsMsgIOType(bytes)
}

// @brief Construct all original fanuc_msgs/msg/AnalogIO defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgAnalogIO :: proc "contextless"() -> (Ros2Fanuc_msgsMsgAnalogIO, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsMsgAnalogIO(bytes)
}

// @brief Construct all original fanuc_msgs/msg/AnalogIOCmd defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgAnalogIOCmd :: proc "contextless"() -> (Ros2Fanuc_msgsMsgAnalogIOCmd, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsMsgAnalogIOCmd(bytes)
}

// @brief Construct all original fanuc_msgs/msg/AnalogIOState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgAnalogIOState :: proc "contextless"() -> (Ros2Fanuc_msgsMsgAnalogIOState, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsMsgAnalogIOState(bytes)
}

// @brief Construct all original fanuc_msgs/msg/BoolIO defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgBoolIO :: proc "contextless"() -> (Ros2Fanuc_msgsMsgBoolIO, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsMsgBoolIO(bytes)
}

// @brief Construct all original fanuc_msgs/msg/CollaborativeSpeedScaling defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgCollaborativeSpeedScaling :: proc "contextless"() -> (Ros2Fanuc_msgsMsgCollaborativeSpeedScaling, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsMsgCollaborativeSpeedScaling(bytes)
}

// @brief Construct all original fanuc_msgs/msg/ConnectionStatus defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgConnectionStatus :: proc "contextless"() -> (Ros2Fanuc_msgsMsgConnectionStatus, u32) {
    bytes := []u8{0}
    return decode_Ros2Fanuc_msgsMsgConnectionStatus(bytes)
}

// @brief Construct all original fanuc_msgs/msg/ForceSensor defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgForceSensor :: proc "contextless"() -> (Ros2Fanuc_msgsMsgForceSensor, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsMsgForceSensor(bytes)
}

// @brief Construct all original fanuc_msgs/msg/Frame defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgFrame :: proc "contextless"() -> (Ros2Fanuc_msgsMsgFrame, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsMsgFrame(bytes)
}

// @brief Construct all original fanuc_msgs/msg/IOCmd defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgIOCmd :: proc "contextless"() -> (Ros2Fanuc_msgsMsgIOCmd, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsMsgIOCmd(bytes)
}

// @brief Construct all original fanuc_msgs/msg/IOState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgIOState :: proc "contextless"() -> (Ros2Fanuc_msgsMsgIOState, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsMsgIOState(bytes)
}

// @brief Construct all original fanuc_msgs/msg/NumReg defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgNumReg :: proc "contextless"() -> (Ros2Fanuc_msgsMsgNumReg, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsMsgNumReg(bytes)
}

// @brief Construct all original fanuc_msgs/msg/NumRegCmd defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgNumRegCmd :: proc "contextless"() -> (Ros2Fanuc_msgsMsgNumRegCmd, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsMsgNumRegCmd(bytes)
}

// @brief Construct all original fanuc_msgs/msg/NumRegState defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgNumRegState :: proc "contextless"() -> (Ros2Fanuc_msgsMsgNumRegState, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsMsgNumRegState(bytes)
}

// @brief Construct all original fanuc_msgs/msg/RMIStatus defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgRMIStatus :: proc "contextless"() -> (Ros2Fanuc_msgsMsgRMIStatus, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsMsgRMIStatus(bytes)
}

// @brief Construct all original fanuc_msgs/msg/RobotStatus defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgRobotStatus :: proc "contextless"() -> (Ros2Fanuc_msgsMsgRobotStatus, u32) {
    bytes := []u8{0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsMsgRobotStatus(bytes)
}

// @brief Construct all original fanuc_msgs/msg/RobotStatusExt defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsMsgRobotStatusExt :: proc "contextless"() -> (Ros2Fanuc_msgsMsgRobotStatusExt, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0,
    }
    return decode_Ros2Fanuc_msgsMsgRobotStatusExt(bytes)
}

// @brief Construct all original fanuc_msgs/srv/CfgForceSensor_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvCfgForceSensor_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvCfgForceSensor_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvCfgForceSensor_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/CfgForceSensor_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvCfgForceSensor_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvCfgForceSensor_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvCfgForceSensor_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetAnalogIO_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetAnalogIO_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetAnalogIO_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvGetAnalogIO_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetAnalogIO_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetAnalogIO_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetAnalogIO_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvGetAnalogIO_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetBoolIO_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetBoolIO_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetBoolIO_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvGetBoolIO_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetBoolIO_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetBoolIO_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetBoolIO_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvGetBoolIO_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetCartesianPosition_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetCartesianPosition_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetCartesianPosition_Request, u32) {
    bytes := []u8{0}
    return decode_Ros2Fanuc_msgsSrvGetCartesianPosition_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetCartesianPosition_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetCartesianPosition_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetCartesianPosition_Response, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsSrvGetCartesianPosition_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetGroupIO_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetGroupIO_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetGroupIO_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvGetGroupIO_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetGroupIO_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetGroupIO_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetGroupIO_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvGetGroupIO_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetNumReg_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetNumReg_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetNumReg_Request, u32) {
    bytes := []u8{0, 0}
    return decode_Ros2Fanuc_msgsSrvGetNumReg_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetNumReg_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetNumReg_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetNumReg_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvGetNumReg_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetPayloadComp_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetPayloadComp_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetPayloadComp_Request, u32) {
    bytes := []u8{0, 0}
    return decode_Ros2Fanuc_msgsSrvGetPayloadComp_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetPayloadComp_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetPayloadComp_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetPayloadComp_Response, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsSrvGetPayloadComp_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetPayloadID_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetPayloadID_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetPayloadID_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Fanuc_msgsSrvGetPayloadID_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetPayloadID_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetPayloadID_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetPayloadID_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvGetPayloadID_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetPayloadValue_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetPayloadValue_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetPayloadValue_Request, u32) {
    bytes := []u8{0, 0}
    return decode_Ros2Fanuc_msgsSrvGetPayloadValue_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetPayloadValue_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetPayloadValue_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetPayloadValue_Response, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsSrvGetPayloadValue_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetPosReg_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetPosReg_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetPosReg_Request, u32) {
    bytes := []u8{0, 0}
    return decode_Ros2Fanuc_msgsSrvGetPosReg_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetPosReg_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetPosReg_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetPosReg_Response, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsSrvGetPosReg_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetTCPSpeed_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetTCPSpeed_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetTCPSpeed_Request, u32) {
    bytes := []u8{0}
    return decode_Ros2Fanuc_msgsSrvGetTCPSpeed_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetTCPSpeed_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetTCPSpeed_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetTCPSpeed_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvGetTCPSpeed_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetUFrameData_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetUFrameData_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetUFrameData_Request, u32) {
    bytes := []u8{0, 0}
    return decode_Ros2Fanuc_msgsSrvGetUFrameData_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetUFrameData_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetUFrameData_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetUFrameData_Response, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsSrvGetUFrameData_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetUFrameUTool_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetUFrameUTool_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetUFrameUTool_Request, u32) {
    bytes := []u8{0}
    return decode_Ros2Fanuc_msgsSrvGetUFrameUTool_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetUFrameUTool_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetUFrameUTool_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetUFrameUTool_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvGetUFrameUTool_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetUToolData_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetUToolData_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetUToolData_Request, u32) {
    bytes := []u8{0, 0}
    return decode_Ros2Fanuc_msgsSrvGetUToolData_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/GetUToolData_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvGetUToolData_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvGetUToolData_Response, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsSrvGetUToolData_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/ReadError_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvReadError_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvReadError_Request, u32) {
    bytes := []u8{1}
    return decode_Ros2Fanuc_msgsSrvReadError_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/ReadError_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvReadError_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvReadError_Response, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsSrvReadError_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/Reset_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvReset_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvReset_Request, u32) {
    bytes := []u8{}
    return decode_Ros2Fanuc_msgsSrvReset_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/Reset_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvReset_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvReset_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvReset_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetAnalogIO_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetAnalogIO_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetAnalogIO_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetAnalogIO_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetAnalogIO_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetAnalogIO_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetAnalogIO_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetAnalogIO_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetBoolIO_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetBoolIO_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetBoolIO_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetBoolIO_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetBoolIO_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetBoolIO_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetBoolIO_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetBoolIO_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetGenOverride_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetGenOverride_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetGenOverride_Request, u32) {
    bytes := []u8{0}
    return decode_Ros2Fanuc_msgsSrvSetGenOverride_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetGenOverride_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetGenOverride_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetGenOverride_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetGenOverride_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetGroupIO_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetGroupIO_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetGroupIO_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetGroupIO_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetGroupIO_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetGroupIO_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetGroupIO_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetGroupIO_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetNumReg_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetNumReg_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetNumReg_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetNumReg_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetNumReg_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetNumReg_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetNumReg_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetNumReg_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetPayloadComp_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetPayloadComp_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetPayloadComp_Request, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsSrvSetPayloadComp_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetPayloadComp_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetPayloadComp_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetPayloadComp_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetPayloadComp_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetPayloadID_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetPayloadID_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetPayloadID_Request, u32) {
    bytes := []u8{0, 0}
    return decode_Ros2Fanuc_msgsSrvSetPayloadID_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetPayloadID_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetPayloadID_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetPayloadID_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetPayloadID_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetPayloadValue_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetPayloadValue_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetPayloadValue_Request, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsSrvSetPayloadValue_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetPayloadValue_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetPayloadValue_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetPayloadValue_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetPayloadValue_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetPosReg_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetPosReg_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetPosReg_Request, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsSrvSetPosReg_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetPosReg_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetPosReg_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetPosReg_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetPosReg_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetUFrameData_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetUFrameData_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetUFrameData_Request, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsSrvSetUFrameData_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetUFrameData_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetUFrameData_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetUFrameData_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetUFrameData_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetUFrameUTool_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetUFrameUTool_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetUFrameUTool_Request, u32) {
    bytes := []u8{0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetUFrameUTool_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetUFrameUTool_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetUFrameUTool_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetUFrameUTool_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetUFrameUTool_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetUToolData_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetUToolData_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetUToolData_Request, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Fanuc_msgsSrvSetUToolData_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SetUToolData_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSetUToolData_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSetUToolData_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSetUToolData_Response(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SwitchControlState_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSwitchControlState_Request :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSwitchControlState_Request, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSwitchControlState_Request(bytes)
}

// @brief Construct all original fanuc_msgs/srv/SwitchControlState_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Fanuc_msgsSrvSwitchControlState_Response :: proc "contextless"() -> (Ros2Fanuc_msgsSrvSwitchControlState_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Fanuc_msgsSrvSwitchControlState_Response(bytes)
}

// @brief Construct all original rmi_msgs/msg/CallParam defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsMsgCallParam :: proc "contextless"() -> (Ros2Rmi_msgsMsgCallParam, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Rmi_msgsMsgCallParam(bytes)
}

// @brief Construct all original rmi_msgs/msg/Cartesian defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsMsgCartesian :: proc "contextless"() -> (Ros2Rmi_msgsMsgCartesian, u32) {
    bytes := []u8{
        1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    }
    return decode_Ros2Rmi_msgsMsgCartesian(bytes)
}

// @brief Construct all original rmi_msgs/msg/Command defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsMsgCommand :: proc "contextless"() -> (Ros2Rmi_msgsMsgCommand, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Rmi_msgsMsgCommand(bytes)
}

// @brief Construct all original rmi_msgs/msg/CommandOptions defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsMsgCommandOptions :: proc "contextless"() -> (Ros2Rmi_msgsMsgCommandOptions, u32) {
    bytes := []u8{
        0, 1, 0, 2, 0, 0, 0, 79, 78, 0, 6, 0, 0, 0, 90, 69,
        82, 79, 68, 78,
    }
    return decode_Ros2Rmi_msgsMsgCommandOptions(bytes)
}

// @brief Construct all original rmi_msgs/msg/Joint defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsMsgJoint :: proc "contextless"() -> (Ros2Rmi_msgsMsgJoint, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0,
    }
    return decode_Ros2Rmi_msgsMsgJoint(bytes)
}

// @brief Construct all original rmi_msgs/msg/MotionInstructionOptions defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsMsgMotionInstructionOptions :: proc "contextless"() -> (Ros2Rmi_msgsMsgMotionInstructionOptions, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 79, 78, 0,
        2, 0, 0, 0, 79, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 2, 0, 0, 0, 79, 78,
    }
    return decode_Ros2Rmi_msgsMsgMotionInstructionOptions(bytes)
}

// @brief Construct all original rmi_msgs/msg/MotionType defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsMsgMotionType :: proc "contextless"() -> (Ros2Rmi_msgsMsgMotionType, u32) {
    bytes := []u8{1, 0, 0, 0, 74}
    return decode_Ros2Rmi_msgsMsgMotionType(bytes)
}

// @brief Construct all original rmi_msgs/msg/Representation defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsMsgRepresentation :: proc "contextless"() -> (Ros2Rmi_msgsMsgRepresentation, u32) {
    bytes := []u8{5, 0, 0, 0, 74, 79, 73, 78, 84}
    return decode_Ros2Rmi_msgsMsgRepresentation(bytes)
}

// @brief Construct all original rmi_msgs/msg/SpeedType defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsMsgSpeedType :: proc "contextless"() -> (Ros2Rmi_msgsMsgSpeedType, u32) {
    bytes := []u8{
        7, 0, 0, 0, 80, 101, 114, 99, 101, 110, 116,
    }
    return decode_Ros2Rmi_msgsMsgSpeedType(bytes)
}

// @brief Construct all original rmi_msgs/msg/TermType defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsMsgTermType :: proc "contextless"() -> (Ros2Rmi_msgsMsgTermType, u32) {
    bytes := []u8{4, 0, 0, 0, 70, 73, 78, 69}
    return decode_Ros2Rmi_msgsMsgTermType(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddCall_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddCall_Request :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddCall_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Rmi_msgsSrvAddCall_Request(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddCall_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddCall_Response :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddCall_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Rmi_msgsSrvAddCall_Response(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddMotionInstruction_Request defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddMotionInstruction_Request :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddMotionInstruction_Request, u32) {
    bytes := []u8{
        1, 0, 0, 0, 74, 0, 5, 0, 0, 0, 74, 79, 73, 78, 84, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        7, 0, 0, 0, 80, 101, 114, 99, 101, 110, 116, 0, 0, 4, 0, 0,
        0, 70, 73, 78, 69, 0, 5, 0, 0, 0, 74, 79, 73, 78, 84, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 79, 78, 0,
        2, 0, 0, 0, 79, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 2, 0, 0, 0, 79, 78,
    }
    return decode_Ros2Rmi_msgsSrvAddMotionInstruction_Request(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddMotionInstruction_Response defaults with complete typed
// decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddMotionInstruction_Response :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddMotionInstruction_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Rmi_msgsSrvAddMotionInstruction_Response(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddSetPayload_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddSetPayload_Request :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddSetPayload_Request, u32) {
    bytes := []u8{0}
    return decode_Ros2Rmi_msgsSrvAddSetPayload_Request(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddSetPayload_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddSetPayload_Response :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddSetPayload_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Rmi_msgsSrvAddSetPayload_Response(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddSetUFrame_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddSetUFrame_Request :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddSetUFrame_Request, u32) {
    bytes := []u8{0}
    return decode_Ros2Rmi_msgsSrvAddSetUFrame_Request(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddSetUFrame_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddSetUFrame_Response :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddSetUFrame_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Rmi_msgsSrvAddSetUFrame_Response(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddSetUTool_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddSetUTool_Request :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddSetUTool_Request, u32) {
    bytes := []u8{0}
    return decode_Ros2Rmi_msgsSrvAddSetUTool_Request(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddSetUTool_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddSetUTool_Response :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddSetUTool_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Rmi_msgsSrvAddSetUTool_Response(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddWaitDIN_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddWaitDIN_Request :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddWaitDIN_Request, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0}
    return decode_Ros2Rmi_msgsSrvAddWaitDIN_Request(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddWaitDIN_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddWaitDIN_Response :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddWaitDIN_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Rmi_msgsSrvAddWaitDIN_Response(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddWaitTime_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddWaitTime_Request :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddWaitTime_Request, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Rmi_msgsSrvAddWaitTime_Request(bytes)
}

// @brief Construct all original rmi_msgs/srv/AddWaitTime_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvAddWaitTime_Response :: proc "contextless"() -> (Ros2Rmi_msgsSrvAddWaitTime_Response, u32) {
    bytes := []u8{0, 0, 0, 0, 0, 0, 0, 0}
    return decode_Ros2Rmi_msgsSrvAddWaitTime_Response(bytes)
}

// @brief Construct all original rmi_msgs/srv/CallCommand_Request defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvCallCommand_Request :: proc "contextless"() -> (Ros2Rmi_msgsSrvCallCommand_Request, u32) {
    bytes := []u8{
        0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 79, 78, 0, 6, 0,
        0, 0, 90, 69, 82, 79, 68, 78,
    }
    return decode_Ros2Rmi_msgsSrvCallCommand_Request(bytes)
}

// @brief Construct all original rmi_msgs/srv/CallCommand_Response defaults with complete typed decoding.
// @return Owned complete value and the original decoder status; no native owner.
init_Ros2Rmi_msgsSrvCallCommand_Response :: proc "contextless"() -> (Ros2Rmi_msgsSrvCallCommand_Response, u32) {
    bytes := []u8{0, 0, 0, 0}
    return decode_Ros2Rmi_msgsSrvCallCommand_Response(bytes)
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
