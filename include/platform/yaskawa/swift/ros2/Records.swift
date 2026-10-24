/// @file Records.swift
/// @brief Complete original YASKAWA ROS 2 Embedded Swift values and codecs.
/// @details Bytes are owned arrays; no Foundation, native ROS object or implicit authority is used.

/// @brief Complete original builtin_interfaces/msg/Duration value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Builtin_interfacesMsgDuration {
  /// @brief Original builtin_interfaces/msg/Duration.sec field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sec: Int32 = 0
  /// @brief Original builtin_interfaces/msg/Duration.nanosec field.
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
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_sec = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sec)), 4)))
    field_nanosec = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_nanosec), 4))
    if field_nanosec >= 1_000_000_000 { cursor.failed = true }
  }
  /// @brief Encode every complete builtin_interfaces/msg/Duration field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete builtin_interfaces/msg/Duration.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

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
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_sec = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sec)), 4)))
    field_nanosec = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_nanosec), 4))
    if field_nanosec >= 1_000_000_000 { cursor.failed = true }
  }
  /// @brief Encode every complete builtin_interfaces/msg/Time field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
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
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original std_msgs/msg/Header value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 12..76 bytes.
public struct Ros2Std_msgsMsgHeader {
  /// @brief Original std_msgs/msg/Header.stamp field.
  /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_stamp: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Original std_msgs/msg/Header.frame_id field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
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
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_stamp.fields(&cursor)
    field_frame_id = cursor.text(field_frame_id, 64)
  }
  /// @brief Encode every complete std_msgs/msg/Header field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 76),
      limit: 76, writing: true)
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
    if bytes.count < 12 || bytes.count > 76 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original trajectory_msgs/msg/JointTrajectoryPoint value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 24..408 bytes.
public struct Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.positions field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_positions: [Double] = []
  /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.velocities field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_velocities: [Double] = []
  /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_accelerations: [Double] = []
  /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.effort field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_effort: [Double] = []
  /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start field.
  /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_time_from_start: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    let count0 = Int(cursor.number(UInt64(field_positions.count), 4))
    if count0 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_positions = Array(repeating: 0, count: count0) }
    for index in 0..<count0 {
      field_positions[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_positions[index].bitPattern), 8)))
      if !field_positions[index].isFinite { cursor.failed = true }
    }
    let count1 = Int(cursor.number(UInt64(field_velocities.count), 4))
    if count1 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_velocities = Array(repeating: 0, count: count1) }
    for index in 0..<count1 {
      field_velocities[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_velocities[index].bitPattern), 8)))
      if !field_velocities[index].isFinite { cursor.failed = true }
    }
    let count2 = Int(cursor.number(UInt64(field_accelerations.count), 4))
    if count2 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_accelerations = Array(repeating: 0, count: count2) }
    for index in 0..<count2 {
      field_accelerations[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_accelerations[index].bitPattern), 8)))
      if !field_accelerations[index].isFinite { cursor.failed = true }
    }
    let count3 = Int(cursor.number(UInt64(field_effort.count), 4))
    if count3 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_effort = Array(repeating: 0, count: count3) }
    for index in 0..<count3 {
      field_effort[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_effort[index].bitPattern), 8)))
      if !field_effort[index].isFinite { cursor.failed = true }
    }
    field_time_from_start.fields(&cursor)
  }
  /// @brief Encode every complete trajectory_msgs/msg/JointTrajectoryPoint field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 408),
      limit: 408, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectoryPoint.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 408 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original trajectory_msgs/msg/JointTrajectory value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 20..4164 bytes.
public struct Ros2Trajectory_msgsMsgJointTrajectory {
  /// @brief Original trajectory_msgs/msg/JointTrajectory.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original trajectory_msgs/msg/JointTrajectory.joint_names field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
  /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_joint_names: [[UInt8]] = []
  /// @brief Original trajectory_msgs/msg/JointTrajectory.points field.
  /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Shape sequence; bound/count
  /// 8 elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_points: [Ros2Trajectory_msgsMsgJointTrajectoryPoint] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_joint_names.count), 4))
    if count1 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_joint_names = Array(repeating: [], count: count1) }
    for index in 0..<count1 {
      field_joint_names[index] = cursor.text(field_joint_names[index], 64)
    }
    let count2 = Int(cursor.number(UInt64(field_points.count), 4))
    if count2 > 8 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_points = Array(repeating: Ros2Trajectory_msgsMsgJointTrajectoryPoint(), count: count2)
    }
    for index in 0..<count2 {
      field_points[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete trajectory_msgs/msg/JointTrajectory field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 4164),
      limit: 4164, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectory.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 4164 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout YASKAWACursor) {
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
    var cursor = YASKAWACursor(
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
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
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
  public var field_x: Double = 0.0
  /// @brief Original geometry_msgs/msg/Quaternion.y field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Double = 0.0
  /// @brief Original geometry_msgs/msg/Quaternion.z field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Double = 0.0
  /// @brief Original geometry_msgs/msg/Quaternion.w field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_w: Double = 1.0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
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
    var cursor = YASKAWACursor(
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
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/Transform value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 56..56 bytes.
public struct Ros2Geometry_msgsMsgTransform {
  /// @brief Original geometry_msgs/msg/Transform.translation field.
  /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_translation: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Original geometry_msgs/msg/Transform.rotation field.
  /// @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_rotation: Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_translation.fields(&cursor)
    field_rotation.fields(&cursor)
  }
  /// @brief Encode every complete geometry_msgs/msg/Transform field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 56),
      limit: 56, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/Transform.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 56 || bytes.count > 56 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_linear.fields(&cursor)
    field_angular.fields(&cursor)
  }
  /// @brief Encode every complete geometry_msgs/msg/Twist field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
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
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 20..324 bytes.
public struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms field.
  /// @details Original type geometry_msgs/msg/Transform. Shape sequence; bound/count 2 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_transforms: [Ros2Geometry_msgsMsgTransform] = []
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities field.
  /// @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_velocities: [Ros2Geometry_msgsMsgTwist] = []
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations field.
  /// @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_accelerations: [Ros2Geometry_msgsMsgTwist] = []
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start field.
  /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_time_from_start: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    let count0 = Int(cursor.number(UInt64(field_transforms.count), 4))
    if count0 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_transforms = Array(repeating: Ros2Geometry_msgsMsgTransform(), count: count0)
    }
    for index in 0..<count0 {
      field_transforms[index].fields(&cursor)
    }
    let count1 = Int(cursor.number(UInt64(field_velocities.count), 4))
    if count1 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_velocities = Array(repeating: Ros2Geometry_msgsMsgTwist(), count: count1)
    }
    for index in 0..<count1 {
      field_velocities[index].fields(&cursor)
    }
    let count2 = Int(cursor.number(UInt64(field_accelerations.count), 4))
    if count2 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_accelerations = Array(repeating: Ros2Geometry_msgsMsgTwist(), count: count2)
    }
    for index in 0..<count2 {
      field_accelerations[index].fields(&cursor)
    }
    field_time_from_start.fields(&cursor)
  }
  /// @brief Encode every complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 324),
      limit: 324, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 324 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectory value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 20..1516 bytes.
public struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
  /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_joint_names: [[UInt8]] = []
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.points field.
  /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Shape sequence;
  /// bound/count 4 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_points: [Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_joint_names.count), 4))
    if count1 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_joint_names = Array(repeating: [], count: count1) }
    for index in 0..<count1 {
      field_joint_names[index] = cursor.text(field_joint_names[index], 64)
    }
    let count2 = Int(cursor.number(UInt64(field_points.count), 4))
    if count2 > 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_points = Array(
        repeating: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(), count: count2)
    }
    for index in 0..<count2 {
      field_points[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete trajectory_msgs/msg/MultiDOFJointTrajectory field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1516),
      limit: 1516, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectory.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 1516 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original control_msgs/msg/JointTolerance value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 28..92 bytes.
public struct Ros2Control_msgsMsgJointTolerance {
  /// @brief Original control_msgs/msg/JointTolerance.name field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_name: [UInt8] = []
  /// @brief Original control_msgs/msg/JointTolerance.position field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_position: Double = 0
  /// @brief Original control_msgs/msg/JointTolerance.velocity field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_velocity: Double = 0
  /// @brief Original control_msgs/msg/JointTolerance.acceleration field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_acceleration: Double = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_name = cursor.text(field_name, 64)
    field_position = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_position.bitPattern), 8)))
    if !field_position.isFinite { cursor.failed = true }
    field_velocity = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_velocity.bitPattern), 8)))
    if !field_velocity.isFinite { cursor.failed = true }
    field_acceleration = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_acceleration.bitPattern), 8)))
    if !field_acceleration.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete control_msgs/msg/JointTolerance field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 92),
      limit: 92, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete control_msgs/msg/JointTolerance.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 28 || bytes.count > 92 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original control_msgs/msg/JointComponentTolerance value.
/// @details Retain all 5 fields and 5 constants in source order. Canonical extent 30..542 bytes.
public struct Ros2Control_msgsMsgJointComponentTolerance {
  /// @brief Original control_msgs/msg/JointComponentTolerance.joint_name field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_joint_name: [UInt8] = []
  /// @brief Original control_msgs/msg/JointComponentTolerance.component field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_component: UInt16 = 0
  /// @brief Original control_msgs/msg/JointComponentTolerance.position field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_position: Double = 0
  /// @brief Original control_msgs/msg/JointComponentTolerance.velocity field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_velocity: Double = 0
  /// @brief Original control_msgs/msg/JointComponentTolerance.acceleration field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_acceleration: Double = 0
  /// @brief Original control_msgs/msg/JointComponentTolerance.X_AXIS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_X_AXIS: UInt16 = 1
  /// @brief Original control_msgs/msg/JointComponentTolerance.Y_AXIS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_Y_AXIS: UInt16 = 2
  /// @brief Original control_msgs/msg/JointComponentTolerance.Z_AXIS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_Z_AXIS: UInt16 = 3
  /// @brief Original control_msgs/msg/JointComponentTolerance.TRANSLATION constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_TRANSLATION: UInt16 = 4
  /// @brief Original control_msgs/msg/JointComponentTolerance.ROTATION constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ROTATION: UInt16 = 5
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_joint_name = cursor.text(field_joint_name, 512)
    field_component = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_component), 2))
    field_position = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_position.bitPattern), 8)))
    if !field_position.isFinite { cursor.failed = true }
    field_velocity = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_velocity.bitPattern), 8)))
    if !field_velocity.isFinite { cursor.failed = true }
    field_acceleration = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_acceleration.bitPattern), 8)))
    if !field_acceleration.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete control_msgs/msg/JointComponentTolerance field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 542),
      limit: 542, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete control_msgs/msg/JointComponentTolerance.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 30 || bytes.count > 542 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original control_msgs/action/FollowJointTrajectory_Goal value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 64..20920 bytes.
public struct Ros2Control_msgsActionFollowJointTrajectory_Goal {
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.trajectory field.
  /// @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_trajectory: Ros2Trajectory_msgsMsgJointTrajectory =
    Ros2Trajectory_msgsMsgJointTrajectory()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory field.
  /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectory. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance field.
  /// @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_path_tolerance: [Ros2Control_msgsMsgJointTolerance] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance
  /// field.
  /// @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count
  /// 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_component_path_tolerance: [Ros2Control_msgsMsgJointComponentTolerance] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance field.
  /// @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_goal_tolerance: [Ros2Control_msgsMsgJointTolerance] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance
  /// field.
  /// @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count
  /// 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_component_goal_tolerance: [Ros2Control_msgsMsgJointComponentTolerance] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance field.
  /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_goal_time_tolerance: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_trajectory.fields(&cursor)
    field_multi_dof_trajectory.fields(&cursor)
    let count2 = Int(cursor.number(UInt64(field_path_tolerance.count), 4))
    if count2 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_path_tolerance = Array(repeating: Ros2Control_msgsMsgJointTolerance(), count: count2)
    }
    for index in 0..<count2 {
      field_path_tolerance[index].fields(&cursor)
    }
    let count3 = Int(cursor.number(UInt64(field_component_path_tolerance.count), 4))
    if count3 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_component_path_tolerance = Array(
        repeating: Ros2Control_msgsMsgJointComponentTolerance(), count: count3)
    }
    for index in 0..<count3 {
      field_component_path_tolerance[index].fields(&cursor)
    }
    let count4 = Int(cursor.number(UInt64(field_goal_tolerance.count), 4))
    if count4 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_goal_tolerance = Array(repeating: Ros2Control_msgsMsgJointTolerance(), count: count4)
    }
    for index in 0..<count4 {
      field_goal_tolerance[index].fields(&cursor)
    }
    let count5 = Int(cursor.number(UInt64(field_component_goal_tolerance.count), 4))
    if count5 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_component_goal_tolerance = Array(
        repeating: Ros2Control_msgsMsgJointComponentTolerance(), count: count5)
    }
    for index in 0..<count5 {
      field_component_goal_tolerance[index].fields(&cursor)
    }
    field_goal_time_tolerance.fields(&cursor)
  }
  /// @brief Encode every complete control_msgs/action/FollowJointTrajectory_Goal field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 20920),
      limit: 20920, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Goal.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 64 || bytes.count > 20920 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original control_msgs/action/FollowJointTrajectory_Result value.
/// @details Retain all 2 fields and 6 constants in source order. Canonical extent 8..4104 bytes.
public struct Ros2Control_msgsActionFollowJointTrajectory_Result {
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.error_code field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error_code: Int32 = 0
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.error_string field.
  /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_error_string: [UInt8] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SUCCESSFUL: Int32 = 0
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_GOAL: Int32 = -1
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_JOINTS: Int32 = -2
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_OLD_HEADER_TIMESTAMP: Int32 = -3
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PATH_TOLERANCE_VIOLATED: Int32 = -4
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_GOAL_TOLERANCE_VIOLATED: Int32 = -5
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_error_code = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_error_code)), 4)))
    field_error_string = cursor.text(field_error_string, 4096)
  }
  /// @brief Encode every complete control_msgs/action/FollowJointTrajectory_Result field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 4104),
      limit: 4104, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Result.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 4104 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original control_msgs/action/FollowJointTrajectory_Feedback value.
/// @details Retain all 9 fields and 0 constants in source order. Canonical extent 152..4128 bytes.
public struct Ros2Control_msgsActionFollowJointTrajectory_Feedback {
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
  /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_joint_names: [[UInt8]] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.desired field.
  /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.actual field.
  /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.error field.
  /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_error: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names
  /// field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Shape sequence;
  /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_multi_dof_joint_names: [[UInt8]] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired field.
  /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual field.
  /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error field.
  /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_joint_names.count), 4))
    if count1 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_joint_names = Array(repeating: [], count: count1) }
    for index in 0..<count1 {
      field_joint_names[index] = cursor.text(field_joint_names[index], 64)
    }
    field_desired.fields(&cursor)
    field_actual.fields(&cursor)
    field_error.fields(&cursor)
    let count5 = Int(cursor.number(UInt64(field_multi_dof_joint_names.count), 4))
    if count5 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_multi_dof_joint_names = Array(repeating: [], count: count5) }
    for index in 0..<count5 {
      field_multi_dof_joint_names[index] = cursor.text(field_multi_dof_joint_names[index], 512)
    }
    field_multi_dof_desired.fields(&cursor)
    field_multi_dof_actual.fields(&cursor)
    field_multi_dof_error.fields(&cursor)
  }
  /// @brief Encode every complete control_msgs/action/FollowJointTrajectory_Feedback field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 4128),
      limit: 4128, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Feedback.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 152 || bytes.count > 4128 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/TransformStamped value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 72..648 bytes.
