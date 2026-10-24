/// @file Records.swift
/// @brief Complete original FANUC ROS 2 Embedded Swift values and codecs.
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_stamp.fields(&cursor)
    field_frame_id = cursor.text(field_frame_id, 64)
  }
  /// @brief Encode every complete std_msgs/msg/Header field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_translation.fields(&cursor)
    field_rotation.fields(&cursor)
  }
  /// @brief Encode every complete geometry_msgs/msg/Transform field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_linear.fields(&cursor)
    field_angular.fields(&cursor)
  }
  /// @brief Encode every complete geometry_msgs/msg/Twist field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/IOType value.
/// @details Retain all 1 fields and 18 constants in source order. Canonical extent 4..68 bytes.
public struct Ros2Fanuc_msgsMsgIOType {
  /// @brief Original fanuc_msgs/msg/IOType.type field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_type: [UInt8] = []
  /// @brief Original fanuc_msgs/msg/IOType.AI constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_AI: StaticString = "AI"
  /// @brief Original fanuc_msgs/msg/IOType.AO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_AO: StaticString = "AO"
  /// @brief Original fanuc_msgs/msg/IOType.DI constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_DI: StaticString = "DI"
  /// @brief Original fanuc_msgs/msg/IOType.DO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_DO: StaticString = "DO"
  /// @brief Original fanuc_msgs/msg/IOType.RI constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RI: StaticString = "RI"
  /// @brief Original fanuc_msgs/msg/IOType.RO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RO: StaticString = "RO"
  /// @brief Original fanuc_msgs/msg/IOType.SI constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SI: StaticString = "SI"
  /// @brief Original fanuc_msgs/msg/IOType.SO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SO: StaticString = "SO"
  /// @brief Original fanuc_msgs/msg/IOType.WI constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WI: StaticString = "WI"
  /// @brief Original fanuc_msgs/msg/IOType.WO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WO: StaticString = "WO"
  /// @brief Original fanuc_msgs/msg/IOType.UI constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_UI: StaticString = "UI"
  /// @brief Original fanuc_msgs/msg/IOType.UO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_UO: StaticString = "UO"
  /// @brief Original fanuc_msgs/msg/IOType.WSI constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WSI: StaticString = "WSI"
  /// @brief Original fanuc_msgs/msg/IOType.WSO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WSO: StaticString = "WSO"
  /// @brief Original fanuc_msgs/msg/IOType.F constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_F: StaticString = "F"
  /// @brief Original fanuc_msgs/msg/IOType.M constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_M: StaticString = "M"
  /// @brief Original fanuc_msgs/msg/IOType.GI constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_GI: StaticString = "GI"
  /// @brief Original fanuc_msgs/msg/IOType.GO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_GO: StaticString = "GO"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_type = cursor.text(field_type, 64)
  }
  /// @brief Encode every complete fanuc_msgs/msg/IOType field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 68),
      limit: 68, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/IOType.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 68 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/AnalogIO value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..74 bytes.
public struct Ros2Fanuc_msgsMsgAnalogIO {
  /// @brief Original fanuc_msgs/msg/AnalogIO.io_type field.
  /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_io_type: Ros2Fanuc_msgsMsgIOType = Ros2Fanuc_msgsMsgIOType()
  /// @brief Original fanuc_msgs/msg/AnalogIO.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Original fanuc_msgs/msg/AnalogIO.value field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_io_type.fields(&cursor)
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
    field_value = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_value.bitPattern), 4)))
    if !field_value.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete fanuc_msgs/msg/AnalogIO field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 74),
      limit: 74, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/AnalogIO.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 10 || bytes.count > 74 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/AnalogIOCmd value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..2372 bytes.
public struct Ros2Fanuc_msgsMsgAnalogIOCmd {
  /// @brief Original fanuc_msgs/msg/AnalogIOCmd.values field.
  /// @details Original type fanuc_msgs/msg/AnalogIO. Shape sequence; bound/count 32 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_values: [Ros2Fanuc_msgsMsgAnalogIO] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    let count0 = Int(cursor.number(UInt64(field_values.count), 4))
    if count0 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_values = Array(repeating: Ros2Fanuc_msgsMsgAnalogIO(), count: count0)
    }
    for index in 0..<count0 {
      field_values[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete fanuc_msgs/msg/AnalogIOCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2372),
      limit: 2372, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/AnalogIOCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 2372 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/AnalogIOState value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..2372 bytes.
public struct Ros2Fanuc_msgsMsgAnalogIOState {
  /// @brief Original fanuc_msgs/msg/AnalogIOState.values field.
  /// @details Original type fanuc_msgs/msg/AnalogIO. Shape sequence; bound/count 32 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_values: [Ros2Fanuc_msgsMsgAnalogIO] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    let count0 = Int(cursor.number(UInt64(field_values.count), 4))
    if count0 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_values = Array(repeating: Ros2Fanuc_msgsMsgAnalogIO(), count: count0)
    }
    for index in 0..<count0 {
      field_values[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete fanuc_msgs/msg/AnalogIOState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2372),
      limit: 2372, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/AnalogIOState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 2372 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/BoolIO value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 7..71 bytes.
public struct Ros2Fanuc_msgsMsgBoolIO {
  /// @brief Original fanuc_msgs/msg/BoolIO.io_type field.
  /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_io_type: Ros2Fanuc_msgsMsgIOType = Ros2Fanuc_msgsMsgIOType()
  /// @brief Original fanuc_msgs/msg/BoolIO.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Original fanuc_msgs/msg/BoolIO.value field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_io_type.fields(&cursor)
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
    field_value = cursor.boolean(field_value)
  }
  /// @brief Encode every complete fanuc_msgs/msg/BoolIO field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 71),
      limit: 71, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/BoolIO.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 7 || bytes.count > 71 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/CollaborativeSpeedScaling value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Fanuc_msgsMsgCollaborativeSpeedScaling {
  /// @brief Original fanuc_msgs/msg/CollaborativeSpeedScaling.collaborative_speed_scaling field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_collaborative_speed_scaling: Double = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_collaborative_speed_scaling = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_collaborative_speed_scaling.bitPattern), 8)))
    if !field_collaborative_speed_scaling.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete fanuc_msgs/msg/CollaborativeSpeedScaling field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/CollaborativeSpeedScaling.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/ConnectionStatus value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Fanuc_msgsMsgConnectionStatus {
  /// @brief Original fanuc_msgs/msg/ConnectionStatus.is_connected field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_is_connected: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_is_connected = cursor.boolean(field_is_connected)
  }
  /// @brief Encode every complete fanuc_msgs/msg/ConnectionStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/ConnectionStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/ForceSensor value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 28..28 bytes.
public struct Ros2Fanuc_msgsMsgForceSensor {
  /// @brief Original fanuc_msgs/msg/ForceSensor.force_x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_force_x: Float = 0
  /// @brief Original fanuc_msgs/msg/ForceSensor.force_y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_force_y: Float = 0
  /// @brief Original fanuc_msgs/msg/ForceSensor.force_z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_force_z: Float = 0
  /// @brief Original fanuc_msgs/msg/ForceSensor.moment_x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_moment_x: Float = 0
  /// @brief Original fanuc_msgs/msg/ForceSensor.moment_y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_moment_y: Float = 0
  /// @brief Original fanuc_msgs/msg/ForceSensor.moment_z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_moment_z: Float = 0
  /// @brief Original fanuc_msgs/msg/ForceSensor.fs_type field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_fs_type: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_force_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_force_x.bitPattern), 4)))
    if !field_force_x.isFinite { cursor.failed = true }
    field_force_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_force_y.bitPattern), 4)))
    if !field_force_y.isFinite { cursor.failed = true }
    field_force_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_force_z.bitPattern), 4)))
    if !field_force_z.isFinite { cursor.failed = true }
    field_moment_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_moment_x.bitPattern), 4)))
    if !field_moment_x.isFinite { cursor.failed = true }
    field_moment_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_moment_y.bitPattern), 4)))
    if !field_moment_y.isFinite { cursor.failed = true }
    field_moment_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_moment_z.bitPattern), 4)))
    if !field_moment_z.isFinite { cursor.failed = true }
    field_fs_type = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_fs_type), 4))
  }
  /// @brief Encode every complete fanuc_msgs/msg/ForceSensor field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 28),
      limit: 28, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/ForceSensor.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 28 || bytes.count > 28 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/Frame value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros2Fanuc_msgsMsgFrame {
  /// @brief Original fanuc_msgs/msg/Frame.x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Float = 0
  /// @brief Original fanuc_msgs/msg/Frame.y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Float = 0
  /// @brief Original fanuc_msgs/msg/Frame.z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Float = 0
  /// @brief Original fanuc_msgs/msg/Frame.w field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_w: Float = 0
  /// @brief Original fanuc_msgs/msg/Frame.p field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_p: Float = 0
  /// @brief Original fanuc_msgs/msg/Frame.r field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_r: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_x.bitPattern), 4)))
    if !field_x.isFinite { cursor.failed = true }
    field_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_y.bitPattern), 4)))
    if !field_y.isFinite { cursor.failed = true }
    field_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_z.bitPattern), 4)))
    if !field_z.isFinite { cursor.failed = true }
    field_w = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_w.bitPattern), 4)))
    if !field_w.isFinite { cursor.failed = true }
    field_p = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_p.bitPattern), 4)))
    if !field_p.isFinite { cursor.failed = true }
    field_r = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_r.bitPattern), 4)))
    if !field_r.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete fanuc_msgs/msg/Frame field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 24),
      limit: 24, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/Frame.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 24 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/IOCmd value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..2276 bytes.
