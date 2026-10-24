/// @file Records.swift
/// @brief Complete original agilex ROS 2 Embedded Swift values and codecs.
/// @details Bytes are owned arrays; no Foundation, native ROS object or implicit authority is used.

/// @brief Complete original builtin_interfaces/msg/Time value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Builtin_interfacesMsgTime {
  /// @brief Original builtin_interfaces/msg/Time.sec field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sec: Int32 = 0
  /// @brief Original builtin_interfaces/msg/Time.nanosec field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nanosec: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_sec = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sec)), 4)))
    field_nanosec = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_nanosec), 4))
    if self.field_nanosec >= 1_000_000_000 { cursor.failed = true }
  }
  /// @brief Encode every complete builtin_interfaces/msg/Time field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete builtin_interfaces/msg/Time.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/Point value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros2Geometry_msgsMsgPoint {
  /// @brief Original geometry_msgs/msg/Point.x field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Double = 0
  /// @brief Original geometry_msgs/msg/Point.y field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Double = 0
  /// @brief Original geometry_msgs/msg/Point.z field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Double = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_x = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_x.bitPattern), 8)))
    if !field_x.isFinite { cursor.failed = true }
    field_y = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_y.bitPattern), 8)))
    if !field_y.isFinite { cursor.failed = true }
    field_z = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_z.bitPattern), 8)))
    if !field_z.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete geometry_msgs/msg/Point field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 24),
      limit: 24, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/Point.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 24 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/Quaternion value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 32..32 bytes.
public struct Ros2Geometry_msgsMsgQuaternion {
  /// @brief Original geometry_msgs/msg/Quaternion.x field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Double = Double(bitPattern: 0x0)
  /// @brief Original geometry_msgs/msg/Quaternion.y field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Double = Double(bitPattern: 0x0)
  /// @brief Original geometry_msgs/msg/Quaternion.z field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Double = Double(bitPattern: 0x0)
  /// @brief Original geometry_msgs/msg/Quaternion.w field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_w: Double = Double(bitPattern: 0x3ff0_0000_0000_0000)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_x = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_x.bitPattern), 8)))
    if !field_x.isFinite { cursor.failed = true }
    field_y = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_y.bitPattern), 8)))
    if !field_y.isFinite { cursor.failed = true }
    field_z = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_z.bitPattern), 8)))
    if !field_z.isFinite { cursor.failed = true }
    field_w = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_w.bitPattern), 8)))
    if !field_w.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete geometry_msgs/msg/Quaternion field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 32),
      limit: 32, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/Quaternion.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 32 || bytes.count > 32 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/Pose value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 56..56 bytes.
public struct Ros2Geometry_msgsMsgPose {
  /// @brief Original geometry_msgs/msg/Pose.position field.
  /// @details Original type geometry_msgs/msg/Point. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_position: Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint()
  /// @brief Original geometry_msgs/msg/Pose.orientation field.
  /// @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_orientation: Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_position.fields(&cursor)
    field_orientation.fields(&cursor)
  }
  /// @brief Encode every complete geometry_msgs/msg/Pose field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 56),
      limit: 56, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/Pose.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 56 || bytes.count > 56 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/PoseWithCovariance value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 344..344 bytes.
public struct Ros2Geometry_msgsMsgPoseWithCovariance {
  /// @brief Original geometry_msgs/msg/PoseWithCovariance.pose field.
  /// @details Original type geometry_msgs/msg/Pose. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_pose: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  /// @brief Original geometry_msgs/msg/PoseWithCovariance.covariance field.
  /// @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_covariance: [Double] = Array(repeating: 0, count: 36)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_pose.fields(&cursor)
    let count1 = 36
    if cursor.writing && field_covariance.count != 36 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_covariance = Array(repeating: 0, count: count1) }
    for index in 0..<count1 {
      field_covariance[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_covariance[index].bitPattern), 8)))
      if !field_covariance[index].isFinite { cursor.failed = true }
    }
  }
  /// @brief Encode every complete geometry_msgs/msg/PoseWithCovariance field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 344),
      limit: 344, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/PoseWithCovariance.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 344 || bytes.count > 344 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/Vector3 value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros2Geometry_msgsMsgVector3 {
  /// @brief Original geometry_msgs/msg/Vector3.x field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Double = 0
  /// @brief Original geometry_msgs/msg/Vector3.y field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Double = 0
  /// @brief Original geometry_msgs/msg/Vector3.z field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Double = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_x = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_x.bitPattern), 8)))
    if !field_x.isFinite { cursor.failed = true }
    field_y = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_y.bitPattern), 8)))
    if !field_y.isFinite { cursor.failed = true }
    field_z = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_z.bitPattern), 8)))
    if !field_z.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete geometry_msgs/msg/Vector3 field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 24),
      limit: 24, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/Vector3.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 24 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/Twist value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 48..48 bytes.
