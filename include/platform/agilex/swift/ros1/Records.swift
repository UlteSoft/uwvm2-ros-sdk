/// @file Records.swift
/// @brief Complete original agilex ROS 1 Embedded Swift values and codecs.
/// @details Bytes are owned arrays; no Foundation, native ROS object or implicit authority is used.

/// @brief Complete original geometry_msgs/Point value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros1Geometry_msgsPoint {
  /// @brief Original geometry_msgs/Point.x field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Double = 0
  /// @brief Original geometry_msgs/Point.y field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Double = 0
  /// @brief Original geometry_msgs/Point.z field.
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
  /// @brief Encode every complete geometry_msgs/Point field.
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
  /// @brief Decode exactly one complete geometry_msgs/Point.
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

/// @brief Complete original geometry_msgs/Quaternion value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 32..32 bytes.
public struct Ros1Geometry_msgsQuaternion {
  /// @brief Original geometry_msgs/Quaternion.x field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Double = 0
  /// @brief Original geometry_msgs/Quaternion.y field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Double = 0
  /// @brief Original geometry_msgs/Quaternion.z field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Double = 0
  /// @brief Original geometry_msgs/Quaternion.w field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_w: Double = 0
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
  /// @brief Encode every complete geometry_msgs/Quaternion field.
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
  /// @brief Decode exactly one complete geometry_msgs/Quaternion.
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

/// @brief Complete original geometry_msgs/Pose value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 56..56 bytes.
public struct Ros1Geometry_msgsPose {
  /// @brief Original geometry_msgs/Pose.position field.
  /// @details Original type geometry_msgs/Point. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_position: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Original geometry_msgs/Pose.orientation field.
  /// @details Original type geometry_msgs/Quaternion. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_orientation: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
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
  /// @brief Encode every complete geometry_msgs/Pose field.
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
  /// @brief Decode exactly one complete geometry_msgs/Pose.
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

/// @brief Complete original geometry_msgs/PoseWithCovariance value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 344..344 bytes.
public struct Ros1Geometry_msgsPoseWithCovariance {
  /// @brief Original geometry_msgs/PoseWithCovariance.pose field.
  /// @details Original type geometry_msgs/Pose. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_pose: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Original geometry_msgs/PoseWithCovariance.covariance field.
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
  /// @brief Encode every complete geometry_msgs/PoseWithCovariance field.
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
  /// @brief Decode exactly one complete geometry_msgs/PoseWithCovariance.
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

/// @brief Complete original geometry_msgs/Vector3 value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros1Geometry_msgsVector3 {
  /// @brief Original geometry_msgs/Vector3.x field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Double = 0
  /// @brief Original geometry_msgs/Vector3.y field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Double = 0
  /// @brief Original geometry_msgs/Vector3.z field.
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
  /// @brief Encode every complete geometry_msgs/Vector3 field.
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
  /// @brief Decode exactly one complete geometry_msgs/Vector3.
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

/// @brief Complete original geometry_msgs/Twist value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 48..48 bytes.
public struct Ros1Geometry_msgsTwist {
  /// @brief Original geometry_msgs/Twist.linear field.
  /// @details Original type geometry_msgs/Vector3. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_linear: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  /// @brief Original geometry_msgs/Twist.angular field.
  /// @details Original type geometry_msgs/Vector3. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_angular: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
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
  /// @brief Encode every complete geometry_msgs/Twist field.
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
  /// @brief Decode exactly one complete geometry_msgs/Twist.
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

/// @brief Complete original geometry_msgs/TwistWithCovariance value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 336..336 bytes.
public struct Ros1Geometry_msgsTwistWithCovariance {
  /// @brief Original geometry_msgs/TwistWithCovariance.twist field.
  /// @details Original type geometry_msgs/Twist. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_twist: Ros1Geometry_msgsTwist = Ros1Geometry_msgsTwist()
  /// @brief Original geometry_msgs/TwistWithCovariance.covariance field.
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
  /// @brief Encode every complete geometry_msgs/TwistWithCovariance field.
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
  /// @brief Decode exactly one complete geometry_msgs/TwistWithCovariance.
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

/// @brief Complete original time value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros1Time {
  /// @brief Original time.sec field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sec: UInt32 = 0
  /// @brief Original time.nsec field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nsec: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_sec = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_sec), 4))
    field_nsec = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_nsec), 4))
    if self.field_nsec >= 1_000_000_000 { cursor.failed = true }
  }
  /// @brief Encode every complete time field.
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
  /// @brief Decode exactly one complete time.
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

/// @brief Complete original std_msgs/Header value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 16..144 bytes.
public struct Ros1Std_msgsHeader {
  /// @brief Original std_msgs/Header.seq field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_seq: UInt32 = 0
  /// @brief Original std_msgs/Header.stamp field.
  /// @details Original type time. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stamp: Ros1Time = Ros1Time()
  /// @brief Original std_msgs/Header.frame_id field.
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
    field_seq = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_seq), 4))
    field_stamp.fields(&cursor)
    field_frame_id = cursor.text(field_frame_id, 128)
  }
  /// @brief Encode every complete std_msgs/Header field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 144),
      limit: 144, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete std_msgs/Header.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 144 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original nav_msgs/Odometry value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 700..956 bytes.