public struct Ros2Fanuc_msgsMsgIOCmd {
  /// @brief Original fanuc_msgs/msg/IOCmd.values field.
  /// @details Original type fanuc_msgs/msg/BoolIO. Shape sequence; bound/count 32 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_values: [Ros2Fanuc_msgsMsgBoolIO] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    let count0 = Int(cursor.number(UInt64(field_values.count), 4))
    if count0 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_values = Array(repeating: Ros2Fanuc_msgsMsgBoolIO(), count: count0) }
    for index in 0..<count0 {
      field_values[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete fanuc_msgs/msg/IOCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2276),
      limit: 2276, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/IOCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 2276 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/IOState value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..2276 bytes.
public struct Ros2Fanuc_msgsMsgIOState {
  /// @brief Original fanuc_msgs/msg/IOState.values field.
  /// @details Original type fanuc_msgs/msg/BoolIO. Shape sequence; bound/count 32 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_values: [Ros2Fanuc_msgsMsgBoolIO] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    let count0 = Int(cursor.number(UInt64(field_values.count), 4))
    if count0 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_values = Array(repeating: Ros2Fanuc_msgsMsgBoolIO(), count: count0) }
    for index in 0..<count0 {
      field_values[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete fanuc_msgs/msg/IOState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2276),
      limit: 2276, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/IOState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 2276 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/NumReg value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..6 bytes.
public struct Ros2Fanuc_msgsMsgNumReg {
  /// @brief Original fanuc_msgs/msg/NumReg.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Original fanuc_msgs/msg/NumReg.value field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
    field_value = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_value.bitPattern), 4)))
    if !field_value.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete fanuc_msgs/msg/NumReg field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 6),
      limit: 6, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/NumReg.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 6 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/NumRegCmd value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..196 bytes.
public struct Ros2Fanuc_msgsMsgNumRegCmd {
  /// @brief Original fanuc_msgs/msg/NumRegCmd.values field.
  /// @details Original type fanuc_msgs/msg/NumReg. Shape sequence; bound/count 32 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_values: [Ros2Fanuc_msgsMsgNumReg] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    let count0 = Int(cursor.number(UInt64(field_values.count), 4))
    if count0 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_values = Array(repeating: Ros2Fanuc_msgsMsgNumReg(), count: count0) }
    for index in 0..<count0 {
      field_values[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete fanuc_msgs/msg/NumRegCmd field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 196),
      limit: 196, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/NumRegCmd.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 196 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/NumRegState value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..196 bytes.
public struct Ros2Fanuc_msgsMsgNumRegState {
  /// @brief Original fanuc_msgs/msg/NumRegState.values field.
  /// @details Original type fanuc_msgs/msg/NumReg. Shape sequence; bound/count 32 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_values: [Ros2Fanuc_msgsMsgNumReg] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    let count0 = Int(cursor.number(UInt64(field_values.count), 4))
    if count0 > 32 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_values = Array(repeating: Ros2Fanuc_msgsMsgNumReg(), count: count0) }
    for index in 0..<count0 {
      field_values[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete fanuc_msgs/msg/NumRegState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 196),
      limit: 196, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/NumRegState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 196 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/RMIStatus value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 24..1048 bytes.
public struct Ros2Fanuc_msgsMsgRMIStatus {
  /// @brief Original fanuc_msgs/msg/RMIStatus.program_status field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_program_status: UInt32 = 0
  /// @brief Original fanuc_msgs/msg/RMIStatus.next_sequence field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_next_sequence: UInt32 = 0
  /// @brief Original fanuc_msgs/msg/RMIStatus.last_sequence field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_last_sequence: UInt32 = 0
  /// @brief Original fanuc_msgs/msg/RMIStatus.last_sequence_error field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_last_sequence_error: Int32 = 0
  /// @brief Original fanuc_msgs/msg/RMIStatus.last_sequence_instruction field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_last_sequence_instruction: [UInt8] = []
  /// @brief Original fanuc_msgs/msg/RMIStatus.last_sequence_error_message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_last_sequence_error_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_program_status = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_program_status), 4))
    field_next_sequence = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_next_sequence), 4))
    field_last_sequence = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_last_sequence), 4))
    field_last_sequence_error = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_last_sequence_error)), 4))
    )
    field_last_sequence_instruction = cursor.text(field_last_sequence_instruction, 512)
    field_last_sequence_error_message = cursor.text(field_last_sequence_error_message, 512)
  }
  /// @brief Encode every complete fanuc_msgs/msg/RMIStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1048),
      limit: 1048, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/RMIStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 1048 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/RobotStatus value.
/// @details Retain all 5 fields and 5 constants in source order. Canonical extent 5..5 bytes.
public struct Ros2Fanuc_msgsMsgRobotStatus {
  /// @brief Original fanuc_msgs/msg/RobotStatus.in_error field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_error: Bool = false
  /// @brief Original fanuc_msgs/msg/RobotStatus.tp_enabled field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tp_enabled: Bool = false
  /// @brief Original fanuc_msgs/msg/RobotStatus.e_stopped field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_e_stopped: Bool = false
  /// @brief Original fanuc_msgs/msg/RobotStatus.motion_possible field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motion_possible: Bool = false
  /// @brief Original fanuc_msgs/msg/RobotStatus.contact_stop_mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_contact_stop_mode: UInt8 = 0
  /// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_NONE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CONTACT_STOP_MODE_NONE: UInt8 = 0
  /// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_SAFE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CONTACT_STOP_MODE_SAFE: UInt8 = 1
  /// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_STOP constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CONTACT_STOP_MODE_STOP: UInt8 = 2
  /// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_DSBL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CONTACT_STOP_MODE_DSBL: UInt8 = 3
  /// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_ESCP constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CONTACT_STOP_MODE_ESCP: UInt8 = 4
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_in_error = cursor.boolean(field_in_error)
    field_tp_enabled = cursor.boolean(field_tp_enabled)
    field_e_stopped = cursor.boolean(field_e_stopped)
    field_motion_possible = cursor.boolean(field_motion_possible)
    field_contact_stop_mode = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(field_contact_stop_mode), 1))
  }
  /// @brief Encode every complete fanuc_msgs/msg/RobotStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 5),
      limit: 5, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/RobotStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 5 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/msg/RobotStatusExt value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 18..1042 bytes.
public struct Ros2Fanuc_msgsMsgRobotStatusExt {
  /// @brief Original fanuc_msgs/msg/RobotStatusExt.error_code field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_error_code: [UInt8] = []
  /// @brief Original fanuc_msgs/msg/RobotStatusExt.in_motion field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_motion: Bool = false
  /// @brief Original fanuc_msgs/msg/RobotStatusExt.drives_powered field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_drives_powered: Bool = false
  /// @brief Original fanuc_msgs/msg/RobotStatusExt.gen_override field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_gen_override: Int32 = 0
  /// @brief Original fanuc_msgs/msg/RobotStatusExt.speed_clamp_limit field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_speed_clamp_limit: Float = 0
  /// @brief Original fanuc_msgs/msg/RobotStatusExt.control_mode field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_control_mode: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_error_code = cursor.text(field_error_code, 512)
    field_in_motion = cursor.boolean(field_in_motion)
    field_drives_powered = cursor.boolean(field_drives_powered)
    field_gen_override = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_gen_override)), 4)))
    field_speed_clamp_limit = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_speed_clamp_limit.bitPattern), 4)))
    if !field_speed_clamp_limit.isFinite { cursor.failed = true }
    field_control_mode = cursor.text(field_control_mode, 512)
  }
  /// @brief Encode every complete fanuc_msgs/msg/RobotStatusExt field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1042),
      limit: 1042, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/msg/RobotStatusExt.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 18 || bytes.count > 1042 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/CfgForceSensor_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Fanuc_msgsSrvCfgForceSensor_Request {
  /// @brief Original fanuc_msgs/srv/CfgForceSensor_Request.do_reset field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_do_reset: UInt32 = 0
  /// @brief Original fanuc_msgs/srv/CfgForceSensor_Request.fs_type field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_fs_type: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_do_reset = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_do_reset), 4))
    field_fs_type = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_fs_type), 4))
  }
  /// @brief Encode every complete fanuc_msgs/srv/CfgForceSensor_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/CfgForceSensor_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/CfgForceSensor_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvCfgForceSensor_Response {
  /// @brief Original fanuc_msgs/srv/CfgForceSensor_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/CfgForceSensor_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/CfgForceSensor_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetAnalogIO_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..70 bytes.