public struct Ros2Geometry_msgsMsgTwist {
  /// @brief Original geometry_msgs/msg/Twist.linear field.
  /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_linear: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Original geometry_msgs/msg/Twist.angular field.
  /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_angular: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_linear.fields(&cursor)
    field_angular.fields(&cursor)
  }
  /// @brief Encode every complete geometry_msgs/msg/Twist field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 48),
      limit: 48, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/Twist.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 48 || bytes.count > 48 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/TwistWithCovariance value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 336..336 bytes.
public struct Ros2Geometry_msgsMsgTwistWithCovariance {
  /// @brief Original geometry_msgs/msg/TwistWithCovariance.twist field.
  /// @details Original type geometry_msgs/msg/Twist. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_twist: Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist()
  /// @brief Original geometry_msgs/msg/TwistWithCovariance.covariance field.
  /// @details Original type float64. Shape array; bound/count 36 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_covariance: [Double] = Array(repeating: 0, count: 36)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_twist.fields(&cursor)
    let count1 = 36
    if cursor.writing && field_covariance.count != 36 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_covariance = Array(repeating: 0, count: count1) }
    for index in 0..<count1 {
      field_covariance[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_covariance[index].bitPattern), 8)))
      if !field_covariance[index].isFinite { cursor.failed = true }
    }
  }
  /// @brief Encode every complete geometry_msgs/msg/TwistWithCovariance field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 336),
      limit: 336, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/TwistWithCovariance.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 336 || bytes.count > 336 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original std_msgs/msg/Header value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 12..140 bytes.
public struct Ros2Std_msgsMsgHeader {
  /// @brief Original std_msgs/msg/Header.stamp field.
  /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_stamp: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Original std_msgs/msg/Header.frame_id field.
  /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_frame_id: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_stamp.fields(&cursor)
    field_frame_id = cursor.text(field_frame_id, 128)
  }
  /// @brief Encode every complete std_msgs/msg/Header field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 140),
      limit: 140, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete std_msgs/msg/Header.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 140 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original nav_msgs/msg/Odometry value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 696..952 bytes.
public struct Ros2Nav_msgsMsgOdometry {
  /// @brief Original nav_msgs/msg/Odometry.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original nav_msgs/msg/Odometry.child_frame_id field.
  /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_child_frame_id: [UInt8] = []
  /// @brief Original nav_msgs/msg/Odometry.pose field.
  /// @details Original type geometry_msgs/msg/PoseWithCovariance. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_pose: Ros2Geometry_msgsMsgPoseWithCovariance =
    Ros2Geometry_msgsMsgPoseWithCovariance()
  /// @brief Original nav_msgs/msg/Odometry.twist field.
  /// @details Original type geometry_msgs/msg/TwistWithCovariance. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_twist: Ros2Geometry_msgsMsgTwistWithCovariance =
    Ros2Geometry_msgsMsgTwistWithCovariance()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    field_child_frame_id = cursor.text(field_child_frame_id, 128)
    field_pose.fields(&cursor)
    field_twist.fields(&cursor)
  }
  /// @brief Encode every complete nav_msgs/msg/Odometry field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 952),
      limit: 952, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete nav_msgs/msg/Odometry.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 696 || bytes.count > 952 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original scout_msgs/msg/ScoutActuatorState value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 19..19 bytes.