public struct Ros1Nav_msgsOdometry {
  /// @brief Original nav_msgs/Odometry.header field.
  /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  /// order. Backing storage belongs to this value; constructing or copying it creates no native
  /// ROS owner.
  public var field_header: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Original nav_msgs/Odometry.child_frame_id field.
  /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_child_frame_id: [UInt8] = []
  /// @brief Original nav_msgs/Odometry.pose field.
  /// @details Original type geometry_msgs/PoseWithCovariance. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_pose: Ros1Geometry_msgsPoseWithCovariance = Ros1Geometry_msgsPoseWithCovariance()
  /// @brief Original nav_msgs/Odometry.twist field.
  /// @details Original type geometry_msgs/TwistWithCovariance. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_twist: Ros1Geometry_msgsTwistWithCovariance =
    Ros1Geometry_msgsTwistWithCovariance()
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
  /// @brief Encode every complete nav_msgs/Odometry field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 956),
      limit: 956, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete nav_msgs/Odometry.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 700 || bytes.count > 956 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original scout_msgs/ScoutBmsStatus value.
/// @details Retain all 9 fields and 0 constants in source order. Canonical extent 44..44 bytes.
public struct Ros1Scout_msgsScoutBmsStatus {
  /// @brief Original scout_msgs/ScoutBmsStatus.SOC field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_SOC: Double = 0
  /// @brief Original scout_msgs/ScoutBmsStatus.SOH field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_SOH: Double = 0
  /// @brief Original scout_msgs/ScoutBmsStatus.battery_voltage field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_battery_voltage: Double = 0
  /// @brief Original scout_msgs/ScoutBmsStatus.battery_current field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_battery_current: Double = 0
  /// @brief Original scout_msgs/ScoutBmsStatus.battery_temperature field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_battery_temperature: Double = 0
  /// @brief Original scout_msgs/ScoutBmsStatus.Alarm_Status_1 field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_Alarm_Status_1: UInt8 = 0
  /// @brief Original scout_msgs/ScoutBmsStatus.Alarm_Status_2 field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_Alarm_Status_2: UInt8 = 0
  /// @brief Original scout_msgs/ScoutBmsStatus.Warning_Status_1 field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_Warning_Status_1: UInt8 = 0
  /// @brief Original scout_msgs/ScoutBmsStatus.Warning_Status_2 field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_Warning_Status_2: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_SOC = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_SOC.bitPattern), 8)))
    if !field_SOC.isFinite { cursor.failed = true }
    field_SOH = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_SOH.bitPattern), 8)))
    if !field_SOH.isFinite { cursor.failed = true }
    field_battery_voltage = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_battery_voltage.bitPattern), 8)))
    if !field_battery_voltage.isFinite { cursor.failed = true }
    field_battery_current = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_battery_current.bitPattern), 8)))
    if !field_battery_current.isFinite { cursor.failed = true }
    field_battery_temperature = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_battery_temperature.bitPattern), 8)))
    if !field_battery_temperature.isFinite { cursor.failed = true }
    field_Alarm_Status_1 = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_Alarm_Status_1), 1))
    field_Alarm_Status_2 = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_Alarm_Status_2), 1))
    field_Warning_Status_1 = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(field_Warning_Status_1), 1))
    field_Warning_Status_2 = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(field_Warning_Status_2), 1))
  }
  /// @brief Encode every complete scout_msgs/ScoutBmsStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 44),
      limit: 44, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete scout_msgs/ScoutBmsStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 44 || bytes.count > 44 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original scout_msgs/ScoutDriverState value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 17..17 bytes.