public struct Ros2Fanuc_msgsSrvGetAnalogIO_Request {
  /// @brief Original fanuc_msgs/srv/GetAnalogIO_Request.io_type field.
  /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_io_type: Ros2Fanuc_msgsMsgIOType = Ros2Fanuc_msgsMsgIOType()
  /// @brief Original fanuc_msgs/srv/GetAnalogIO_Request.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_io_type.fields(&cursor)
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetAnalogIO_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 70),
      limit: 70, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetAnalogIO_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 70 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetAnalogIO_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Fanuc_msgsSrvGetAnalogIO_Response {
  /// @brief Original fanuc_msgs/srv/GetAnalogIO_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/GetAnalogIO_Response.value field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_value = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_value.bitPattern), 4)))
    if !field_value.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetAnalogIO_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetAnalogIO_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetBoolIO_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..70 bytes.
public struct Ros2Fanuc_msgsSrvGetBoolIO_Request {
  /// @brief Original fanuc_msgs/srv/GetBoolIO_Request.io_type field.
  /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_io_type: Ros2Fanuc_msgsMsgIOType = Ros2Fanuc_msgsMsgIOType()
  /// @brief Original fanuc_msgs/srv/GetBoolIO_Request.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_io_type.fields(&cursor)
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetBoolIO_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 70),
      limit: 70, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetBoolIO_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 70 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetBoolIO_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..5 bytes.
public struct Ros2Fanuc_msgsSrvGetBoolIO_Response {
  /// @brief Original fanuc_msgs/srv/GetBoolIO_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/GetBoolIO_Response.value field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_value = cursor.boolean(field_value)
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetBoolIO_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 5),
      limit: 5, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetBoolIO_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 5 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetCartesianPosition_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Fanuc_msgsSrvGetCartesianPosition_Request {
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Request.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetCartesianPosition_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetCartesianPosition_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetCartesianPosition_Response value.
/// @details Retain all 21 fields and 0 constants in source order. Canonical extent 54..54 bytes.
public struct Ros2Fanuc_msgsSrvGetCartesianPosition_Response {
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.timetag field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_timetag: Int32 = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.utool field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_utool: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.uframe field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_uframe: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.front field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_front: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.up field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_up: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.left field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_left: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.flip field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_flip: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.turn4 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_turn4: Int8 = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.turn5 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_turn5: Int8 = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.turn6 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_turn6: Int8 = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Float = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Float = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Float = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.w field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_w: Float = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.p field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_p: Float = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.r field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_r: Float = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.ext1 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ext1: Float = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.ext2 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ext2: Float = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.ext3 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ext3: Float = 0
  /// @brief Original fanuc_msgs/srv/GetCartesianPosition_Response.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_timetag = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_timetag)), 4)))
    field_utool = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_utool), 1))
    field_uframe = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_uframe), 1))
    field_front = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_front), 1))
    field_up = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_up), 1))
    field_left = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_left), 1))
    field_flip = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_flip), 1))
    field_turn4 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_turn4)), 1)))
    field_turn5 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_turn5)), 1)))
    field_turn6 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_turn6)), 1)))
    field_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_x.bitPattern), 4)))
    if !field_x.isFinite { cursor.failed = true }
    field_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_y.bitPattern), 4)))
    if !field_y.isFinite { cursor.failed = true }
    field_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_z.bitPattern), 4)))
    if !field_z.isFinite { cursor.failed = true }
    field_w = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_w.bitPattern), 4)))
    if !field_w.isFinite { cursor.failed = true }
    field_p = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_p.bitPattern), 4)))
    if !field_p.isFinite { cursor.failed = true }
    field_r = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_r.bitPattern), 4)))
    if !field_r.isFinite { cursor.failed = true }
    field_ext1 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ext1.bitPattern), 4)))
    if !field_ext1.isFinite { cursor.failed = true }
    field_ext2 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ext2.bitPattern), 4)))
    if !field_ext2.isFinite { cursor.failed = true }
    field_ext3 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ext3.bitPattern), 4)))
    if !field_ext3.isFinite { cursor.failed = true }
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetCartesianPosition_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 54),
      limit: 54, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetCartesianPosition_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 54 || bytes.count > 54 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetGroupIO_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..70 bytes.
public struct Ros2Fanuc_msgsSrvGetGroupIO_Request {
  /// @brief Original fanuc_msgs/srv/GetGroupIO_Request.io_type field.
  /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_io_type: Ros2Fanuc_msgsMsgIOType = Ros2Fanuc_msgsMsgIOType()
  /// @brief Original fanuc_msgs/srv/GetGroupIO_Request.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_io_type.fields(&cursor)
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetGroupIO_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 70),
      limit: 70, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetGroupIO_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 70 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetGroupIO_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..6 bytes.
public struct Ros2Fanuc_msgsSrvGetGroupIO_Response {
  /// @brief Original fanuc_msgs/srv/GetGroupIO_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/GetGroupIO_Response.value field.
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
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_value = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_value), 2))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetGroupIO_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 6),
      limit: 6, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetGroupIO_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 6 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetNumReg_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 2..2 bytes.
public struct Ros2Fanuc_msgsSrvGetNumReg_Request {
  /// @brief Original fanuc_msgs/srv/GetNumReg_Request.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetNumReg_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2),
      limit: 2, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetNumReg_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 2 || bytes.count > 2 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetNumReg_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Fanuc_msgsSrvGetNumReg_Response {
  /// @brief Original fanuc_msgs/srv/GetNumReg_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/GetNumReg_Response.value field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_value = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_value.bitPattern), 4)))
    if !field_value.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetNumReg_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetNumReg_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetPayloadComp_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 2..2 bytes.
public struct Ros2Fanuc_msgsSrvGetPayloadComp_Request {
  /// @brief Original fanuc_msgs/srv/GetPayloadComp_Request.payload_schedule_id field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_payload_schedule_id: UInt16 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_payload_schedule_id = UInt16(
      truncatingIfNeeded: cursor.number(UInt64(field_payload_schedule_id), 2))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetPayloadComp_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2),
      limit: 2, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetPayloadComp_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 2 || bytes.count > 2 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetPayloadComp_Response value.
/// @details Retain all 8 fields and 0 constants in source order. Canonical extent 32..32 bytes.
public struct Ros2Fanuc_msgsSrvGetPayloadComp_Response {
  /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.mass field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mass: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.cg_x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cg_x: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.cg_y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cg_y: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.cg_z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cg_z: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.in_x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_x: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.in_y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_y: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.in_z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_z: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadComp_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_mass = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_mass.bitPattern), 4)))
    if !field_mass.isFinite { cursor.failed = true }
    field_cg_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cg_x.bitPattern), 4)))
    if !field_cg_x.isFinite { cursor.failed = true }
    field_cg_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cg_y.bitPattern), 4)))
    if !field_cg_y.isFinite { cursor.failed = true }
    field_cg_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cg_z.bitPattern), 4)))
    if !field_cg_z.isFinite { cursor.failed = true }
    field_in_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_in_x.bitPattern), 4)))
    if !field_in_x.isFinite { cursor.failed = true }
    field_in_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_in_y.bitPattern), 4)))
    if !field_in_y.isFinite { cursor.failed = true }
    field_in_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_in_z.bitPattern), 4)))
    if !field_in_z.isFinite { cursor.failed = true }
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetPayloadComp_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 32),
      limit: 32, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetPayloadComp_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 32 || bytes.count > 32 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetPayloadID_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Fanuc_msgsSrvGetPayloadID_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetPayloadID_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetPayloadID_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetPayloadID_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..6 bytes.
public struct Ros2Fanuc_msgsSrvGetPayloadID_Response {
  /// @brief Original fanuc_msgs/srv/GetPayloadID_Response.payload_schedule_id field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_payload_schedule_id: UInt16 = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadID_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_payload_schedule_id = UInt16(
      truncatingIfNeeded: cursor.number(UInt64(field_payload_schedule_id), 2))
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetPayloadID_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 6),
      limit: 6, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetPayloadID_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 6 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetPayloadValue_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 2..2 bytes.
public struct Ros2Fanuc_msgsSrvGetPayloadValue_Request {
  /// @brief Original fanuc_msgs/srv/GetPayloadValue_Request.payload_schedule_id field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_payload_schedule_id: UInt16 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_payload_schedule_id = UInt16(
      truncatingIfNeeded: cursor.number(UInt64(field_payload_schedule_id), 2))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetPayloadValue_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2),
      limit: 2, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetPayloadValue_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 2 || bytes.count > 2 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetPayloadValue_Response value.
/// @details Retain all 8 fields and 0 constants in source order. Canonical extent 32..32 bytes.
public struct Ros2Fanuc_msgsSrvGetPayloadValue_Response {
  /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.mass field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mass: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.cg_x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cg_x: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.cg_y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cg_y: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.cg_z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cg_z: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.in_x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_x: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.in_y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_y: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.in_z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_z: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPayloadValue_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_mass = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_mass.bitPattern), 4)))
    if !field_mass.isFinite { cursor.failed = true }
    field_cg_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cg_x.bitPattern), 4)))
    if !field_cg_x.isFinite { cursor.failed = true }
    field_cg_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cg_y.bitPattern), 4)))
    if !field_cg_y.isFinite { cursor.failed = true }
    field_cg_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cg_z.bitPattern), 4)))
    if !field_cg_z.isFinite { cursor.failed = true }
    field_in_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_in_x.bitPattern), 4)))
    if !field_in_x.isFinite { cursor.failed = true }
    field_in_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_in_y.bitPattern), 4)))
    if !field_in_y.isFinite { cursor.failed = true }
    field_in_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_in_z.bitPattern), 4)))
    if !field_in_z.isFinite { cursor.failed = true }
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetPayloadValue_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 32),
      limit: 32, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetPayloadValue_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 32 || bytes.count > 32 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetPosReg_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 2..2 bytes.
