// @file records.odin
// @brief Complete owned original agilex ROS 1 records and codecs.
// @details No generated record owns a native ROS object or grants a capability.
package records
import wire "native:odin/wire"

/// @brief Complete original geometry_msgs/Point value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 24..24 bytes.
Ros1Geometry_msgsPoint :: struct {
    /// @brief Original geometry_msgs/Point.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64,
    /// @brief Original geometry_msgs/Point.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64,
    /// @brief Original geometry_msgs/Point.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Geometry_msgsPoint :: proc "contextless"() -> Ros1Geometry_msgsPoint {
    result: Ros1Geometry_msgsPoint
    return result
}
/// @brief Original complete geometry_msgs/Point minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsPoint_Minimum_Wire_Bytes :: 24
/// @brief Original complete geometry_msgs/Point maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsPoint_Maximum_Wire_Bytes :: 24
/// @brief Original complete geometry_msgs/Point codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsPoint_Codec_Identity :: "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
/// @brief Traverse every original field of complete geometry_msgs/Point.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Geometry_msgsPoint :: proc "contextless"(
    value: ^Ros1Geometry_msgsPoint, cursor: ^wire.Cursor)
{
    value.field_x = wire.float64(cursor, value.field_x)
    value.field_y = wire.float64(cursor, value.field_y)
    value.field_z = wire.float64(cursor, value.field_z)
}
/// @brief Encode every complete original geometry_msgs/Point field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Geometry_msgsPoint :: proc "contextless"(
    value: ^Ros1Geometry_msgsPoint, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 24)], writing = true}
    fields_Ros1Geometry_msgsPoint(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/Point.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Geometry_msgsPoint :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Geometry_msgsPoint, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 24 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Geometry_msgsPoint(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original geometry_msgs/Quaternion value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 32..32 bytes.
Ros1Geometry_msgsQuaternion :: struct {
    /// @brief Original geometry_msgs/Quaternion.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64,
    /// @brief Original geometry_msgs/Quaternion.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64,
    /// @brief Original geometry_msgs/Quaternion.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f64,
    /// @brief Original geometry_msgs/Quaternion.w field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_w: f64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Geometry_msgsQuaternion :: proc "contextless"() -> Ros1Geometry_msgsQuaternion {
    result: Ros1Geometry_msgsQuaternion
    return result
}
/// @brief Original complete geometry_msgs/Quaternion minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsQuaternion_Minimum_Wire_Bytes :: 32
/// @brief Original complete geometry_msgs/Quaternion maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsQuaternion_Maximum_Wire_Bytes :: 32
/// @brief Original complete geometry_msgs/Quaternion codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsQuaternion_Codec_Identity :: "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
/// @brief Traverse every original field of complete geometry_msgs/Quaternion.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Geometry_msgsQuaternion :: proc "contextless"(
    value: ^Ros1Geometry_msgsQuaternion, cursor: ^wire.Cursor)
{
    value.field_x = wire.float64(cursor, value.field_x)
    value.field_y = wire.float64(cursor, value.field_y)
    value.field_z = wire.float64(cursor, value.field_z)
    value.field_w = wire.float64(cursor, value.field_w)
}
/// @brief Encode every complete original geometry_msgs/Quaternion field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Geometry_msgsQuaternion :: proc "contextless"(
    value: ^Ros1Geometry_msgsQuaternion, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 32)], writing = true}
    fields_Ros1Geometry_msgsQuaternion(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/Quaternion.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Geometry_msgsQuaternion :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Geometry_msgsQuaternion, code: u32)
{
    if len(bytes) < 32 || len(bytes) > 32 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Geometry_msgsQuaternion(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original geometry_msgs/Pose value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 56..56 bytes.
Ros1Geometry_msgsPose :: struct {
    /// @brief Original geometry_msgs/Pose.position field.
    /// @details Original type geometry_msgs/Point. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_position: Ros1Geometry_msgsPoint,
    /// @brief Original geometry_msgs/Pose.orientation field.
    /// @details Original type geometry_msgs/Quaternion. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_orientation: Ros1Geometry_msgsQuaternion,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Geometry_msgsPose :: proc "contextless"() -> Ros1Geometry_msgsPose {
    result: Ros1Geometry_msgsPose
    result.field_position = init_Ros1Geometry_msgsPoint()
    result.field_orientation = init_Ros1Geometry_msgsQuaternion()
    return result
}
/// @brief Original complete geometry_msgs/Pose minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsPose_Minimum_Wire_Bytes :: 56
/// @brief Original complete geometry_msgs/Pose maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsPose_Maximum_Wire_Bytes :: 56
/// @brief Original complete geometry_msgs/Pose codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsPose_Codec_Identity :: "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
/// @brief Traverse every original field of complete geometry_msgs/Pose.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Geometry_msgsPose :: proc "contextless"(
    value: ^Ros1Geometry_msgsPose, cursor: ^wire.Cursor)
{
    fields_Ros1Geometry_msgsPoint(&value.field_position, cursor)
    fields_Ros1Geometry_msgsQuaternion(&value.field_orientation, cursor)
}
/// @brief Encode every complete original geometry_msgs/Pose field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Geometry_msgsPose :: proc "contextless"(
    value: ^Ros1Geometry_msgsPose, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 56)], writing = true}
    fields_Ros1Geometry_msgsPose(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/Pose.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Geometry_msgsPose :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Geometry_msgsPose, code: u32)
{
    if len(bytes) < 56 || len(bytes) > 56 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Geometry_msgsPose(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original geometry_msgs/PoseWithCovariance value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 344..344 bytes.
Ros1Geometry_msgsPoseWithCovariance :: struct {
    /// @brief Original geometry_msgs/PoseWithCovariance.pose field.
    /// @details Original type geometry_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_pose: Ros1Geometry_msgsPose,
    /// @brief Original geometry_msgs/PoseWithCovariance.covariance field.
    /// @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_covariance: [36]f64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Geometry_msgsPoseWithCovariance :: proc "contextless"() -> Ros1Geometry_msgsPoseWithCovariance {
    result: Ros1Geometry_msgsPoseWithCovariance
    result.field_pose = init_Ros1Geometry_msgsPose()
    return result
}
/// @brief Original complete geometry_msgs/PoseWithCovariance minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsPoseWithCovariance_Minimum_Wire_Bytes :: 344
/// @brief Original complete geometry_msgs/PoseWithCovariance maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsPoseWithCovariance_Maximum_Wire_Bytes :: 344
/// @brief Original complete geometry_msgs/PoseWithCovariance codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsPoseWithCovariance_Codec_Identity :: "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf"
/// @brief Traverse every original field of complete geometry_msgs/PoseWithCovariance.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Geometry_msgsPoseWithCovariance :: proc "contextless"(
    value: ^Ros1Geometry_msgsPoseWithCovariance, cursor: ^wire.Cursor)
{
    fields_Ros1Geometry_msgsPose(&value.field_pose, cursor)
    for index in 0..<36 {
        value.field_covariance[index] = wire.float64(cursor, value.field_covariance[index])
    }
}
/// @brief Encode every complete original geometry_msgs/PoseWithCovariance field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Geometry_msgsPoseWithCovariance :: proc "contextless"(
    value: ^Ros1Geometry_msgsPoseWithCovariance, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 344)], writing = true}
    fields_Ros1Geometry_msgsPoseWithCovariance(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/PoseWithCovariance.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Geometry_msgsPoseWithCovariance :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Geometry_msgsPoseWithCovariance, code: u32)
{
    if len(bytes) < 344 || len(bytes) > 344 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Geometry_msgsPoseWithCovariance(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original geometry_msgs/Vector3 value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 24..24 bytes.
Ros1Geometry_msgsVector3 :: struct {
    /// @brief Original geometry_msgs/Vector3.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f64,
    /// @brief Original geometry_msgs/Vector3.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f64,
    /// @brief Original geometry_msgs/Vector3.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_z: f64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Geometry_msgsVector3 :: proc "contextless"() -> Ros1Geometry_msgsVector3 {
    result: Ros1Geometry_msgsVector3
    return result
}
/// @brief Original complete geometry_msgs/Vector3 minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsVector3_Minimum_Wire_Bytes :: 24
/// @brief Original complete geometry_msgs/Vector3 maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsVector3_Maximum_Wire_Bytes :: 24
/// @brief Original complete geometry_msgs/Vector3 codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsVector3_Codec_Identity :: "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
/// @brief Traverse every original field of complete geometry_msgs/Vector3.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Geometry_msgsVector3 :: proc "contextless"(
    value: ^Ros1Geometry_msgsVector3, cursor: ^wire.Cursor)
{
    value.field_x = wire.float64(cursor, value.field_x)
    value.field_y = wire.float64(cursor, value.field_y)
    value.field_z = wire.float64(cursor, value.field_z)
}
/// @brief Encode every complete original geometry_msgs/Vector3 field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Geometry_msgsVector3 :: proc "contextless"(
    value: ^Ros1Geometry_msgsVector3, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 24)], writing = true}
    fields_Ros1Geometry_msgsVector3(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/Vector3.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Geometry_msgsVector3 :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Geometry_msgsVector3, code: u32)
{
    if len(bytes) < 24 || len(bytes) > 24 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Geometry_msgsVector3(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original geometry_msgs/Twist value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 48..48 bytes.
Ros1Geometry_msgsTwist :: struct {
    /// @brief Original geometry_msgs/Twist.linear field.
    /// @details Original type geometry_msgs/Vector3. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_linear: Ros1Geometry_msgsVector3,
    /// @brief Original geometry_msgs/Twist.angular field.
    /// @details Original type geometry_msgs/Vector3. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_angular: Ros1Geometry_msgsVector3,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Geometry_msgsTwist :: proc "contextless"() -> Ros1Geometry_msgsTwist {
    result: Ros1Geometry_msgsTwist
    result.field_linear = init_Ros1Geometry_msgsVector3()
    result.field_angular = init_Ros1Geometry_msgsVector3()
    return result
}
/// @brief Original complete geometry_msgs/Twist minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsTwist_Minimum_Wire_Bytes :: 48
/// @brief Original complete geometry_msgs/Twist maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsTwist_Maximum_Wire_Bytes :: 48
/// @brief Original complete geometry_msgs/Twist codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsTwist_Codec_Identity :: "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
/// @brief Traverse every original field of complete geometry_msgs/Twist.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Geometry_msgsTwist :: proc "contextless"(
    value: ^Ros1Geometry_msgsTwist, cursor: ^wire.Cursor)
{
    fields_Ros1Geometry_msgsVector3(&value.field_linear, cursor)
    fields_Ros1Geometry_msgsVector3(&value.field_angular, cursor)
}
/// @brief Encode every complete original geometry_msgs/Twist field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Geometry_msgsTwist :: proc "contextless"(
    value: ^Ros1Geometry_msgsTwist, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 48)], writing = true}
    fields_Ros1Geometry_msgsTwist(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/Twist.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Geometry_msgsTwist :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Geometry_msgsTwist, code: u32)
{
    if len(bytes) < 48 || len(bytes) > 48 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Geometry_msgsTwist(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original geometry_msgs/TwistWithCovariance value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 336..336 bytes.
Ros1Geometry_msgsTwistWithCovariance :: struct {
    /// @brief Original geometry_msgs/TwistWithCovariance.twist field.
    /// @details Original type geometry_msgs/Twist. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_twist: Ros1Geometry_msgsTwist,
    /// @brief Original geometry_msgs/TwistWithCovariance.covariance field.
    /// @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_covariance: [36]f64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Geometry_msgsTwistWithCovariance :: proc "contextless"() -> Ros1Geometry_msgsTwistWithCovariance {
    result: Ros1Geometry_msgsTwistWithCovariance
    result.field_twist = init_Ros1Geometry_msgsTwist()
    return result
}
/// @brief Original complete geometry_msgs/TwistWithCovariance minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsTwistWithCovariance_Minimum_Wire_Bytes :: 336
/// @brief Original complete geometry_msgs/TwistWithCovariance maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsTwistWithCovariance_Maximum_Wire_Bytes :: 336
/// @brief Original complete geometry_msgs/TwistWithCovariance codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Geometry_msgsTwistWithCovariance_Codec_Identity :: "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf"
/// @brief Traverse every original field of complete geometry_msgs/TwistWithCovariance.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Geometry_msgsTwistWithCovariance :: proc "contextless"(
    value: ^Ros1Geometry_msgsTwistWithCovariance, cursor: ^wire.Cursor)
{
    fields_Ros1Geometry_msgsTwist(&value.field_twist, cursor)
    for index in 0..<36 {
        value.field_covariance[index] = wire.float64(cursor, value.field_covariance[index])
    }
}
/// @brief Encode every complete original geometry_msgs/TwistWithCovariance field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Geometry_msgsTwistWithCovariance :: proc "contextless"(
    value: ^Ros1Geometry_msgsTwistWithCovariance, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 336)], writing = true}
    fields_Ros1Geometry_msgsTwistWithCovariance(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original geometry_msgs/TwistWithCovariance.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Geometry_msgsTwistWithCovariance :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Geometry_msgsTwistWithCovariance, code: u32)
{
    if len(bytes) < 336 || len(bytes) > 336 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Geometry_msgsTwistWithCovariance(&value, &cursor)
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
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Time :: proc "contextless"() -> Ros1Time {
    result: Ros1Time
    return result
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
/// @details Retain all 3 original fields and 0 constants. Wire extent 16..144 bytes.
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
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_frame_id: wire.Text(128, false),
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Std_msgsHeader :: proc "contextless"() -> Ros1Std_msgsHeader {
    result: Ros1Std_msgsHeader
    result.field_stamp = init_Ros1Time()
    return result
}
/// @brief Original complete std_msgs/Header minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Std_msgsHeader_Minimum_Wire_Bytes :: 16
/// @brief Original complete std_msgs/Header maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Std_msgsHeader_Maximum_Wire_Bytes :: 144
/// @brief Original complete std_msgs/Header codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Std_msgsHeader_Codec_Identity :: "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
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
    cursor := wire.Cursor{bytes = output[:min(len(output), 144)], writing = true}
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
    if len(bytes) < 16 || len(bytes) > 144 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Std_msgsHeader(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original nav_msgs/Odometry value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 700..956 bytes.
Ros1Nav_msgsOdometry :: struct {
    /// @brief Original nav_msgs/Odometry.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    field_header: Ros1Std_msgsHeader,
    /// @brief Original nav_msgs/Odometry.child_frame_id field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_child_frame_id: wire.Text(128, false),
    /// @brief Original nav_msgs/Odometry.pose field.
    /// @details Original type geometry_msgs/PoseWithCovariance. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_pose: Ros1Geometry_msgsPoseWithCovariance,
    /// @brief Original nav_msgs/Odometry.twist field.
    /// @details Original type geometry_msgs/TwistWithCovariance. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_twist: Ros1Geometry_msgsTwistWithCovariance,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Nav_msgsOdometry :: proc "contextless"() -> Ros1Nav_msgsOdometry {
    result: Ros1Nav_msgsOdometry
    result.field_header = init_Ros1Std_msgsHeader()
    result.field_pose = init_Ros1Geometry_msgsPoseWithCovariance()
    result.field_twist = init_Ros1Geometry_msgsTwistWithCovariance()
    return result
}
/// @brief Original complete nav_msgs/Odometry minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Nav_msgsOdometry_Minimum_Wire_Bytes :: 700
/// @brief Original complete nav_msgs/Odometry maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Nav_msgsOdometry_Maximum_Wire_Bytes :: 956
/// @brief Original complete nav_msgs/Odometry codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Nav_msgsOdometry_Codec_Identity :: "UWVMROS1_c10d3ce1f2824c33d728d0006fb83134330d0332af122f179cf2dac32181a2ca"
/// @brief Traverse every original field of complete nav_msgs/Odometry.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Nav_msgsOdometry :: proc "contextless"(
    value: ^Ros1Nav_msgsOdometry, cursor: ^wire.Cursor)
{
    fields_Ros1Std_msgsHeader(&value.field_header, cursor)
    wire.text(cursor, &value.field_child_frame_id)
    fields_Ros1Geometry_msgsPoseWithCovariance(&value.field_pose, cursor)
    fields_Ros1Geometry_msgsTwistWithCovariance(&value.field_twist, cursor)
}
/// @brief Encode every complete original nav_msgs/Odometry field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Nav_msgsOdometry :: proc "contextless"(
    value: ^Ros1Nav_msgsOdometry, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 956)], writing = true}
    fields_Ros1Nav_msgsOdometry(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original nav_msgs/Odometry.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Nav_msgsOdometry :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Nav_msgsOdometry, code: u32)
{
    if len(bytes) < 700 || len(bytes) > 956 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Nav_msgsOdometry(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original scout_msgs/ScoutBmsStatus value.
/// @details Retain all 9 original fields and 0 constants. Wire extent 44..44 bytes.
Ros1Scout_msgsScoutBmsStatus :: struct {
    /// @brief Original scout_msgs/ScoutBmsStatus.SOC field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_SOC: f64,
    /// @brief Original scout_msgs/ScoutBmsStatus.SOH field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_SOH: f64,
    /// @brief Original scout_msgs/ScoutBmsStatus.battery_voltage field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_battery_voltage: f64,
    /// @brief Original scout_msgs/ScoutBmsStatus.battery_current field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_battery_current: f64,
    /// @brief Original scout_msgs/ScoutBmsStatus.battery_temperature field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_battery_temperature: f64,
    /// @brief Original scout_msgs/ScoutBmsStatus.Alarm_Status_1 field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_Alarm_Status_1: u8,
    /// @brief Original scout_msgs/ScoutBmsStatus.Alarm_Status_2 field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_Alarm_Status_2: u8,
    /// @brief Original scout_msgs/ScoutBmsStatus.Warning_Status_1 field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_Warning_Status_1: u8,
    /// @brief Original scout_msgs/ScoutBmsStatus.Warning_Status_2 field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_Warning_Status_2: u8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Scout_msgsScoutBmsStatus :: proc "contextless"() -> Ros1Scout_msgsScoutBmsStatus {
    result: Ros1Scout_msgsScoutBmsStatus
    return result
}
/// @brief Original complete scout_msgs/ScoutBmsStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutBmsStatus_Minimum_Wire_Bytes :: 44
/// @brief Original complete scout_msgs/ScoutBmsStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutBmsStatus_Maximum_Wire_Bytes :: 44
/// @brief Original complete scout_msgs/ScoutBmsStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutBmsStatus_Codec_Identity :: "UWVMROS1_6921538c08e86ab5b9ecdbf974c6cb5b580488f4ed96ccbdb8b7824d51e9cf95"
/// @brief Traverse every original field of complete scout_msgs/ScoutBmsStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Scout_msgsScoutBmsStatus :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutBmsStatus, cursor: ^wire.Cursor)
{
    value.field_SOC = wire.float64(cursor, value.field_SOC)
    value.field_SOH = wire.float64(cursor, value.field_SOH)
    value.field_battery_voltage = wire.float64(cursor, value.field_battery_voltage)
    value.field_battery_current = wire.float64(cursor, value.field_battery_current)
    value.field_battery_temperature = wire.float64(cursor, value.field_battery_temperature)
    value.field_Alarm_Status_1 = u8(wire.number(cursor, u64(value.field_Alarm_Status_1), 1))
    value.field_Alarm_Status_2 = u8(wire.number(cursor, u64(value.field_Alarm_Status_2), 1))
    value.field_Warning_Status_1 = u8(wire.number(cursor, u64(value.field_Warning_Status_1), 1))
    value.field_Warning_Status_2 = u8(wire.number(cursor, u64(value.field_Warning_Status_2), 1))
}
/// @brief Encode every complete original scout_msgs/ScoutBmsStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Scout_msgsScoutBmsStatus :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutBmsStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 44)], writing = true}
    fields_Ros1Scout_msgsScoutBmsStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original scout_msgs/ScoutBmsStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Scout_msgsScoutBmsStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Scout_msgsScoutBmsStatus, code: u32)
{
    if len(bytes) < 44 || len(bytes) > 44 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Scout_msgsScoutBmsStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original scout_msgs/ScoutDriverState value.
/// @details Retain all 3 original fields and 0 constants. Wire extent 17..17 bytes.
Ros1Scout_msgsScoutDriverState :: struct {
    /// @brief Original scout_msgs/ScoutDriverState.driver_voltage field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_driver_voltage: f64,
    /// @brief Original scout_msgs/ScoutDriverState.driver_temperature field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_driver_temperature: f64,
    /// @brief Original scout_msgs/ScoutDriverState.driver_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_driver_state: u8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Scout_msgsScoutDriverState :: proc "contextless"() -> Ros1Scout_msgsScoutDriverState {
    result: Ros1Scout_msgsScoutDriverState
    return result
}
/// @brief Original complete scout_msgs/ScoutDriverState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutDriverState_Minimum_Wire_Bytes :: 17
/// @brief Original complete scout_msgs/ScoutDriverState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutDriverState_Maximum_Wire_Bytes :: 17
/// @brief Original complete scout_msgs/ScoutDriverState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutDriverState_Codec_Identity :: "UWVMROS1_4c56c71ae621b2b8822d742894d19946492002453c93b72faccb4f2abc9d4275"
/// @brief Traverse every original field of complete scout_msgs/ScoutDriverState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Scout_msgsScoutDriverState :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutDriverState, cursor: ^wire.Cursor)
{
    value.field_driver_voltage = wire.float64(cursor, value.field_driver_voltage)
    value.field_driver_temperature = wire.float64(cursor, value.field_driver_temperature)
    value.field_driver_state = u8(wire.number(cursor, u64(value.field_driver_state), 1))
}
/// @brief Encode every complete original scout_msgs/ScoutDriverState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Scout_msgsScoutDriverState :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutDriverState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 17)], writing = true}
    fields_Ros1Scout_msgsScoutDriverState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original scout_msgs/ScoutDriverState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Scout_msgsScoutDriverState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Scout_msgsScoutDriverState, code: u32)
{
    if len(bytes) < 17 || len(bytes) > 17 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Scout_msgsScoutDriverState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original scout_msgs/ScoutLightCmd value.
/// @details Retain all 5 original fields and 4 constants. Wire extent 5..5 bytes.
Ros1Scout_msgsScoutLightCmd :: struct {
    /// @brief Original scout_msgs/ScoutLightCmd.enable_cmd_light_control field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_enable_cmd_light_control: bool,
    /// @brief Original scout_msgs/ScoutLightCmd.front_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_front_mode: u8,
    /// @brief Original scout_msgs/ScoutLightCmd.front_custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_front_custom_value: u8,
    /// @brief Original scout_msgs/ScoutLightCmd.rear_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rear_mode: u8,
    /// @brief Original scout_msgs/ScoutLightCmd.rear_custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rear_custom_value: u8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Scout_msgsScoutLightCmd :: proc "contextless"() -> Ros1Scout_msgsScoutLightCmd {
    result: Ros1Scout_msgsScoutLightCmd
    return result
}
/// @brief Original complete scout_msgs/ScoutLightCmd minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutLightCmd_Minimum_Wire_Bytes :: 5
/// @brief Original complete scout_msgs/ScoutLightCmd maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutLightCmd_Maximum_Wire_Bytes :: 5
/// @brief Original complete scout_msgs/ScoutLightCmd codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutLightCmd_Codec_Identity :: "UWVMROS1_cf08cccf454f88111d5cc4a4b1ace08de72cf1ae9a9400c23a148126da95942a"
/// @brief Original scout_msgs/ScoutLightCmd.LIGHT_CONST_OFF constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Scout_msgsScoutLightCmd_LIGHT_CONST_OFF :: 0
/// @brief Original scout_msgs/ScoutLightCmd.LIGHT_CONST_ON constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Scout_msgsScoutLightCmd_LIGHT_CONST_ON :: 1
/// @brief Original scout_msgs/ScoutLightCmd.LIGHT_BREATH constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Scout_msgsScoutLightCmd_LIGHT_BREATH :: 2
/// @brief Original scout_msgs/ScoutLightCmd.LIGHT_CUSTOM constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Scout_msgsScoutLightCmd_LIGHT_CUSTOM :: 3
/// @brief Traverse every original field of complete scout_msgs/ScoutLightCmd.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Scout_msgsScoutLightCmd :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutLightCmd, cursor: ^wire.Cursor)
{
    value.field_enable_cmd_light_control = wire.boolean(cursor, value.field_enable_cmd_light_control)
    value.field_front_mode = u8(wire.number(cursor, u64(value.field_front_mode), 1))
    value.field_front_custom_value = u8(wire.number(cursor, u64(value.field_front_custom_value), 1))
    value.field_rear_mode = u8(wire.number(cursor, u64(value.field_rear_mode), 1))
    value.field_rear_custom_value = u8(wire.number(cursor, u64(value.field_rear_custom_value), 1))
}
/// @brief Encode every complete original scout_msgs/ScoutLightCmd field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Scout_msgsScoutLightCmd :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutLightCmd, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 5)], writing = true}
    fields_Ros1Scout_msgsScoutLightCmd(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original scout_msgs/ScoutLightCmd.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Scout_msgsScoutLightCmd :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Scout_msgsScoutLightCmd, code: u32)
{
    if len(bytes) < 5 || len(bytes) > 5 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Scout_msgsScoutLightCmd(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original scout_msgs/ScoutLightState value.
/// @details Retain all 2 original fields and 0 constants. Wire extent 2..2 bytes.
Ros1Scout_msgsScoutLightState :: struct {
    /// @brief Original scout_msgs/ScoutLightState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8,
    /// @brief Original scout_msgs/ScoutLightState.custom_value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_custom_value: u8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Scout_msgsScoutLightState :: proc "contextless"() -> Ros1Scout_msgsScoutLightState {
    result: Ros1Scout_msgsScoutLightState
    return result
}
/// @brief Original complete scout_msgs/ScoutLightState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutLightState_Minimum_Wire_Bytes :: 2
/// @brief Original complete scout_msgs/ScoutLightState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutLightState_Maximum_Wire_Bytes :: 2
/// @brief Original complete scout_msgs/ScoutLightState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutLightState_Codec_Identity :: "UWVMROS1_af55048f9200cfa80fc419664204a515f628cc610a352ab3ed8443dd7ac0ae51"
/// @brief Traverse every original field of complete scout_msgs/ScoutLightState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Scout_msgsScoutLightState :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutLightState, cursor: ^wire.Cursor)
{
    value.field_mode = u8(wire.number(cursor, u64(value.field_mode), 1))
    value.field_custom_value = u8(wire.number(cursor, u64(value.field_custom_value), 1))
}
/// @brief Encode every complete original scout_msgs/ScoutLightState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Scout_msgsScoutLightState :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutLightState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 2)], writing = true}
    fields_Ros1Scout_msgsScoutLightState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original scout_msgs/ScoutLightState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Scout_msgsScoutLightState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Scout_msgsScoutLightState, code: u32)
{
    if len(bytes) < 2 || len(bytes) > 2 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Scout_msgsScoutLightState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original scout_msgs/ScoutMotorState value.
/// @details Retain all 4 original fields and 0 constants. Wire extent 32..32 bytes.
Ros1Scout_msgsScoutMotorState :: struct {
    /// @brief Original scout_msgs/ScoutMotorState.current field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: f64,
    /// @brief Original scout_msgs/ScoutMotorState.rpm field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rpm: f64,
    /// @brief Original scout_msgs/ScoutMotorState.temperature field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: f64,
    /// @brief Original scout_msgs/ScoutMotorState.motor_pose field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motor_pose: f64,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Scout_msgsScoutMotorState :: proc "contextless"() -> Ros1Scout_msgsScoutMotorState {
    result: Ros1Scout_msgsScoutMotorState
    return result
}
/// @brief Original complete scout_msgs/ScoutMotorState minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutMotorState_Minimum_Wire_Bytes :: 32
/// @brief Original complete scout_msgs/ScoutMotorState maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutMotorState_Maximum_Wire_Bytes :: 32
/// @brief Original complete scout_msgs/ScoutMotorState codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutMotorState_Codec_Identity :: "UWVMROS1_ca67a704d7bb4ba6b2839db1fdb8a75bc753868ec871d101c24c85d8202a79b7"
/// @brief Traverse every original field of complete scout_msgs/ScoutMotorState.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Scout_msgsScoutMotorState :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutMotorState, cursor: ^wire.Cursor)
{
    value.field_current = wire.float64(cursor, value.field_current)
    value.field_rpm = wire.float64(cursor, value.field_rpm)
    value.field_temperature = wire.float64(cursor, value.field_temperature)
    value.field_motor_pose = wire.float64(cursor, value.field_motor_pose)
}
/// @brief Encode every complete original scout_msgs/ScoutMotorState field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Scout_msgsScoutMotorState :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutMotorState, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 32)], writing = true}
    fields_Ros1Scout_msgsScoutMotorState(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original scout_msgs/ScoutMotorState.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Scout_msgsScoutMotorState :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Scout_msgsScoutMotorState, code: u32)
{
    if len(bytes) < 32 || len(bytes) > 32 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Scout_msgsScoutMotorState(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original scout_msgs/ScoutRsStatus value.
/// @details Retain all 10 original fields and 0 constants. Wire extent 25..153 bytes.
Ros1Scout_msgsScoutRsStatus :: struct {
    /// @brief Original scout_msgs/ScoutRsStatus.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    field_header: Ros1Std_msgsHeader,
    /// @brief Original scout_msgs/ScoutRsStatus.stick_left_h field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_left_h: i8,
    /// @brief Original scout_msgs/ScoutRsStatus.stick_left_v field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_left_v: i8,
    /// @brief Original scout_msgs/ScoutRsStatus.stick_right_h field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_right_h: i8,
    /// @brief Original scout_msgs/ScoutRsStatus.stick_right_v field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stick_right_v: i8,
    /// @brief Original scout_msgs/ScoutRsStatus.swa field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swa: u8,
    /// @brief Original scout_msgs/ScoutRsStatus.swb field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swb: u8,
    /// @brief Original scout_msgs/ScoutRsStatus.swc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swc: u8,
    /// @brief Original scout_msgs/ScoutRsStatus.swd field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_swd: u8,
    /// @brief Original scout_msgs/ScoutRsStatus.var_a field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_var_a: u8,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Scout_msgsScoutRsStatus :: proc "contextless"() -> Ros1Scout_msgsScoutRsStatus {
    result: Ros1Scout_msgsScoutRsStatus
    result.field_header = init_Ros1Std_msgsHeader()
    return result
}
/// @brief Original complete scout_msgs/ScoutRsStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutRsStatus_Minimum_Wire_Bytes :: 25
/// @brief Original complete scout_msgs/ScoutRsStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutRsStatus_Maximum_Wire_Bytes :: 153
/// @brief Original complete scout_msgs/ScoutRsStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutRsStatus_Codec_Identity :: "UWVMROS1_deb068b75fb629df3724c141ed3be9f6ee8a4aac7727cdaa28769cb61211f7de"
/// @brief Traverse every original field of complete scout_msgs/ScoutRsStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Scout_msgsScoutRsStatus :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutRsStatus, cursor: ^wire.Cursor)
{
    fields_Ros1Std_msgsHeader(&value.field_header, cursor)
    value.field_stick_left_h = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_stick_left_h), 1))
    value.field_stick_left_v = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_stick_left_v), 1))
    value.field_stick_right_h = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_stick_right_h), 1))
    value.field_stick_right_v = transmute(i8)u8(wire.number(cursor, u64(transmute(u8)value.field_stick_right_v), 1))
    value.field_swa = u8(wire.number(cursor, u64(value.field_swa), 1))
    value.field_swb = u8(wire.number(cursor, u64(value.field_swb), 1))
    value.field_swc = u8(wire.number(cursor, u64(value.field_swc), 1))
    value.field_swd = u8(wire.number(cursor, u64(value.field_swd), 1))
    value.field_var_a = u8(wire.number(cursor, u64(value.field_var_a), 1))
}
/// @brief Encode every complete original scout_msgs/ScoutRsStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Scout_msgsScoutRsStatus :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutRsStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 153)], writing = true}
    fields_Ros1Scout_msgsScoutRsStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original scout_msgs/ScoutRsStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Scout_msgsScoutRsStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Scout_msgsScoutRsStatus, code: u32)
{
    if len(bytes) < 25 || len(bytes) > 153 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Scout_msgsScoutRsStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

/// @brief Complete original scout_msgs/ScoutStatus value.
/// @details Retain all 13 original fields and 6 constants. Wire extent 253..381 bytes.
Ros1Scout_msgsScoutStatus :: struct {
    /// @brief Original scout_msgs/ScoutStatus.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    field_header: Ros1Std_msgsHeader,
    /// @brief Original scout_msgs/ScoutStatus.linear_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_linear_velocity: f64,
    /// @brief Original scout_msgs/ScoutStatus.angular_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_angular_velocity: f64,
    /// @brief Original scout_msgs/ScoutStatus.lateral_velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_lateral_velocity: f64,
    /// @brief Original scout_msgs/ScoutStatus.base_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_base_state: u8,
    /// @brief Original scout_msgs/ScoutStatus.control_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_control_mode: u8,
    /// @brief Original scout_msgs/ScoutStatus.fault_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_fault_code: u16,
    /// @brief Original scout_msgs/ScoutStatus.battery_voltage field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_battery_voltage: f64,
    /// @brief Original scout_msgs/ScoutStatus.motor_states field.
    /// @details Original type scout_msgs/ScoutMotorState. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_states: [4]Ros1Scout_msgsScoutMotorState,
    /// @brief Original scout_msgs/ScoutStatus.driver_states field.
    /// @details Original type scout_msgs/ScoutDriverState. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_driver_states: [4]Ros1Scout_msgsScoutDriverState,
    /// @brief Original scout_msgs/ScoutStatus.light_control_enabled field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_light_control_enabled: bool,
    /// @brief Original scout_msgs/ScoutStatus.front_light_state field.
    /// @details Original type scout_msgs/ScoutLightState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_front_light_state: Ros1Scout_msgsScoutLightState,
    /// @brief Original scout_msgs/ScoutStatus.rear_light_state field.
    /// @details Original type scout_msgs/ScoutLightState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_rear_light_state: Ros1Scout_msgsScoutLightState,
}
/// @brief Construct all declared original defaults with independent storage.
/// @details Nested records retain their own defaults; no native owner or permission is created.
/// @return Complete independently owned original value.
init_Ros1Scout_msgsScoutStatus :: proc "contextless"() -> Ros1Scout_msgsScoutStatus {
    result: Ros1Scout_msgsScoutStatus
    result.field_header = init_Ros1Std_msgsHeader()
    for index in 0 ..< 4 {
        result.field_motor_states[index] = init_Ros1Scout_msgsScoutMotorState()
    }
    for index in 0 ..< 4 {
        result.field_driver_states[index] = init_Ros1Scout_msgsScoutDriverState()
    }
    result.field_front_light_state = init_Ros1Scout_msgsScoutLightState()
    result.field_rear_light_state = init_Ros1Scout_msgsScoutLightState()
    return result
}
/// @brief Original complete scout_msgs/ScoutStatus minimum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutStatus_Minimum_Wire_Bytes :: 253
/// @brief Original complete scout_msgs/ScoutStatus maximum wire bytes.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutStatus_Maximum_Wire_Bytes :: 381
/// @brief Original complete scout_msgs/ScoutStatus codec identity.
/// @details Canonical metadata is independent from native object size, allocation and registration
/// proof.
Ros1Scout_msgsScoutStatus_Codec_Identity :: "UWVMROS1_ff62854d4de0aae3dfbbc312822c6f912294f0feb04a7fff943df602d40bcbe2"
/// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_FRONT_RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Scout_msgsScoutStatus_MOTOR_ID_FRONT_RIGHT :: 0
/// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_FRONT_LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Scout_msgsScoutStatus_MOTOR_ID_FRONT_LEFT :: 1
/// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_REAR_RIGHT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Scout_msgsScoutStatus_MOTOR_ID_REAR_RIGHT :: 2
/// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_REAR_LEFT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Scout_msgsScoutStatus_MOTOR_ID_REAR_LEFT :: 3
/// @brief Original scout_msgs/ScoutStatus.LIGHT_ID_FRONT constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Scout_msgsScoutStatus_LIGHT_ID_FRONT :: 0
/// @brief Original scout_msgs/ScoutStatus.LIGHT_ID_REAR constant.
/// @details The immutable source constant consumes no canonical instance field.
Ros1Scout_msgsScoutStatus_LIGHT_ID_REAR :: 1
/// @brief Traverse every original field of complete scout_msgs/ScoutStatus.
/// @details Fields own fixed arrays; no decoded field borrows the canonical input. Only the
/// exclusive local cursor is advanced.
/// @param value Complete exclusive owned native record.
/// @param cursor Exclusive canonical reader/writer.
fields_Ros1Scout_msgsScoutStatus :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutStatus, cursor: ^wire.Cursor)
{
    fields_Ros1Std_msgsHeader(&value.field_header, cursor)
    value.field_linear_velocity = wire.float64(cursor, value.field_linear_velocity)
    value.field_angular_velocity = wire.float64(cursor, value.field_angular_velocity)
    value.field_lateral_velocity = wire.float64(cursor, value.field_lateral_velocity)
    value.field_base_state = u8(wire.number(cursor, u64(value.field_base_state), 1))
    value.field_control_mode = u8(wire.number(cursor, u64(value.field_control_mode), 1))
    value.field_fault_code = u16(wire.number(cursor, u64(value.field_fault_code), 2))
    value.field_battery_voltage = wire.float64(cursor, value.field_battery_voltage)
    for index in 0..<4 {
        fields_Ros1Scout_msgsScoutMotorState(&value.field_motor_states[index], cursor)
    }
    for index in 0..<4 {
        fields_Ros1Scout_msgsScoutDriverState(&value.field_driver_states[index], cursor)
    }
    value.field_light_control_enabled = wire.boolean(cursor, value.field_light_control_enabled)
    fields_Ros1Scout_msgsScoutLightState(&value.field_front_light_state, cursor)
    fields_Ros1Scout_msgsScoutLightState(&value.field_rear_light_state, cursor)
}
/// @brief Encode every complete original scout_msgs/ScoutStatus field.
/// @details Preserve field order, original units and scalar bits. Failure invalidates any partial
/// output; no host call occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable canonical bytes.
/// @return Complete initialized extent and zero, or unusable zero extent/error 22.
encode_Ros1Scout_msgsScoutStatus :: proc "contextless"(
    value: ^Ros1Scout_msgsScoutStatus, output: []u8) -> (int, u32)
{
    cursor := wire.Cursor{bytes = output[:min(len(output), 381)], writing = true}
    fields_Ros1Scout_msgsScoutStatus(value, &cursor)
    if cursor.code != 0 { return 0, cursor.code }
    return cursor.at, 0
}
/// @brief Decode exactly one complete original scout_msgs/ScoutStatus.
/// @details Reject malformed fields, finite bound violations and trailing bytes before publishing
/// an independent complete value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete owned value/zero, or an unusable value/error 22.
decode_Ros1Scout_msgsScoutStatus :: proc "contextless"(
    bytes: []u8) -> (value: Ros1Scout_msgsScoutStatus, code: u32)
{
    if len(bytes) < 253 || len(bytes) > 381 { return value, 22 }
    cursor := wire.Cursor{bytes = bytes}
    fields_Ros1Scout_msgsScoutStatus(&value, &cursor)
    if cursor.code != 0 { return value, cursor.code }
    if cursor.at != len(bytes) { return value, 22 }
    return value, 0
}