public struct Ros1Scout_msgsScoutDriverState {
  /// @brief Original scout_msgs/ScoutDriverState.driver_voltage field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_driver_voltage: Double = 0
  /// @brief Original scout_msgs/ScoutDriverState.driver_temperature field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_driver_temperature: Double = 0
  /// @brief Original scout_msgs/ScoutDriverState.driver_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_driver_state: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_driver_voltage = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_driver_voltage.bitPattern), 8)))
    if !field_driver_voltage.isFinite { cursor.failed = true }
    field_driver_temperature = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_driver_temperature.bitPattern), 8)))
    if !field_driver_temperature.isFinite { cursor.failed = true }
    field_driver_state = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_driver_state), 1))
  }
  /// @brief Encode every complete scout_msgs/ScoutDriverState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 17),
      limit: 17, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete scout_msgs/ScoutDriverState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 17 || bytes.count > 17 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original scout_msgs/ScoutLightCmd value.
/// @details Retain all 5 fields and 4 constants in source order. Canonical extent 5..5 bytes.
public struct Ros1Scout_msgsScoutLightCmd {
  /// @brief Original scout_msgs/ScoutLightCmd.enable_cmd_light_control field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_enable_cmd_light_control: Bool = false
  /// @brief Original scout_msgs/ScoutLightCmd.front_mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_front_mode: UInt8 = 0
  /// @brief Original scout_msgs/ScoutLightCmd.front_custom_value field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_front_custom_value: UInt8 = 0
  /// @brief Original scout_msgs/ScoutLightCmd.rear_mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rear_mode: UInt8 = 0
  /// @brief Original scout_msgs/ScoutLightCmd.rear_custom_value field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rear_custom_value: UInt8 = 0
  /// @brief Original scout_msgs/ScoutLightCmd.LIGHT_CONST_OFF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LIGHT_CONST_OFF: UInt8 = 0
  /// @brief Original scout_msgs/ScoutLightCmd.LIGHT_CONST_ON constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LIGHT_CONST_ON: UInt8 = 1
  /// @brief Original scout_msgs/ScoutLightCmd.LIGHT_BREATH constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LIGHT_BREATH: UInt8 = 2
  /// @brief Original scout_msgs/ScoutLightCmd.LIGHT_CUSTOM constant.
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
    field_enable_cmd_light_control = cursor.boolean(field_enable_cmd_light_control)
    field_front_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_front_mode), 1))
    field_front_custom_value = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(field_front_custom_value), 1))
    field_rear_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_rear_mode), 1))
    field_rear_custom_value = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(field_rear_custom_value), 1))
  }
  /// @brief Encode every complete scout_msgs/ScoutLightCmd field.
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
  /// @brief Decode exactly one complete scout_msgs/ScoutLightCmd.
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