public struct Ros2Fanuc_msgsSrvGetPosReg_Request {
  /// @brief Original fanuc_msgs/srv/GetPosReg_Request.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetPosReg_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2),
      limit: 2, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetPosReg_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 2 || bytes.count > 2 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetPosReg_Response value.
/// @details Retain all 29 fields and 0 constants in source order. Canonical extent 89..601 bytes.
public struct Ros2Fanuc_msgsSrvGetPosReg_Response {
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.representation field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_representation: [UInt8] = []
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.utool field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_utool: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.uframe field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_uframe: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.front field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_front: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.up field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_up: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.left field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_left: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.flip field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_flip: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.turn4 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_turn4: Int8 = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.turn5 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_turn5: Int8 = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.turn6 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_turn6: Int8 = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.w field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_w: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.p field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_p: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.r field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_r: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.ext1 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ext1: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.ext2 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ext2: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.ext3 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ext3: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j1 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j1: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j2 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j2: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j3 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j3: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j4 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j4: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j5 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j5: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j6 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j6: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j7 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j7: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j8 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j8: Float = 0
  /// @brief Original fanuc_msgs/srv/GetPosReg_Response.j9 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j9: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_representation = cursor.text(field_representation, 512)
    field_utool = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_utool), 1))
    field_uframe = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_uframe), 1))
    field_front = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_front), 1))
    field_up = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_up), 1))
    field_left = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_left), 1))
    field_flip = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_flip), 1))
    field_turn4 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_turn4)), 1)))
    field_turn5 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_turn5)), 1)))
    field_turn6 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_turn6)), 1)))
    field_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_x.bitPattern), 4)))
    if !field_x.isFinite { cursor.failed = true }
    field_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_y.bitPattern), 4)))
    if !field_y.isFinite { cursor.failed = true }
    field_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_z.bitPattern), 4)))
    if !field_z.isFinite { cursor.failed = true }
    field_w = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_w.bitPattern), 4)))
    if !field_w.isFinite { cursor.failed = true }
    field_p = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_p.bitPattern), 4)))
    if !field_p.isFinite { cursor.failed = true }
    field_r = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_r.bitPattern), 4)))
    if !field_r.isFinite { cursor.failed = true }
    field_ext1 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ext1.bitPattern), 4)))
    if !field_ext1.isFinite { cursor.failed = true }
    field_ext2 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ext2.bitPattern), 4)))
    if !field_ext2.isFinite { cursor.failed = true }
    field_ext3 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ext3.bitPattern), 4)))
    if !field_ext3.isFinite { cursor.failed = true }
    field_j1 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j1.bitPattern), 4)))
    if !field_j1.isFinite { cursor.failed = true }
    field_j2 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j2.bitPattern), 4)))
    if !field_j2.isFinite { cursor.failed = true }
    field_j3 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j3.bitPattern), 4)))
    if !field_j3.isFinite { cursor.failed = true }
    field_j4 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j4.bitPattern), 4)))
    if !field_j4.isFinite { cursor.failed = true }
    field_j5 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j5.bitPattern), 4)))
    if !field_j5.isFinite { cursor.failed = true }
    field_j6 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j6.bitPattern), 4)))
    if !field_j6.isFinite { cursor.failed = true }
    field_j7 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j7.bitPattern), 4)))
    if !field_j7.isFinite { cursor.failed = true }
    field_j8 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j8.bitPattern), 4)))
    if !field_j8.isFinite { cursor.failed = true }
    field_j9 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j9.bitPattern), 4)))
    if !field_j9.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetPosReg_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 601),
      limit: 601, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetPosReg_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 89 || bytes.count > 601 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetTCPSpeed_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Fanuc_msgsSrvGetTCPSpeed_Request {
  /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Request.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetTCPSpeed_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetTCPSpeed_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetTCPSpeed_Response value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 13..13 bytes.
public struct Ros2Fanuc_msgsSrvGetTCPSpeed_Response {
  /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.timetag field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_timetag: Int32 = 0
  /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.speed field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_speed: Float = 0
  /// @brief Original fanuc_msgs/srv/GetTCPSpeed_Response.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_timetag = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_timetag)), 4)))
    field_speed = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_speed.bitPattern), 4)))
    if !field_speed.isFinite { cursor.failed = true }
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetTCPSpeed_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 13),
      limit: 13, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetTCPSpeed_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 13 || bytes.count > 13 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetUFrameData_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 2..2 bytes.
public struct Ros2Fanuc_msgsSrvGetUFrameData_Request {
  /// @brief Original fanuc_msgs/srv/GetUFrameData_Request.uframe_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_uframe_number: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetUFrameData_Request.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_uframe_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_uframe_number), 1))
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetUFrameData_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2),
      limit: 2, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetUFrameData_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 2 || bytes.count > 2 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetUFrameData_Response value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 30..30 bytes.
public struct Ros2Fanuc_msgsSrvGetUFrameData_Response {
  /// @brief Original fanuc_msgs/srv/GetUFrameData_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/GetUFrameData_Response.uframe_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_uframe_number: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetUFrameData_Response.frame field.
  /// @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_frame: Ros2Fanuc_msgsMsgFrame = Ros2Fanuc_msgsMsgFrame()
  /// @brief Original fanuc_msgs/srv/GetUFrameData_Response.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_uframe_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_uframe_number), 1))
    field_frame.fields(&cursor)
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetUFrameData_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 30),
      limit: 30, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetUFrameData_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 30 || bytes.count > 30 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetUFrameUTool_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Fanuc_msgsSrvGetUFrameUTool_Request {
  /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Request.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetUFrameUTool_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetUFrameUTool_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetUFrameUTool_Response value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 7..7 bytes.
public struct Ros2Fanuc_msgsSrvGetUFrameUTool_Response {
  /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.uframe_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_uframe_number: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.utool_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_utool_number: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetUFrameUTool_Response.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_uframe_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_uframe_number), 1))
    field_utool_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_utool_number), 1))
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetUFrameUTool_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 7),
      limit: 7, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetUFrameUTool_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 7 || bytes.count > 7 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetUToolData_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 2..2 bytes.
public struct Ros2Fanuc_msgsSrvGetUToolData_Request {
  /// @brief Original fanuc_msgs/srv/GetUToolData_Request.utool_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_utool_number: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetUToolData_Request.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_utool_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_utool_number), 1))
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetUToolData_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2),
      limit: 2, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetUToolData_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 2 || bytes.count > 2 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/GetUToolData_Response value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 30..30 bytes.
public struct Ros2Fanuc_msgsSrvGetUToolData_Response {
  /// @brief Original fanuc_msgs/srv/GetUToolData_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/GetUToolData_Response.utool_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_utool_number: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/GetUToolData_Response.frame field.
  /// @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_frame: Ros2Fanuc_msgsMsgFrame = Ros2Fanuc_msgsMsgFrame()
  /// @brief Original fanuc_msgs/srv/GetUToolData_Response.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_utool_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_utool_number), 1))
    field_frame.fields(&cursor)
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/GetUToolData_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 30),
      limit: 30, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/GetUToolData_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 30 || bytes.count > 30 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/ReadError_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Fanuc_msgsSrvReadError_Request {
  /// @brief Original fanuc_msgs/srv/ReadError_Request.count field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_count: UInt8 = 1
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_count = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_count), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/ReadError_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/ReadError_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/ReadError_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 25..2585 bytes.
public struct Ros2Fanuc_msgsSrvReadError_Response {
  /// @brief Original fanuc_msgs/srv/ReadError_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/ReadError_Response.count field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_count: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/ReadError_Response.error_data field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Shape array; bound/count
  /// 5 elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_error_data: [[UInt8]] = Array(repeating: [], count: 5)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_count = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_count), 1))
    let count2 = 5
    if cursor.writing && field_error_data.count != 5 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_error_data = Array(repeating: [], count: count2) }
    for index in 0..<count2 {
      field_error_data[index] = cursor.text(field_error_data[index], 512)
    }
  }
  /// @brief Encode every complete fanuc_msgs/srv/ReadError_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2585),
      limit: 2585, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/ReadError_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 25 || bytes.count > 2585 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/Reset_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Fanuc_msgsSrvReset_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
  }
  /// @brief Encode every complete fanuc_msgs/srv/Reset_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/Reset_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/Reset_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvReset_Response {
  /// @brief Original fanuc_msgs/srv/Reset_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/Reset_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/Reset_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetAnalogIO_Request value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..74 bytes.