public struct Ros2Geometry_msgsMsgTransformStamped {
  /// @brief Original geometry_msgs/msg/TransformStamped.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original geometry_msgs/msg/TransformStamped.child_frame_id field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_child_frame_id: [UInt8] = []
  /// @brief Original geometry_msgs/msg/TransformStamped.transform field.
  /// @details Original type geometry_msgs/msg/Transform. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_transform: Ros2Geometry_msgsMsgTransform = Ros2Geometry_msgsMsgTransform()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_header.fields(&cursor)
    field_child_frame_id = cursor.text(field_child_frame_id, 512)
    field_transform.fields(&cursor)
  }
  /// @brief Encode every complete geometry_msgs/msg/TransformStamped field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 648),
      limit: 648, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/TransformStamped.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 72 || bytes.count > 648 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/msg/DebugLevel value.
/// @details Retain all 1 fields and 6 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Industrial_msgsMsgDebugLevel {
  /// @brief Original industrial_msgs/msg/DebugLevel.val field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_val: UInt8 = 0
  /// @brief Original industrial_msgs/msg/DebugLevel.DEBUG constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_DEBUG: UInt8 = 5
  /// @brief Original industrial_msgs/msg/DebugLevel.INFO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INFO: UInt8 = 4
  /// @brief Original industrial_msgs/msg/DebugLevel.WARN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WARN: UInt8 = 3
  /// @brief Original industrial_msgs/msg/DebugLevel.ERROR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR: UInt8 = 2
  /// @brief Original industrial_msgs/msg/DebugLevel.FATAL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FATAL: UInt8 = 1
  /// @brief Original industrial_msgs/msg/DebugLevel.NONE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NONE: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_val = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_val), 1))
  }
  /// @brief Encode every complete industrial_msgs/msg/DebugLevel field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/msg/DebugLevel.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/msg/DeviceInfo value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 20..2580 bytes.
public struct Ros2Industrial_msgsMsgDeviceInfo {
  /// @brief Original industrial_msgs/msg/DeviceInfo.model field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_model: [UInt8] = []
  /// @brief Original industrial_msgs/msg/DeviceInfo.serial_number field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_serial_number: [UInt8] = []
  /// @brief Original industrial_msgs/msg/DeviceInfo.hw_version field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_hw_version: [UInt8] = []
  /// @brief Original industrial_msgs/msg/DeviceInfo.sw_version field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_sw_version: [UInt8] = []
  /// @brief Original industrial_msgs/msg/DeviceInfo.address field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_address: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_model = cursor.text(field_model, 512)
    field_serial_number = cursor.text(field_serial_number, 512)
    field_hw_version = cursor.text(field_hw_version, 512)
    field_sw_version = cursor.text(field_sw_version, 512)
    field_address = cursor.text(field_address, 512)
  }
  /// @brief Encode every complete industrial_msgs/msg/DeviceInfo field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 2580),
      limit: 2580, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/msg/DeviceInfo.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 2580 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/msg/RobotMode value.
/// @details Retain all 1 fields and 3 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Industrial_msgsMsgRobotMode {
  /// @brief Original industrial_msgs/msg/RobotMode.val field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_val: Int8 = 0
  /// @brief Original industrial_msgs/msg/RobotMode.UNKNOWN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_UNKNOWN: Int8 = -1
  /// @brief Original industrial_msgs/msg/RobotMode.MANUAL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MANUAL: Int8 = 1
  /// @brief Original industrial_msgs/msg/RobotMode.AUTO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_AUTO: Int8 = 2
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_val = Int8(
      bitPattern: UInt8(truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_val)), 1)))
  }
  /// @brief Encode every complete industrial_msgs/msg/RobotMode field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/msg/RobotMode.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/msg/TriState value.
/// @details Retain all 1 fields and 11 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Industrial_msgsMsgTriState {
  /// @brief Original industrial_msgs/msg/TriState.val field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_val: Int8 = 0
  /// @brief Original industrial_msgs/msg/TriState.UNKNOWN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_UNKNOWN: Int8 = -1
  /// @brief Original industrial_msgs/msg/TriState.TRUE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_TRUE: Int8 = 1
  /// @brief Original industrial_msgs/msg/TriState.ON constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ON: Int8 = 1
  /// @brief Original industrial_msgs/msg/TriState.ENABLED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ENABLED: Int8 = 1
  /// @brief Original industrial_msgs/msg/TriState.HIGH constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_HIGH: Int8 = 1
  /// @brief Original industrial_msgs/msg/TriState.CLOSED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CLOSED: Int8 = 1
  /// @brief Original industrial_msgs/msg/TriState.FALSE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FALSE: Int8 = 0
  /// @brief Original industrial_msgs/msg/TriState.OFF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_OFF: Int8 = 0
  /// @brief Original industrial_msgs/msg/TriState.DISABLED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_DISABLED: Int8 = 0
  /// @brief Original industrial_msgs/msg/TriState.LOW constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LOW: Int8 = 0
  /// @brief Original industrial_msgs/msg/TriState.OPEN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_OPEN: Int8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_val = Int8(
      bitPattern: UInt8(truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_val)), 1)))
  }
  /// @brief Encode every complete industrial_msgs/msg/TriState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/msg/TriState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/msg/RobotStatus value.
/// @details Retain all 8 fields and 0 constants in source order. Canonical extent 22..150 bytes.
public struct Ros2Industrial_msgsMsgRobotStatus {
  /// @brief Original industrial_msgs/msg/RobotStatus.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original industrial_msgs/msg/RobotStatus.mode field.
  /// @details Original type industrial_msgs/msg/RobotMode. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_mode: Ros2Industrial_msgsMsgRobotMode = Ros2Industrial_msgsMsgRobotMode()
  /// @brief Original industrial_msgs/msg/RobotStatus.e_stopped field.
  /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_e_stopped: Ros2Industrial_msgsMsgTriState = Ros2Industrial_msgsMsgTriState()
  /// @brief Original industrial_msgs/msg/RobotStatus.drives_powered field.
  /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_drives_powered: Ros2Industrial_msgsMsgTriState = Ros2Industrial_msgsMsgTriState()
  /// @brief Original industrial_msgs/msg/RobotStatus.motion_possible field.
  /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_motion_possible: Ros2Industrial_msgsMsgTriState =
    Ros2Industrial_msgsMsgTriState()
  /// @brief Original industrial_msgs/msg/RobotStatus.in_motion field.
  /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_in_motion: Ros2Industrial_msgsMsgTriState = Ros2Industrial_msgsMsgTriState()
  /// @brief Original industrial_msgs/msg/RobotStatus.in_error field.
  /// @details Original type industrial_msgs/msg/TriState. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_in_error: Ros2Industrial_msgsMsgTriState = Ros2Industrial_msgsMsgTriState()
  /// @brief Original industrial_msgs/msg/RobotStatus.error_codes field.
  /// @details Original type int32. Shape sequence; bound/count 16 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_error_codes: [Int32] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_header.fields(&cursor)
    field_mode.fields(&cursor)
    field_e_stopped.fields(&cursor)
    field_drives_powered.fields(&cursor)
    field_motion_possible.fields(&cursor)
    field_in_motion.fields(&cursor)
    field_in_error.fields(&cursor)
    let count7 = Int(cursor.number(UInt64(field_error_codes.count), 4))
    if count7 > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_error_codes = Array(repeating: 0, count: count7) }
    for index in 0..<count7 {
      field_error_codes[index] = Int32(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_error_codes[index])), 4)
        ))
    }
  }
  /// @brief Encode every complete industrial_msgs/msg/RobotStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 150),
      limit: 150, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/msg/RobotStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 22 || bytes.count > 150 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/msg/ServiceReturnCode value.
