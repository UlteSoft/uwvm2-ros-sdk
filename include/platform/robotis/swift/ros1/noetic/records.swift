/// UWVM_COMPLETE_FIELD_CONTRACTS
/// @details Field domains below come from the unchanged canonical source catalog.
/**
 * @file records.swift
 * @brief Provide the complete robotis noetic canonical value surface.
 * @details The original 28 record catalog retains field order, constants, defaults and quotas.
 * Borrowed values and buffers must remain stable while a conversion is in progress.
 * Malformed, truncated and trailing wire values are refused through the shared wire error contract.
 * No declaration grants a capability or establishes a native ROS registry identity.
 * Original declarations and units are retained in share/platform/robotis/catalogs.
 */
// Generated complete canonical values. No I/O or authority.
import RosWasm

/// @brief Own every original field of ROS1 geometry_msgs/Point.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsPoint: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
  public static let nativeType = "geometry_msgs/Point"
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPoint {
    var v = Ros1Geometry_msgsPoint()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 geometry_msgs/Quaternion.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsQuaternion: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
  public static let nativeType = "geometry_msgs/Quaternion"
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
  /// @brief Preserve original w as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `w`: Double = 0
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsQuaternion {
    var v = Ros1Geometry_msgsQuaternion()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`w` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 geometry_msgs/Pose.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsPose: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
  public static let nativeType = "geometry_msgs/Pose"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original position as geometry_msgs/Point.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Preserve original orientation as geometry_msgs/Quaternion.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `orientation`: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPose {
    var v = Ros1Geometry_msgsPose()
    v.`position` = try Ros1Geometry_msgsPoint.read(from: &r)
    v.`orientation` = try Ros1Geometry_msgsQuaternion.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 geometry_msgs/PoseWithCovariance.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsPoseWithCovariance: Canonical {
  public static let maximumWireBytes = 344
  public static let codecIdentity =
    "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf"
  public static let nativeType = "geometry_msgs/PoseWithCovariance"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original pose as geometry_msgs/Pose.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPoseWithCovariance {
    var v = Ros1Geometry_msgsPoseWithCovariance()
    v.`pose` = try Ros1Geometry_msgsPose.read(from: &r)
    let count1 = 36
    v.`covariance` = []
    v.`covariance`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`covariance`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of ROS1 geometry_msgs/Vector3.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsVector3: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
  public static let nativeType = "geometry_msgs/Vector3"
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsVector3 {
    var v = Ros1Geometry_msgsVector3()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 geometry_msgs/Transform.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsTransform: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085"
  public static let nativeType = "geometry_msgs/Transform"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original translation as geometry_msgs/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `translation`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  /// @brief Preserve original rotation as geometry_msgs/Quaternion.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `rotation`: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsTransform {
    var v = Ros1Geometry_msgsTransform()
    v.`translation` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`rotation` = try Ros1Geometry_msgsQuaternion.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 time.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Time: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
  public static let nativeType = "time"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original sec as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `sec`: UInt32 = 0
  /// @brief Preserve original nsec as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `nsec`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    if self.`nsec` >= 1_000_000_000 { throw RosError(22) }
    try w.integer(self.`sec`)
    try w.integer(self.`nsec`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Time {
    var v = Ros1Time()
    v.`sec` = try r.integer(UInt32.self)
    v.`nsec` = try r.integer(UInt32.self)
    if v.`nsec` >= 1_000_000_000 { throw RosError(22) }
    return v
  }
}
/// @brief Own every original field of ROS1 std_msgs/Header.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Std_msgsHeader: Canonical {
  public static let maximumWireBytes = 144
  public static let codecIdentity =
    "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
  public static let nativeType = "std_msgs/Header"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original seq as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `seq`: UInt32 = 0
  /// @brief Preserve original stamp as time.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `stamp`: Ros1Time = Ros1Time()
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
    try w.integer(self.`seq`)
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsHeader {
    var v = Ros1Std_msgsHeader()
    v.`seq` = try r.integer(UInt32.self)
    v.`stamp` = try Ros1Time.read(from: &r)
    v.`frame_id` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 geometry_msgs/TransformStamped.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsTransformStamped: Canonical {
  public static let maximumWireBytes = 460
  public static let codecIdentity =
    "UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a"
  public static let nativeType = "geometry_msgs/TransformStamped"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original child_frame_id as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `child_frame_id`: String = ""
  /// @brief Preserve original transform as geometry_msgs/Transform.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `transform`: Ros1Geometry_msgsTransform = Ros1Geometry_msgsTransform()
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsTransformStamped {
    var v = Ros1Geometry_msgsTransformStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`child_frame_id` = try r.string(bound: 256)
    v.`transform` = try Ros1Geometry_msgsTransform.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 geometry_msgs/Twist.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsTwist: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
  public static let nativeType = "geometry_msgs/Twist"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original linear as geometry_msgs/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `linear`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  /// @brief Preserve original angular as geometry_msgs/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `angular`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsTwist {
    var v = Ros1Geometry_msgsTwist()
    v.`linear` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`angular` = try Ros1Geometry_msgsVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 geometry_msgs/TwistStamped.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsTwistStamped: Canonical {
  public static let maximumWireBytes = 192
  public static let codecIdentity =
    "UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7"
  public static let nativeType = "geometry_msgs/TwistStamped"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original twist as geometry_msgs/Twist.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `twist`: Ros1Geometry_msgsTwist = Ros1Geometry_msgsTwist()
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsTwistStamped {
    var v = Ros1Geometry_msgsTwistStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`twist` = try Ros1Geometry_msgsTwist.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 geometry_msgs/TwistWithCovariance.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsTwistWithCovariance: Canonical {
  public static let maximumWireBytes = 336
  public static let codecIdentity =
    "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf"
  public static let nativeType = "geometry_msgs/TwistWithCovariance"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original twist as geometry_msgs/Twist.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `twist`: Ros1Geometry_msgsTwist = Ros1Geometry_msgsTwist()
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsTwistWithCovariance {
    var v = Ros1Geometry_msgsTwistWithCovariance()
    v.`twist` = try Ros1Geometry_msgsTwist.read(from: &r)
    let count1 = 36
    v.`covariance` = []
    v.`covariance`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`covariance`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of ROS1 nav_msgs/Odometry.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Nav_msgsOdometry: Canonical {
  public static let maximumWireBytes = 1084
  public static let codecIdentity =
    "UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0"
  public static let nativeType = "nav_msgs/Odometry"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original child_frame_id as string.
  /// @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `child_frame_id`: String = ""
  /// @brief Preserve original pose as geometry_msgs/PoseWithCovariance.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose`: Ros1Geometry_msgsPoseWithCovariance = Ros1Geometry_msgsPoseWithCovariance()
  /// @brief Preserve original twist as geometry_msgs/TwistWithCovariance.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `twist`: Ros1Geometry_msgsTwistWithCovariance = Ros1Geometry_msgsTwistWithCovariance()
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
  public static func read(from r: inout WireReader) throws -> Ros1Nav_msgsOdometry {
    var v = Ros1Nav_msgsOdometry()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`child_frame_id` = try r.string(bound: 256)
    v.`pose` = try Ros1Geometry_msgsPoseWithCovariance.read(from: &r)
    v.`twist` = try Ros1Geometry_msgsTwistWithCovariance.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 sensor_msgs/BatteryState.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Sensor_msgsBatteryState: Canonical {
  public static let maximumWireBytes = 832
  public static let codecIdentity =
    "UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441"
  public static let nativeType = "sensor_msgs/BatteryState"
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
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
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
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsBatteryState {
    var v = Ros1Sensor_msgsBatteryState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
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
/// @brief Own every original field of ROS1 sensor_msgs/Imu.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Sensor_msgsImu: Canonical {
  public static let maximumWireBytes = 440
  public static let codecIdentity =
    "UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3"
  public static let nativeType = "sensor_msgs/Imu"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original orientation as geometry_msgs/Quaternion.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `orientation`: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
  /// @brief Preserve original orientation_covariance as float64.
  /// @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `orientation_covariance`: [Double] = Array(repeating: 0, count: 9)
  /// @brief Preserve original angular_velocity as geometry_msgs/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `angular_velocity`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  /// @brief Preserve original angular_velocity_covariance as float64.
  /// @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `angular_velocity_covariance`: [Double] = Array(repeating: 0, count: 9)
  /// @brief Preserve original linear_acceleration as geometry_msgs/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `linear_acceleration`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
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
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsImu {
    var v = Ros1Sensor_msgsImu()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`orientation` = try Ros1Geometry_msgsQuaternion.read(from: &r)
    let count2 = 9
    v.`orientation_covariance` = []
    v.`orientation_covariance`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`orientation_covariance`.append(try r.float64())
    }
    v.`angular_velocity` = try Ros1Geometry_msgsVector3.read(from: &r)
    let count4 = 9
    v.`angular_velocity_covariance` = []
    v.`angular_velocity_covariance`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`angular_velocity_covariance`.append(try r.float64())
    }
    v.`linear_acceleration` = try Ros1Geometry_msgsVector3.read(from: &r)
    let count6 = 9
    v.`linear_acceleration_covariance` = []
    v.`linear_acceleration_covariance`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`linear_acceleration_covariance`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of ROS1 sensor_msgs/JointState.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Sensor_msgsJointState: Canonical {
  public static let maximumWireBytes = 472
  public static let codecIdentity =
    "UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e"
  public static let nativeType = "sensor_msgs/JointState"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
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
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsJointState {
    var v = Ros1Sensor_msgsJointState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
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
/// @brief Own every original field of ROS1 sensor_msgs/LaserScan.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Sensor_msgsLaserScan: Canonical {
  public static let maximumWireBytes = 8372
  public static let codecIdentity =
    "UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b"
  public static let nativeType = "sensor_msgs/LaserScan"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
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
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsLaserScan {
    var v = Ros1Sensor_msgsLaserScan()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
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
/// @brief Own every original field of ROS1 sensor_msgs/MagneticField.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Sensor_msgsMagneticField: Canonical {
  public static let maximumWireBytes = 240
  public static let codecIdentity =
    "UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe"
  public static let nativeType = "sensor_msgs/MagneticField"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original magnetic_field as geometry_msgs/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `magnetic_field`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
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
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsMagneticField {
    var v = Ros1Sensor_msgsMagneticField()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`magnetic_field` = try Ros1Geometry_msgsVector3.read(from: &r)
    let count2 = 9
    v.`magnetic_field_covariance` = []
    v.`magnetic_field_covariance`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`magnetic_field_covariance`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of ROS1 std_srvs/SetBoolRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Std_srvsSetBoolRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac"
  public static let nativeType = "std_srvs/SetBoolRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Std_srvsSetBoolRequest {
    var v = Ros1Std_srvsSetBoolRequest()
    v.`data` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 std_srvs/SetBoolResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Std_srvsSetBoolResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6"
  public static let nativeType = "std_srvs/SetBoolResponse"
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
  public static func read(from r: inout WireReader) throws -> Ros1Std_srvsSetBoolResponse {
    var v = Ros1Std_srvsSetBoolResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of ROS1 std_srvs/TriggerRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Std_srvsTriggerRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e"
  public static let nativeType = "std_srvs/TriggerRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Std_srvsTriggerRequest {
    var v = Ros1Std_srvsTriggerRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 std_srvs/TriggerResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Std_srvsTriggerResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d"
  public static let nativeType = "std_srvs/TriggerResponse"
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
  public static func read(from r: inout WireReader) throws -> Ros1Std_srvsTriggerResponse {
    var v = Ros1Std_srvsTriggerResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of ROS1 turtlebot3_example/Turtlebot3Goal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Turtlebot3_exampleTurtlebot3Goal: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5"
  public static let nativeType = "turtlebot3_example/Turtlebot3Goal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original goal as geometry_msgs/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `goal`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
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
  public static func read(from r: inout WireReader) throws -> Ros1Turtlebot3_exampleTurtlebot3Goal {
    var v = Ros1Turtlebot3_exampleTurtlebot3Goal()
    v.`goal` = try Ros1Geometry_msgsVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 turtlebot3_example/Turtlebot3Result.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Turtlebot3_exampleTurtlebot3Result: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528"
  public static let nativeType = "turtlebot3_example/Turtlebot3Result"
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
  public static func read(from r: inout WireReader) throws -> Ros1Turtlebot3_exampleTurtlebot3Result
  {
    var v = Ros1Turtlebot3_exampleTurtlebot3Result()
    v.`result` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of ROS1 turtlebot3_example/Turtlebot3Feedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Turtlebot3_exampleTurtlebot3Feedback: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8"
  public static let nativeType = "turtlebot3_example/Turtlebot3Feedback"
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
    -> Ros1Turtlebot3_exampleTurtlebot3Feedback
  {
    var v = Ros1Turtlebot3_exampleTurtlebot3Feedback()
    v.`state` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of ROS1 turtlebot3_msgs/SensorState.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Turtlebot3_msgsSensorState: Canonical {
  public static let maximumWireBytes = 172
  public static let codecIdentity =
    "UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f"
  public static let nativeType = "turtlebot3_msgs/SensorState"
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
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
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
  public static func read(from r: inout WireReader) throws -> Ros1Turtlebot3_msgsSensorState {
    var v = Ros1Turtlebot3_msgsSensorState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
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
/// @brief Own every original field of ROS1 turtlebot3_msgs/Sound.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Turtlebot3_msgsSound: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a"
  public static let nativeType = "turtlebot3_msgs/Sound"
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
  public static func read(from r: inout WireReader) throws -> Ros1Turtlebot3_msgsSound {
    var v = Ros1Turtlebot3_msgsSound()
    v.`value` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 turtlebot3_msgs/VersionInfo.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Turtlebot3_msgsVersionInfo: Canonical {
  public static let maximumWireBytes = 780
  public static let codecIdentity =
    "UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a"
  public static let nativeType = "turtlebot3_msgs/VersionInfo"
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
  public static func read(from r: inout WireReader) throws -> Ros1Turtlebot3_msgsVersionInfo {
    var v = Ros1Turtlebot3_msgsVersionInfo()
    v.`hardware` = try r.string(bound: 256)
    v.`firmware` = try r.string(bound: 256)
    v.`software` = try r.string(bound: 256)
    return v
  }
}