public struct Ros2Fanuc_msgsSrvSetAnalogIO_Request {
  /// @brief Original fanuc_msgs/srv/SetAnalogIO_Request.io_type field.
  /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_io_type: Ros2Fanuc_msgsMsgIOType = Ros2Fanuc_msgsMsgIOType()
  /// @brief Original fanuc_msgs/srv/SetAnalogIO_Request.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Original fanuc_msgs/srv/SetAnalogIO_Request.value field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_io_type.fields(&cursor)
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
    field_value = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_value.bitPattern), 4)))
    if !field_value.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetAnalogIO_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 74),
      limit: 74, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetAnalogIO_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 10 || bytes.count > 74 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetAnalogIO_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvSetAnalogIO_Response {
  /// @brief Original fanuc_msgs/srv/SetAnalogIO_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetAnalogIO_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetAnalogIO_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetBoolIO_Request value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 7..71 bytes.
public struct Ros2Fanuc_msgsSrvSetBoolIO_Request {
  /// @brief Original fanuc_msgs/srv/SetBoolIO_Request.io_type field.
  /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_io_type: Ros2Fanuc_msgsMsgIOType = Ros2Fanuc_msgsMsgIOType()
  /// @brief Original fanuc_msgs/srv/SetBoolIO_Request.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Original fanuc_msgs/srv/SetBoolIO_Request.value field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_io_type.fields(&cursor)
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
    field_value = cursor.boolean(field_value)
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetBoolIO_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 71),
      limit: 71, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetBoolIO_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 7 || bytes.count > 71 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetBoolIO_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvSetBoolIO_Response {
  /// @brief Original fanuc_msgs/srv/SetBoolIO_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetBoolIO_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetBoolIO_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetGenOverride_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Fanuc_msgsSrvSetGenOverride_Request {
  /// @brief Original fanuc_msgs/srv/SetGenOverride_Request.value field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Int8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_value = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_value)), 1)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetGenOverride_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetGenOverride_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetGenOverride_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvSetGenOverride_Response {
  /// @brief Original fanuc_msgs/srv/SetGenOverride_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetGenOverride_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetGenOverride_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetGroupIO_Request value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 8..72 bytes.
public struct Ros2Fanuc_msgsSrvSetGroupIO_Request {
  /// @brief Original fanuc_msgs/srv/SetGroupIO_Request.io_type field.
  /// @details Original type fanuc_msgs/msg/IOType. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_io_type: Ros2Fanuc_msgsMsgIOType = Ros2Fanuc_msgsMsgIOType()
  /// @brief Original fanuc_msgs/srv/SetGroupIO_Request.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Original fanuc_msgs/srv/SetGroupIO_Request.value field.
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
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_io_type.fields(&cursor)
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
    field_value = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_value), 2))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetGroupIO_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 72),
      limit: 72, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetGroupIO_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 72 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetGroupIO_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvSetGroupIO_Response {
  /// @brief Original fanuc_msgs/srv/SetGroupIO_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetGroupIO_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetGroupIO_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetNumReg_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..6 bytes.
public struct Ros2Fanuc_msgsSrvSetNumReg_Request {
  /// @brief Original fanuc_msgs/srv/SetNumReg_Request.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Original fanuc_msgs/srv/SetNumReg_Request.value field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
    field_value = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_value.bitPattern), 4)))
    if !field_value.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetNumReg_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 6),
      limit: 6, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetNumReg_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 6 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetNumReg_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvSetNumReg_Response {
  /// @brief Original fanuc_msgs/srv/SetNumReg_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetNumReg_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetNumReg_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetPayloadComp_Request value.
/// @details Retain all 8 fields and 0 constants in source order. Canonical extent 30..30 bytes.
public struct Ros2Fanuc_msgsSrvSetPayloadComp_Request {
  /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.payload_schedule_id field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_payload_schedule_id: UInt16 = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.mass field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mass: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.cg_x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cg_x: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.cg_y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cg_y: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.cg_z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cg_z: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.in_x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_x: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.in_y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_y: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadComp_Request.in_z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_z: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_payload_schedule_id = UInt16(
      truncatingIfNeeded: cursor.number(UInt64(field_payload_schedule_id), 2))
    field_mass = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_mass.bitPattern), 4)))
    if !field_mass.isFinite { cursor.failed = true }
    field_cg_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cg_x.bitPattern), 4)))
    if !field_cg_x.isFinite { cursor.failed = true }
    field_cg_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cg_y.bitPattern), 4)))
    if !field_cg_y.isFinite { cursor.failed = true }
    field_cg_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cg_z.bitPattern), 4)))
    if !field_cg_z.isFinite { cursor.failed = true }
    field_in_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_in_x.bitPattern), 4)))
    if !field_in_x.isFinite { cursor.failed = true }
    field_in_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_in_y.bitPattern), 4)))
    if !field_in_y.isFinite { cursor.failed = true }
    field_in_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_in_z.bitPattern), 4)))
    if !field_in_z.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetPayloadComp_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 30),
      limit: 30, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetPayloadComp_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 30 || bytes.count > 30 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetPayloadComp_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvSetPayloadComp_Response {
  /// @brief Original fanuc_msgs/srv/SetPayloadComp_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetPayloadComp_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetPayloadComp_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetPayloadID_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 2..2 bytes.
public struct Ros2Fanuc_msgsSrvSetPayloadID_Request {
  /// @brief Original fanuc_msgs/srv/SetPayloadID_Request.payload_schedule_id field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_payload_schedule_id: UInt16 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_payload_schedule_id = UInt16(
      truncatingIfNeeded: cursor.number(UInt64(field_payload_schedule_id), 2))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetPayloadID_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2),
      limit: 2, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetPayloadID_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 2 || bytes.count > 2 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetPayloadID_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvSetPayloadID_Response {
  /// @brief Original fanuc_msgs/srv/SetPayloadID_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetPayloadID_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetPayloadID_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetPayloadValue_Request value.
/// @details Retain all 9 fields and 0 constants in source order. Canonical extent 31..31 bytes.
public struct Ros2Fanuc_msgsSrvSetPayloadValue_Request {
  /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.payload_schedule_id field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_payload_schedule_id: UInt16 = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.mass field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mass: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.cg_x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cg_x: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.cg_y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cg_y: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.cg_z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cg_z: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.use_in field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_in: Bool = false
  /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.in_x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_x: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.in_y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_y: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPayloadValue_Request.in_z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_in_z: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_payload_schedule_id = UInt16(
      truncatingIfNeeded: cursor.number(UInt64(field_payload_schedule_id), 2))
    field_mass = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_mass.bitPattern), 4)))
    if !field_mass.isFinite { cursor.failed = true }
    field_cg_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cg_x.bitPattern), 4)))
    if !field_cg_x.isFinite { cursor.failed = true }
    field_cg_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cg_y.bitPattern), 4)))
    if !field_cg_y.isFinite { cursor.failed = true }
    field_cg_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cg_z.bitPattern), 4)))
    if !field_cg_z.isFinite { cursor.failed = true }
    field_use_in = cursor.boolean(field_use_in)
    field_in_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_in_x.bitPattern), 4)))
    if !field_in_x.isFinite { cursor.failed = true }
    field_in_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_in_y.bitPattern), 4)))
    if !field_in_y.isFinite { cursor.failed = true }
    field_in_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_in_z.bitPattern), 4)))
    if !field_in_z.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetPayloadValue_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 31),
      limit: 31, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetPayloadValue_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 31 || bytes.count > 31 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetPayloadValue_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvSetPayloadValue_Response {
  /// @brief Original fanuc_msgs/srv/SetPayloadValue_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetPayloadValue_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetPayloadValue_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetPosReg_Request value.
/// @details Retain all 29 fields and 0 constants in source order. Canonical extent 87..599 bytes.
public struct Ros2Fanuc_msgsSrvSetPosReg_Request {
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.index field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_index: UInt16 = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.representation field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_representation: [UInt8] = []
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.utool field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_utool: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.uframe field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_uframe: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.front field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_front: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.up field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_up: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.left field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_left: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.flip field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_flip: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.turn4 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_turn4: Int8 = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.turn5 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_turn5: Int8 = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.turn6 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_turn6: Int8 = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.w field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_w: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.p field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_p: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.r field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_r: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.ext1 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ext1: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.ext2 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ext2: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.ext3 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ext3: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j1 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j1: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j2 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j2: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j3 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j3: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j4 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j4: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j5 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j5: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j6 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j6: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j7 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j7: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j8 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j8: Float = 0
  /// @brief Original fanuc_msgs/srv/SetPosReg_Request.j9 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_j9: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_index = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_index), 2))
    field_representation = cursor.text(field_representation, 512)
    field_utool = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_utool), 1))
    field_uframe = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_uframe), 1))
    field_front = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_front), 1))
    field_up = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_up), 1))
    field_left = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_left), 1))
    field_flip = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_flip), 1))
    field_turn4 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_turn4)), 1)))
    field_turn5 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_turn5)), 1)))
    field_turn6 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_turn6)), 1)))
    field_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_x.bitPattern), 4)))
    if !field_x.isFinite { cursor.failed = true }
    field_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_y.bitPattern), 4)))
    if !field_y.isFinite { cursor.failed = true }
    field_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_z.bitPattern), 4)))
    if !field_z.isFinite { cursor.failed = true }
    field_w = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_w.bitPattern), 4)))
    if !field_w.isFinite { cursor.failed = true }
    field_p = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_p.bitPattern), 4)))
    if !field_p.isFinite { cursor.failed = true }
    field_r = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_r.bitPattern), 4)))
    if !field_r.isFinite { cursor.failed = true }
    field_ext1 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ext1.bitPattern), 4)))
    if !field_ext1.isFinite { cursor.failed = true }
    field_ext2 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ext2.bitPattern), 4)))
    if !field_ext2.isFinite { cursor.failed = true }
    field_ext3 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ext3.bitPattern), 4)))
    if !field_ext3.isFinite { cursor.failed = true }
    field_j1 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j1.bitPattern), 4)))
    if !field_j1.isFinite { cursor.failed = true }
    field_j2 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j2.bitPattern), 4)))
    if !field_j2.isFinite { cursor.failed = true }
    field_j3 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j3.bitPattern), 4)))
    if !field_j3.isFinite { cursor.failed = true }
    field_j4 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j4.bitPattern), 4)))
    if !field_j4.isFinite { cursor.failed = true }
    field_j5 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j5.bitPattern), 4)))
    if !field_j5.isFinite { cursor.failed = true }
    field_j6 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j6.bitPattern), 4)))
    if !field_j6.isFinite { cursor.failed = true }
    field_j7 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j7.bitPattern), 4)))
    if !field_j7.isFinite { cursor.failed = true }
    field_j8 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j8.bitPattern), 4)))
    if !field_j8.isFinite { cursor.failed = true }
    field_j9 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_j9.bitPattern), 4)))
    if !field_j9.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetPosReg_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 599),
      limit: 599, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetPosReg_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 87 || bytes.count > 599 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetPosReg_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvSetPosReg_Response {
  /// @brief Original fanuc_msgs/srv/SetPosReg_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetPosReg_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetPosReg_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetUFrameData_Request value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 26..26 bytes.
public struct Ros2Fanuc_msgsSrvSetUFrameData_Request {
  /// @brief Original fanuc_msgs/srv/SetUFrameData_Request.uframe_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_uframe_number: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/SetUFrameData_Request.frame field.
  /// @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_frame: Ros2Fanuc_msgsMsgFrame = Ros2Fanuc_msgsMsgFrame()
  /// @brief Original fanuc_msgs/srv/SetUFrameData_Request.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_uframe_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_uframe_number), 1))
    field_frame.fields(&cursor)
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetUFrameData_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 26),
      limit: 26, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetUFrameData_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 26 || bytes.count > 26 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetUFrameData_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..5 bytes.
public struct Ros2Fanuc_msgsSrvSetUFrameData_Response {
  /// @brief Original fanuc_msgs/srv/SetUFrameData_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/SetUFrameData_Response.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetUFrameData_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 5),
      limit: 5, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetUFrameData_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 5 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetUFrameUTool_Request value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 3..3 bytes.
public struct Ros2Fanuc_msgsSrvSetUFrameUTool_Request {
  /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Request.uframe_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_uframe_number: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Request.utool_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_utool_number: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Request.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_uframe_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_uframe_number), 1))
    field_utool_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_utool_number), 1))
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetUFrameUTool_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 3),
      limit: 3, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetUFrameUTool_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 3 || bytes.count > 3 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetUFrameUTool_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..5 bytes.
public struct Ros2Fanuc_msgsSrvSetUFrameUTool_Response {
  /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/SetUFrameUTool_Response.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetUFrameUTool_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 5),
      limit: 5, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetUFrameUTool_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 5 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetUToolData_Request value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 26..26 bytes.
public struct Ros2Fanuc_msgsSrvSetUToolData_Request {
  /// @brief Original fanuc_msgs/srv/SetUToolData_Request.utool_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_utool_number: UInt8 = 0
  /// @brief Original fanuc_msgs/srv/SetUToolData_Request.frame field.
  /// @details Original type fanuc_msgs/msg/Frame. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_frame: Ros2Fanuc_msgsMsgFrame = Ros2Fanuc_msgsMsgFrame()
  /// @brief Original fanuc_msgs/srv/SetUToolData_Request.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_utool_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_utool_number), 1))
    field_frame.fields(&cursor)
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetUToolData_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 26),
      limit: 26, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetUToolData_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 26 || bytes.count > 26 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SetUToolData_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..5 bytes.