/// @details Retain all 1 fields and 2 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Industrial_msgsMsgServiceReturnCode {
  /// @brief Original industrial_msgs/msg/ServiceReturnCode.val field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_val: Int8 = 0
  /// @brief Original industrial_msgs/msg/ServiceReturnCode.SUCCESS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SUCCESS: Int8 = 1
  /// @brief Original industrial_msgs/msg/ServiceReturnCode.FAILURE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FAILURE: Int8 = -1
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_val = Int8(
      bitPattern: UInt8(truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_val)), 1)))
  }
  /// @brief Encode every complete industrial_msgs/msg/ServiceReturnCode field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/msg/ServiceReturnCode.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/srv/CmdJointTrajectory_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 20..4164 bytes.
public struct Ros2Industrial_msgsSrvCmdJointTrajectory_Request {
  /// @brief Original industrial_msgs/srv/CmdJointTrajectory_Request.trajectory field.
  /// @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_trajectory: Ros2Trajectory_msgsMsgJointTrajectory =
    Ros2Trajectory_msgsMsgJointTrajectory()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_trajectory.fields(&cursor)
  }
  /// @brief Encode every complete industrial_msgs/srv/CmdJointTrajectory_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 4164),
      limit: 4164, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/srv/CmdJointTrajectory_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 4164 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/srv/CmdJointTrajectory_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Industrial_msgsSrvCmdJointTrajectory_Response {
  /// @brief Original industrial_msgs/srv/CmdJointTrajectory_Response.code field.
  /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_code: Ros2Industrial_msgsMsgServiceReturnCode =
    Ros2Industrial_msgsMsgServiceReturnCode()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_code.fields(&cursor)
  }
  /// @brief Encode every complete industrial_msgs/srv/CmdJointTrajectory_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/srv/CmdJointTrajectory_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/srv/GetRobotInfo_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Industrial_msgsSrvGetRobotInfo_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
  }
  /// @brief Encode every complete industrial_msgs/srv/GetRobotInfo_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/srv/GetRobotInfo_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/srv/GetRobotInfo_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 25..32768 bytes.
public struct Ros2Industrial_msgsSrvGetRobotInfo_Response {
  /// @brief Original industrial_msgs/srv/GetRobotInfo_Response.controller field.
  /// @details Original type industrial_msgs/msg/DeviceInfo. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_controller: Ros2Industrial_msgsMsgDeviceInfo = Ros2Industrial_msgsMsgDeviceInfo()
  /// @brief Original industrial_msgs/srv/GetRobotInfo_Response.robots field.
  /// @details Original type industrial_msgs/msg/DeviceInfo. Shape sequence; bound/count 16
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_robots: [Ros2Industrial_msgsMsgDeviceInfo] = []
  /// @brief Original industrial_msgs/srv/GetRobotInfo_Response.code field.
  /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_code: Ros2Industrial_msgsMsgServiceReturnCode =
    Ros2Industrial_msgsMsgServiceReturnCode()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_controller.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_robots.count), 4))
    if count1 > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_robots = Array(repeating: Ros2Industrial_msgsMsgDeviceInfo(), count: count1)
    }
    for index in 0..<count1 {
      field_robots[index].fields(&cursor)
    }
    field_code.fields(&cursor)
  }
  /// @brief Encode every complete industrial_msgs/srv/GetRobotInfo_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 32768),
      limit: 32768, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/srv/GetRobotInfo_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 25 || bytes.count > 32768 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/srv/SetDrivePower_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Industrial_msgsSrvSetDrivePower_Request {
  /// @brief Original industrial_msgs/srv/SetDrivePower_Request.drive_power field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_drive_power: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_drive_power = cursor.boolean(field_drive_power)
  }
  /// @brief Encode every complete industrial_msgs/srv/SetDrivePower_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/srv/SetDrivePower_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/srv/SetDrivePower_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Industrial_msgsSrvSetDrivePower_Response {
  /// @brief Original industrial_msgs/srv/SetDrivePower_Response.code field.
  /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_code: Ros2Industrial_msgsMsgServiceReturnCode =
    Ros2Industrial_msgsMsgServiceReturnCode()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_code.fields(&cursor)
  }
  /// @brief Encode every complete industrial_msgs/srv/SetDrivePower_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/srv/SetDrivePower_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/srv/SetRemoteLoggerLevel_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request {
  /// @brief Original industrial_msgs/srv/SetRemoteLoggerLevel_Request.level field.
  /// @details Original type industrial_msgs/msg/DebugLevel. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_level: Ros2Industrial_msgsMsgDebugLevel = Ros2Industrial_msgsMsgDebugLevel()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_level.fields(&cursor)
  }
  /// @brief Encode every complete industrial_msgs/srv/SetRemoteLoggerLevel_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/srv/SetRemoteLoggerLevel_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/srv/SetRemoteLoggerLevel_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response {
  /// @brief Original industrial_msgs/srv/SetRemoteLoggerLevel_Response.code field.
  /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_code: Ros2Industrial_msgsMsgServiceReturnCode =
    Ros2Industrial_msgsMsgServiceReturnCode()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_code.fields(&cursor)
  }
  /// @brief Encode every complete industrial_msgs/srv/SetRemoteLoggerLevel_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/srv/SetRemoteLoggerLevel_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/srv/StartMotion_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Industrial_msgsSrvStartMotion_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
  }
  /// @brief Encode every complete industrial_msgs/srv/StartMotion_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/srv/StartMotion_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/srv/StartMotion_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Industrial_msgsSrvStartMotion_Response {
  /// @brief Original industrial_msgs/srv/StartMotion_Response.code field.
  /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_code: Ros2Industrial_msgsMsgServiceReturnCode =
    Ros2Industrial_msgsMsgServiceReturnCode()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_code.fields(&cursor)
  }
  /// @brief Encode every complete industrial_msgs/srv/StartMotion_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/srv/StartMotion_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/srv/StopMotion_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Industrial_msgsSrvStopMotion_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
  }
  /// @brief Encode every complete industrial_msgs/srv/StopMotion_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/srv/StopMotion_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original industrial_msgs/srv/StopMotion_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Industrial_msgsSrvStopMotion_Response {
  /// @brief Original industrial_msgs/srv/StopMotion_Response.code field.
  /// @details Original type industrial_msgs/msg/ServiceReturnCode. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_code: Ros2Industrial_msgsMsgServiceReturnCode =
    Ros2Industrial_msgsMsgServiceReturnCode()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_code.fields(&cursor)
  }
  /// @brief Encode every complete industrial_msgs/srv/StopMotion_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete industrial_msgs/srv/StopMotion_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/msg/AlarmCauseRemedy value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..1032 bytes.
public struct Ros2Motoros2_interfacesMsgAlarmCauseRemedy {
  /// @brief Original motoros2_interfaces/msg/AlarmCauseRemedy.cause field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_cause: [UInt8] = []
  /// @brief Original motoros2_interfaces/msg/AlarmCauseRemedy.remedy field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_remedy: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_cause = cursor.text(field_cause, 512)
    field_remedy = cursor.text(field_remedy, 512)
  }
  /// @brief Encode every complete motoros2_interfaces/msg/AlarmCauseRemedy field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1032),
      limit: 1032, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/msg/AlarmCauseRemedy.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 1032 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/msg/AlarmInfo value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 32..25248 bytes.