public struct Ros2Scout_msgsMsgScoutActuatorState {
  /// @brief Original scout_msgs/msg/ScoutActuatorState.rpm field.
  /// @details Original type int16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rpm: Int16 = 0
  /// @brief Original scout_msgs/msg/ScoutActuatorState.current field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_current: Double = 0
  /// @brief Original scout_msgs/msg/ScoutActuatorState.driver_voltage field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_driver_voltage: Float = 0
  /// @brief Original scout_msgs/msg/ScoutActuatorState.driver_temperature field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_driver_temperature: Float = 0
  /// @brief Original scout_msgs/msg/ScoutActuatorState.motor_temperature field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motor_temperature: Int8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_rpm = Int16(
      bitPattern: UInt16(
        truncatingIfNeeded: cursor.number(UInt64(UInt16(bitPattern: field_rpm)), 2)))
    field_current = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_current.bitPattern), 8)))
    if !field_current.isFinite { cursor.failed = true }
    field_driver_voltage = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_driver_voltage.bitPattern), 4)))
    if !field_driver_voltage.isFinite { cursor.failed = true }
    field_driver_temperature = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_driver_temperature.bitPattern), 4)))
    if !field_driver_temperature.isFinite { cursor.failed = true }
    field_motor_temperature = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_motor_temperature)), 1)))
  }
  /// @brief Encode every complete scout_msgs/msg/ScoutActuatorState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 19),
      limit: 19, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete scout_msgs/msg/ScoutActuatorState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 19 || bytes.count > 19 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original scout_msgs/msg/ScoutLightCmd value.
/// @details Retain all 5 fields and 4 constants in source order. Canonical extent 5..5 bytes.
public struct Ros2Scout_msgsMsgScoutLightCmd {
  /// @brief Original scout_msgs/msg/ScoutLightCmd.cmd_ctrl_allowed field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cmd_ctrl_allowed: Bool = false
  /// @brief Original scout_msgs/msg/ScoutLightCmd.front_mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_front_mode: UInt8 = 0
  /// @brief Original scout_msgs/msg/ScoutLightCmd.front_custom_value field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_front_custom_value: UInt8 = 0
  /// @brief Original scout_msgs/msg/ScoutLightCmd.rear_mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rear_mode: UInt8 = 0
  /// @brief Original scout_msgs/msg/ScoutLightCmd.rear_custom_value field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rear_custom_value: UInt8 = 0
  /// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CONST_OFF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LIGHT_CONST_OFF: UInt8 = 0
  /// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CONST_ON constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LIGHT_CONST_ON: UInt8 = 1
  /// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_BREATH constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LIGHT_BREATH: UInt8 = 2
  /// @brief Original scout_msgs/msg/ScoutLightCmd.LIGHT_CUSTOM constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LIGHT_CUSTOM: UInt8 = 3
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_cmd_ctrl_allowed = cursor.boolean(field_cmd_ctrl_allowed)
    field_front_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_front_mode), 1))
    field_front_custom_value = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(field_front_custom_value), 1))
    field_rear_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_rear_mode), 1))
    field_rear_custom_value = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(field_rear_custom_value), 1))
  }
  /// @brief Encode every complete scout_msgs/msg/ScoutLightCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 5),
      limit: 5, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete scout_msgs/msg/ScoutLightCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 5 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original scout_msgs/msg/ScoutLightState value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 2..2 bytes.
public struct Ros2Scout_msgsMsgScoutLightState {
  /// @brief Original scout_msgs/msg/ScoutLightState.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original scout_msgs/msg/ScoutLightState.custom_value field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_custom_value: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode), 1))
    field_custom_value = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_custom_value), 1))
  }
  /// @brief Encode every complete scout_msgs/msg/ScoutLightState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 2),
      limit: 2, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete scout_msgs/msg/ScoutLightState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 2 || bytes.count > 2 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original scout_msgs/msg/ScoutRCState value.
/// @details Retain all 9 fields and 0 constants in source order. Canonical extent 9..9 bytes.
public struct Ros2Scout_msgsMsgScoutRCState {
  /// @brief Original scout_msgs/msg/ScoutRCState.swa field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_swa: UInt8 = 0
  /// @brief Original scout_msgs/msg/ScoutRCState.swb field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_swb: UInt8 = 0
  /// @brief Original scout_msgs/msg/ScoutRCState.swc field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_swc: UInt8 = 0
  /// @brief Original scout_msgs/msg/ScoutRCState.swd field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_swd: UInt8 = 0
  /// @brief Original scout_msgs/msg/ScoutRCState.stick_right_v field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stick_right_v: Int8 = 0
  /// @brief Original scout_msgs/msg/ScoutRCState.stick_right_h field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stick_right_h: Int8 = 0
  /// @brief Original scout_msgs/msg/ScoutRCState.stick_left_v field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stick_left_v: Int8 = 0
  /// @brief Original scout_msgs/msg/ScoutRCState.stick_left_h field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stick_left_h: Int8 = 0
  /// @brief Original scout_msgs/msg/ScoutRCState.var_a field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_var_a: Int8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_swa = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_swa), 1))
    field_swb = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_swb), 1))
    field_swc = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_swc), 1))
    field_swd = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_swd), 1))
    field_stick_right_v = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_stick_right_v)), 1)))
    field_stick_right_h = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_stick_right_h)), 1)))
    field_stick_left_v = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_stick_left_v)), 1)))
    field_stick_left_h = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_stick_left_h)), 1)))
    field_var_a = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_var_a)), 1)))
  }
  /// @brief Encode every complete scout_msgs/msg/ScoutRCState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 9),
      limit: 9, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete scout_msgs/msg/ScoutRCState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 9 || bytes.count > 9 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original scout_msgs/msg/ScoutStatus value.