public struct Ros2Fanuc_msgsSrvSetUToolData_Response {
  /// @brief Original fanuc_msgs/srv/SetUToolData_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original fanuc_msgs/srv/SetUToolData_Response.group field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_group = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group), 1))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SetUToolData_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 5),
      limit: 5, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SetUToolData_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 5 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SwitchControlState_Request value.
/// @details Retain all 1 fields and 2 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvSwitchControlState_Request {
  /// @brief Original fanuc_msgs/srv/SwitchControlState_Request.status field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_status: UInt32 = 0
  /// @brief Original fanuc_msgs/srv/SwitchControlState_Request.STOP constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STOP: UInt32 = 0
  /// @brief Original fanuc_msgs/srv/SwitchControlState_Request.START constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_START: UInt32 = 1
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_status = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_status), 4))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SwitchControlState_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SwitchControlState_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original fanuc_msgs/srv/SwitchControlState_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Fanuc_msgsSrvSwitchControlState_Response {
  /// @brief Original fanuc_msgs/srv/SwitchControlState_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete fanuc_msgs/srv/SwitchControlState_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete fanuc_msgs/srv/SwitchControlState_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/msg/CallParam value.
/// @details Retain all 4 fields and 10 constants in source order. Canonical extent 16..592 bytes.
public struct Ros2Rmi_msgsMsgCallParam {
  /// @brief Original rmi_msgs/msg/CallParam.type field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_type: [UInt8] = []
  /// @brief Original rmi_msgs/msg/CallParam.int_value field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_int_value: Int32 = 0
  /// @brief Original rmi_msgs/msg/CallParam.float_value field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_float_value: Float = 0
  /// @brief Original rmi_msgs/msg/CallParam.string_value field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_string_value: [UInt8] = []
  /// @brief Original rmi_msgs/msg/CallParam.AR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_AR: StaticString = "AR"
  /// @brief Original rmi_msgs/msg/CallParam.PR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PR: StaticString = "PR"
  /// @brief Original rmi_msgs/msg/CallParam.SR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SR: StaticString = "SR"
  /// @brief Original rmi_msgs/msg/CallParam.R constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R: StaticString = "R"
  /// @brief Original rmi_msgs/msg/CallParam.P constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_P: StaticString = "P"
  /// @brief Original rmi_msgs/msg/CallParam.INT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INT: StaticString = "INT"
  /// @brief Original rmi_msgs/msg/CallParam.INTEGER constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INTEGER: StaticString = "INT"
  /// @brief Original rmi_msgs/msg/CallParam.FLOAT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FLOAT: StaticString = "FLOAT"
  /// @brief Original rmi_msgs/msg/CallParam.STRING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STRING: StaticString = "String"
  /// @brief Original rmi_msgs/msg/CallParam.STR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STR: StaticString = "String"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_type = cursor.text(field_type, 64)
    field_int_value = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_int_value)), 4)))
    field_float_value = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_float_value.bitPattern), 4))
    )
    if !field_float_value.isFinite { cursor.failed = true }
    field_string_value = cursor.text(field_string_value, 512)
  }
  /// @brief Encode every complete rmi_msgs/msg/CallParam field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 592),
      limit: 592, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/msg/CallParam.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 592 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/msg/Cartesian value.
/// @details Retain all 18 fields and 0 constants in source order. Canonical extent 45..45 bytes.
public struct Ros2Rmi_msgsMsgCartesian {
  /// @brief Original rmi_msgs/msg/Cartesian.utool field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_utool: Int8 = 1
  /// @brief Original rmi_msgs/msg/Cartesian.uframe field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_uframe: Int8 = 0
  /// @brief Original rmi_msgs/msg/Cartesian.front field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_front: UInt8 = 1
  /// @brief Original rmi_msgs/msg/Cartesian.up field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_up: UInt8 = 1
  /// @brief Original rmi_msgs/msg/Cartesian.left field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_left: UInt8 = 0
  /// @brief Original rmi_msgs/msg/Cartesian.flip field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_flip: UInt8 = 0
  /// @brief Original rmi_msgs/msg/Cartesian.turn4 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_turn4: Int8 = 0
  /// @brief Original rmi_msgs/msg/Cartesian.turn5 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_turn5: Int8 = 0
  /// @brief Original rmi_msgs/msg/Cartesian.turn6 field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_turn6: Int8 = 0
  /// @brief Original rmi_msgs/msg/Cartesian.x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Float = 0
  /// @brief Original rmi_msgs/msg/Cartesian.y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Float = 0
  /// @brief Original rmi_msgs/msg/Cartesian.z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Float = 0
  /// @brief Original rmi_msgs/msg/Cartesian.w field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_w: Float = 0
  /// @brief Original rmi_msgs/msg/Cartesian.p field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_p: Float = 0
  /// @brief Original rmi_msgs/msg/Cartesian.r field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_r: Float = 0
  /// @brief Original rmi_msgs/msg/Cartesian.ext1 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ext1: Float = 0
  /// @brief Original rmi_msgs/msg/Cartesian.ext2 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ext2: Float = 0
  /// @brief Original rmi_msgs/msg/Cartesian.ext3 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ext3: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_utool = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_utool)), 1)))
    field_uframe = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_uframe)), 1)))
    field_front = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_front), 1))
    field_up = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_up), 1))
    field_left = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_left), 1))
    field_flip = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_flip), 1))
    field_turn4 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_turn4)), 1)))
    field_turn5 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_turn5)), 1)))
    field_turn6 = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_turn6)), 1)))
    field_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_x.bitPattern), 4)))
    if !field_x.isFinite { cursor.failed = true }
    field_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_y.bitPattern), 4)))
    if !field_y.isFinite { cursor.failed = true }
    field_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_z.bitPattern), 4)))
    if !field_z.isFinite { cursor.failed = true }
    field_w = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_w.bitPattern), 4)))
    if !field_w.isFinite { cursor.failed = true }
    field_p = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_p.bitPattern), 4)))
    if !field_p.isFinite { cursor.failed = true }
    field_r = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_r.bitPattern), 4)))
    if !field_r.isFinite { cursor.failed = true }
    field_ext1 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ext1.bitPattern), 4)))
    if !field_ext1.isFinite { cursor.failed = true }
    field_ext2 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ext2.bitPattern), 4)))
    if !field_ext2.isFinite { cursor.failed = true }
    field_ext3 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ext3.bitPattern), 4)))
    if !field_ext3.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete rmi_msgs/msg/Cartesian field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 45),
      limit: 45, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/msg/Cartesian.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 45 || bytes.count > 45 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/msg/Command value.
/// @details Retain all 1 fields and 5 constants in source order. Canonical extent 4..68 bytes.
public struct Ros2Rmi_msgsMsgCommand {
  /// @brief Original rmi_msgs/msg/Command.type field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_type: [UInt8] = []
  /// @brief Original rmi_msgs/msg/Command.INITIAZLIE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INITIAZLIE: StaticString = "INITIALIZE"
  /// @brief Original rmi_msgs/msg/Command.INIT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INIT: StaticString = "INITIALIZE"
  /// @brief Original rmi_msgs/msg/Command.ABORT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ABORT: StaticString = "ABORT"
  /// @brief Original rmi_msgs/msg/Command.PAUSE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PAUSE: StaticString = "PAUSE"
  /// @brief Original rmi_msgs/msg/Command.RESUME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RESUME: StaticString = "RESUME"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_type = cursor.text(field_type, 64)
  }
  /// @brief Encode every complete rmi_msgs/msg/Command field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 68),
      limit: 68, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/msg/Command.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 68 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/msg/CommandOptions value.
/// @details Retain all 6 fields and 8 constants in source order. Canonical extent 12..1036 bytes.
public struct Ros2Rmi_msgsMsgCommandOptions {
  /// @brief Original rmi_msgs/msg/CommandOptions.use_group_mask field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_group_mask: Bool = false
  /// @brief Original rmi_msgs/msg/CommandOptions.group_mask field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_group_mask: UInt8 = 1
  /// @brief Original rmi_msgs/msg/CommandOptions.use_rtsa field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_rtsa: Bool = false
  /// @brief Original rmi_msgs/msg/CommandOptions.rtsa field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_rtsa: [UInt8] = [79, 78]
  /// @brief Original rmi_msgs/msg/CommandOptions.use_pltzmode field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_pltzmode: Bool = false
  /// @brief Original rmi_msgs/msg/CommandOptions.pltzmode field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_pltzmode: [UInt8] = [90, 69, 82, 79, 68, 78]
  /// @brief Original rmi_msgs/msg/CommandOptions.RTSA_ON constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RTSA_ON: StaticString = "ON"
  /// @brief Original rmi_msgs/msg/CommandOptions.RTSA_OFF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RTSA_OFF: StaticString = "OFF"
  /// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_ZERODN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PLTZ_ZERODN: StaticString = "ZERODN"
  /// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_ZEROUP constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PLTZ_ZEROUP: StaticString = "ZEROUP"
  /// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_PSPIDN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PLTZ_PSPIDN: StaticString = "PSPIDN"
  /// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_PSPIUP constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PLTZ_PSPIUP: StaticString = "PSPIUP"
  /// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_MSPIDN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PLTZ_MSPIDN: StaticString = "MSPIDN"
  /// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_MSPIUP constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PLTZ_MSPIUP: StaticString = "MSPIUP"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_use_group_mask = cursor.boolean(field_use_group_mask)
    field_group_mask = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_group_mask), 1))
    field_use_rtsa = cursor.boolean(field_use_rtsa)
    field_rtsa = cursor.text(field_rtsa, 512)
    field_use_pltzmode = cursor.boolean(field_use_pltzmode)
    field_pltzmode = cursor.text(field_pltzmode, 512)
  }
  /// @brief Encode every complete rmi_msgs/msg/CommandOptions field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1036),
      limit: 1036, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/msg/CommandOptions.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 1036 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/msg/Joint value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 36..36 bytes.