public struct Ros2Motoros2_interfacesMsgAlarmInfo {
  /// @brief Original motoros2_interfaces/msg/AlarmInfo.number field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_number: UInt32 = 0
  /// @brief Original motoros2_interfaces/msg/AlarmInfo.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Original motoros2_interfaces/msg/AlarmInfo.sub_code field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sub_code: Int32 = 0
  /// @brief Original motoros2_interfaces/msg/AlarmInfo.datetime field.
  /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_datetime: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Original motoros2_interfaces/msg/AlarmInfo.contents field.
  /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_contents: [UInt8] = []
  /// @brief Original motoros2_interfaces/msg/AlarmInfo.description field.
  /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_description: [UInt8] = []
  /// @brief Original motoros2_interfaces/msg/AlarmInfo.help field.
  /// @details Original type motoros2_interfaces/msg/AlarmCauseRemedy. Shape sequence; bound/count
  /// 16 elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_help: [Ros2Motoros2_interfacesMsgAlarmCauseRemedy] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_number = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_number), 4))
    field_message = cursor.text(field_message, 512)
    field_sub_code = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sub_code)), 4)))
    field_datetime.fields(&cursor)
    field_contents = cursor.text(field_contents, 4096)
    field_description = cursor.text(field_description, 4096)
    let count6 = Int(cursor.number(UInt64(field_help.count), 4))
    if count6 > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_help = Array(repeating: Ros2Motoros2_interfacesMsgAlarmCauseRemedy(), count: count6)
    }
    for index in 0..<count6 {
      field_help[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete motoros2_interfaces/msg/AlarmInfo field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 25248),
      limit: 25248, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/msg/AlarmInfo.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 32 || bytes.count > 25248 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/msg/ErrorInfo value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 20..532 bytes.
public struct Ros2Motoros2_interfacesMsgErrorInfo {
  /// @brief Original motoros2_interfaces/msg/ErrorInfo.number field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_number: UInt32 = 0
  /// @brief Original motoros2_interfaces/msg/ErrorInfo.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Original motoros2_interfaces/msg/ErrorInfo.sub_code field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sub_code: Int32 = 0
  /// @brief Original motoros2_interfaces/msg/ErrorInfo.datetime field.
  /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_datetime: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_number = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_number), 4))
    field_message = cursor.text(field_message, 512)
    field_sub_code = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sub_code)), 4)))
    field_datetime.fields(&cursor)
  }
  /// @brief Encode every complete motoros2_interfaces/msg/ErrorInfo field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 532),
      limit: 532, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/msg/ErrorInfo.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 532 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/msg/InformJobCrudResultCodes value.
/// @details Retain all 0 fields and 12 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Motoros2_interfacesMsgInformJobCrudResultCodes {
  /// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_OK constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_OK: UInt32 = 1
  /// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_OK constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STR_OK: StaticString = "Success"
  /// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_REFRESHING_JOB_LIST
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_ERR_REFRESHING_JOB_LIST: UInt32 = 10
  /// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_REFRESHING_JOB_LIST
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STR_ERR_REFRESHING_JOB_LIST: StaticString = "Error refreshing job list"
  /// @brief Original
  /// motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_FILE_COUNT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_ERR_RETRIEVING_FILE_COUNT: UInt32 = 11
  /// @brief Original
  /// motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_FILE_COUNT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STR_ERR_RETRIEVING_FILE_COUNT: StaticString =
    "Error retrieving file count"
  /// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_TOO_MANY_JOBS
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_ERR_TOO_MANY_JOBS: UInt32 = 12
  /// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_TOO_MANY_JOBS
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STR_ERR_TOO_MANY_JOBS: StaticString = "Too many jobs"
  /// @brief Original
  /// motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST: UInt32 = 13
  /// @brief Original
  /// motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST: StaticString =
    "Failed retrieving job name from list"
  /// @brief Original
  /// motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE: UInt32 = 14
  /// @brief Original
  /// motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE: StaticString =
    "Error adding job name to service response"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
  }
  /// @brief Encode every complete motoros2_interfaces/msg/InformJobCrudResultCodes field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/msg/InformJobCrudResultCodes.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/msg/InitTrajEnum value.
/// @details Retain all 1 fields and 34 constants in source order. Canonical extent 2..2 bytes.
public struct Ros2Motoros2_interfacesMsgInitTrajEnum {
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.value field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: UInt16 = 0
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_OK: UInt16 = 0
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_OK_STR: StaticString = "OK"
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_UNSPECIFIED: UInt16 = 200
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_UNSPECIFIED_STR: StaticString = "Unspecified failure"
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_TOO_SMALL: UInt16 = 201
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_TOO_SMALL_STR: StaticString =
    "Trajectory must contain at least two points."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_TOO_BIG: UInt16 = 202
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_TOO_BIG_STR: StaticString =
    "Trajectory contains too many points (Not enough memory)."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_ALREADY_IN_MOTION: UInt16 = 203
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_ALREADY_IN_MOTION_STR: StaticString =
    "Already running a trajectory."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INVALID_STARTING_POS: UInt16 = 204
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INVALID_STARTING_POS_STR: StaticString =
    "The first point must match the robot's current position."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INVALID_VELOCITY: UInt16 = 205
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INVALID_VELOCITY_STR: StaticString =
    "The commanded velocity is too high."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INVALID_JOINTNAME: UInt16 = 206
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INVALID_JOINTNAME_STR: StaticString =
    "Invalid joint name specified. Check motoros2_config.yaml."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INCOMPLETE_JOINTLIST: UInt16 = 207
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INCOMPLETE_JOINTLIST_STR: StaticString =
    "Trajectory must contain data for all joints."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INVALID_TIME: UInt16 = 208
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INVALID_TIME_STR: StaticString =
    "Invalid time in trajectory."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_WRONG_MODE: UInt16 = 209
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_WRONG_MODE_STR: StaticString =
    "Must call start_traj_mode service"
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_BACKWARD_TIME: UInt16 = 210
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_BACKWARD_TIME_STR: StaticString =
    "Trajectory message contains waypoints that are not strictly increasing in time."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS: UInt16 = 211
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR: StaticString =
    "Trajectory did not contain position data for all axes."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES: UInt16 = 212
  /// @brief Original
  /// motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR: StaticString =
    "Trajectory did not contain velocity data for all axes."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INVALID_ENDING_VELOCITY: UInt16 = 213
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INVALID_ENDING_VELOCITY_STR: StaticString =
    "The final point in the trajectory must have zero velocity."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INVALID_ENDING_ACCELERATION: UInt16 = 214
  /// @brief Original
  /// motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR: StaticString =
    "The final point in the trajectory must have zero acceleration."
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_DUPLICATE_JOINT_NAME: UInt16 = 215
  /// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_TRAJ_DUPLICATE_JOINT_NAME_STR: StaticString =
    "The trajectory contains duplicate joint names."
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_value = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_value), 2))
  }
  /// @brief Encode every complete motoros2_interfaces/msg/InitTrajEnum field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 2),
      limit: 2, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/msg/InitTrajEnum.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 2 || bytes.count > 2 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/msg/IoResultCodes value.
