// @file records.odin
// @brief Complete owned original agilex ROS 2 records and codecs.
// @details No generated record owns a native ROS object or grants a capability.
package records
import wire "native:odin/wire"

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

/// @brief Complete original geometry_msgs/msg/Point value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 24..24 bytes.
Ros2Geometry_msgsMsgPoint :: struct {
    /// @brief Original geometry_msgs/msg/Point.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64,
    /// @brief Original geometry_msgs/msg/Point.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64,
    /// @brief Original geometry_msgs/msg/Point.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Geometry_msgsMsgPoint :: proc "contextless"() -> Ros2Geometry_msgsMsgPoint {
    result: Ros2Geometry_msgsMsgPoint
    return result
}
/// @brief Original complete geometry_msgs/msg/Point minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgPoint_Minimum_Wire_Bytes :: 24
/// @brief Original complete geometry_msgs/msg/Point maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgPoint_Maximum_Wire_Bytes :: 24
/// @brief Original complete geometry_msgs/msg/Point codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgPoint_Codec_Identity :: "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
/// @brief Traverse every original field of complete geometry_msgs/msg/Point.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Geometry_msgsMsgPoint :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgPoint, cursor: ^wire.Cursor)
{
    value.field_x = wire.float64(cursor, value.field_x)
    value.field_y = wire.float64(cursor, value.field_y)
    value.field_z = wire.float64(cursor, value.field_z)
}
/// @brief Encode every complete original geometry_msgs/msg/Point field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Geometry_msgsMsgPoint :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgPoint, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 24)], writing = true}
    fields_Ros2Geometry_msgsMsgPoint(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/msg/Point.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Geometry_msgsMsgPoint :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Geometry_msgsMsgPoint, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 24 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Geometry_msgsMsgPoint(&value, &cursor)
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
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Geometry_msgsMsgQuaternion :: proc "contextless"() -> Ros2Geometry_msgsMsgQuaternion {
    result: Ros2Geometry_msgsMsgQuaternion
    result.field_x = transmute(f64)u64(0x0)
    result.field_y = transmute(f64)u64(0x0)
    result.field_z = transmute(f64)u64(0x0)
    result.field_w = transmute(f64)u64(0x3ff0000000000000)
    return result
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

/// @brief Complete original geometry_msgs/msg/Pose value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 56..56 bytes.
Ros2Geometry_msgsMsgPose :: struct {
    /// @brief Original geometry_msgs/msg/Pose.position field.
    /// @details Original type geometry_msgs/msg/Point. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_position: Ros2Geometry_msgsMsgPoint,
    /// @brief Original geometry_msgs/msg/Pose.orientation field.
    /// @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_orientation: Ros2Geometry_msgsMsgQuaternion,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Geometry_msgsMsgPose :: proc "contextless"() -> Ros2Geometry_msgsMsgPose {
    result: Ros2Geometry_msgsMsgPose
    result.field_position = init_Ros2Geometry_msgsMsgPoint()
    result.field_orientation = init_Ros2Geometry_msgsMsgQuaternion()
    return result
}
/// @brief Original complete geometry_msgs/msg/Pose minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgPose_Minimum_Wire_Bytes :: 56
/// @brief Original complete geometry_msgs/msg/Pose maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgPose_Maximum_Wire_Bytes :: 56
/// @brief Original complete geometry_msgs/msg/Pose codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgPose_Codec_Identity :: "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
/// @brief Traverse every original field of complete geometry_msgs/msg/Pose.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Geometry_msgsMsgPose :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgPose, cursor: ^wire.Cursor)
{
    fields_Ros2Geometry_msgsMsgPoint(&value.field_position, cursor)
    fields_Ros2Geometry_msgsMsgQuaternion(&value.field_orientation, cursor)
}
/// @brief Encode every complete original geometry_msgs/msg/Pose field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Geometry_msgsMsgPose :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgPose, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 56)], writing = true}
    fields_Ros2Geometry_msgsMsgPose(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/msg/Pose.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Geometry_msgsMsgPose :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Geometry_msgsMsgPose, code: u32)
{
    if len(bytes) < 56 || len(bytes) > 56 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Geometry_msgsMsgPose(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original geometry_msgs/msg/PoseWithCovariance value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 344..344 bytes.
Ros2Geometry_msgsMsgPoseWithCovariance :: struct {
    /// @brief Original geometry_msgs/msg/PoseWithCovariance.pose field.
    /// @details Original type geometry_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_pose: Ros2Geometry_msgsMsgPose,
    /// @brief Original geometry_msgs/msg/PoseWithCovariance.covariance field.
    /// @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_covariance: [36]f64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Geometry_msgsMsgPoseWithCovariance :: proc "contextless"() -> Ros2Geometry_msgsMsgPoseWithCovariance {
    result: Ros2Geometry_msgsMsgPoseWithCovariance
    result.field_pose = init_Ros2Geometry_msgsMsgPose()
    return result
}
/// @brief Original complete geometry_msgs/msg/PoseWithCovariance minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgPoseWithCovariance_Minimum_Wire_Bytes :: 344
/// @brief Original complete geometry_msgs/msg/PoseWithCovariance maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgPoseWithCovariance_Maximum_Wire_Bytes :: 344
/// @brief Original complete geometry_msgs/msg/PoseWithCovariance codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgPoseWithCovariance_Codec_Identity :: "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"
/// @brief Traverse every original field of complete geometry_msgs/msg/PoseWithCovariance.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Geometry_msgsMsgPoseWithCovariance :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgPoseWithCovariance, cursor: ^wire.Cursor)
{
    fields_Ros2Geometry_msgsMsgPose(&value.field_pose, cursor)
    for index in 0..<36 {
        value.field_covariance[index] = wire.float64(cursor, value.field_covariance[index])
    }
}
/// @brief Encode every complete original geometry_msgs/msg/PoseWithCovariance field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Geometry_msgsMsgPoseWithCovariance :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgPoseWithCovariance, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 344)], writing = true}
    fields_Ros2Geometry_msgsMsgPoseWithCovariance(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/msg/PoseWithCovariance.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Geometry_msgsMsgPoseWithCovariance :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Geometry_msgsMsgPoseWithCovariance, code: u32)
{
    if len(bytes) < 344 || len(bytes) > 344 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Geometry_msgsMsgPoseWithCovariance(&value, &cursor)
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
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Geometry_msgsMsgVector3 :: proc "contextless"() -> Ros2Geometry_msgsMsgVector3 {
    result: Ros2Geometry_msgsMsgVector3
    return result
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
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Geometry_msgsMsgTwist :: proc "contextless"() -> Ros2Geometry_msgsMsgTwist {
    result: Ros2Geometry_msgsMsgTwist
    result.field_linear = init_Ros2Geometry_msgsMsgVector3()
    result.field_angular = init_Ros2Geometry_msgsMsgVector3()
    return result
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

/// @brief Complete original geometry_msgs/msg/TwistWithCovariance value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 336..336 bytes.
Ros2Geometry_msgsMsgTwistWithCovariance :: struct {
    /// @brief Original geometry_msgs/msg/TwistWithCovariance.twist field.
    /// @details Original type geometry_msgs/msg/Twist. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_twist: Ros2Geometry_msgsMsgTwist,
    /// @brief Original geometry_msgs/msg/TwistWithCovariance.covariance field.
    /// @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_covariance: [36]f64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Geometry_msgsMsgTwistWithCovariance :: proc "contextless"() -> Ros2Geometry_msgsMsgTwistWithCovariance {
    result: Ros2Geometry_msgsMsgTwistWithCovariance
    result.field_twist = init_Ros2Geometry_msgsMsgTwist()
    return result
}
/// @brief Original complete geometry_msgs/msg/TwistWithCovariance minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgTwistWithCovariance_Minimum_Wire_Bytes :: 336
/// @brief Original complete geometry_msgs/msg/TwistWithCovariance maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgTwistWithCovariance_Maximum_Wire_Bytes :: 336
/// @brief Original complete geometry_msgs/msg/TwistWithCovariance codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Geometry_msgsMsgTwistWithCovariance_Codec_Identity :: "UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404"
/// @brief Traverse every original field of complete geometry_msgs/msg/TwistWithCovariance.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Geometry_msgsMsgTwistWithCovariance :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgTwistWithCovariance, cursor: ^wire.Cursor)
{
    fields_Ros2Geometry_msgsMsgTwist(&value.field_twist, cursor)
    for index in 0..<36 {
        value.field_covariance[index] = wire.float64(cursor, value.field_covariance[index])
    }
}
/// @brief Encode every complete original geometry_msgs/msg/TwistWithCovariance field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Geometry_msgsMsgTwistWithCovariance :: proc "contextless"(
    value: ^Ros2Geometry_msgsMsgTwistWithCovariance, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 336)], writing = true}
    fields_Ros2Geometry_msgsMsgTwistWithCovariance(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/msg/TwistWithCovariance.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Geometry_msgsMsgTwistWithCovariance :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Geometry_msgsMsgTwistWithCovariance, code: u32)
{
    if len(bytes) < 336 || len(bytes) > 336 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Geometry_msgsMsgTwistWithCovariance(&value, &cursor)
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

/// @brief Complete original nav_msgs/msg/Odometry value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 696..952 bytes.
Ros2Nav_msgsMsgOdometry :: struct {
    /// @brief Original nav_msgs/msg/Odometry.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original nav_msgs/msg/Odometry.child_frame_id field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_child_frame_id: wire.Text(128, false),
    /// @brief Original nav_msgs/msg/Odometry.pose field.
    /// @details Original type geometry_msgs/msg/PoseWithCovariance. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_pose: Ros2Geometry_msgsMsgPoseWithCovariance,
    /// @brief Original nav_msgs/msg/Odometry.twist field.
    /// @details Original type geometry_msgs/msg/TwistWithCovariance. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_twist: Ros2Geometry_msgsMsgTwistWithCovariance,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Nav_msgsMsgOdometry :: proc "contextless"() -> Ros2Nav_msgsMsgOdometry {
    result: Ros2Nav_msgsMsgOdometry
    result.field_header = init_Ros2Std_msgsMsgHeader()
    result.field_pose = init_Ros2Geometry_msgsMsgPoseWithCovariance()
    result.field_twist = init_Ros2Geometry_msgsMsgTwistWithCovariance()
    return result
}
/// @brief Original complete nav_msgs/msg/Odometry minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Nav_msgsMsgOdometry_Minimum_Wire_Bytes :: 696
/// @brief Original complete nav_msgs/msg/Odometry maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Nav_msgsMsgOdometry_Maximum_Wire_Bytes :: 952
/// @brief Original complete nav_msgs/msg/Odometry codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Nav_msgsMsgOdometry_Codec_Identity :: "UWVMROS1_fdfdd74c211c22bfd167c3e33a098fe21198cb095bbd0313fc765f38b1f334ec"
/// @brief Traverse every original field of complete nav_msgs/msg/Odometry.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Nav_msgsMsgOdometry :: proc "contextless"(
    value: ^Ros2Nav_msgsMsgOdometry, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    wire.text(cursor, &value.field_child_frame_id)
    fields_Ros2Geometry_msgsMsgPoseWithCovariance(&value.field_pose, cursor)
    fields_Ros2Geometry_msgsMsgTwistWithCovariance(&value.field_twist, cursor)
}
/// @brief Encode every complete original nav_msgs/msg/Odometry field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Nav_msgsMsgOdometry :: proc "contextless"(
    value: ^Ros2Nav_msgsMsgOdometry, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 952)], writing = true}
    fields_Ros2Nav_msgsMsgOdometry(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original nav_msgs/msg/Odometry.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Nav_msgsMsgOdometry :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Nav_msgsMsgOdometry, code: u32)
{
    if len(bytes) < 696 || len(bytes) > 952 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Nav_msgsMsgOdometry(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original scout_msgs/msg/ScoutActuatorState value.
/// @details Retain all 5 original fields and 0 constants. Wire extent 19..19 bytes.
Ros2Scout_msgsMsgScoutActuatorState :: struct {
    /// @brief Original scout_msgs/msg/ScoutActuatorState.rpm field.
    /// @details Original type int16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rpm: i16,
    /// @brief Original scout_msgs/msg/ScoutActuatorState.current field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: f64,
    /// @brief Original scout_msgs/msg/ScoutActuatorState.driver_voltage field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_driver_voltage: f32,
    /// @brief Original scout_msgs/msg/ScoutActuatorState.driver_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_driver_temperature: f32,
    /// @brief Original scout_msgs/msg/ScoutActuatorState.motor_temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motor_temperature: i8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Scout_msgsMsgScoutActuatorState :: proc "contextless"() -> Ros2Scout_msgsMsgScoutActuatorState {
    result: Ros2Scout_msgsMsgScoutActuatorState
    return result
}
/// @brief Original complete scout_msgs/msg/ScoutActuatorState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutActuatorState_Minimum_Wire_Bytes :: 19
/// @brief Original complete scout_msgs/msg/ScoutActuatorState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutActuatorState_Maximum_Wire_Bytes :: 19
/// @brief Original complete scout_msgs/msg/ScoutActuatorState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutActuatorState_Codec_Identity :: "UWVMROS1_e7955c07aedaf42f8d97f873d60ae5c0dfc562faa1d64848f11b333f797350c6"
/// @brief Traverse every original field of complete scout_msgs/msg/ScoutActuatorState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Scout_msgsMsgScoutActuatorState :: proc "contextless"(
    value: ^Ros2Scout_msgsMsgScoutActuatorState, cursor: ^wire.Cursor)
{
    value.field_rpm = transmute(i16)u16(wire.number(cursor, u64(transmute(u16)value.field_rpm), 2))
    value.field_current = wire.float64(cursor, value.field_current)
    value.field_driver_voltage = wire.float32(cursor, value.field_driver_voltage)
    value.field_driver_temperature = wire.float32(cursor, value.field_driver_temperature)
    value.field_motor_temperature = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_motor_temperature), 1))
}
/// @brief Encode every complete original scout_msgs/msg/ScoutActuatorState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Scout_msgsMsgScoutActuatorState :: proc "contextless"(
    value: ^Ros2Scout_msgsMsgScoutActuatorState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 19)], writing = true}
    fields_Ros2Scout_msgsMsgScoutActuatorState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original scout_msgs/msg/ScoutActuatorState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Scout_msgsMsgScoutActuatorState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Scout_msgsMsgScoutActuatorState, code: u32)
{
    if len(bytes) < 19 || len(bytes) > 19 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Scout_msgsMsgScoutActuatorState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original scout_msgs/msg/ScoutLightCmd value.
/// @details Retain all 5 original fields and 4 constants. Wire extent 5..5 bytes.
Ros2Scout_msgsMsgScoutLightCmd :: struct {
    /// @brief Original scout_msgs/msg/ScoutLightCmd.cmd_ctrl_allowed field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cmd_ctrl_allowed: bool,
    /// @brief Original scout_msgs/msg/ScoutLightCmd.front_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_front_mode: u8,
    /// @brief Original scout_msgs/msg/ScoutLightCmd.front_custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_front_custom_value: u8,
    /// @brief Original scout_msgs/msg/ScoutLightCmd.rear_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rear_mode: u8,
    /// @brief Original scout_msgs/msg/ScoutLightCmd.rear_custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rear_custom_value: u8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Scout_msgsMsgScoutLightCmd :: proc "contextless"() -> Ros2Scout_msgsMsgScoutLightCmd {
    result: Ros2Scout_msgsMsgScoutLightCmd
    return result
}
/// @brief Original complete scout_msgs/msg/ScoutLightCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutLightCmd_Minimum_Wire_Bytes :: 5
/// @brief Original complete scout_msgs/msg/ScoutLightCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutLightCmd_Maximum_Wire_Bytes :: 5
/// @brief Original complete scout_msgs/msg/ScoutLightCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutLightCmd_Codec_Identity :: "UWVMROS1_a82206813682fbf1a6b41009c12191ad9ce47c98444d8ea9792e7b212ee602d7"
/// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CONST_OFF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Scout_msgsMsgScoutLightCmd_LIGHT_CONST_OFF :: 0
/// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CONST_ON constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Scout_msgsMsgScoutLightCmd_LIGHT_CONST_ON :: 1
/// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_BREATH constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Scout_msgsMsgScoutLightCmd_LIGHT_BREATH :: 2
/// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CUSTOM constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Scout_msgsMsgScoutLightCmd_LIGHT_CUSTOM :: 3
/// @brief Traverse every original field of complete scout_msgs/msg/ScoutLightCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Scout_msgsMsgScoutLightCmd :: proc "contextless"(
    value: ^Ros2Scout_msgsMsgScoutLightCmd, cursor: ^wire.Cursor)
{
    value.field_cmd_ctrl_allowed = wire.boolean(cursor, value.field_cmd_ctrl_allowed)
    value.field_front_mode = u8(wire.number(cursor, u64(value.field_front_mode), 1))
    value.field_front_custom_value = u8(wire.number(cursor, u64(value.field_front_custom_value), 1))
    value.field_rear_mode = u8(wire.number(cursor, u64(value.field_rear_mode), 1))
    value.field_rear_custom_value = u8(wire.number(cursor, u64(value.field_rear_custom_value), 1))
}
/// @brief Encode every complete original scout_msgs/msg/ScoutLightCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Scout_msgsMsgScoutLightCmd :: proc "contextless"(
    value: ^Ros2Scout_msgsMsgScoutLightCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5)], writing = true}
    fields_Ros2Scout_msgsMsgScoutLightCmd(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original scout_msgs/msg/ScoutLightCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Scout_msgsMsgScoutLightCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Scout_msgsMsgScoutLightCmd, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 5 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Scout_msgsMsgScoutLightCmd(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original scout_msgs/msg/ScoutLightState value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 2..2 bytes.
Ros2Scout_msgsMsgScoutLightState :: struct {
    /// @brief Original scout_msgs/msg/ScoutLightState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original scout_msgs/msg/ScoutLightState.custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_custom_value: u8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Scout_msgsMsgScoutLightState :: proc "contextless"() -> Ros2Scout_msgsMsgScoutLightState {
    result: Ros2Scout_msgsMsgScoutLightState
    return result
}
/// @brief Original complete scout_msgs/msg/ScoutLightState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutLightState_Minimum_Wire_Bytes :: 2
/// @brief Original complete scout_msgs/msg/ScoutLightState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutLightState_Maximum_Wire_Bytes :: 2
/// @brief Original complete scout_msgs/msg/ScoutLightState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutLightState_Codec_Identity :: "UWVMROS1_4f42b9365cc76673b156e725aac9448e0f0d806105d3717cdb2628c384a6d76a"
/// @brief Traverse every original field of complete scout_msgs/msg/ScoutLightState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Scout_msgsMsgScoutLightState :: proc "contextless"(
    value: ^Ros2Scout_msgsMsgScoutLightState, cursor: ^wire.Cursor)
{
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_custom_value = u8(wire.number(cursor, u64(value.field_custom_value), 1))
}
/// @brief Encode every complete original scout_msgs/msg/ScoutLightState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Scout_msgsMsgScoutLightState :: proc "contextless"(
    value: ^Ros2Scout_msgsMsgScoutLightState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2)], writing = true}
    fields_Ros2Scout_msgsMsgScoutLightState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original scout_msgs/msg/ScoutLightState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Scout_msgsMsgScoutLightState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Scout_msgsMsgScoutLightState, code: u32)
{
    if len(bytes) < 2 || len(bytes) > 2 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Scout_msgsMsgScoutLightState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original scout_msgs/msg/ScoutRCState value.
/// @details Retain all 9 original fields and 0 constants. Wire extent 9..9 bytes.
Ros2Scout_msgsMsgScoutRCState :: struct {
    /// @brief Original scout_msgs/msg/ScoutRCState.swa field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swa: u8,
    /// @brief Original scout_msgs/msg/ScoutRCState.swb field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swb: u8,
    /// @brief Original scout_msgs/msg/ScoutRCState.swc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swc: u8,
    /// @brief Original scout_msgs/msg/ScoutRCState.swd field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swd: u8,
    /// @brief Original scout_msgs/msg/ScoutRCState.stick_right_v field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_right_v: i8,
    /// @brief Original scout_msgs/msg/ScoutRCState.stick_right_h field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_right_h: i8,
    /// @brief Original scout_msgs/msg/ScoutRCState.stick_left_v field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_left_v: i8,
    /// @brief Original scout_msgs/msg/ScoutRCState.stick_left_h field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_left_h: i8,
    /// @brief Original scout_msgs/msg/ScoutRCState.var_a field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_var_a: i8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Scout_msgsMsgScoutRCState :: proc "contextless"() -> Ros2Scout_msgsMsgScoutRCState {
    result: Ros2Scout_msgsMsgScoutRCState
    return result
}
/// @brief Original complete scout_msgs/msg/ScoutRCState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutRCState_Minimum_Wire_Bytes :: 9
/// @brief Original complete scout_msgs/msg/ScoutRCState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutRCState_Maximum_Wire_Bytes :: 9
/// @brief Original complete scout_msgs/msg/ScoutRCState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutRCState_Codec_Identity :: "UWVMROS1_ba13e4c728041d14352c021fe5c1c5eee5d531c84ac64c61d944d6192dcd4298"
/// @brief Traverse every original field of complete scout_msgs/msg/ScoutRCState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Scout_msgsMsgScoutRCState :: proc "contextless"(
    value: ^Ros2Scout_msgsMsgScoutRCState, cursor: ^wire.Cursor)
{
    value.field_swa = u8(wire.number(cursor, u64(value.field_swa), 1))
    value.field_swb = u8(wire.number(cursor, u64(value.field_swb), 1))
    value.field_swc = u8(wire.number(cursor, u64(value.field_swc), 1))
    value.field_swd = u8(wire.number(cursor, u64(value.field_swd), 1))
    value.field_stick_right_v = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_stick_right_v), 1))
    value.field_stick_right_h = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_stick_right_h), 1))
    value.field_stick_left_v = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_stick_left_v), 1))
    value.field_stick_left_h = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_stick_left_h), 1))
    value.field_var_a = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_var_a), 1))
}
/// @brief Encode every complete original scout_msgs/msg/ScoutRCState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Scout_msgsMsgScoutRCState :: proc "contextless"(
    value: ^Ros2Scout_msgsMsgScoutRCState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 9)], writing = true}
    fields_Ros2Scout_msgsMsgScoutRCState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original scout_msgs/msg/ScoutRCState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Scout_msgsMsgScoutRCState :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Scout_msgsMsgScoutRCState, code: u32)
{
    if len(bytes) < 9 || len(bytes) > 9 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Scout_msgsMsgScoutRCState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original scout_msgs/msg/ScoutStatus value.
/// @details Retain all 11 original fields and 6 constants. Wire extent 121..249 bytes.
Ros2Scout_msgsMsgScoutStatus :: struct {
    /// @brief Original scout_msgs/msg/ScoutStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_header: Ros2Std_msgsMsgHeader,
    /// @brief Original scout_msgs/msg/ScoutStatus.linear_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_linear_velocity: f64,
    /// @brief Original scout_msgs/msg/ScoutStatus.angular_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_angular_velocity: f64,
    /// @brief Original scout_msgs/msg/ScoutStatus.vehicle_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_vehicle_state: u8,
    /// @brief Original scout_msgs/msg/ScoutStatus.control_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_control_mode: u8,
    /// @brief Original scout_msgs/msg/ScoutStatus.error_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_code: u16,
    /// @brief Original scout_msgs/msg/ScoutStatus.battery_voltage field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_battery_voltage: f64,
    /// @brief Original scout_msgs/msg/ScoutStatus.actuator_states field.
    /// @details Original type scout_msgs/msg/ScoutActuatorState. Shape array; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_actuator_states: [4]Ros2Scout_msgsMsgScoutActuatorState,
    /// @brief Original scout_msgs/msg/ScoutStatus.light_control_enabled field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_light_control_enabled: bool,
    /// @brief Original scout_msgs/msg/ScoutStatus.front_light_state field.
    /// @details Original type scout_msgs/msg/ScoutLightState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_front_light_state: Ros2Scout_msgsMsgScoutLightState,
    /// @brief Original scout_msgs/msg/ScoutStatus.rear_light_state field.
    /// @details Original type scout_msgs/msg/ScoutLightState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_rear_light_state: Ros2Scout_msgsMsgScoutLightState,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros2Scout_msgsMsgScoutStatus :: proc "contextless"() -> Ros2Scout_msgsMsgScoutStatus {
    result: Ros2Scout_msgsMsgScoutStatus
    result.field_header = init_Ros2Std_msgsMsgHeader()
    for index in 0 ..< 4 {
        result.field_actuator_states[index] = init_Ros2Scout_msgsMsgScoutActuatorState()
    }
    result.field_front_light_state = init_Ros2Scout_msgsMsgScoutLightState()
    result.field_rear_light_state = init_Ros2Scout_msgsMsgScoutLightState()
    return result
}
/// @brief Original complete scout_msgs/msg/ScoutStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutStatus_Minimum_Wire_Bytes :: 121
/// @brief Original complete scout_msgs/msg/ScoutStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutStatus_Maximum_Wire_Bytes :: 249
/// @brief Original complete scout_msgs/msg/ScoutStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros2Scout_msgsMsgScoutStatus_Codec_Identity :: "UWVMROS1_75db4db1dcc07210d543b8e6bd6b6a7aadbf23db8043ff372a3b224c5c235b86"
/// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_FRONT_RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Scout_msgsMsgScoutStatus_MOTOR_ID_FRONT_RIGHT :: 0
/// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_FRONT_LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Scout_msgsMsgScoutStatus_MOTOR_ID_FRONT_LEFT :: 1
/// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_REAR_RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Scout_msgsMsgScoutStatus_MOTOR_ID_REAR_RIGHT :: 2
/// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_REAR_LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Scout_msgsMsgScoutStatus_MOTOR_ID_REAR_LEFT :: 3
/// @brief Original scout_msgs/msg/ScoutStatus.LIGHT_ID_FRONT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Scout_msgsMsgScoutStatus_LIGHT_ID_FRONT :: 0
/// @brief Original scout_msgs/msg/ScoutStatus.LIGHT_ID_REAR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros2Scout_msgsMsgScoutStatus_LIGHT_ID_REAR :: 1
/// @brief Traverse every original field of complete scout_msgs/msg/ScoutStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros2Scout_msgsMsgScoutStatus :: proc "contextless"(
    value: ^Ros2Scout_msgsMsgScoutStatus, cursor: ^wire.Cursor)
{
    fields_Ros2Std_msgsMsgHeader(&value.field_header, cursor)
    value.field_linear_velocity = wire.float64(cursor, value.field_linear_velocity)
    value.field_angular_velocity = wire.float64(cursor, value.field_angular_velocity)
    value.field_vehicle_state = u8(wire.number(cursor, u64(value.field_vehicle_state), 1))
    value.field_control_mode = u8(wire.number(cursor, u64(value.field_control_mode), 1))
    value.field_error_code = u16(wire.number(cursor, u64(value.field_error_code), 2))
    value.field_battery_voltage = wire.float64(cursor, value.field_battery_voltage)
    for index in 0..<4 {
        fields_Ros2Scout_msgsMsgScoutActuatorState(&value.field_actuator_states[index], cursor)
    }
    value.field_light_control_enabled = wire.boolean(cursor, value.field_light_control_enabled)
    fields_Ros2Scout_msgsMsgScoutLightState(&value.field_front_light_state, cursor)
    fields_Ros2Scout_msgsMsgScoutLightState(&value.field_rear_light_state, cursor)
}
/// @brief Encode every complete original scout_msgs/msg/ScoutStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros2Scout_msgsMsgScoutStatus :: proc "contextless"(
    value: ^Ros2Scout_msgsMsgScoutStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 249)], writing = true}
    fields_Ros2Scout_msgsMsgScoutStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original scout_msgs/msg/ScoutStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros2Scout_msgsMsgScoutStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros2Scout_msgsMsgScoutStatus, code: u32)
{
    if len(bytes) < 121 || len(bytes) > 249 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros2Scout_msgsMsgScoutStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