public struct Ros2Rmi_msgsMsgJoint {
  /// @brief Original rmi_msgs/msg/Joint.positions field.
  /// @details Original type float32. Shape array; bound/count 9 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_positions: [Float] = Array(repeating: 0, count: 9)
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    let count0 = 9
    if cursor.writing && field_positions.count != 9 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_positions = Array(repeating: 0, count: count0) }
    for index in 0..<count0 {
      field_positions[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_positions[index].bitPattern), 4)))
      if !field_positions[index].isFinite { cursor.failed = true }
    }
  }
  /// @brief Encode every complete rmi_msgs/msg/Joint field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 36),
      limit: 36, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/msg/Joint.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 36 || bytes.count > 36 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/msg/MotionInstructionOptions value.
/// @details Retain all 28 fields and 7 constants in source order. Canonical extent 52..2612 bytes.
public struct Ros2Rmi_msgsMsgMotionInstructionOptions {
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_acc field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_acc: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.acc field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_acc: UInt8 = 0
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_offset_pr_number field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_offset_pr_number: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.offset_pr_number field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_offset_pr_number: UInt16 = 0
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_vision_pr_number field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_vision_pr_number: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.vision_pr_number field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_vision_pr_number: UInt16 = 0
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_wrist_joint field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_wrist_joint: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.wrist_joint field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_wrist_joint: [UInt8] = [79, 78]
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_mrot field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_mrot: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.mrot field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_mrot: [UInt8] = [79, 78]
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_lcb_type field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_lcb_type: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.lcb_type field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_lcb_type: [UInt8] = []
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_lcb_value field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_lcb_value: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.lcb_value field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_lcb_value: UInt16 = 0
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_port_type field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_port_type: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.port_type field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_port_type: UInt8 = 0
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_port_number field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_port_number: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.port_number field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_port_number: UInt16 = 0
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_port_value field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_port_value: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.port_value field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_port_value: [UInt8] = []
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_tool_offset_pr_number field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_tool_offset_pr_number: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.tool_offset_pr_number field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tool_offset_pr_number: UInt16 = 0
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_alim field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_alim: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.alim field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_alim: Int32 = 0
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_alim_reg field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_alim_reg: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.alim_reg field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_alim_reg: UInt16 = 0
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.use_no_blend field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_no_blend: Bool = false
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.no_blend field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_no_blend: [UInt8] = [79, 78]
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_TB constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LCB_TYPE_TB: StaticString = "TB"
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_TA constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LCB_TYPE_TA: StaticString = "TA"
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_DB constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LCB_TYPE_DB: StaticString = "DB"
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_DOUT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PORT_TYPE_DOUT: UInt8 = 1
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_DO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PORT_TYPE_DO: UInt8 = 1
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_ROUT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PORT_TYPE_ROUT: UInt8 = 2
  /// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_RO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PORT_TYPE_RO: UInt8 = 2
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_use_acc = cursor.boolean(field_use_acc)
    field_acc = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_acc), 1))
    field_use_offset_pr_number = cursor.boolean(field_use_offset_pr_number)
    field_offset_pr_number = UInt16(
      truncatingIfNeeded: cursor.number(UInt64(field_offset_pr_number), 2))
    field_use_vision_pr_number = cursor.boolean(field_use_vision_pr_number)
    field_vision_pr_number = UInt16(
      truncatingIfNeeded: cursor.number(UInt64(field_vision_pr_number), 2))
    field_use_wrist_joint = cursor.boolean(field_use_wrist_joint)
    field_wrist_joint = cursor.text(field_wrist_joint, 512)
    field_use_mrot = cursor.boolean(field_use_mrot)
    field_mrot = cursor.text(field_mrot, 512)
    field_use_lcb_type = cursor.boolean(field_use_lcb_type)
    field_lcb_type = cursor.text(field_lcb_type, 512)
    field_use_lcb_value = cursor.boolean(field_use_lcb_value)
    field_lcb_value = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_lcb_value), 2))
    field_use_port_type = cursor.boolean(field_use_port_type)
    field_port_type = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_port_type), 1))
    field_use_port_number = cursor.boolean(field_use_port_number)
    field_port_number = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_port_number), 2))
    field_use_port_value = cursor.boolean(field_use_port_value)
    field_port_value = cursor.text(field_port_value, 512)
    field_use_tool_offset_pr_number = cursor.boolean(field_use_tool_offset_pr_number)
    field_tool_offset_pr_number = UInt16(
      truncatingIfNeeded: cursor.number(UInt64(field_tool_offset_pr_number), 2))
    field_use_alim = cursor.boolean(field_use_alim)
    field_alim = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_alim)), 4)))
    field_use_alim_reg = cursor.boolean(field_use_alim_reg)
    field_alim_reg = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_alim_reg), 2))
    field_use_no_blend = cursor.boolean(field_use_no_blend)
    field_no_blend = cursor.text(field_no_blend, 512)
  }
  /// @brief Encode every complete rmi_msgs/msg/MotionInstructionOptions field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 2612),
      limit: 2612, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/msg/MotionInstructionOptions.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 52 || bytes.count > 2612 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/msg/MotionType value.
/// @details Retain all 1 fields and 8 constants in source order. Canonical extent 4..68 bytes.
public struct Ros2Rmi_msgsMsgMotionType {
  /// @brief Original rmi_msgs/msg/MotionType.type field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_type: [UInt8] = [74]
  /// @brief Original rmi_msgs/msg/MotionType.J constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_J: StaticString = "J"
  /// @brief Original rmi_msgs/msg/MotionType.JOINT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_JOINT: StaticString = "J"
  /// @brief Original rmi_msgs/msg/MotionType.L constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_L: StaticString = "L"
  /// @brief Original rmi_msgs/msg/MotionType.LINEAR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LINEAR: StaticString = "L"
  /// @brief Original rmi_msgs/msg/MotionType.C constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_C: StaticString = "C"
  /// @brief Original rmi_msgs/msg/MotionType.CIRCULAR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CIRCULAR: StaticString = "C"
  /// @brief Original rmi_msgs/msg/MotionType.S constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_S: StaticString = "S"
  /// @brief Original rmi_msgs/msg/MotionType.SPLINE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SPLINE: StaticString = "S"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_type = cursor.text(field_type, 64)
  }
  /// @brief Encode every complete rmi_msgs/msg/MotionType field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 68),
      limit: 68, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/msg/MotionType.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 68 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/msg/Representation value.
/// @details Retain all 1 fields and 5 constants in source order. Canonical extent 4..516 bytes.
public struct Ros2Rmi_msgsMsgRepresentation {
  /// @brief Original rmi_msgs/msg/Representation.representation field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_representation: [UInt8] = [74, 79, 73, 78, 84]
  /// @brief Original rmi_msgs/msg/Representation.JOINT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_JOINT: StaticString = "JOINT"
  /// @brief Original rmi_msgs/msg/Representation.J constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_J: StaticString = "JOINT"
  /// @brief Original rmi_msgs/msg/Representation.CARTESIAN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CARTESIAN: StaticString = "CARTESIAN"
  /// @brief Original rmi_msgs/msg/Representation.CART constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CART: StaticString = "CARTESIAN"
  /// @brief Original rmi_msgs/msg/Representation.C constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_C: StaticString = "CARTESIAN"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_representation = cursor.text(field_representation, 512)
  }
  /// @brief Encode every complete rmi_msgs/msg/Representation field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 516),
      limit: 516, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/msg/Representation.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 516 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/msg/SpeedType value.
/// @details Retain all 1 fields and 8 constants in source order. Canonical extent 4..68 bytes.
public struct Ros2Rmi_msgsMsgSpeedType {
  /// @brief Original rmi_msgs/msg/SpeedType.type field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_type: [UInt8] = [80, 101, 114, 99, 101, 110, 116]
  /// @brief Original rmi_msgs/msg/SpeedType.PERCENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PERCENT: StaticString = "Percent"
  /// @brief Original rmi_msgs/msg/SpeedType.PERCENTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PERCENTAGE: StaticString = "Percent"
  /// @brief Original rmi_msgs/msg/SpeedType.MMSEC constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MMSEC: StaticString = "mmSec"
  /// @brief Original rmi_msgs/msg/SpeedType.INCHMIN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INCHMIN: StaticString = "InchMin"
  /// @brief Original rmi_msgs/msg/SpeedType.TIME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_TIME: StaticString = "Time"
  /// @brief Original rmi_msgs/msg/SpeedType.SECONDS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SECONDS: StaticString = "Time"
  /// @brief Original rmi_msgs/msg/SpeedType.SEC constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SEC: StaticString = "Time"
  /// @brief Original rmi_msgs/msg/SpeedType.MSEC constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MSEC: StaticString = "mSec"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_type = cursor.text(field_type, 64)
  }
  /// @brief Encode every complete rmi_msgs/msg/SpeedType field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 68),
      limit: 68, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/msg/SpeedType.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 68 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/msg/TermType value.
/// @details Retain all 1 fields and 4 constants in source order. Canonical extent 4..68 bytes.
public struct Ros2Rmi_msgsMsgTermType {
  /// @brief Original rmi_msgs/msg/TermType.type field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_type: [UInt8] = [70, 73, 78, 69]
  /// @brief Original rmi_msgs/msg/TermType.FINE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FINE: StaticString = "FINE"
  /// @brief Original rmi_msgs/msg/TermType.CNT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CNT: StaticString = "CNT"
  /// @brief Original rmi_msgs/msg/TermType.CR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CR: StaticString = "CR"
  /// @brief Original rmi_msgs/msg/TermType.CD constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CD: StaticString = "CD"
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_type = cursor.text(field_type, 64)
  }
  /// @brief Encode every complete rmi_msgs/msg/TermType field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 68),
      limit: 68, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/msg/TermType.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 68 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddCall_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..9992 bytes.