/// @details Retain all 0 fields and 13 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Motoros2_interfacesMsgIoResultCodes {
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.OK constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_OK: UInt32 = 0
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.OK_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_OK_STR: StaticString = "Success"
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_READ_ADDRESS_INVALID: UInt32 = 1001
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_READ_ADDRESS_INVALID_STR: StaticString =
    "Address cannot be read from (out of readable range)"
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WRITE_ADDRESS_INVALID: UInt32 = 1002
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WRITE_ADDRESS_INVALID_STR: StaticString =
    "Address cannot be written to (out of writable range)"
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WRITE_VALUE_INVALID: UInt32 = 1003
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WRITE_VALUE_INVALID_STR: StaticString =
    "Illegal value for the type of IO element addressed"
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_READ_API_ERROR: UInt32 = 1004
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_READ_API_ERROR_STR: StaticString =
    "The MotoPlus function mpReadIO returned -1. No further information is available"
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WRITE_API_ERROR: UInt32 = 1005
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WRITE_API_ERROR_STR: StaticString =
    "The MotoPlus function mpWriteIO returned -1. No further information is available"
  /// @brief Original motoros2_interfaces/msg/IoResultCodes.UNKNOWN_API_ERROR_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_UNKNOWN_API_ERROR_STR: StaticString =
    "Unknown error accessing I/O. No further information is available"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
  }
  /// @brief Encode every complete motoros2_interfaces/msg/IoResultCodes field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/msg/IoResultCodes.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/msg/MotionReadyEnum value.
/// @details Retain all 1 fields and 38 constants in source order. Canonical extent 2..2 bytes.
public struct Ros2Motoros2_interfacesMsgMotionReadyEnum {
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.value field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: UInt16 = 0
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_READY: UInt16 = 1
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_READY_STR: StaticString = "Ready"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_UNSPECIFIED: UInt16 = 100
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_UNSPECIFIED_STR: StaticString = "Unspecified"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_ALARM: UInt16 = 101
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_ALARM_STR: StaticString =
    "The controller has an active Alarm"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_ERROR: UInt16 = 102
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_ERROR_STR: StaticString =
    "The controller has an active Error"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_ESTOP: UInt16 = 103
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_ESTOP_STR: StaticString = "The controller is in E-Stop"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_NOT_PLAY: UInt16 = 104
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_NOT_PLAY_STR: StaticString =
    "The teach pendant must not be in TEACH mode"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_NOT_REMOTE: UInt16 = 105
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_NOT_REMOTE_STR: StaticString =
    "The teach pendant must be in REMOTE mode"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_SERVO_OFF: UInt16 = 106
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_SERVO_OFF_STR: StaticString =
    "Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_HOLD: UInt16 = 107
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_HOLD_STR: StaticString = "The controller is in HOLD"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_JOB_NOT_STARTED: UInt16 = 108
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_JOB_NOT_STARTED_STR: StaticString =
    "The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_NOT_ON_WAIT_CMD: UInt16 = 109
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_NOT_ON_WAIT_CMD_STR: StaticString =
    "INFORM job is not on a WAIT command. Check the format of INIT_ROS"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_PFL_ACTIVE: UInt16 = 111
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_PFL_ACTIVE_STR: StaticString =
    "A PFL event has occurred. Please return the robot to a safe state"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_INC_MOVE_ERROR: UInt16 = 112
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_INC_MOVE_ERROR_STR: StaticString =
    "The controller is in an error state. Please call reset_error to attempt to clear the error"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_OTHER_PROGRAM_RUNNING: UInt16 = 113
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_OTHER_PROGRAM_RUNNING_STR: StaticString =
    "Controller is running another job"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_OTHER_TRAJ_MODE_ACTIVE: UInt16 = 114
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR: StaticString =
    "Another trajectory mode is already active. Please call stop_traj_mode service"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_NOT_CONT_CYCLE_MODE: UInt16 = 115
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_NOT_CONT_CYCLE_MODE_STR: StaticString =
    "AUTO cycle mode not set. Please set the cycle mode to AUTO"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_MAJOR_ALARM: UInt16 = 116
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_MAJOR_ALARM_STR: StaticString =
    "Major Alarms can't be reset. Please check the teach pendant"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_ECO_MODE: UInt16 = 117
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_ECO_MODE_STR: StaticString = "Couldn't disable eco mode"
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_SERVO_ON_TIMEOUT: UInt16 = 118
  /// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_READY_SERVO_ON_TIMEOUT_STR: StaticString =
    "Timed out while waiting for servo on"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_value = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_value), 2))
  }
  /// @brief Encode every complete motoros2_interfaces/msg/MotionReadyEnum field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 2),
      limit: 2, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/msg/MotionReadyEnum.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 2 || bytes.count > 2 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/msg/QueueResultEnum value.
/// @details Retain all 1 fields and 12 constants in source order. Canonical extent 2..2 bytes.
public struct Ros2Motoros2_interfacesMsgQueueResultEnum {
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.value field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: UInt16 = 0
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SUCCESS: UInt16 = 1
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SUCCESS_STR: StaticString = ""
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WRONG_MODE: UInt16 = 2
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WRONG_MODE_STR: StaticString =
    "Must call start_point_queue_mode service"
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_FAILURE: UInt16 = 3
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT_FAILURE_STR: StaticString =
    "Failed to initialize the streaming trajectory"
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_BUSY: UInt16 = 4
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_BUSY_STR: StaticString =
    "Busy processing the previous trajectory point. Please resend the next point shortly"
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_JOINT_LIST: UInt16 = 5
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_JOINT_LIST_STR: StaticString =
    "Point must contain data for all joints"
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_UNABLE_TO_PROCESS_POINT: UInt16 = 6
  /// @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_UNABLE_TO_PROCESS_POINT_STR: StaticString =
    "Error while processing the trajectory point. Check debug log for more details"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_value = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_value), 2))
  }
  /// @brief Encode every complete motoros2_interfaces/msg/QueueResultEnum field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 2),
      limit: 2, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/msg/QueueResultEnum.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 2 || bytes.count > 2 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/msg/SelectionResultCodes value.
/// @details Retain all 1 fields and 8 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Motoros2_interfacesMsgSelectionResultCodes {
  /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.value field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: UInt32 = 0
  /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_OK: UInt32 = 0
  /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK_STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_OK_STR: StaticString = ""
  /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_CONTROLLER_STATE: UInt32 = 400
  /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_CONTROLLER_STATE_STR: StaticString =
    "Pendant is not in REMOTE mode"
  /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_CONTROL_GROUP: UInt32 = 401
  /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_CONTROL_GROUP_STR: StaticString = "Invalid control group"
  /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_SELECTION_INDEX: UInt32 = 402
  /// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX_STR
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_SELECTION_INDEX_STR: StaticString = "Invalid tool selection"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_value = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_value), 4))
  }
  /// @brief Encode every complete motoros2_interfaces/msg/SelectionResultCodes field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/msg/SelectionResultCodes.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/GetActiveAlarmInfo_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
  }
  /// @brief Encode every complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/GetActiveAlarmInfo_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/GetActiveAlarmInfo_Response value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 16..32768 bytes.
public struct Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response {
  /// @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.result_code field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt32 = 0
  /// @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.result_message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_result_message: [UInt8] = []
  /// @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.alarms field.
  /// @details Original type motoros2_interfaces/msg/AlarmInfo. Shape sequence; bound/count 16
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_alarms: [Ros2Motoros2_interfacesMsgAlarmInfo] = []
  /// @brief Original motoros2_interfaces/srv/GetActiveAlarmInfo_Response.errors field.
  /// @details Original type motoros2_interfaces/msg/ErrorInfo. Shape sequence; bound/count 16
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_errors: [Ros2Motoros2_interfacesMsgErrorInfo] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 4))
    field_result_message = cursor.text(field_result_message, 512)
    let count2 = Int(cursor.number(UInt64(field_alarms.count), 4))
    if count2 > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_alarms = Array(repeating: Ros2Motoros2_interfacesMsgAlarmInfo(), count: count2)
    }
    for index in 0..<count2 {
      field_alarms[index].fields(&cursor)
    }
    let count3 = Int(cursor.number(UInt64(field_errors.count), 4))
    if count3 > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_errors = Array(repeating: Ros2Motoros2_interfacesMsgErrorInfo(), count: count3)
    }
    for index in 0..<count3 {
      field_errors[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 32768),
      limit: 32768, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/GetActiveAlarmInfo_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 32768 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/ListInformJobs_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Motoros2_interfacesSrvListInformJobs_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
  }
  /// @brief Encode every complete motoros2_interfaces/srv/ListInformJobs_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/ListInformJobs_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/ListInformJobs_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 12..8780 bytes.
