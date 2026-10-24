/// UWVM_COMPLETE_FIELD_CONTRACTS
/// @details Field domains below come from the unchanged canonical source catalog.
/**
 * @file records.swift
 * @brief Provide the complete robotis main canonical value surface.
 * @details The original 34 record catalog retains field order, constants, defaults and quotas.
 * Borrowed values and buffers must remain stable while a conversion is in progress.
 * Malformed, truncated and trailing wire values are refused through the shared wire error contract.
 * No declaration grants a capability or establishes a native ROS registry identity.
 * Original declarations and units are retained in share/platform/robotis/catalogs.
 */
// Generated complete canonical values. No I/O or authority.
import RosWasm

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
/// @brief Own every original field of ROS2 geometry_msgs/msg/Point.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Geometry_msgsMsgPoint: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
  public static let nativeType = "geometry_msgs/msg/Point"
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
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPoint {
    var v = Ros2Geometry_msgsMsgPoint()
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
/// @brief Own every original field of ROS2 geometry_msgs/msg/Pose.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Geometry_msgsMsgPose: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
  public static let nativeType = "geometry_msgs/msg/Pose"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original position as geometry_msgs/msg/Point.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position`: Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint()
  /// @brief Preserve original orientation as geometry_msgs/msg/Quaternion.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `orientation`: Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`position`.write(to: &w)
    try self.`orientation`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPose {
    var v = Ros2Geometry_msgsMsgPose()
    v.`position` = try Ros2Geometry_msgsMsgPoint.read(from: &r)
    v.`orientation` = try Ros2Geometry_msgsMsgQuaternion.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 geometry_msgs/msg/PoseWithCovariance.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Geometry_msgsMsgPoseWithCovariance: Canonical {
  public static let maximumWireBytes = 344
  public static let codecIdentity =
    "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"
  public static let nativeType = "geometry_msgs/msg/PoseWithCovariance"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original pose as geometry_msgs/msg/Pose.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  /// @brief Preserve original covariance as float64.
  /// @details Exactly 36 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `covariance`: [Double] = Array(repeating: 0, count: 36)
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    guard self.`covariance`.count == 36 else { throw RosError(22) }
    for e in self.`covariance` {
      try w.float64(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPoseWithCovariance
  {
    var v = Ros2Geometry_msgsMsgPoseWithCovariance()
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    let count1 = 36
    v.`covariance` = []
    v.`covariance`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`covariance`.append(try r.float64())
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
/// @brief Own every original field of ROS2 geometry_msgs/msg/TransformStamped.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Geometry_msgsMsgTransformStamped: Canonical {
  public static let maximumWireBytes = 456
  public static let codecIdentity =
    "UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a"
  public static let nativeType = "geometry_msgs/msg/TransformStamped"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original child_frame_id as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `child_frame_id`: String = ""
  /// @brief Preserve original transform as geometry_msgs/msg/Transform.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `transform`: Ros2Geometry_msgsMsgTransform = Ros2Geometry_msgsMsgTransform()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`child_frame_id`, bound: 256)
    try self.`transform`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgTransformStamped {
    var v = Ros2Geometry_msgsMsgTransformStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`child_frame_id` = try r.string(bound: 256)
    v.`transform` = try Ros2Geometry_msgsMsgTransform.read(from: &r)
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
/// @brief Own every original field of ROS2 geometry_msgs/msg/TwistStamped.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Geometry_msgsMsgTwistStamped: Canonical {
  public static let maximumWireBytes = 188
  public static let codecIdentity =
    "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573"
  public static let nativeType = "geometry_msgs/msg/TwistStamped"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original twist as geometry_msgs/msg/Twist.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `twist`: Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`twist`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgTwistStamped {
    var v = Ros2Geometry_msgsMsgTwistStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`twist` = try Ros2Geometry_msgsMsgTwist.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 geometry_msgs/msg/TwistWithCovariance.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Geometry_msgsMsgTwistWithCovariance: Canonical {
  public static let maximumWireBytes = 336
  public static let codecIdentity =
    "UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404"
  public static let nativeType = "geometry_msgs/msg/TwistWithCovariance"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original twist as geometry_msgs/msg/Twist.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `twist`: Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist()
  /// @brief Preserve original covariance as float64.
  /// @details Exactly 36 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `covariance`: [Double] = Array(repeating: 0, count: 36)
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`twist`.write(to: &w)
    guard self.`covariance`.count == 36 else { throw RosError(22) }
    for e in self.`covariance` {
      try w.float64(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Geometry_msgsMsgTwistWithCovariance
  {
    var v = Ros2Geometry_msgsMsgTwistWithCovariance()
    v.`twist` = try Ros2Geometry_msgsMsgTwist.read(from: &r)
    let count1 = 36
    v.`covariance` = []
    v.`covariance`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`covariance`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of ROS2 nav_msgs/msg/Odometry.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Nav_msgsMsgOdometry: Canonical {
  public static let maximumWireBytes = 1080
  public static let codecIdentity =
    "UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111"
  public static let nativeType = "nav_msgs/msg/Odometry"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original child_frame_id as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `child_frame_id`: String = ""
  /// @brief Preserve original pose as geometry_msgs/msg/PoseWithCovariance.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose`: Ros2Geometry_msgsMsgPoseWithCovariance =
    Ros2Geometry_msgsMsgPoseWithCovariance()
  /// @brief Preserve original twist as geometry_msgs/msg/TwistWithCovariance.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `twist`: Ros2Geometry_msgsMsgTwistWithCovariance =
    Ros2Geometry_msgsMsgTwistWithCovariance()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`child_frame_id`, bound: 256)
    try self.`pose`.write(to: &w)
    try self.`twist`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Nav_msgsMsgOdometry {
    var v = Ros2Nav_msgsMsgOdometry()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`child_frame_id` = try r.string(bound: 256)
    v.`pose` = try Ros2Geometry_msgsMsgPoseWithCovariance.read(from: &r)
    v.`twist` = try Ros2Geometry_msgsMsgTwistWithCovariance.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 sensor_msgs/msg/BatteryState.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Sensor_msgsMsgBatteryState: Canonical {
  public static let maximumWireBytes = 828
  public static let codecIdentity =
    "UWVMROS1_9083c57dde00bba912db4dd736027cb92bbed2b1a79f965570dee86e1ff5a96e"
  public static let nativeType = "sensor_msgs/msg/BatteryState"
  public static let nativeIdentity: String? = nil
  public static let `POWER_SUPPLY_STATUS_UNKNOWN`: UInt8 = 0
  public static let `POWER_SUPPLY_STATUS_CHARGING`: UInt8 = 1
  public static let `POWER_SUPPLY_STATUS_DISCHARGING`: UInt8 = 2
  public static let `POWER_SUPPLY_STATUS_NOT_CHARGING`: UInt8 = 3
  public static let `POWER_SUPPLY_STATUS_FULL`: UInt8 = 4
  public static let `POWER_SUPPLY_HEALTH_UNKNOWN`: UInt8 = 0
  public static let `POWER_SUPPLY_HEALTH_GOOD`: UInt8 = 1
  public static let `POWER_SUPPLY_HEALTH_OVERHEAT`: UInt8 = 2
  public static let `POWER_SUPPLY_HEALTH_DEAD`: UInt8 = 3
  public static let `POWER_SUPPLY_HEALTH_OVERVOLTAGE`: UInt8 = 4
  public static let `POWER_SUPPLY_HEALTH_UNSPEC_FAILURE`: UInt8 = 5
  public static let `POWER_SUPPLY_HEALTH_COLD`: UInt8 = 6
  public static let `POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE`: UInt8 = 7
  public static let `POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE`: UInt8 = 8
  public static let `POWER_SUPPLY_TECHNOLOGY_UNKNOWN`: UInt8 = 0
  public static let `POWER_SUPPLY_TECHNOLOGY_NIMH`: UInt8 = 1
  public static let `POWER_SUPPLY_TECHNOLOGY_LION`: UInt8 = 2
  public static let `POWER_SUPPLY_TECHNOLOGY_LIPO`: UInt8 = 3
  public static let `POWER_SUPPLY_TECHNOLOGY_LIFE`: UInt8 = 4
  public static let `POWER_SUPPLY_TECHNOLOGY_NICD`: UInt8 = 5
  public static let `POWER_SUPPLY_TECHNOLOGY_LIMN`: UInt8 = 6
  public static let `POWER_SUPPLY_TECHNOLOGY_TERNARY`: UInt8 = 7
  public static let `POWER_SUPPLY_TECHNOLOGY_VRLA`: UInt8 = 8
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original voltage as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `voltage`: Float = 0
  /// @brief Preserve original temperature as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `temperature`: Float = 0
  /// @brief Preserve original current as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `current`: Float = 0
  /// @brief Preserve original charge as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `charge`: Float = 0
  /// @brief Preserve original capacity as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `capacity`: Float = 0
  /// @brief Preserve original design_capacity as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `design_capacity`: Float = 0
  /// @brief Preserve original percentage as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `percentage`: Float = 0
  /// @brief Preserve original power_supply_status as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `power_supply_status`: UInt8 = 0
  /// @brief Preserve original power_supply_health as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `power_supply_health`: UInt8 = 0
  /// @brief Preserve original power_supply_technology as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `power_supply_technology`: UInt8 = 0
  /// @brief Preserve original present as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `present`: Bool = false
  /// @brief Preserve original cell_voltage as float32.
  /// @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `cell_voltage`: [Float] = []
  /// @brief Preserve original cell_temperature as float32.
  /// @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `cell_temperature`: [Float] = []
  /// @brief Preserve original location as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `location`: String = ""
  /// @brief Preserve original serial_number as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `serial_number`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float32(self.`voltage`)
    try w.float32(self.`temperature`)
    try w.float32(self.`current`)
    try w.float32(self.`charge`)
    try w.float32(self.`capacity`)
    try w.float32(self.`design_capacity`)
    try w.float32(self.`percentage`)
    try w.integer(self.`power_supply_status`)
    try w.integer(self.`power_supply_health`)
    try w.integer(self.`power_supply_technology`)
    try w.boolean(self.`present`)
    guard self.`cell_voltage`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`cell_voltage`.count))
    for e in self.`cell_voltage` {
      try w.float32(e)
    }
    guard self.`cell_temperature`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`cell_temperature`.count))
    for e in self.`cell_temperature` {
      try w.float32(e)
    }
    try w.string(self.`location`, bound: 256)
    try w.string(self.`serial_number`, bound: 256)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Sensor_msgsMsgBatteryState {
    var v = Ros2Sensor_msgsMsgBatteryState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`voltage` = try r.float32()
    v.`temperature` = try r.float32()
    v.`current` = try r.float32()
    v.`charge` = try r.float32()
    v.`capacity` = try r.float32()
    v.`design_capacity` = try r.float32()
    v.`percentage` = try r.float32()
    v.`power_supply_status` = try r.integer(UInt8.self)
    v.`power_supply_health` = try r.integer(UInt8.self)
    v.`power_supply_technology` = try r.integer(UInt8.self)
    v.`present` = try r.boolean()
    let rawcount12 = try r.integer(UInt32.self)
    guard rawcount12 <= 16 else { throw RosError(22) }
    let count12 = Int(rawcount12)
    v.`cell_voltage` = []
    v.`cell_voltage`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`cell_voltage`.append(try r.float32())
    }
    let rawcount13 = try r.integer(UInt32.self)
    guard rawcount13 <= 16 else { throw RosError(22) }
    let count13 = Int(rawcount13)
    v.`cell_temperature` = []
    v.`cell_temperature`.reserveCapacity(count13)
    for _ in 0..<count13 {
      v.`cell_temperature`.append(try r.float32())
    }
    v.`location` = try r.string(bound: 256)
    v.`serial_number` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of ROS2 sensor_msgs/msg/Imu.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Sensor_msgsMsgImu: Canonical {
  public static let maximumWireBytes = 436
  public static let codecIdentity =
    "UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b"
  public static let nativeType = "sensor_msgs/msg/Imu"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original orientation as geometry_msgs/msg/Quaternion.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `orientation`: Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion()
  /// @brief Preserve original orientation_covariance as float64.
  /// @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `orientation_covariance`: [Double] = Array(repeating: 0, count: 9)
  /// @brief Preserve original angular_velocity as geometry_msgs/msg/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `angular_velocity`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Preserve original angular_velocity_covariance as float64.
  /// @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `angular_velocity_covariance`: [Double] = Array(repeating: 0, count: 9)
  /// @brief Preserve original linear_acceleration as geometry_msgs/msg/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `linear_acceleration`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Preserve original linear_acceleration_covariance as float64.
  /// @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `linear_acceleration_covariance`: [Double] = Array(repeating: 0, count: 9)
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`orientation`.write(to: &w)
    guard self.`orientation_covariance`.count == 9 else { throw RosError(22) }
    for e in self.`orientation_covariance` {
      try w.float64(e)
    }
    try self.`angular_velocity`.write(to: &w)
    guard self.`angular_velocity_covariance`.count == 9 else { throw RosError(22) }
    for e in self.`angular_velocity_covariance` {
      try w.float64(e)
    }
    try self.`linear_acceleration`.write(to: &w)
    guard self.`linear_acceleration_covariance`.count == 9 else { throw RosError(22) }
    for e in self.`linear_acceleration_covariance` {
      try w.float64(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Sensor_msgsMsgImu {
    var v = Ros2Sensor_msgsMsgImu()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`orientation` = try Ros2Geometry_msgsMsgQuaternion.read(from: &r)
    let count2 = 9
    v.`orientation_covariance` = []
    v.`orientation_covariance`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`orientation_covariance`.append(try r.float64())
    }
    v.`angular_velocity` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    let count4 = 9
    v.`angular_velocity_covariance` = []
    v.`angular_velocity_covariance`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`angular_velocity_covariance`.append(try r.float64())
    }
    v.`linear_acceleration` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    let count6 = 9
    v.`linear_acceleration_covariance` = []
    v.`linear_acceleration_covariance`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`linear_acceleration_covariance`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of ROS2 sensor_msgs/msg/JointState.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Sensor_msgsMsgJointState: Canonical {
  public static let maximumWireBytes = 468
  public static let codecIdentity =
    "UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf"
  public static let nativeType = "sensor_msgs/msg/JointState"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original name as string.
  /// @details At most 2 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `name`: [String] = []
  /// @brief Preserve original position as float64.
  /// @details At most 2 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position`: [Double] = []
  /// @brief Preserve original velocity as float64.
  /// @details At most 2 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `velocity`: [Double] = []
  /// @brief Preserve original effort as float64.
  /// @details At most 2 logical elements. Finite IEEE float64 values are required by the canonical profile.
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
    guard self.`name`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`name`.count))
    for e in self.`name` {
      try w.string(e, bound: 128)
    }
    guard self.`position`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`position`.count))
    for e in self.`position` {
      try w.float64(e)
    }
    guard self.`velocity`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity`.count))
    for e in self.`velocity` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 2 else { throw RosError(22) }
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
    guard rawcount1 <= 2 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`name` = []
    v.`name`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`name`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 2 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`position` = []
    v.`position`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`position`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 2 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`velocity`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 2 else { throw RosError(22) }
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
/// @brief Own every original field of ROS2 sensor_msgs/msg/LaserScan.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Sensor_msgsMsgLaserScan: Canonical {
  public static let maximumWireBytes = 8368
  public static let codecIdentity =
    "UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4"
  public static let nativeType = "sensor_msgs/msg/LaserScan"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original angle_min as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `angle_min`: Float = 0
  /// @brief Preserve original angle_max as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `angle_max`: Float = 0
  /// @brief Preserve original angle_increment as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `angle_increment`: Float = 0
  /// @brief Preserve original time_increment as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `time_increment`: Float = 0
  /// @brief Preserve original scan_time as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `scan_time`: Float = 0
  /// @brief Preserve original range_min as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `range_min`: Float = 0
  /// @brief Preserve original range_max as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `range_max`: Float = 0
  /// @brief Preserve original ranges as float32.
  /// @details At most 1024 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ranges`: [Float] = []
  /// @brief Preserve original intensities as float32.
  /// @details At most 1024 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `intensities`: [Float] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float32(self.`angle_min`)
    try w.float32(self.`angle_max`)
    try w.float32(self.`angle_increment`)
    try w.float32(self.`time_increment`)
    try w.float32(self.`scan_time`)
    try w.float32(self.`range_min`)
    try w.float32(self.`range_max`)
    guard self.`ranges`.count <= 1024 else { throw RosError(22) }
    try w.integer(UInt32(self.`ranges`.count))
    for e in self.`ranges` {
      try w.float32(e)
    }
    guard self.`intensities`.count <= 1024 else { throw RosError(22) }
    try w.integer(UInt32(self.`intensities`.count))
    for e in self.`intensities` {
      try w.float32(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Sensor_msgsMsgLaserScan {
    var v = Ros2Sensor_msgsMsgLaserScan()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`angle_min` = try r.float32()
    v.`angle_max` = try r.float32()
    v.`angle_increment` = try r.float32()
    v.`time_increment` = try r.float32()
    v.`scan_time` = try r.float32()
    v.`range_min` = try r.float32()
    v.`range_max` = try r.float32()
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 1024 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`ranges` = []
    v.`ranges`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`ranges`.append(try r.float32())
    }
    let rawcount9 = try r.integer(UInt32.self)
    guard rawcount9 <= 1024 else { throw RosError(22) }
    let count9 = Int(rawcount9)
    v.`intensities` = []
    v.`intensities`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`intensities`.append(try r.float32())
    }
    return v
  }
}
/// @brief Own every original field of ROS2 sensor_msgs/msg/MagneticField.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Sensor_msgsMsgMagneticField: Canonical {
  public static let maximumWireBytes = 236
  public static let codecIdentity =
    "UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b"
  public static let nativeType = "sensor_msgs/msg/MagneticField"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original magnetic_field as geometry_msgs/msg/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `magnetic_field`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Preserve original magnetic_field_covariance as float64.
  /// @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `magnetic_field_covariance`: [Double] = Array(repeating: 0, count: 9)
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`magnetic_field`.write(to: &w)
    guard self.`magnetic_field_covariance`.count == 9 else { throw RosError(22) }
    for e in self.`magnetic_field_covariance` {
      try w.float64(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Sensor_msgsMsgMagneticField {
    var v = Ros2Sensor_msgsMsgMagneticField()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`magnetic_field` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    let count2 = 9
    v.`magnetic_field_covariance` = []
    v.`magnetic_field_covariance`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`magnetic_field_covariance`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of ROS2 std_srvs/srv/SetBool_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Std_srvsSrvSetBool_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910"
  public static let nativeType = "std_srvs/srv/SetBool_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original data as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `data`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`data`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Std_srvsSrvSetBool_Request {
    var v = Ros2Std_srvsSrvSetBool_Request()
    v.`data` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS2 std_srvs/srv/SetBool_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Std_srvsSrvSetBool_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4"
  public static let nativeType = "std_srvs/srv/SetBool_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original success as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `success`: Bool = false
  /// @brief Preserve original message as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `message`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Std_srvsSrvSetBool_Response {
    var v = Ros2Std_srvsSrvSetBool_Response()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of ROS2 std_srvs/srv/Trigger_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Std_srvsSrvTrigger_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"
  public static let nativeType = "std_srvs/srv/Trigger_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Std_srvsSrvTrigger_Request {
    var v = Ros2Std_srvsSrvTrigger_Request()
    return v
  }
}
/// @brief Own every original field of ROS2 std_srvs/srv/Trigger_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Std_srvsSrvTrigger_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392"
  public static let nativeType = "std_srvs/srv/Trigger_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original success as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `success`: Bool = false
  /// @brief Preserve original message as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `message`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Std_srvsSrvTrigger_Response {
    var v = Ros2Std_srvsSrvTrigger_Response()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of ROS2 turtlebot3_msgs/action/Patrol_Goal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Turtlebot3_msgsActionPatrol_Goal: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f"
  public static let nativeType = "turtlebot3_msgs/action/Patrol_Goal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original goal as geometry_msgs/msg/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `goal`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`goal`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Turtlebot3_msgsActionPatrol_Goal {
    var v = Ros2Turtlebot3_msgsActionPatrol_Goal()
    v.`goal` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 turtlebot3_msgs/action/Patrol_Result.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Turtlebot3_msgsActionPatrol_Result: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3"
  public static let nativeType = "turtlebot3_msgs/action/Patrol_Result"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original result as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `result`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`result`, bound: 256)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Turtlebot3_msgsActionPatrol_Result
  {
    var v = Ros2Turtlebot3_msgsActionPatrol_Result()
    v.`result` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of ROS2 turtlebot3_msgs/action/Patrol_Feedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Turtlebot3_msgsActionPatrol_Feedback: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e"
  public static let nativeType = "turtlebot3_msgs/action/Patrol_Feedback"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original state as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `state`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`state`, bound: 256)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Turtlebot3_msgsActionPatrol_Feedback
  {
    var v = Ros2Turtlebot3_msgsActionPatrol_Feedback()
    v.`state` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of ROS2 turtlebot3_msgs/msg/SensorState.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Turtlebot3_msgsMsgSensorState: Canonical {
  public static let maximumWireBytes = 168
  public static let codecIdentity =
    "UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358"
  public static let nativeType = "turtlebot3_msgs/msg/SensorState"
  public static let nativeIdentity: String? = nil
  public static let `BUMPER_FORWARD`: UInt8 = 1
  public static let `BUMPER_BACKWARD`: UInt8 = 2
  public static let `CLIFF`: UInt8 = 1
  public static let `SONAR`: UInt8 = 1
  public static let `ILLUMINATION`: UInt8 = 1
  public static let `BUTTON0`: UInt8 = 1
  public static let `BUTTON1`: UInt8 = 2
  public static let `ERROR_LEFT_MOTOR`: UInt8 = 1
  public static let `ERROR_RIGHT_MOTOR`: UInt8 = 2
  public static let `TORQUE_ON`: UInt8 = 1
  public static let `TORQUE_OFF`: UInt8 = 2
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original bumper as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `bumper`: UInt8 = 0
  /// @brief Preserve original cliff as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `cliff`: Float = 0
  /// @brief Preserve original sonar as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `sonar`: Float = 0
  /// @brief Preserve original illumination as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `illumination`: Float = 0
  /// @brief Preserve original led as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `led`: UInt8 = 0
  /// @brief Preserve original button as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `button`: UInt8 = 0
  /// @brief Preserve original torque as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `torque`: Bool = false
  /// @brief Preserve original left_encoder as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `left_encoder`: Int32 = 0
  /// @brief Preserve original right_encoder as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `right_encoder`: Int32 = 0
  /// @brief Preserve original battery as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `battery`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`bumper`)
    try w.float32(self.`cliff`)
    try w.float32(self.`sonar`)
    try w.float32(self.`illumination`)
    try w.integer(self.`led`)
    try w.integer(self.`button`)
    try w.boolean(self.`torque`)
    try w.integer(self.`left_encoder`)
    try w.integer(self.`right_encoder`)
    try w.float32(self.`battery`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Turtlebot3_msgsMsgSensorState {
    var v = Ros2Turtlebot3_msgsMsgSensorState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`bumper` = try r.integer(UInt8.self)
    v.`cliff` = try r.float32()
    v.`sonar` = try r.float32()
    v.`illumination` = try r.float32()
    v.`led` = try r.integer(UInt8.self)
    v.`button` = try r.integer(UInt8.self)
    v.`torque` = try r.boolean()
    v.`left_encoder` = try r.integer(Int32.self)
    v.`right_encoder` = try r.integer(Int32.self)
    v.`battery` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS2 turtlebot3_msgs/msg/Sound.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Turtlebot3_msgsMsgSound: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b"
  public static let nativeType = "turtlebot3_msgs/msg/Sound"
  public static let nativeIdentity: String? = nil
  public static let `OFF`: UInt8 = 0
  public static let `ON`: UInt8 = 1
  public static let `LOW_BATTERY`: UInt8 = 2
  public static let `ERROR`: UInt8 = 3
  public static let `BUTTON1`: UInt8 = 4
  public static let `BUTTON2`: UInt8 = 5
  /// @brief Preserve original value as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `value`: UInt8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Turtlebot3_msgsMsgSound {
    var v = Ros2Turtlebot3_msgsMsgSound()
    v.`value` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS2 turtlebot3_msgs/msg/VersionInfo.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Turtlebot3_msgsMsgVersionInfo: Canonical {
  public static let maximumWireBytes = 780
  public static let codecIdentity =
    "UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a"
  public static let nativeType = "turtlebot3_msgs/msg/VersionInfo"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original hardware as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `hardware`: String = ""
  /// @brief Preserve original firmware as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `firmware`: String = ""
  /// @brief Preserve original software as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `software`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`hardware`, bound: 256)
    try w.string(self.`firmware`, bound: 256)
    try w.string(self.`software`, bound: 256)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Turtlebot3_msgsMsgVersionInfo {
    var v = Ros2Turtlebot3_msgsMsgVersionInfo()
    v.`hardware` = try r.string(bound: 256)
    v.`firmware` = try r.string(bound: 256)
    v.`software` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of ROS2 turtlebot3_msgs/srv/Dqn_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Turtlebot3_msgsSrvDqn_Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e"
  public static let nativeType = "turtlebot3_msgs/srv/Dqn_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original action as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `action`: UInt8 = 0
  /// @brief Preserve original init as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `init`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`action`)
    try w.boolean(self.`init`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Turtlebot3_msgsSrvDqn_Request {
    var v = Ros2Turtlebot3_msgsSrvDqn_Request()
    v.`action` = try r.integer(UInt8.self)
    v.`init` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS2 turtlebot3_msgs/srv/Dqn_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Turtlebot3_msgsSrvDqn_Response: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e"
  public static let nativeType = "turtlebot3_msgs/srv/Dqn_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original state as float32.
  /// @details At most 128 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `state`: [Float] = []
  /// @brief Preserve original reward as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `reward`: Float = 0
  /// @brief Preserve original done as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `done`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`state`.count <= 128 else { throw RosError(22) }
    try w.integer(UInt32(self.`state`.count))
    for e in self.`state` {
      try w.float32(e)
    }
    try w.float32(self.`reward`)
    try w.boolean(self.`done`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Turtlebot3_msgsSrvDqn_Response {
    var v = Ros2Turtlebot3_msgsSrvDqn_Response()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 128 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`state` = []
    v.`state`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`state`.append(try r.float32())
    }
    v.`reward` = try r.float32()
    v.`done` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS2 turtlebot3_msgs/srv/Goal_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Turtlebot3_msgsSrvGoal_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded"
  public static let nativeType = "turtlebot3_msgs/srv/Goal_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Turtlebot3_msgsSrvGoal_Request {
    var v = Ros2Turtlebot3_msgsSrvGoal_Request()
    return v
  }
}
/// @brief Own every original field of ROS2 turtlebot3_msgs/srv/Goal_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Turtlebot3_msgsSrvGoal_Response: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990"
  public static let nativeType = "turtlebot3_msgs/srv/Goal_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original pose_x as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `pose_x`: Float = 0
  /// @brief Preserve original pose_y as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `pose_y`: Float = 0
  /// @brief Preserve original success as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `success`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`pose_x`)
    try w.float32(self.`pose_y`)
    try w.boolean(self.`success`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Turtlebot3_msgsSrvGoal_Response {
    var v = Ros2Turtlebot3_msgsSrvGoal_Response()
    v.`pose_x` = try r.float32()
    v.`pose_y` = try r.float32()
    v.`success` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS2 turtlebot3_msgs/srv/Sound_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Turtlebot3_msgsSrvSound_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a"
  public static let nativeType = "turtlebot3_msgs/srv/Sound_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original value as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `value`: UInt8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Turtlebot3_msgsSrvSound_Request {
    var v = Ros2Turtlebot3_msgsSrvSound_Request()
    v.`value` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS2 turtlebot3_msgs/srv/Sound_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Turtlebot3_msgsSrvSound_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e"
  public static let nativeType = "turtlebot3_msgs/srv/Sound_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original success as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `success`: Bool = false
  /// @brief Preserve original message as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `message`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Turtlebot3_msgsSrvSound_Response {
    var v = Ros2Turtlebot3_msgsSrvSound_Response()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