/// @brief Complete original scout_msgs/ScoutLightState value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 2..2 bytes.
public struct Ros1Scout_msgsScoutLightState {
  /// @brief Original scout_msgs/ScoutLightState.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original scout_msgs/ScoutLightState.custom_value field.
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
  /// @brief Encode every complete scout_msgs/ScoutLightState field.
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
  /// @brief Decode exactly one complete scout_msgs/ScoutLightState.
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

/// @brief Complete original scout_msgs/ScoutMotorState value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 32..32 bytes.
public struct Ros1Scout_msgsScoutMotorState {
  /// @brief Original scout_msgs/ScoutMotorState.current field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_current: Double = 0
  /// @brief Original scout_msgs/ScoutMotorState.rpm field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rpm: Double = 0
  /// @brief Original scout_msgs/ScoutMotorState.temperature field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_temperature: Double = 0
  /// @brief Original scout_msgs/ScoutMotorState.motor_pose field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motor_pose: Double = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_current = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_current.bitPattern), 8)))
    if !field_current.isFinite { cursor.failed = true }
    field_rpm = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_rpm.bitPattern), 8)))
    if !field_rpm.isFinite { cursor.failed = true }
    field_temperature = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_temperature.bitPattern), 8))
    )
    if !field_temperature.isFinite { cursor.failed = true }
    field_motor_pose = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_motor_pose.bitPattern), 8)))
    if !field_motor_pose.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete scout_msgs/ScoutMotorState field.
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
  /// @brief Decode exactly one complete scout_msgs/ScoutMotorState.
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

/// @brief Complete original scout_msgs/ScoutRsStatus value.
/// @details Retain all 10 fields and 0 constants in source order. Canonical extent 25..153 bytes.
public struct Ros1Scout_msgsScoutRsStatus {
  /// @brief Original scout_msgs/ScoutRsStatus.header field.
  /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  /// order. Backing storage belongs to this value; constructing or copying it creates no native
  /// ROS owner.
  public var field_header: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Original scout_msgs/ScoutRsStatus.stick_left_h field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stick_left_h: Int8 = 0
  /// @brief Original scout_msgs/ScoutRsStatus.stick_left_v field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stick_left_v: Int8 = 0
  /// @brief Original scout_msgs/ScoutRsStatus.stick_right_h field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stick_right_h: Int8 = 0
  /// @brief Original scout_msgs/ScoutRsStatus.stick_right_v field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stick_right_v: Int8 = 0
  /// @brief Original scout_msgs/ScoutRsStatus.swa field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_swa: UInt8 = 0
  /// @brief Original scout_msgs/ScoutRsStatus.swb field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_swb: UInt8 = 0
  /// @brief Original scout_msgs/ScoutRsStatus.swc field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_swc: UInt8 = 0
  /// @brief Original scout_msgs/ScoutRsStatus.swd field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_swd: UInt8 = 0
  /// @brief Original scout_msgs/ScoutRsStatus.var_a field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_var_a: UInt8 = 0
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
    field_stick_left_h = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_stick_left_h)), 1)))
    field_stick_left_v = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_stick_left_v)), 1)))
    field_stick_right_h = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_stick_right_h)), 1)))
    field_stick_right_v = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_stick_right_v)), 1)))
    field_swa = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_swa), 1))
    field_swb = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_swb), 1))
    field_swc = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_swc), 1))
    field_swd = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_swd), 1))
    field_var_a = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_var_a), 1))
  }
  /// @brief Encode every complete scout_msgs/ScoutRsStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 153),
      limit: 153, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete scout_msgs/ScoutRsStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 25 || bytes.count > 153 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original scout_msgs/ScoutStatus value.