public struct Ros2Motoros2_interfacesSrvListInformJobs_Response {
  /// @brief Original motoros2_interfaces/srv/ListInformJobs_Response.result_code field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt32 = 0
  /// @brief Original motoros2_interfaces/srv/ListInformJobs_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Original motoros2_interfaces/srv/ListInformJobs_Response.names field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Shape sequence;
  /// bound/count 16 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_names: [[UInt8]] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 4))
    field_message = cursor.text(field_message, 512)
    let count2 = Int(cursor.number(UInt64(field_names.count), 4))
    if count2 > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_names = Array(repeating: [], count: count2) }
    for index in 0..<count2 {
      field_names[index] = cursor.text(field_names[index], 512)
    }
  }
  /// @brief Encode every complete motoros2_interfaces/srv/ListInformJobs_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 8780),
      limit: 8780, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/ListInformJobs_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 8780 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/QueueTrajPoint_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 28..1228 bytes.
public struct Ros2Motoros2_interfacesSrvQueueTrajPoint_Request {
  /// @brief Original motoros2_interfaces/srv/QueueTrajPoint_Request.joint_names field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
  /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_joint_names: [[UInt8]] = []
  /// @brief Original motoros2_interfaces/srv/QueueTrajPoint_Request.point field.
  /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_point: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    let count0 = Int(cursor.number(UInt64(field_joint_names.count), 4))
    if count0 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_joint_names = Array(repeating: [], count: count0) }
    for index in 0..<count0 {
      field_joint_names[index] = cursor.text(field_joint_names[index], 64)
    }
    field_point.fields(&cursor)
  }
  /// @brief Encode every complete motoros2_interfaces/srv/QueueTrajPoint_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1228),
      limit: 1228, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/QueueTrajPoint_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 28 || bytes.count > 1228 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/QueueTrajPoint_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Motoros2_interfacesSrvQueueTrajPoint_Response {
  /// @brief Original motoros2_interfaces/srv/QueueTrajPoint_Response.result_code field.
  /// @details Original type motoros2_interfaces/msg/QueueResultEnum. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_result_code: Ros2Motoros2_interfacesMsgQueueResultEnum =
    Ros2Motoros2_interfacesMsgQueueResultEnum()
  /// @brief Original motoros2_interfaces/srv/QueueTrajPoint_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code.fields(&cursor)
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete motoros2_interfaces/srv/QueueTrajPoint_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/QueueTrajPoint_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/ReadGroupIO_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Motoros2_interfacesSrvReadGroupIO_Request {
  /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Request.address field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_address: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_address = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_address), 4))
  }
  /// @brief Encode every complete motoros2_interfaces/srv/ReadGroupIO_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/ReadGroupIO_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/ReadGroupIO_Response value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 10..522 bytes.
public struct Ros2Motoros2_interfacesSrvReadGroupIO_Response {
  /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.result_code field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt32 = 0
  /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.success field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_success: Bool = false
  /// @brief Original motoros2_interfaces/srv/ReadGroupIO_Response.value field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 4))
    field_message = cursor.text(field_message, 512)
    field_success = cursor.boolean(field_success)
    field_value = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_value), 1))
  }
  /// @brief Encode every complete motoros2_interfaces/srv/ReadGroupIO_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 522),
      limit: 522, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/ReadGroupIO_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 10 || bytes.count > 522 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/ReadMRegister_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Motoros2_interfacesSrvReadMRegister_Request {
  /// @brief Original motoros2_interfaces/srv/ReadMRegister_Request.address field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_address: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_address = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_address), 4))
  }
  /// @brief Encode every complete motoros2_interfaces/srv/ReadMRegister_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/ReadMRegister_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/ReadMRegister_Response value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 11..523 bytes.
public struct Ros2Motoros2_interfacesSrvReadMRegister_Response {
  /// @brief Original motoros2_interfaces/srv/ReadMRegister_Response.result_code field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt32 = 0
  /// @brief Original motoros2_interfaces/srv/ReadMRegister_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Original motoros2_interfaces/srv/ReadMRegister_Response.success field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_success: Bool = false
  /// @brief Original motoros2_interfaces/srv/ReadMRegister_Response.value field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: UInt16 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 4))
    field_message = cursor.text(field_message, 512)
    field_success = cursor.boolean(field_success)
    field_value = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_value), 2))
  }
  /// @brief Encode every complete motoros2_interfaces/srv/ReadMRegister_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 523),
      limit: 523, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/ReadMRegister_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 11 || bytes.count > 523 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/ReadSingleIO_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Motoros2_interfacesSrvReadSingleIO_Request {
  /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Request.address field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_address: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_address = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_address), 4))
  }
  /// @brief Encode every complete motoros2_interfaces/srv/ReadSingleIO_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/ReadSingleIO_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/ReadSingleIO_Response value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 13..525 bytes.
public struct Ros2Motoros2_interfacesSrvReadSingleIO_Response {
  /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.result_code field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt32 = 0
  /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.success field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_success: Bool = false
  /// @brief Original motoros2_interfaces/srv/ReadSingleIO_Response.value field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 4))
    field_message = cursor.text(field_message, 512)
    field_success = cursor.boolean(field_success)
    field_value = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_value)), 4)))
  }
  /// @brief Encode every complete motoros2_interfaces/srv/ReadSingleIO_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 525),
      limit: 525, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/ReadSingleIO_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 13 || bytes.count > 525 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/ResetError_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Motoros2_interfacesSrvResetError_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
  }
  /// @brief Encode every complete motoros2_interfaces/srv/ResetError_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/ResetError_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/ResetError_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Motoros2_interfacesSrvResetError_Response {
  /// @brief Original motoros2_interfaces/srv/ResetError_Response.result_code field.
  /// @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum =
    Ros2Motoros2_interfacesMsgMotionReadyEnum()
  /// @brief Original motoros2_interfaces/srv/ResetError_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code.fields(&cursor)
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete motoros2_interfaces/srv/ResetError_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/ResetError_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/SelectMotionTool_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Motoros2_interfacesSrvSelectMotionTool_Request {
  /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Request.group_number field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group_number: UInt32 = 0
  /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Request.tool_number field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tool_number: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_group_number = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_group_number), 4))
    field_tool_number = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_tool_number), 4))
  }
  /// @brief Encode every complete motoros2_interfaces/srv/SelectMotionTool_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/SelectMotionTool_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/SelectMotionTool_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 9..521 bytes.
