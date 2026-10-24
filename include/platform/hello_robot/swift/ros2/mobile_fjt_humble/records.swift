/// UWVM_COMPLETE_FIELD_CONTRACTS
/// @details Field domains below come from the unchanged canonical source catalog.
/**
 * @file records.swift
 * @brief Provide the complete hello_robot mobile_fjt_humble canonical value surface.
 * @details The original 17 record catalog retains field order, constants, defaults and quotas.
 * Borrowed values and buffers must remain stable while a conversion is in progress.
 * Malformed, truncated and trailing wire values are refused through the shared wire error contract.
 * No declaration grants a capability or establishes a native ROS registry identity.
 * Original declarations and units are retained in share/platform/hello_robot/catalogs.
 */
// Generated complete canonical values. No I/O or authority.
import RosWasm

/// @brief Own every original field of ROS2 builtin_interfaces/msg/Duration.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Builtin_interfacesMsgDuration: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
  public static let nativeType = "builtin_interfaces/msg/Duration"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original sec as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `sec`: Int32 = 0
  /// @brief Preserve original nanosec as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `nanosec`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    if self.`nanosec` >= 1_000_000_000 { throw RosError(22) }
    try w.integer(self.`sec`)
    try w.integer(self.`nanosec`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Builtin_interfacesMsgDuration {
    var v = Ros2Builtin_interfacesMsgDuration()
    v.`sec` = try r.integer(Int32.self)
    v.`nanosec` = try r.integer(UInt32.self)
    if v.`nanosec` >= 1_000_000_000 { throw RosError(22) }
    return v
  }
}
/// @brief Own every original field of ROS2 builtin_interfaces/msg/Time.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Builtin_interfacesMsgTime: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
  public static let nativeType = "builtin_interfaces/msg/Time"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original sec as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `sec`: Int32 = 0
  /// @brief Preserve original nanosec as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `nanosec`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    if self.`nanosec` >= 1_000_000_000 { throw RosError(22) }
    try w.integer(self.`sec`)
    try w.integer(self.`nanosec`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Builtin_interfacesMsgTime {
    var v = Ros2Builtin_interfacesMsgTime()
    v.`sec` = try r.integer(Int32.self)
    v.`nanosec` = try r.integer(UInt32.self)
    if v.`nanosec` >= 1_000_000_000 { throw RosError(22) }
    return v
  }
}
/// @brief Own every original field of ROS2 std_msgs/msg/Header.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Std_msgsMsgHeader: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
  public static let nativeType = "std_msgs/msg/Header"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original stamp as builtin_interfaces/msg/Time.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Preserve original frame_id as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `frame_id`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgHeader {
    var v = Ros2Std_msgsMsgHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    v.`frame_id` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS2 trajectory_msgs/msg/JointTrajectoryPoint.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Trajectory_msgsMsgJointTrajectoryPoint: Canonical {
  public static let maximumWireBytes = 280
  public static let codecIdentity =
    "UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1"
  public static let nativeType = "trajectory_msgs/msg/JointTrajectoryPoint"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original positions as float64.
  /// @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `positions`: [Double] = []
  /// @brief Preserve original velocities as float64.
  /// @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `velocities`: [Double] = []
  /// @brief Preserve original accelerations as float64.
  /// @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `accelerations`: [Double] = []
  /// @brief Preserve original effort as float64.
  /// @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effort`: [Double] = []
  /// @brief Preserve original time_from_start as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `time_from_start`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`positions`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`positions`.count))
    for e in self.`positions` {
      try w.float64(e)
    }
    guard self.`velocities`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try w.float64(e)
    }
    guard self.`accelerations`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`accelerations`.count))
    for e in self.`accelerations` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`effort`.count))
    for e in self.`effort` {
      try w.float64(e)
    }
    try self.`time_from_start`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Trajectory_msgsMsgJointTrajectoryPoint
  {
    var v = Ros2Trajectory_msgsMsgJointTrajectoryPoint()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`positions` = []
    v.`positions`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`positions`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`accelerations` = []
    v.`accelerations`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`accelerations`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`effort` = []
    v.`effort`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`effort`.append(try r.float64())
    }
    v.`time_from_start` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 trajectory_msgs/msg/JointTrajectory.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Trajectory_msgsMsgJointTrajectory: Canonical {
  public static let maximumWireBytes = 1484
  public static let codecIdentity =
    "UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77"
  public static let nativeType = "trajectory_msgs/msg/JointTrajectory"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original joint_names as string.
  /// @details At most 8 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `joint_names`: [String] = []
  /// @brief Preserve original points as trajectory_msgs/msg/JointTrajectoryPoint.
  /// @details At most 1 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `points`: [Ros2Trajectory_msgsMsgJointTrajectoryPoint] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 128)
    }
    guard self.`points`.count <= 1 else { throw RosError(22) }
    try w.integer(UInt32(self.`points`.count))
    for e in self.`points` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Trajectory_msgsMsgJointTrajectory
  {
    var v = Ros2Trajectory_msgsMsgJointTrajectory()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 1 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`points` = []
    v.`points`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`points`.append(try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS2 geometry_msgs/msg/Vector3.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Geometry_msgsMsgVector3: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
  public static let nativeType = "geometry_msgs/msg/Vector3"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original x as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `x`: Double = 0
  /// @brief Preserve original y as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `y`: Double = 0
  /// @brief Preserve original z as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `z`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgVector3 {
    var v = Ros2Geometry_msgsMsgVector3()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS2 geometry_msgs/msg/Quaternion.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Geometry_msgsMsgQuaternion: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
  public static let nativeType = "geometry_msgs/msg/Quaternion"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original x as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Declared native default: 0.0.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `x`: Double = Double(bitPattern: 0x0)
  /// @brief Preserve original y as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Declared native default: 0.0.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `y`: Double = Double(bitPattern: 0x0)
  /// @brief Preserve original z as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Declared native default: 0.0.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `z`: Double = Double(bitPattern: 0x0)
  /// @brief Preserve original w as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Declared native default: 1.0.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `w`: Double = Double(bitPattern: 0x3ff0_0000_0000_0000)
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`w`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgQuaternion {
    var v = Ros2Geometry_msgsMsgQuaternion()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`w` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS2 geometry_msgs/msg/Transform.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Geometry_msgsMsgTransform: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
  public static let nativeType = "geometry_msgs/msg/Transform"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original translation as geometry_msgs/msg/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `translation`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Preserve original rotation as geometry_msgs/msg/Quaternion.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `rotation`: Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`translation`.write(to: &w)
    try self.`rotation`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgTransform {
    var v = Ros2Geometry_msgsMsgTransform()
    v.`translation` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`rotation` = try Ros2Geometry_msgsMsgQuaternion.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 geometry_msgs/msg/Twist.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Geometry_msgsMsgTwist: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
  public static let nativeType = "geometry_msgs/msg/Twist"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original linear as geometry_msgs/msg/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `linear`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Preserve original angular as geometry_msgs/msg/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `angular`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`linear`.write(to: &w)
    try self.`angular`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgTwist {
    var v = Ros2Geometry_msgsMsgTwist()
    v.`linear` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`angular` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint: Canonical {
  public static let maximumWireBytes = 844
  public static let codecIdentity =
    "UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf"
  public static let nativeType = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original transforms as geometry_msgs/msg/Transform.
  /// @details At most 1 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `transforms`: [Ros2Geometry_msgsMsgTransform] = []
  /// @brief Preserve original velocities as geometry_msgs/msg/Twist.
  /// @details At most 8 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `velocities`: [Ros2Geometry_msgsMsgTwist] = []
  /// @brief Preserve original accelerations as geometry_msgs/msg/Twist.
  /// @details At most 8 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `accelerations`: [Ros2Geometry_msgsMsgTwist] = []
  /// @brief Preserve original time_from_start as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `time_from_start`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`transforms`.count <= 1 else { throw RosError(22) }
    try w.integer(UInt32(self.`transforms`.count))
    for e in self.`transforms` {
      try e.write(to: &w)
    }
    guard self.`velocities`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try e.write(to: &w)
    }
    guard self.`accelerations`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`accelerations`.count))
    for e in self.`accelerations` {
      try e.write(to: &w)
    }
    try self.`time_from_start`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  {
    var v = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 1 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`transforms` = []
    v.`transforms`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`transforms`.append(try Ros2Geometry_msgsMsgTransform.read(from: &r))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try Ros2Geometry_msgsMsgTwist.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`accelerations` = []
    v.`accelerations`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`accelerations`.append(try Ros2Geometry_msgsMsgTwist.read(from: &r))
    }
    v.`time_from_start` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 trajectory_msgs/msg/MultiDOFJointTrajectory.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectory: Canonical {
  public static let maximumWireBytes = 2048
  public static let codecIdentity =
    "UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5"
  public static let nativeType = "trajectory_msgs/msg/MultiDOFJointTrajectory"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original joint_names as string.
  /// @details At most 8 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `joint_names`: [String] = []
  /// @brief Preserve original points as trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  /// @details At most 1 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `points`: [Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 128)
    }
    guard self.`points`.count <= 1 else { throw RosError(22) }
    try w.integer(UInt32(self.`points`.count))
    for e in self.`points` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
  {
    var v = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 1 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`points` = []
    v.`points`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`points`.append(try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS2 control_msgs/msg/JointTolerance.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Control_msgsMsgJointTolerance: Canonical {
  public static let maximumWireBytes = 156
  public static let codecIdentity =
    "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a"
  public static let nativeType = "control_msgs/msg/JointTolerance"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original position as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `position`: Double = 0
  /// @brief Preserve original velocity as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `velocity`: Double = 0
  /// @brief Preserve original acceleration as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `acceleration`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.float64(self.`position`)
    try w.float64(self.`velocity`)
    try w.float64(self.`acceleration`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Control_msgsMsgJointTolerance {
    var v = Ros2Control_msgsMsgJointTolerance()
    v.`name` = try r.string(bound: 128)
    v.`position` = try r.float64()
    v.`velocity` = try r.float64()
    v.`acceleration` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS2 control_msgs/msg/JointComponentTolerance.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Control_msgsMsgJointComponentTolerance: Canonical {
  public static let maximumWireBytes = 158
  public static let codecIdentity =
    "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb"
  public static let nativeType = "control_msgs/msg/JointComponentTolerance"
  public static let nativeIdentity: String? = nil
  public static let `X_AXIS`: UInt16 = 1
  public static let `Y_AXIS`: UInt16 = 2
  public static let `Z_AXIS`: UInt16 = 3
  public static let `TRANSLATION`: UInt16 = 4
  public static let `ROTATION`: UInt16 = 5
  /// @brief Preserve original joint_name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `joint_name`: String = ""
  /// @brief Preserve original component as uint16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `component`: UInt16 = 0
  /// @brief Preserve original position as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `position`: Double = 0
  /// @brief Preserve original velocity as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `velocity`: Double = 0
  /// @brief Preserve original acceleration as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `acceleration`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`joint_name`, bound: 128)
    try w.integer(self.`component`)
    try w.float64(self.`position`)
    try w.float64(self.`velocity`)
    try w.float64(self.`acceleration`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Control_msgsMsgJointComponentTolerance
  {
    var v = Ros2Control_msgsMsgJointComponentTolerance()
    v.`joint_name` = try r.string(bound: 128)
    v.`component` = try r.integer(UInt16.self)
    v.`position` = try r.float64()
    v.`velocity` = try r.float64()
    v.`acceleration` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS2 control_msgs/action/FollowJointTrajectory_Goal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Control_msgsActionFollowJointTrajectory_Goal: Canonical {
  public static let maximumWireBytes = 8580
  public static let codecIdentity =
    "UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018"
  public static let nativeType = "control_msgs/action/FollowJointTrajectory_Goal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original trajectory as trajectory_msgs/msg/JointTrajectory.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `trajectory`: Ros2Trajectory_msgsMsgJointTrajectory =
    Ros2Trajectory_msgsMsgJointTrajectory()
  /// @brief Preserve original multi_dof_trajectory as trajectory_msgs/msg/MultiDOFJointTrajectory.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `multi_dof_trajectory`: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
  /// @brief Preserve original path_tolerance as control_msgs/msg/JointTolerance.
  /// @details At most 8 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `path_tolerance`: [Ros2Control_msgsMsgJointTolerance] = []
  /// @brief Preserve original component_path_tolerance as control_msgs/msg/JointComponentTolerance.
  /// @details At most 8 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `component_path_tolerance`: [Ros2Control_msgsMsgJointComponentTolerance] = []
  /// @brief Preserve original goal_tolerance as control_msgs/msg/JointTolerance.
  /// @details At most 8 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `goal_tolerance`: [Ros2Control_msgsMsgJointTolerance] = []
  /// @brief Preserve original component_goal_tolerance as control_msgs/msg/JointComponentTolerance.
  /// @details At most 8 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `component_goal_tolerance`: [Ros2Control_msgsMsgJointComponentTolerance] = []
  /// @brief Preserve original goal_time_tolerance as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `goal_time_tolerance`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`trajectory`.write(to: &w)
    try self.`multi_dof_trajectory`.write(to: &w)
    guard self.`path_tolerance`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`path_tolerance`.count))
    for e in self.`path_tolerance` {
      try e.write(to: &w)
    }
    guard self.`component_path_tolerance`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`component_path_tolerance`.count))
    for e in self.`component_path_tolerance` {
      try e.write(to: &w)
    }
    guard self.`goal_tolerance`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`goal_tolerance`.count))
    for e in self.`goal_tolerance` {
      try e.write(to: &w)
    }
    guard self.`component_goal_tolerance`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`component_goal_tolerance`.count))
    for e in self.`component_goal_tolerance` {
      try e.write(to: &w)
    }
    try self.`goal_time_tolerance`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Control_msgsActionFollowJointTrajectory_Goal
  {
    var v = Ros2Control_msgsActionFollowJointTrajectory_Goal()
    v.`trajectory` = try Ros2Trajectory_msgsMsgJointTrajectory.read(from: &r)
    v.`multi_dof_trajectory` = try Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`path_tolerance` = []
    v.`path_tolerance`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`path_tolerance`.append(try Ros2Control_msgsMsgJointTolerance.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`component_path_tolerance` = []
    v.`component_path_tolerance`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`component_path_tolerance`.append(
        try Ros2Control_msgsMsgJointComponentTolerance.read(from: &r))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 8 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`goal_tolerance` = []
    v.`goal_tolerance`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`goal_tolerance`.append(try Ros2Control_msgsMsgJointTolerance.read(from: &r))
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 8 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`component_goal_tolerance` = []
    v.`component_goal_tolerance`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`component_goal_tolerance`.append(
        try Ros2Control_msgsMsgJointComponentTolerance.read(from: &r))
    }
    v.`goal_time_tolerance` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 control_msgs/action/FollowJointTrajectory_Result.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Control_msgsActionFollowJointTrajectory_Result: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649"
  public static let nativeType = "control_msgs/action/FollowJointTrajectory_Result"
  public static let nativeIdentity: String? = nil
  public static let `SUCCESSFUL`: Int32 = 0
  public static let `INVALID_GOAL`: Int32 = -1
  public static let `INVALID_JOINTS`: Int32 = -2
  public static let `OLD_HEADER_TIMESTAMP`: Int32 = -3
  public static let `PATH_TOLERANCE_VIOLATED`: Int32 = -4
  public static let `GOAL_TOLERANCE_VIOLATED`: Int32 = -5
  /// @brief Preserve original error_code as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `error_code`: Int32 = 0
  /// @brief Preserve original error_string as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `error_string`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`error_code`)
    try w.string(self.`error_string`, bound: 256)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Control_msgsActionFollowJointTrajectory_Result
  {
    var v = Ros2Control_msgsActionFollowJointTrajectory_Result()
    v.`error_code` = try r.integer(Int32.self)
    v.`error_string` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of ROS2 control_msgs/action/FollowJointTrajectory_Feedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Control_msgsActionFollowJointTrajectory_Feedback: Canonical {
  public static let maximumWireBytes = 4708
  public static let codecIdentity =
    "UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529"
  public static let nativeType = "control_msgs/action/FollowJointTrajectory_Feedback"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original joint_names as string.
  /// @details At most 8 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `joint_names`: [String] = []
  /// @brief Preserve original desired as trajectory_msgs/msg/JointTrajectoryPoint.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `desired`: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Preserve original actual as trajectory_msgs/msg/JointTrajectoryPoint.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `actual`: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Preserve original error as trajectory_msgs/msg/JointTrajectoryPoint.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `error`: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Preserve original multi_dof_joint_names as string.
  /// @details At most 1 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `multi_dof_joint_names`: [String] = []
  /// @brief Preserve original multi_dof_desired as trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `multi_dof_desired`: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  /// @brief Preserve original multi_dof_actual as trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `multi_dof_actual`: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  /// @brief Preserve original multi_dof_error as trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `multi_dof_error`: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 128)
    }
    try self.`desired`.write(to: &w)
    try self.`actual`.write(to: &w)
    try self.`error`.write(to: &w)
    guard self.`multi_dof_joint_names`.count <= 1 else { throw RosError(22) }
    try w.integer(UInt32(self.`multi_dof_joint_names`.count))
    for e in self.`multi_dof_joint_names` {
      try w.string(e, bound: 128)
    }
    try self.`multi_dof_desired`.write(to: &w)
    try self.`multi_dof_actual`.write(to: &w)
    try self.`multi_dof_error`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Control_msgsActionFollowJointTrajectory_Feedback
  {
    var v = Ros2Control_msgsActionFollowJointTrajectory_Feedback()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 128))
    }
    v.`desired` = try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r)
    v.`actual` = try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r)
    v.`error` = try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r)
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 1 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`multi_dof_joint_names` = []
    v.`multi_dof_joint_names`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`multi_dof_joint_names`.append(try r.string(bound: 128))
    }
    v.`multi_dof_desired` = try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.read(from: &r)
    v.`multi_dof_actual` = try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.read(from: &r)
    v.`multi_dof_error` = try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 sensor_msgs/msg/JointState.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Sensor_msgsMsgJointState: Canonical {
  public static let maximumWireBytes = 1404
  public static let codecIdentity =
    "UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11"
  public static let nativeType = "sensor_msgs/msg/JointState"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original name as string.
  /// @details At most 8 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `name`: [String] = []
  /// @brief Preserve original position as float64.
  /// @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position`: [Double] = []
  /// @brief Preserve original velocity as float64.
  /// @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `velocity`: [Double] = []
  /// @brief Preserve original effort as float64.
  /// @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effort`: [Double] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    if self.`name`.count != 0 && self.`position`.count != 0
      && self.`name`.count != self.`position`.count
    {
      throw RosError(22)
    }
    if self.`name`.count != 0 && self.`velocity`.count != 0
      && self.`name`.count != self.`velocity`.count
    {
      throw RosError(22)
    }
    if self.`name`.count != 0 && self.`effort`.count != 0
      && self.`name`.count != self.`effort`.count
    {
      throw RosError(22)
    }
    if self.`position`.count != 0 && self.`velocity`.count != 0
      && self.`position`.count != self.`velocity`.count
    {
      throw RosError(22)
    }
    if self.`position`.count != 0 && self.`effort`.count != 0
      && self.`position`.count != self.`effort`.count
    {
      throw RosError(22)
    }
    if self.`velocity`.count != 0 && self.`effort`.count != 0
      && self.`velocity`.count != self.`effort`.count
    {
      throw RosError(22)
    }
    try self.`header`.write(to: &w)
    guard self.`name`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`name`.count))
    for e in self.`name` {
      try w.string(e, bound: 128)
    }
    guard self.`position`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`position`.count))
    for e in self.`position` {
      try w.float64(e)
    }
    guard self.`velocity`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity`.count))
    for e in self.`velocity` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`effort`.count))
    for e in self.`effort` {
      try w.float64(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Sensor_msgsMsgJointState {
    var v = Ros2Sensor_msgsMsgJointState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`name` = []
    v.`name`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`name`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`position` = []
    v.`position`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`position`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`velocity`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 8 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`effort` = []
    v.`effort`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`effort`.append(try r.float64())
    }
    if v.`name`.count != 0 && v.`position`.count != 0 && v.`name`.count != v.`position`.count {
      throw RosError(22)
    }
    if v.`name`.count != 0 && v.`velocity`.count != 0 && v.`name`.count != v.`velocity`.count {
      throw RosError(22)
    }
    if v.`name`.count != 0 && v.`effort`.count != 0 && v.`name`.count != v.`effort`.count {
      throw RosError(22)
    }
    if v.`position`.count != 0 && v.`velocity`.count != 0
      && v.`position`.count != v.`velocity`.count
    {
      throw RosError(22)
    }
    if v.`position`.count != 0 && v.`effort`.count != 0 && v.`position`.count != v.`effort`.count {
      throw RosError(22)
    }
    if v.`velocity`.count != 0 && v.`effort`.count != 0 && v.`velocity`.count != v.`effort`.count {
      throw RosError(22)
    }
    return v
  }
}