/// @details Retain all 11 fields and 6 constants in source order. Canonical extent 121..249 bytes.
public struct Ros2Scout_msgsMsgScoutStatus {
  /// @brief Original scout_msgs/msg/ScoutStatus.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original scout_msgs/msg/ScoutStatus.linear_velocity field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_linear_velocity: Double = 0
  /// @brief Original scout_msgs/msg/ScoutStatus.angular_velocity field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_angular_velocity: Double = 0
  /// @brief Original scout_msgs/msg/ScoutStatus.vehicle_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_vehicle_state: UInt8 = 0
  /// @brief Original scout_msgs/msg/ScoutStatus.control_mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_control_mode: UInt8 = 0
  /// @brief Original scout_msgs/msg/ScoutStatus.error_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error_code: UInt16 = 0
  /// @brief Original scout_msgs/msg/ScoutStatus.battery_voltage field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_battery_voltage: Double = 0
  /// @brief Original scout_msgs/msg/ScoutStatus.actuator_states field.
  /// @details Original type scout_msgs/msg/ScoutActuatorState. Shape array; bound/count 4
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_actuator_states: [Ros2Scout_msgsMsgScoutActuatorState] = Array(
    repeating: Ros2Scout_msgsMsgScoutActuatorState(), count: 4)
  /// @brief Original scout_msgs/msg/ScoutStatus.light_control_enabled field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_light_control_enabled: Bool = false
  /// @brief Original scout_msgs/msg/ScoutStatus.front_light_state field.
  /// @details Original type scout_msgs/msg/ScoutLightState. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_front_light_state: Ros2Scout_msgsMsgScoutLightState =
    Ros2Scout_msgsMsgScoutLightState()
  /// @brief Original scout_msgs/msg/ScoutStatus.rear_light_state field.
  /// @details Original type scout_msgs/msg/ScoutLightState. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_rear_light_state: Ros2Scout_msgsMsgScoutLightState =
    Ros2Scout_msgsMsgScoutLightState()
  /// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_FRONT_RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTOR_ID_FRONT_RIGHT: Int8 = 0
  /// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_FRONT_LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTOR_ID_FRONT_LEFT: Int8 = 1
  /// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_REAR_RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTOR_ID_REAR_RIGHT: Int8 = 2
  /// @brief Original scout_msgs/msg/ScoutStatus.MOTOR_ID_REAR_LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTOR_ID_REAR_LEFT: Int8 = 3
  /// @brief Original scout_msgs/msg/ScoutStatus.LIGHT_ID_FRONT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LIGHT_ID_FRONT: Int8 = 0
  /// @brief Original scout_msgs/msg/ScoutStatus.LIGHT_ID_REAR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LIGHT_ID_REAR: Int8 = 1
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    field_linear_velocity = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_linear_velocity.bitPattern), 8)))
    if !field_linear_velocity.isFinite { cursor.failed = true }
    field_angular_velocity = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_angular_velocity.bitPattern), 8)))
    if !field_angular_velocity.isFinite { cursor.failed = true }
    field_vehicle_state = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_vehicle_state), 1))
    field_control_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_control_mode), 1))
    field_error_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_error_code), 2))
    field_battery_voltage = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_battery_voltage.bitPattern), 8)))
    if !field_battery_voltage.isFinite { cursor.failed = true }
    let count7 = 4
    if cursor.writing && field_actuator_states.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_actuator_states = Array(repeating: Ros2Scout_msgsMsgScoutActuatorState(), count: count7)
    }
    for index in 0..<count7 {
      field_actuator_states[index].fields(&cursor)
    }
    field_light_control_enabled = cursor.boolean(field_light_control_enabled)
    field_front_light_state.fields(&cursor)
    field_rear_light_state.fields(&cursor)
  }
  /// @brief Encode every complete scout_msgs/msg/ScoutStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 249),
      limit: 249, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete scout_msgs/msg/ScoutStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 121 || bytes.count > 249 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}