public struct Ros2Motoros2_interfacesSrvSelectMotionTool_Response {
  /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.result_code field.
  /// @details Original type motoros2_interfaces/msg/SelectionResultCodes. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_result_code: Ros2Motoros2_interfacesMsgSelectionResultCodes =
    Ros2Motoros2_interfacesMsgSelectionResultCodes()
  /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Original motoros2_interfaces/srv/SelectMotionTool_Response.success field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_success: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code.fields(&cursor)
    field_message = cursor.text(field_message, 512)
    field_success = cursor.boolean(field_success)
  }
  /// @brief Encode every complete motoros2_interfaces/srv/SelectMotionTool_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 521),
      limit: 521, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/SelectMotionTool_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 9 || bytes.count > 521 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/StartPointQueueMode_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Motoros2_interfacesSrvStartPointQueueMode_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
  }
  /// @brief Encode every complete motoros2_interfaces/srv/StartPointQueueMode_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/StartPointQueueMode_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/StartPointQueueMode_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Motoros2_interfacesSrvStartPointQueueMode_Response {
  /// @brief Original motoros2_interfaces/srv/StartPointQueueMode_Response.result_code field.
  /// @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum =
    Ros2Motoros2_interfacesMsgMotionReadyEnum()
  /// @brief Original motoros2_interfaces/srv/StartPointQueueMode_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code.fields(&cursor)
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete motoros2_interfaces/srv/StartPointQueueMode_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/StartPointQueueMode_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/StartTrajMode_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Motoros2_interfacesSrvStartTrajMode_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
  }
  /// @brief Encode every complete motoros2_interfaces/srv/StartTrajMode_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/StartTrajMode_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/StartTrajMode_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Motoros2_interfacesSrvStartTrajMode_Response {
  /// @brief Original motoros2_interfaces/srv/StartTrajMode_Response.result_code field.
  /// @details Original type motoros2_interfaces/msg/MotionReadyEnum. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum =
    Ros2Motoros2_interfacesMsgMotionReadyEnum()
  /// @brief Original motoros2_interfaces/srv/StartTrajMode_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code.fields(&cursor)
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete motoros2_interfaces/srv/StartTrajMode_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/StartTrajMode_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/WriteGroupIO_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..5 bytes.
public struct Ros2Motoros2_interfacesSrvWriteGroupIO_Request {
  /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Request.address field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_address: UInt32 = 0
  /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Request.value field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_address = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_address), 4))
    field_value = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_value), 1))
  }
  /// @brief Encode every complete motoros2_interfaces/srv/WriteGroupIO_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 5),
      limit: 5, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/WriteGroupIO_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 5 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/WriteGroupIO_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 9..521 bytes.
public struct Ros2Motoros2_interfacesSrvWriteGroupIO_Response {
  /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.result_code field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt32 = 0
  /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Original motoros2_interfaces/srv/WriteGroupIO_Response.success field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_success: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 4))
    field_message = cursor.text(field_message, 512)
    field_success = cursor.boolean(field_success)
  }
  /// @brief Encode every complete motoros2_interfaces/srv/WriteGroupIO_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 521),
      limit: 521, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/WriteGroupIO_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 9 || bytes.count > 521 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/WriteMRegister_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..6 bytes.
public struct Ros2Motoros2_interfacesSrvWriteMRegister_Request {
  /// @brief Original motoros2_interfaces/srv/WriteMRegister_Request.address field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_address: UInt32 = 0
  /// @brief Original motoros2_interfaces/srv/WriteMRegister_Request.value field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: UInt16 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_address = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_address), 4))
    field_value = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_value), 2))
  }
  /// @brief Encode every complete motoros2_interfaces/srv/WriteMRegister_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 6),
      limit: 6, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/WriteMRegister_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 6 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/WriteMRegister_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 9..521 bytes.
public struct Ros2Motoros2_interfacesSrvWriteMRegister_Response {
  /// @brief Original motoros2_interfaces/srv/WriteMRegister_Response.result_code field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt32 = 0
  /// @brief Original motoros2_interfaces/srv/WriteMRegister_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Original motoros2_interfaces/srv/WriteMRegister_Response.success field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_success: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 4))
    field_message = cursor.text(field_message, 512)
    field_success = cursor.boolean(field_success)
  }
  /// @brief Encode every complete motoros2_interfaces/srv/WriteMRegister_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 521),
      limit: 521, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/WriteMRegister_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 9 || bytes.count > 521 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/WriteSingleIO_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Motoros2_interfacesSrvWriteSingleIO_Request {
  /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Request.address field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_address: UInt32 = 0
  /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Request.value field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_address = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_address), 4))
    field_value = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_value)), 4)))
  }
  /// @brief Encode every complete motoros2_interfaces/srv/WriteSingleIO_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/WriteSingleIO_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original motoros2_interfaces/srv/WriteSingleIO_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 9..521 bytes.
public struct Ros2Motoros2_interfacesSrvWriteSingleIO_Response {
  /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.result_code field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt32 = 0
  /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Original motoros2_interfaces/srv/WriteSingleIO_Response.success field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_success: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_result_code = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 4))
    field_message = cursor.text(field_message, 512)
    field_success = cursor.boolean(field_success)
  }
  /// @brief Encode every complete motoros2_interfaces/srv/WriteSingleIO_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 521),
      limit: 521, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete motoros2_interfaces/srv/WriteSingleIO_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 9 || bytes.count > 521 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original sensor_msgs/msg/JointState value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 28..1196 bytes.
public struct Ros2Sensor_msgsMsgJointState {
  /// @brief Original sensor_msgs/msg/JointState.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original sensor_msgs/msg/JointState.name field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
  /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_name: [[UInt8]] = []
  /// @brief Original sensor_msgs/msg/JointState.position field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_position: [Double] = []
  /// @brief Original sensor_msgs/msg/JointState.velocity field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_velocity: [Double] = []
  /// @brief Original sensor_msgs/msg/JointState.effort field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_effort: [Double] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_name.count), 4))
    if count1 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_name = Array(repeating: [], count: count1) }
    for index in 0..<count1 {
      field_name[index] = cursor.text(field_name[index], 64)
    }
    let count2 = Int(cursor.number(UInt64(field_position.count), 4))
    if count2 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_position = Array(repeating: 0, count: count2) }
    for index in 0..<count2 {
      field_position[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_position[index].bitPattern), 8)))
      if !field_position[index].isFinite { cursor.failed = true }
    }
    let count3 = Int(cursor.number(UInt64(field_velocity.count), 4))
    if count3 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_velocity = Array(repeating: 0, count: count3) }
    for index in 0..<count3 {
      field_velocity[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_velocity[index].bitPattern), 8)))
      if !field_velocity[index].isFinite { cursor.failed = true }
    }
    let count4 = Int(cursor.number(UInt64(field_effort.count), 4))
    if count4 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_effort = Array(repeating: 0, count: count4) }
    for index in 0..<count4 {
      field_effort[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_effort[index].bitPattern), 8)))
      if !field_effort[index].isFinite { cursor.failed = true }
    }
  }
  /// @brief Encode every complete sensor_msgs/msg/JointState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 1196),
      limit: 1196, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete sensor_msgs/msg/JointState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 28 || bytes.count > 1196 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original std_srvs/srv/Trigger_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Std_srvsSrvTrigger_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
  }
  /// @brief Encode every complete std_srvs/srv/Trigger_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete std_srvs/srv/Trigger_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original std_srvs/srv/Trigger_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..517 bytes.
public struct Ros2Std_srvsSrvTrigger_Response {
  /// @brief Original std_srvs/srv/Trigger_Response.success field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_success: Bool = false
  /// @brief Original std_srvs/srv/Trigger_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    field_success = cursor.boolean(field_success)
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete std_srvs/srv/Trigger_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 517),
      limit: 517, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete std_srvs/srv/Trigger_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 517 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original tf2_msgs/msg/TFMessage value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..10372 bytes.
public struct Ros2Tf2_msgsMsgTFMessage {
  /// @brief Original tf2_msgs/msg/TFMessage.transforms field.
  /// @details Original type geometry_msgs/msg/TransformStamped. Shape sequence; bound/count 16
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_transforms: [Ros2Geometry_msgsMsgTransformStamped] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout YASKAWACursor) {
    let count0 = Int(cursor.number(UInt64(field_transforms.count), 4))
    if count0 > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_transforms = Array(repeating: Ros2Geometry_msgsMsgTransformStamped(), count: count0)
    }
    for index in 0..<count0 {
      field_transforms[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete tf2_msgs/msg/TFMessage field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = YASKAWACursor(
      bytes: [UInt8](repeating: 0, count: 10372),
      limit: 10372, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete tf2_msgs/msg/TFMessage.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 10372 { return (nil, 22) }
    var cursor = YASKAWACursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}