/// @details Retain all 13 fields and 6 constants in source order. Canonical extent 253..381 bytes.
public struct Ros1Scout_msgsScoutStatus {
  /// @brief Original scout_msgs/ScoutStatus.header field.
  /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  /// order. Backing storage belongs to this value; constructing or copying it creates no native
  /// ROS owner.
  public var field_header: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Original scout_msgs/ScoutStatus.linear_velocity field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_linear_velocity: Double = 0
  /// @brief Original scout_msgs/ScoutStatus.angular_velocity field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_angular_velocity: Double = 0
  /// @brief Original scout_msgs/ScoutStatus.lateral_velocity field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_lateral_velocity: Double = 0
  /// @brief Original scout_msgs/ScoutStatus.base_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_base_state: UInt8 = 0
  /// @brief Original scout_msgs/ScoutStatus.control_mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_control_mode: UInt8 = 0
  /// @brief Original scout_msgs/ScoutStatus.fault_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_fault_code: UInt16 = 0
  /// @brief Original scout_msgs/ScoutStatus.battery_voltage field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_battery_voltage: Double = 0
  /// @brief Original scout_msgs/ScoutStatus.motor_states field.
  /// @details Original type scout_msgs/ScoutMotorState. Shape array; bound/count 4 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_motor_states: [Ros1Scout_msgsScoutMotorState] = Array(
    repeating: Ros1Scout_msgsScoutMotorState(), count: 4)
  /// @brief Original scout_msgs/ScoutStatus.driver_states field.
  /// @details Original type scout_msgs/ScoutDriverState. Shape array; bound/count 4 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_driver_states: [Ros1Scout_msgsScoutDriverState] = Array(
    repeating: Ros1Scout_msgsScoutDriverState(), count: 4)
  /// @brief Original scout_msgs/ScoutStatus.light_control_enabled field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_light_control_enabled: Bool = false
  /// @brief Original scout_msgs/ScoutStatus.front_light_state field.
  /// @details Original type scout_msgs/ScoutLightState. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_front_light_state: Ros1Scout_msgsScoutLightState =
    Ros1Scout_msgsScoutLightState()
  /// @brief Original scout_msgs/ScoutStatus.rear_light_state field.
  /// @details Original type scout_msgs/ScoutLightState. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_rear_light_state: Ros1Scout_msgsScoutLightState = Ros1Scout_msgsScoutLightState()
  /// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_FRONT_RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTOR_ID_FRONT_RIGHT: Int8 = 0
  /// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_FRONT_LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTOR_ID_FRONT_LEFT: Int8 = 1
  /// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_REAR_RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTOR_ID_REAR_RIGHT: Int8 = 2
  /// @brief Original scout_msgs/ScoutStatus.MOTOR_ID_REAR_LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTOR_ID_REAR_LEFT: Int8 = 3
  /// @brief Original scout_msgs/ScoutStatus.LIGHT_ID_FRONT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LIGHT_ID_FRONT: Int8 = 0
  /// @brief Original scout_msgs/ScoutStatus.LIGHT_ID_REAR constant.
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
    field_lateral_velocity = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_lateral_velocity.bitPattern), 8)))
    if !field_lateral_velocity.isFinite { cursor.failed = true }
    field_base_state = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_base_state), 1))
    field_control_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_control_mode), 1))
    field_fault_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_fault_code), 2))
    field_battery_voltage = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_battery_voltage.bitPattern), 8)))
    if !field_battery_voltage.isFinite { cursor.failed = true }
    let count8 = 4
    if cursor.writing && field_motor_states.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_motor_states = Array(repeating: Ros1Scout_msgsScoutMotorState(), count: count8)
    }
    for index in 0..<count8 {
      field_motor_states[index].fields(&cursor)
    }
    let count9 = 4
    if cursor.writing && field_driver_states.count != 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_driver_states = Array(repeating: Ros1Scout_msgsScoutDriverState(), count: count9)
    }
    for index in 0..<count9 {
      field_driver_states[index].fields(&cursor)
    }
    field_light_control_enabled = cursor.boolean(field_light_control_enabled)
    field_front_light_state.fields(&cursor)
    field_rear_light_state.fields(&cursor)
  }
  /// @brief Encode every complete scout_msgs/ScoutStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 381),
      limit: 381, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete scout_msgs/ScoutStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 253 || bytes.count > 381 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}