public struct Ros2Rmi_msgsSrvAddCall_Request {
  /// @brief Original rmi_msgs/srv/AddCall_Request.program_name field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_program_name: [UInt8] = []
  /// @brief Original rmi_msgs/srv/AddCall_Request.params field.
  /// @details Original type rmi_msgs/msg/CallParam. Shape sequence; bound/count 16 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_params: [Ros2Rmi_msgsMsgCallParam] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_program_name = cursor.text(field_program_name, 512)
    let count1 = Int(cursor.number(UInt64(field_params.count), 4))
    if count1 > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_params = Array(repeating: Ros2Rmi_msgsMsgCallParam(), count: count1)
    }
    for index in 0..<count1 {
      field_params[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete rmi_msgs/srv/AddCall_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 9992),
      limit: 9992, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddCall_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 9992 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddCall_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Rmi_msgsSrvAddCall_Response {
  /// @brief Original rmi_msgs/srv/AddCall_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original rmi_msgs/srv/AddCall_Response.sequence_id field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sequence_id: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_sequence_id = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sequence_id)), 4)))
  }
  /// @brief Encode every complete rmi_msgs/srv/AddCall_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddCall_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddMotionInstruction_Request value.
/// @details Retain all 13 fields and 0 constants in source order. Canonical extent 238..4014 bytes.
public struct Ros2Rmi_msgsSrvAddMotionInstruction_Request {
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.motion_type field.
  /// @details Original type rmi_msgs/msg/MotionType. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_motion_type: Ros2Rmi_msgsMsgMotionType = Ros2Rmi_msgsMsgMotionType()
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.incremental field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_incremental: Bool = false
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.representation field.
  /// @details Original type rmi_msgs/msg/Representation. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_representation: Ros2Rmi_msgsMsgRepresentation = Ros2Rmi_msgsMsgRepresentation()
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.joint field.
  /// @details Original type rmi_msgs/msg/Joint. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_joint: Ros2Rmi_msgsMsgJoint = Ros2Rmi_msgsMsgJoint()
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.cartesian field.
  /// @details Original type rmi_msgs/msg/Cartesian. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_cartesian: Ros2Rmi_msgsMsgCartesian = Ros2Rmi_msgsMsgCartesian()
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.speed_type field.
  /// @details Original type rmi_msgs/msg/SpeedType. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_speed_type: Ros2Rmi_msgsMsgSpeedType = Ros2Rmi_msgsMsgSpeedType()
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.speed_value field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_speed_value: UInt16 = 0
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.term_type field.
  /// @details Original type rmi_msgs/msg/TermType. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_term_type: Ros2Rmi_msgsMsgTermType = Ros2Rmi_msgsMsgTermType()
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.term_value field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_term_value: UInt8 = 0
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.via_representation field.
  /// @details Original type rmi_msgs/msg/Representation. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_via_representation: Ros2Rmi_msgsMsgRepresentation =
    Ros2Rmi_msgsMsgRepresentation()
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.via_joint field.
  /// @details Original type rmi_msgs/msg/Joint. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_via_joint: Ros2Rmi_msgsMsgJoint = Ros2Rmi_msgsMsgJoint()
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.via_cartesian field.
  /// @details Original type rmi_msgs/msg/Cartesian. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_via_cartesian: Ros2Rmi_msgsMsgCartesian = Ros2Rmi_msgsMsgCartesian()
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Request.options field.
  /// @details Original type rmi_msgs/msg/MotionInstructionOptions. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_options: Ros2Rmi_msgsMsgMotionInstructionOptions =
    Ros2Rmi_msgsMsgMotionInstructionOptions()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_motion_type.fields(&cursor)
    field_incremental = cursor.boolean(field_incremental)
    field_representation.fields(&cursor)
    field_joint.fields(&cursor)
    field_cartesian.fields(&cursor)
    field_speed_type.fields(&cursor)
    field_speed_value = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_speed_value), 2))
    field_term_type.fields(&cursor)
    field_term_value = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_term_value), 1))
    field_via_representation.fields(&cursor)
    field_via_joint.fields(&cursor)
    field_via_cartesian.fields(&cursor)
    field_options.fields(&cursor)
  }
  /// @brief Encode every complete rmi_msgs/srv/AddMotionInstruction_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4014),
      limit: 4014, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddMotionInstruction_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 238 || bytes.count > 4014 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddMotionInstruction_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Rmi_msgsSrvAddMotionInstruction_Response {
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original rmi_msgs/srv/AddMotionInstruction_Response.sequence_id field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sequence_id: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_sequence_id = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sequence_id)), 4)))
  }
  /// @brief Encode every complete rmi_msgs/srv/AddMotionInstruction_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddMotionInstruction_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddSetPayload_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Rmi_msgsSrvAddSetPayload_Request {
  /// @brief Original rmi_msgs/srv/AddSetPayload_Request.schedule_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_schedule_number: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_schedule_number = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(field_schedule_number), 1))
  }
  /// @brief Encode every complete rmi_msgs/srv/AddSetPayload_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddSetPayload_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddSetPayload_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Rmi_msgsSrvAddSetPayload_Response {
  /// @brief Original rmi_msgs/srv/AddSetPayload_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original rmi_msgs/srv/AddSetPayload_Response.sequence_id field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sequence_id: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_sequence_id = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sequence_id)), 4)))
  }
  /// @brief Encode every complete rmi_msgs/srv/AddSetPayload_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddSetPayload_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddSetUFrame_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Rmi_msgsSrvAddSetUFrame_Request {
  /// @brief Original rmi_msgs/srv/AddSetUFrame_Request.frame_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_frame_number: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_frame_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_frame_number), 1))
  }
  /// @brief Encode every complete rmi_msgs/srv/AddSetUFrame_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddSetUFrame_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddSetUFrame_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Rmi_msgsSrvAddSetUFrame_Response {
  /// @brief Original rmi_msgs/srv/AddSetUFrame_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original rmi_msgs/srv/AddSetUFrame_Response.sequence_id field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sequence_id: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_sequence_id = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sequence_id)), 4)))
  }
  /// @brief Encode every complete rmi_msgs/srv/AddSetUFrame_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddSetUFrame_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddSetUTool_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Rmi_msgsSrvAddSetUTool_Request {
  /// @brief Original rmi_msgs/srv/AddSetUTool_Request.tool_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_tool_number: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_tool_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_tool_number), 1))
  }
  /// @brief Encode every complete rmi_msgs/srv/AddSetUTool_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddSetUTool_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddSetUTool_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Rmi_msgsSrvAddSetUTool_Response {
  /// @brief Original rmi_msgs/srv/AddSetUTool_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original rmi_msgs/srv/AddSetUTool_Response.sequence_id field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sequence_id: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_sequence_id = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sequence_id)), 4)))
  }
  /// @brief Encode every complete rmi_msgs/srv/AddSetUTool_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddSetUTool_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddWaitDIN_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Rmi_msgsSrvAddWaitDIN_Request {
  /// @brief Original rmi_msgs/srv/AddWaitDIN_Request.port_number field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_port_number: UInt16 = 0
  /// @brief Original rmi_msgs/srv/AddWaitDIN_Request.port_value field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_port_value: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_port_number = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_port_number), 2))
    field_port_value = cursor.text(field_port_value, 512)
  }
  /// @brief Encode every complete rmi_msgs/srv/AddWaitDIN_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddWaitDIN_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddWaitDIN_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Rmi_msgsSrvAddWaitDIN_Response {
  /// @brief Original rmi_msgs/srv/AddWaitDIN_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original rmi_msgs/srv/AddWaitDIN_Response.sequence_id field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sequence_id: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_sequence_id = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sequence_id)), 4)))
  }
  /// @brief Encode every complete rmi_msgs/srv/AddWaitDIN_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddWaitDIN_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddWaitTime_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Rmi_msgsSrvAddWaitTime_Request {
  /// @brief Original rmi_msgs/srv/AddWaitTime_Request.time field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_time: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_time = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_time.bitPattern), 4)))
    if !field_time.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete rmi_msgs/srv/AddWaitTime_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddWaitTime_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/AddWaitTime_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Rmi_msgsSrvAddWaitTime_Response {
  /// @brief Original rmi_msgs/srv/AddWaitTime_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Original rmi_msgs/srv/AddWaitTime_Response.sequence_id field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sequence_id: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
    field_sequence_id = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sequence_id)), 4)))
  }
  /// @brief Encode every complete rmi_msgs/srv/AddWaitTime_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/AddWaitTime_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/CallCommand_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..1104 bytes.
public struct Ros2Rmi_msgsSrvCallCommand_Request {
  /// @brief Original rmi_msgs/srv/CallCommand_Request.command field.
  /// @details Original type rmi_msgs/msg/Command. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_command: Ros2Rmi_msgsMsgCommand = Ros2Rmi_msgsMsgCommand()
  /// @brief Original rmi_msgs/srv/CallCommand_Request.options field.
  /// @details Original type rmi_msgs/msg/CommandOptions. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_options: Ros2Rmi_msgsMsgCommandOptions = Ros2Rmi_msgsMsgCommandOptions()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_command.fields(&cursor)
    field_options.fields(&cursor)
  }
  /// @brief Encode every complete rmi_msgs/srv/CallCommand_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 1104),
      limit: 1104, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/CallCommand_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 1104 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original rmi_msgs/srv/CallCommand_Response value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Rmi_msgsSrvCallCommand_Response {
  /// @brief Original rmi_msgs/srv/CallCommand_Response.result field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result: Int32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_result = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_result)), 4)))
  }
  /// @brief Encode every complete rmi_msgs/srv/CallCommand_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete rmi_msgs/srv/CallCommand_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
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
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
  }
  /// @brief Encode every complete std_srvs/srv/Trigger_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout FANUCCursor) {
    field_success = cursor.boolean(field_success)
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete std_srvs/srv/Trigger_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = FANUCCursor(
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
    var cursor = FANUCCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}
