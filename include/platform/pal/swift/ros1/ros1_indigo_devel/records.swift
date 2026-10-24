/// UWVM_COMPLETE_FIELD_CONTRACTS
/// @details Field domains below come from the unchanged canonical source catalog.
/**
 * @file records.swift
 * @brief Provide the complete pal ros1_indigo_devel canonical value surface.
 * @details The original 222 record catalog retains field order, constants, defaults and quotas.
 * Borrowed values and buffers must remain stable while a conversion is in progress.
 * Malformed, truncated and trailing wire values are refused through the shared wire error contract.
 * No declaration grants a capability or establishes a native ROS registry identity.
 * Original declarations and units are retained in share/platform/pal/catalogs.
 */
// Generated complete canonical values. No I/O or authority.
import RosWasm

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
/// @brief Own every original field of ROS1 geometry_msgs/Accel.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsAccel: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed"
  public static let nativeType = "geometry_msgs/Accel"
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsAccel {
    var v = Ros1Geometry_msgsAccel()
    v.`linear` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`angular` = try Ros1Geometry_msgsVector3.read(from: &r)
    return v
  }
}
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
/// @brief Own every original field of ROS1 geometry_msgs/Point32.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsPoint32: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_ac11d311f1db295f3e53b300246dbb111148097fe50787e812cd1bf627ecc59d"
  public static let nativeType = "geometry_msgs/Point32"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original x as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `x`: Float = 0
  /// @brief Preserve original y as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `y`: Float = 0
  /// @brief Preserve original z as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `z`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPoint32 {
    var v = Ros1Geometry_msgsPoint32()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
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
/// @brief Own every original field of ROS1 geometry_msgs/PointStamped.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsPointStamped: Canonical {
  public static let maximumWireBytes = 168
  public static let codecIdentity =
    "UWVMROS1_4292765fd525ff25fcdf66cba24b1680e01d7a3f036f66a1d5bc21f5db935e90"
  public static let nativeType = "geometry_msgs/PointStamped"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original point as geometry_msgs/Point.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `point`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`point`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPointStamped {
    var v = Ros1Geometry_msgsPointStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`point` = try Ros1Geometry_msgsPoint.read(from: &r)
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
/// @brief Own every original field of ROS1 geometry_msgs/Pose2D.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsPose2D: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_272e907f7422675f272752642d2421c870d46b48b101f1fc6dec5e9ea70b8b0f"
  public static let nativeType = "geometry_msgs/Pose2D"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original x as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `x`: Double = 0
  /// @brief Preserve original y as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `y`: Double = 0
  /// @brief Preserve original theta as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `theta`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`theta`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPose2D {
    var v = Ros1Geometry_msgsPose2D()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`theta` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 geometry_msgs/PoseArray.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsPoseArray: Canonical {
  public static let maximumWireBytes = 372
  public static let codecIdentity =
    "UWVMROS1_cc369b2d02464c719f6c9c6eb8f4e328e7623ddd455372cea2085f44bb782900"
  public static let nativeType = "geometry_msgs/PoseArray"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original poses as geometry_msgs/Pose.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `poses`: [Ros1Geometry_msgsPose] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`poses`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`poses`.count))
    for e in self.`poses` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPoseArray {
    var v = Ros1Geometry_msgsPoseArray()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`poses` = []
    v.`poses`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`poses`.append(try Ros1Geometry_msgsPose.read(from: &r))
    }
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
/// @brief Own every original field of ROS1 geometry_msgs/PoseWithCovarianceStamped.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsPoseWithCovarianceStamped: Canonical {
  public static let maximumWireBytes = 488
  public static let codecIdentity =
    "UWVMROS1_6708292fe381a7f14aaf84f47a969f55af7446087bfcb309d3b86ab95f34a2d9"
  public static let nativeType = "geometry_msgs/PoseWithCovarianceStamped"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original pose as geometry_msgs/PoseWithCovariance.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose`: Ros1Geometry_msgsPoseWithCovariance = Ros1Geometry_msgsPoseWithCovariance()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`pose`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Geometry_msgsPoseWithCovarianceStamped
  {
    var v = Ros1Geometry_msgsPoseWithCovarianceStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`pose` = try Ros1Geometry_msgsPoseWithCovariance.read(from: &r)
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
/// @brief Own every original field of ROS1 geometry_msgs/TransformStamped.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsTransformStamped: Canonical {
  public static let maximumWireBytes = 332
  public static let codecIdentity =
    "UWVMROS1_f4e1d7f868984da7e3717192245f9adf2cc18c76bebaac6357ae2ed30b5b132c"
  public static let nativeType = "geometry_msgs/TransformStamped"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original child_frame_id as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
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
    try w.string(self.`child_frame_id`, bound: 128)
    try self.`transform`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsTransformStamped {
    var v = Ros1Geometry_msgsTransformStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`child_frame_id` = try r.string(bound: 128)
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
/// @brief Own every original field of ROS1 geometry_msgs/Wrench.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsWrench: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3"
  public static let nativeType = "geometry_msgs/Wrench"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original force as geometry_msgs/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `force`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  /// @brief Preserve original torque as geometry_msgs/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `torque`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`force`.write(to: &w)
    try self.`torque`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsWrench {
    var v = Ros1Geometry_msgsWrench()
    v.`force` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`torque` = try Ros1Geometry_msgsVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 humanoid_nav_msgs/StepTarget.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Humanoid_nav_msgsStepTarget: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_569ffb799d7e55047bf9191eee9af61296726974e01efa8e3b59be779f25c0e6"
  public static let nativeType = "humanoid_nav_msgs/StepTarget"
  public static let nativeIdentity: String? = nil
  public static let `right`: UInt8 = 0
  public static let `left`: UInt8 = 1
  /// @brief Preserve original pose as geometry_msgs/Pose2D.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose`: Ros1Geometry_msgsPose2D = Ros1Geometry_msgsPose2D()
  /// @brief Preserve original leg as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `leg`: UInt8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    try w.integer(self.`leg`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Humanoid_nav_msgsStepTarget {
    var v = Ros1Humanoid_nav_msgsStepTarget()
    v.`pose` = try Ros1Geometry_msgsPose2D.read(from: &r)
    v.`leg` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 nav_msgs/MapMetaData.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Nav_msgsMapMetaData: Canonical {
  public static let maximumWireBytes = 76
  public static let codecIdentity =
    "UWVMROS1_2bd90889cc46f8b6669b9bdbdd911747e873c2e3fb948cd3c94a1add8c4555ec"
  public static let nativeType = "nav_msgs/MapMetaData"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original map_load_time as time.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `map_load_time`: Ros1Time = Ros1Time()
  /// @brief Preserve original resolution as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `resolution`: Float = 0
  /// @brief Preserve original width as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `width`: UInt32 = 0
  /// @brief Preserve original height as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `height`: UInt32 = 0
  /// @brief Preserve original origin as geometry_msgs/Pose.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `origin`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`map_load_time`.write(to: &w)
    try w.float32(self.`resolution`)
    try w.integer(self.`width`)
    try w.integer(self.`height`)
    try self.`origin`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Nav_msgsMapMetaData {
    var v = Ros1Nav_msgsMapMetaData()
    v.`map_load_time` = try Ros1Time.read(from: &r)
    v.`resolution` = try r.float32()
    v.`width` = try r.integer(UInt32.self)
    v.`height` = try r.integer(UInt32.self)
    v.`origin` = try Ros1Geometry_msgsPose.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_behaviour_msgs/BehaviourArgument.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_behaviour_msgsBehaviourArgument: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_024bb88cf3b278e19491258b73c01eca83b0ccfd9381e96b9bb5733227bc4bc0"
  public static let nativeType = "pal_behaviour_msgs/BehaviourArgument"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original key as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `key`: String = ""
  /// @brief Preserve original value as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `value`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`key`, bound: 128)
    try w.string(self.`value`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_behaviour_msgsBehaviourArgument
  {
    var v = Ros1Pal_behaviour_msgsBehaviourArgument()
    v.`key` = try r.string(bound: 128)
    v.`value` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_behaviour_msgs/BehaviourEventRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_behaviour_msgsBehaviourEventRequest: Canonical {
  public static let maximumWireBytes = 1192
  public static let codecIdentity =
    "UWVMROS1_048535054a3fb576c8101615baffb84809d2e09e6570527a185e54b54460374c"
  public static let nativeType = "pal_behaviour_msgs/BehaviourEventRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original arguments as pal_behaviour_msgs/BehaviourArgument.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `arguments`: [Ros1Pal_behaviour_msgsBehaviourArgument] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    guard self.`arguments`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`arguments`.count))
    for e in self.`arguments` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_behaviour_msgsBehaviourEventRequest
  {
    var v = Ros1Pal_behaviour_msgsBehaviourEventRequest()
    v.`name` = try r.string(bound: 128)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`arguments` = []
    v.`arguments`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`arguments`.append(try Ros1Pal_behaviour_msgsBehaviourArgument.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_behaviour_msgs/BehaviourEventResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_behaviour_msgsBehaviourEventResponse: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_5d4451abae7cf7d65e7385b4e447df7f991644aa8763758b129e5df6920ba1fd"
  public static let nativeType = "pal_behaviour_msgs/BehaviourEventResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original response as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `response`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`response`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_behaviour_msgsBehaviourEventResponse
  {
    var v = Ros1Pal_behaviour_msgsBehaviourEventResponse()
    v.`response` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_behaviour_msgs/BehaviourTaskGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_behaviour_msgsBehaviourTaskGoal: Canonical {
  public static let maximumWireBytes = 1192
  public static let codecIdentity =
    "UWVMROS1_298df310a5cc1085df5355d10a2ecd627415e85f1399f52eaba19a3e16f2389f"
  public static let nativeType = "pal_behaviour_msgs/BehaviourTaskGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original taskName as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `taskName`: String = ""
  /// @brief Preserve original arguments as pal_behaviour_msgs/BehaviourArgument.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `arguments`: [Ros1Pal_behaviour_msgsBehaviourArgument] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`taskName`, bound: 128)
    guard self.`arguments`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`arguments`.count))
    for e in self.`arguments` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_behaviour_msgsBehaviourTaskGoal
  {
    var v = Ros1Pal_behaviour_msgsBehaviourTaskGoal()
    v.`taskName` = try r.string(bound: 128)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`arguments` = []
    v.`arguments`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`arguments`.append(try Ros1Pal_behaviour_msgsBehaviourArgument.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_behaviour_msgs/BehaviourTaskResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_behaviour_msgsBehaviourTaskResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e18dbdb679b8d00ba9ba5f72201ccf93eec866891009b3639f0892c64da18491"
  public static let nativeType = "pal_behaviour_msgs/BehaviourTaskResult"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_behaviour_msgsBehaviourTaskResult
  {
    var v = Ros1Pal_behaviour_msgsBehaviourTaskResult()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_behaviour_msgs/BehaviourTaskFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_behaviour_msgsBehaviourTaskFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4270594f10120216110afd3b219cec42018a71cc751bf09a379e608ce99b1752"
  public static let nativeType = "pal_behaviour_msgs/BehaviourTaskFeedback"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_behaviour_msgsBehaviourTaskFeedback
  {
    var v = Ros1Pal_behaviour_msgsBehaviourTaskFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_behaviour_msgs/PresentationGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_behaviour_msgsPresentationGoal: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_f63991747249e4417a36723dcfe3620fb3efc20784b6a60334f46b3476c76b96"
  public static let nativeType = "pal_behaviour_msgs/PresentationGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original presentationFile as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `presentationFile`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`presentationFile`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_behaviour_msgsPresentationGoal
  {
    var v = Ros1Pal_behaviour_msgsPresentationGoal()
    v.`presentationFile` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_behaviour_msgs/PresentationResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_behaviour_msgsPresentationResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_416d43dac88c97f0b25fb206e5529d660fbadb5c8bf98c78190616eaae7c8c41"
  public static let nativeType = "pal_behaviour_msgs/PresentationResult"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_behaviour_msgsPresentationResult
  {
    var v = Ros1Pal_behaviour_msgsPresentationResult()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_behaviour_msgs/PresentationFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_behaviour_msgsPresentationFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a80db9d9290af9c76e0d611c42e60939bcfc26897ba56efb2cefd5df072f5970"
  public static let nativeType = "pal_behaviour_msgs/PresentationFeedback"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_behaviour_msgsPresentationFeedback
  {
    var v = Ros1Pal_behaviour_msgsPresentationFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_common_msgs/DisableGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_common_msgsDisableGoal: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7b506fba552b6058cfbd7275e45a82399b686d73dc891bfee6dc506a02f1db3a"
  public static let nativeType = "pal_common_msgs/DisableGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original duration as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `duration`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`duration`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_common_msgsDisableGoal {
    var v = Ros1Pal_common_msgsDisableGoal()
    v.`duration` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_common_msgs/DisableResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_common_msgsDisableResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e16cdbd4052e095ead5edfda8c339d94483de63d5442139e0c8b0c5300a2056f"
  public static let nativeType = "pal_common_msgs/DisableResult"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_common_msgsDisableResult {
    var v = Ros1Pal_common_msgsDisableResult()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_common_msgs/DisableFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_common_msgsDisableFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_892e1dc5726b25276dfd880aff5c9741922b938048d8fc044662fd6f11939555"
  public static let nativeType = "pal_common_msgs/DisableFeedback"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_common_msgsDisableFeedback {
    var v = Ros1Pal_common_msgsDisableFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_common_msgs/EmptyGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_common_msgsEmptyGoal: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b2e8505fe9480002666ccc1bc6ed3e250f521f1e0fb2165336de288f0798c7ce"
  public static let nativeType = "pal_common_msgs/EmptyGoal"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_common_msgsEmptyGoal {
    var v = Ros1Pal_common_msgsEmptyGoal()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_common_msgs/EmptyResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_common_msgsEmptyResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7e831f6ff8bda7d3ff2a477bb867ce2b965d82e60c8c089a68a030be1c56202a"
  public static let nativeType = "pal_common_msgs/EmptyResult"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_common_msgsEmptyResult {
    var v = Ros1Pal_common_msgsEmptyResult()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_common_msgs/EmptyFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_common_msgsEmptyFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4e37b746163e601913c21f82128415e9493467848b1203b0744a4f7697125160"
  public static let nativeType = "pal_common_msgs/EmptyFeedback"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_common_msgsEmptyFeedback {
    var v = Ros1Pal_common_msgsEmptyFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_common_msgs/GetStringRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_common_msgsGetStringRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_5da980a34f4dc0c571eccf18e9b5ba9e3f600ec33066d5632e5eed6a57432975"
  public static let nativeType = "pal_common_msgs/GetStringRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_common_msgsGetStringRequest {
    var v = Ros1Pal_common_msgsGetStringRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_common_msgs/GetStringResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_common_msgsGetStringResponse: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_92faf0451e15a3363daed687078ea103a59e98135e888ad54f8dd9d282443a59"
  public static let nativeType = "pal_common_msgs/GetStringResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original data as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `data`: String = ""
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
    try w.string(self.`data`, bound: 128)
    try w.boolean(self.`success`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_common_msgsGetStringResponse {
    var v = Ros1Pal_common_msgsGetStringResponse()
    v.`data` = try r.string(bound: 128)
    v.`success` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_common_msgs/JointCurrent.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_common_msgsJointCurrent: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_5c8818c8e15e17e0696cd7301896246ea43e5309f24e8d00e3254283199a5b39"
  public static let nativeType = "pal_common_msgs/JointCurrent"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original joints as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `joints`: String = ""
  /// @brief Preserve original current_limit as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `current_limit`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`joints`, bound: 128)
    try w.float32(self.`current_limit`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_common_msgsJointCurrent {
    var v = Ros1Pal_common_msgsJointCurrent()
    v.`joints` = try r.string(bound: 128)
    v.`current_limit` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_common_msgs/SetStringRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_common_msgsSetStringRequest: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_1266d5e50f2f3ada01139b7cf49daf4dd6a9a358edf26519c6b85bd2b9c675b3"
  public static let nativeType = "pal_common_msgs/SetStringRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original data as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `data`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`data`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_common_msgsSetStringRequest {
    var v = Ros1Pal_common_msgsSetStringRequest()
    v.`data` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_common_msgs/SetStringResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_common_msgsSetStringResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_77c77473e16b6242e69e1674bf3c1faf66169bb858144992be3f6cfd712bd370"
  public static let nativeType = "pal_common_msgs/SetStringResponse"
  public static let nativeIdentity: String? = nil
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
    try w.boolean(self.`success`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_common_msgsSetStringResponse {
    var v = Ros1Pal_common_msgsSetStringResponse()
    v.`success` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_control_msgs/ActuatorCurrentLimit.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_control_msgsActuatorCurrentLimit: Canonical {
  public static let maximumWireBytes = 2248
  public static let codecIdentity =
    "UWVMROS1_cf7369861a4d556cc9edc22cc60c79f484ca84e295c508a2ff7d7332247addbe"
  public static let nativeType = "pal_control_msgs/ActuatorCurrentLimit"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original actuator_names as string.
  /// @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `actuator_names`: [String] = []
  /// @brief Preserve original current_limits as float64.
  /// @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `current_limits`: [Double] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`actuator_names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`actuator_names`.count))
    for e in self.`actuator_names` {
      try w.string(e, bound: 128)
    }
    guard self.`current_limits`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`current_limits`.count))
    for e in self.`current_limits` {
      try w.float64(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_control_msgsActuatorCurrentLimit
  {
    var v = Ros1Pal_control_msgsActuatorCurrentLimit()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`actuator_names` = []
    v.`actuator_names`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`actuator_names`.append(try r.string(bound: 128))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`current_limits` = []
    v.`current_limits`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`current_limits`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_control_msgs/CurrentLimitRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_control_msgsCurrentLimitRequest: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_b029cf04f0b1c9db6817fbd10f193d7402afbc84853aed53dc62646e56d030b5"
  public static let nativeType = "pal_control_msgs/CurrentLimitRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original actuator_name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `actuator_name`: String = ""
  /// @brief Preserve original current_limit as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `current_limit`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`actuator_name`, bound: 128)
    try w.float64(self.`current_limit`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_control_msgsCurrentLimitRequest
  {
    var v = Ros1Pal_control_msgsCurrentLimitRequest()
    v.`actuator_name` = try r.string(bound: 128)
    v.`current_limit` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_control_msgs/CurrentLimitResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_control_msgsCurrentLimitResponse: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_e3b16641e9b7be7b3cb0cf7198a63b41ebd0b38eb7dc6b7bd9263650279b0c37"
  public static let nativeType = "pal_control_msgs/CurrentLimitResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original status as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `status`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`status`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_control_msgsCurrentLimitResponse
  {
    var v = Ros1Pal_control_msgsCurrentLimitResponse()
    v.`status` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_control_msgs/MotionManagerGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_control_msgsMotionManagerGoal: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_d2191004950c3f14c8fd71cc2c59cbe39eb76a3c521327293e7355f88e8d2383"
  public static let nativeType = "pal_control_msgs/MotionManagerGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original filename as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `filename`: String = ""
  /// @brief Preserve original plan as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `plan`: Bool = false
  /// @brief Preserve original checkSafety as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `checkSafety`: Bool = false
  /// @brief Preserve original repeat as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `repeat`: Bool = false
  /// @brief Preserve original priority as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `priority`: UInt8 = 0
  /// @brief Preserve original queueTimeout as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `queueTimeout`: Int32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`filename`, bound: 128)
    try w.boolean(self.`plan`)
    try w.boolean(self.`checkSafety`)
    try w.boolean(self.`repeat`)
    try w.integer(self.`priority`)
    try w.integer(self.`queueTimeout`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_control_msgsMotionManagerGoal
  {
    var v = Ros1Pal_control_msgsMotionManagerGoal()
    v.`filename` = try r.string(bound: 128)
    v.`plan` = try r.boolean()
    v.`checkSafety` = try r.boolean()
    v.`repeat` = try r.boolean()
    v.`priority` = try r.integer(UInt8.self)
    v.`queueTimeout` = try r.integer(Int32.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_control_msgs/MotionManagerResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_control_msgsMotionManagerResult: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_8c9a1d39fe8d1a23621b871bb0752196123c9eab96c31055c384d0056da3165c"
  public static let nativeType = "pal_control_msgs/MotionManagerResult"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original message as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `message`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_control_msgsMotionManagerResult
  {
    var v = Ros1Pal_control_msgsMotionManagerResult()
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_control_msgs/MotionManagerFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_control_msgsMotionManagerFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_90343a2a84a0db6a4730b7c9cb437ba55e9dd30c10b662db6dabe561ecf48009"
  public static let nativeType = "pal_control_msgs/MotionManagerFeedback"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_control_msgsMotionManagerFeedback
  {
    var v = Ros1Pal_control_msgsMotionManagerFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 duration.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Duration: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
  public static let nativeType = "duration"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original sec as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `sec`: Int32 = 0
  /// @brief Preserve original nsec as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `nsec`: Int32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    if self.`nsec` < 0 { throw RosError(22) }
    if self.`nsec` >= 1_000_000_000 { throw RosError(22) }
    try w.integer(self.`sec`)
    try w.integer(self.`nsec`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Duration {
    var v = Ros1Duration()
    v.`sec` = try r.integer(Int32.self)
    v.`nsec` = try r.integer(Int32.self)
    if v.`nsec` < 0 { throw RosError(22) }
    if v.`nsec` >= 1_000_000_000 { throw RosError(22) }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_control_msgs/OperationalSpaceGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_control_msgsOperationalSpaceGoal: Canonical {
  public static let maximumWireBytes = 306
  public static let codecIdentity =
    "UWVMROS1_c2a633eaaae880b4becdac4e48068d798b121a63ed50339ae5f8eb455416c752"
  public static let nativeType = "pal_control_msgs/OperationalSpaceGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original has_vel as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `has_vel`: Bool = false
  /// @brief Preserve original has_accel as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `has_accel`: Bool = false
  /// @brief Preserve original duration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `duration`: Ros1Duration = Ros1Duration()
  /// @brief Preserve original pose as geometry_msgs/Pose.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Preserve original velocity as geometry_msgs/Twist.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `velocity`: Ros1Geometry_msgsTwist = Ros1Geometry_msgsTwist()
  /// @brief Preserve original acceleration as geometry_msgs/Accel.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `acceleration`: Ros1Geometry_msgsAccel = Ros1Geometry_msgsAccel()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.boolean(self.`has_vel`)
    try w.boolean(self.`has_accel`)
    try self.`duration`.write(to: &w)
    try self.`pose`.write(to: &w)
    try self.`velocity`.write(to: &w)
    try self.`acceleration`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_control_msgsOperationalSpaceGoal
  {
    var v = Ros1Pal_control_msgsOperationalSpaceGoal()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`has_vel` = try r.boolean()
    v.`has_accel` = try r.boolean()
    v.`duration` = try Ros1Duration.read(from: &r)
    v.`pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`velocity` = try Ros1Geometry_msgsTwist.read(from: &r)
    v.`acceleration` = try Ros1Geometry_msgsAccel.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_control_msgs/RigidBodyTrajectoryPoint.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_control_msgsRigidBodyTrajectoryPoint: Canonical {
  public static let maximumWireBytes = 160
  public static let codecIdentity =
    "UWVMROS1_25a24ab0d2eea5acbd4f1e0e0ba45262aa18750fcfb7cd6e57361ac782006d8f"
  public static let nativeType = "pal_control_msgs/RigidBodyTrajectoryPoint"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original duration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `duration`: Ros1Duration = Ros1Duration()
  /// @brief Preserve original pose as geometry_msgs/Pose.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Preserve original velocity as geometry_msgs/Twist.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `velocity`: Ros1Geometry_msgsTwist = Ros1Geometry_msgsTwist()
  /// @brief Preserve original acceleration as geometry_msgs/Accel.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `acceleration`: Ros1Geometry_msgsAccel = Ros1Geometry_msgsAccel()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`duration`.write(to: &w)
    try self.`pose`.write(to: &w)
    try self.`velocity`.write(to: &w)
    try self.`acceleration`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_control_msgsRigidBodyTrajectoryPoint
  {
    var v = Ros1Pal_control_msgsRigidBodyTrajectoryPoint()
    v.`duration` = try Ros1Duration.read(from: &r)
    v.`pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`velocity` = try Ros1Geometry_msgsTwist.read(from: &r)
    v.`acceleration` = try Ros1Geometry_msgsAccel.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_control_msgs/RigidBodyTrajectoryGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_control_msgsRigidBodyTrajectoryGoal: Canonical {
  public static let maximumWireBytes = 789
  public static let codecIdentity =
    "UWVMROS1_03623f36fd48567680ea44e05f1e8fceb65f85bbbbfc9c76e19005deb2b2f599"
  public static let nativeType = "pal_control_msgs/RigidBodyTrajectoryGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original interpolation_type as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `interpolation_type`: Int8 = 0
  /// @brief Preserve original trajectory as pal_control_msgs/RigidBodyTrajectoryPoint.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `trajectory`: [Ros1Pal_control_msgsRigidBodyTrajectoryPoint] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`interpolation_type`)
    guard self.`trajectory`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`trajectory`.count))
    for e in self.`trajectory` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_control_msgsRigidBodyTrajectoryGoal
  {
    var v = Ros1Pal_control_msgsRigidBodyTrajectoryGoal()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`interpolation_type` = try r.integer(Int8.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`trajectory` = []
    v.`trajectory`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`trajectory`.append(try Ros1Pal_control_msgsRigidBodyTrajectoryPoint.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_control_msgs/RigidBodyTrajectoryResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_control_msgsRigidBodyTrajectoryResult: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_7f2a255f550c28c0d817ada4d3a0419b4d44347d0d9050821395a65ae6431f9f"
  public static let nativeType = "pal_control_msgs/RigidBodyTrajectoryResult"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original message as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `message`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_control_msgsRigidBodyTrajectoryResult
  {
    var v = Ros1Pal_control_msgsRigidBodyTrajectoryResult()
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_control_msgs/RigidBodyTrajectoryFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_control_msgsRigidBodyTrajectoryFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_2ea6f2ce67dcc51782fa6db213b7a9e0c758b608961efc1e0783c8f14dbabd96"
  public static let nativeType = "pal_control_msgs/RigidBodyTrajectoryFeedback"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_control_msgsRigidBodyTrajectoryFeedback
  {
    var v = Ros1Pal_control_msgsRigidBodyTrajectoryFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 sensor_msgs/Image.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Sensor_msgsImage: Canonical {
  public static let maximumWireBytes = 4389
  public static let codecIdentity =
    "UWVMROS1_da3bee65c72205c46f51ab123a4399369df1a0a1419c32fdcd350f16bd5f76ce"
  public static let nativeType = "sensor_msgs/Image"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original height as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `height`: UInt32 = 0
  /// @brief Preserve original width as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `width`: UInt32 = 0
  /// @brief Preserve original encoding as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `encoding`: String = ""
  /// @brief Preserve original is_bigendian as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `is_bigendian`: UInt8 = 0
  /// @brief Preserve original step as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `step`: UInt32 = 0
  /// @brief Preserve original data as uint8.
  /// @details At most 4096 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `data`: [UInt8] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`height`)
    try w.integer(self.`width`)
    try w.string(self.`encoding`, bound: 128)
    try w.integer(self.`is_bigendian`)
    try w.integer(self.`step`)
    guard self.`data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsImage {
    var v = Ros1Sensor_msgsImage()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`height` = try r.integer(UInt32.self)
    v.`width` = try r.integer(UInt32.self)
    v.`encoding` = try r.string(bound: 128)
    v.`is_bigendian` = try r.integer(UInt8.self)
    v.`step` = try r.integer(UInt32.self)
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 4096 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`data` = []
    v.`data`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/AddTexturedObjectRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsAddTexturedObjectRequest: Canonical {
  public static let maximumWireBytes = 4521
  public static let codecIdentity =
    "UWVMROS1_0462d396de70e5db24dbbe0dab8c326f81120356b4d632fd3b56b433d89f616d"
  public static let nativeType = "pal_detection_msgs/AddTexturedObjectRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original img as sensor_msgs/Image.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `img`: Ros1Sensor_msgsImage = Ros1Sensor_msgsImage()
  /// @brief Preserve original fullPathFileName as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `fullPathFileName`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`img`.write(to: &w)
    try w.string(self.`fullPathFileName`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsAddTexturedObjectRequest
  {
    var v = Ros1Pal_detection_msgsAddTexturedObjectRequest()
    v.`img` = try Ros1Sensor_msgsImage.read(from: &r)
    v.`fullPathFileName` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/AddTexturedObjectResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsAddTexturedObjectResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6eb1d5f37f64d4f141251e607533ebf037973dc704dbcf3e06d4fb8d2c86ee1d"
  public static let nativeType = "pal_detection_msgs/AddTexturedObjectResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original result as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `result`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsAddTexturedObjectResponse
  {
    var v = Ros1Pal_detection_msgsAddTexturedObjectResponse()
    v.`result` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/ChangeObjectRecognizerModelRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_d8071195e710803f51bfd07d74bd9450c5ce1ca21b464414ad806695692e0342"
  public static let nativeType = "pal_detection_msgs/ChangeObjectRecognizerModelRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original model_name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `model_name`: String = ""
  /// @brief Preserve original reset_desired_classes_param as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `reset_desired_classes_param`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`model_name`, bound: 128)
    try w.boolean(self.`reset_desired_classes_param`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest
  {
    var v = Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest()
    v.`model_name` = try r.string(bound: 128)
    v.`reset_desired_classes_param` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/ChangeObjectRecognizerModelResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_cd5c9ca75201a47ae2eb04ec69ecea7762257b946bb2777a2c7224b51515775d"
  public static let nativeType = "pal_detection_msgs/ChangeObjectRecognizerModelResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original status as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `status`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse
  {
    var v = Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse()
    v.`status` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/Detection2d.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsDetection2d: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_4f0e64fd7996b772586fce060823565b53147a7b29456c8a3b5f8fa48e81663e"
  public static let nativeType = "pal_detection_msgs/Detection2d"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original x as int64.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `x`: Int64 = 0
  /// @brief Preserve original y as int64.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `y`: Int64 = 0
  /// @brief Preserve original width as int64.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `width`: Int64 = 0
  /// @brief Preserve original height as int64.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `height`: Int64 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x`)
    try w.integer(self.`y`)
    try w.integer(self.`width`)
    try w.integer(self.`height`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_detection_msgsDetection2d {
    var v = Ros1Pal_detection_msgsDetection2d()
    v.`x` = try r.integer(Int64.self)
    v.`y` = try r.integer(Int64.self)
    v.`width` = try r.integer(Int64.self)
    v.`height` = try r.integer(Int64.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/Detections2d.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsDetections2d: Canonical {
  public static let maximumWireBytes = 608
  public static let codecIdentity =
    "UWVMROS1_0b21e2e5d47b2e4e46f46506940a84b3df0acef77d7e3c66716bc9cc7b0b8e04"
  public static let nativeType = "pal_detection_msgs/Detections2d"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original detections as pal_detection_msgs/Detection2d.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `detections`: [Ros1Pal_detection_msgsDetection2d] = []
  /// @brief Preserve original camera_pose as geometry_msgs/TransformStamped.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `camera_pose`: Ros1Geometry_msgsTransformStamped = Ros1Geometry_msgsTransformStamped()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`detections`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`detections`.count))
    for e in self.`detections` {
      try e.write(to: &w)
    }
    try self.`camera_pose`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_detection_msgsDetections2d {
    var v = Ros1Pal_detection_msgsDetections2d()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`detections` = []
    v.`detections`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`detections`.append(try Ros1Pal_detection_msgsDetection2d.read(from: &r))
    }
    v.`camera_pose` = try Ros1Geometry_msgsTransformStamped.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/FaceDetection.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsFaceDetection: Canonical {
  public static let maximumWireBytes = 481
  public static let codecIdentity =
    "UWVMROS1_792fe21dbe06a6a47493a66571ff9b324dba17447855965b2e4f3e79cd302395"
  public static let nativeType = "pal_detection_msgs/FaceDetection"
  public static let nativeIdentity: String? = nil
  public static let `EXPRESSION_NEUTRAL`: String = "\u{6e}\u{65}\u{75}\u{74}\u{72}\u{61}\u{6c}"
  public static let `EXPRESSION_SMILE`: String = "\u{73}\u{6d}\u{69}\u{6c}\u{65}"
  public static let `EXPRESSION_RAISED_BROWS`: String =
    "\u{72}\u{61}\u{69}\u{73}\u{65}\u{64}\u{20}\u{62}\u{72}\u{6f}\u{77}\u{73}"
  public static let `EXPRESSION_EYES_AWAY`: String =
    "\u{65}\u{79}\u{65}\u{73}\u{20}\u{61}\u{77}\u{61}\u{79}"
  public static let `EXPRESSION_SQUINTING`: String =
    "\u{73}\u{71}\u{75}\u{69}\u{6e}\u{74}\u{69}\u{6e}\u{67}"
  public static let `EXPRESSION_FROWNING`: String =
    "\u{66}\u{72}\u{6f}\u{77}\u{6e}\u{69}\u{6e}\u{67}"
  /// @brief Preserve original x as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `x`: Int32 = 0
  /// @brief Preserve original y as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `y`: Int32 = 0
  /// @brief Preserve original width as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `width`: Int32 = 0
  /// @brief Preserve original height as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `height`: Int32 = 0
  /// @brief Preserve original eyesLocated as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `eyesLocated`: Bool = false
  /// @brief Preserve original leftEyeX as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `leftEyeX`: Int32 = 0
  /// @brief Preserve original leftEyeY as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `leftEyeY`: Int32 = 0
  /// @brief Preserve original rightEyeX as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `rightEyeX`: Int32 = 0
  /// @brief Preserve original rightEyeY as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `rightEyeY`: Int32 = 0
  /// @brief Preserve original position as geometry_msgs/Point32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position`: Ros1Geometry_msgsPoint32 = Ros1Geometry_msgsPoint32()
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original confidence as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `confidence`: Float = 0
  /// @brief Preserve original gender as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `gender`: String = ""
  /// @brief Preserve original genderConfidence as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `genderConfidence`: Float = 0
  /// @brief Preserve original expression as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `expression`: String = ""
  /// @brief Preserve original expression_confidence as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `expression_confidence`: Float = 0
  /// @brief Preserve original emotion_anger_confidence as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `emotion_anger_confidence`: Float = 0
  /// @brief Preserve original emotion_disgust_confidence as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `emotion_disgust_confidence`: Float = 0
  /// @brief Preserve original emotion_fear_confidence as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `emotion_fear_confidence`: Float = 0
  /// @brief Preserve original emotion_happiness_confidence as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `emotion_happiness_confidence`: Float = 0
  /// @brief Preserve original emotion_neutral_confidence as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `emotion_neutral_confidence`: Float = 0
  /// @brief Preserve original emotion_sadness_confidence as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `emotion_sadness_confidence`: Float = 0
  /// @brief Preserve original emotion_surprise_confidence as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `emotion_surprise_confidence`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x`)
    try w.integer(self.`y`)
    try w.integer(self.`width`)
    try w.integer(self.`height`)
    try w.boolean(self.`eyesLocated`)
    try w.integer(self.`leftEyeX`)
    try w.integer(self.`leftEyeY`)
    try w.integer(self.`rightEyeX`)
    try w.integer(self.`rightEyeY`)
    try self.`position`.write(to: &w)
    try w.string(self.`name`, bound: 128)
    try w.float32(self.`confidence`)
    try w.string(self.`gender`, bound: 128)
    try w.float32(self.`genderConfidence`)
    try w.string(self.`expression`, bound: 128)
    try w.float32(self.`expression_confidence`)
    try w.float32(self.`emotion_anger_confidence`)
    try w.float32(self.`emotion_disgust_confidence`)
    try w.float32(self.`emotion_fear_confidence`)
    try w.float32(self.`emotion_happiness_confidence`)
    try w.float32(self.`emotion_neutral_confidence`)
    try w.float32(self.`emotion_sadness_confidence`)
    try w.float32(self.`emotion_surprise_confidence`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_detection_msgsFaceDetection {
    var v = Ros1Pal_detection_msgsFaceDetection()
    v.`x` = try r.integer(Int32.self)
    v.`y` = try r.integer(Int32.self)
    v.`width` = try r.integer(Int32.self)
    v.`height` = try r.integer(Int32.self)
    v.`eyesLocated` = try r.boolean()
    v.`leftEyeX` = try r.integer(Int32.self)
    v.`leftEyeY` = try r.integer(Int32.self)
    v.`rightEyeX` = try r.integer(Int32.self)
    v.`rightEyeY` = try r.integer(Int32.self)
    v.`position` = try Ros1Geometry_msgsPoint32.read(from: &r)
    v.`name` = try r.string(bound: 128)
    v.`confidence` = try r.float32()
    v.`gender` = try r.string(bound: 128)
    v.`genderConfidence` = try r.float32()
    v.`expression` = try r.string(bound: 128)
    v.`expression_confidence` = try r.float32()
    v.`emotion_anger_confidence` = try r.float32()
    v.`emotion_disgust_confidence` = try r.float32()
    v.`emotion_fear_confidence` = try r.float32()
    v.`emotion_happiness_confidence` = try r.float32()
    v.`emotion_neutral_confidence` = try r.float32()
    v.`emotion_sadness_confidence` = try r.float32()
    v.`emotion_surprise_confidence` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/FaceDetections.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsFaceDetections: Canonical {
  public static let maximumWireBytes = 2404
  public static let codecIdentity =
    "UWVMROS1_ee4b1061b4a4d0bd25f5f2ae4725248e53c82181ab685036cc246100f6019a4b"
  public static let nativeType = "pal_detection_msgs/FaceDetections"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original faces as pal_detection_msgs/FaceDetection.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `faces`: [Ros1Pal_detection_msgsFaceDetection] = []
  /// @brief Preserve original camera_pose as geometry_msgs/TransformStamped.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `camera_pose`: Ros1Geometry_msgsTransformStamped = Ros1Geometry_msgsTransformStamped()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`faces`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`faces`.count))
    for e in self.`faces` {
      try e.write(to: &w)
    }
    try self.`camera_pose`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_detection_msgsFaceDetections {
    var v = Ros1Pal_detection_msgsFaceDetections()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`faces` = []
    v.`faces`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`faces`.append(try Ros1Pal_detection_msgsFaceDetection.read(from: &r))
    }
    v.`camera_pose` = try Ros1Geometry_msgsTransformStamped.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 sensor_msgs/RegionOfInterest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Sensor_msgsRegionOfInterest: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_28eb54e504fa3d32a4848f5b534e998656e34ce4fee49fd120b0fd729e569c86"
  public static let nativeType = "sensor_msgs/RegionOfInterest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original x_offset as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `x_offset`: UInt32 = 0
  /// @brief Preserve original y_offset as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `y_offset`: UInt32 = 0
  /// @brief Preserve original height as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `height`: UInt32 = 0
  /// @brief Preserve original width as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `width`: UInt32 = 0
  /// @brief Preserve original do_rectify as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `do_rectify`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x_offset`)
    try w.integer(self.`y_offset`)
    try w.integer(self.`height`)
    try w.integer(self.`width`)
    try w.boolean(self.`do_rectify`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsRegionOfInterest {
    var v = Ros1Sensor_msgsRegionOfInterest()
    v.`x_offset` = try r.integer(UInt32.self)
    v.`y_offset` = try r.integer(UInt32.self)
    v.`height` = try r.integer(UInt32.self)
    v.`width` = try r.integer(UInt32.self)
    v.`do_rectify` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/FaceThermalDetections.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsFaceThermalDetections: Canonical {
  public static let maximumWireBytes = 216
  public static let codecIdentity =
    "UWVMROS1_056b2da5537a5a7a7cb428e134dc11c22e271780146febf7af837a516fb9b07d"
  public static let nativeType = "pal_detection_msgs/FaceThermalDetections"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original faces as sensor_msgs/RegionOfInterest.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `faces`: [Ros1Sensor_msgsRegionOfInterest] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`faces`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`faces`.count))
    for e in self.`faces` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsFaceThermalDetections
  {
    var v = Ros1Pal_detection_msgsFaceThermalDetections()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`faces` = []
    v.`faces`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`faces`.append(try Ros1Sensor_msgsRegionOfInterest.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/Gesture.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsGesture: Canonical {
  public static let maximumWireBytes = 300
  public static let codecIdentity =
    "UWVMROS1_d9a3e3adffc40a24a70a967fa616ee81a8d21eb08d7656830e0915cd0945ac38"
  public static let nativeType = "pal_detection_msgs/Gesture"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original gestureId as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `gestureId`: String = ""
  /// @brief Preserve original position3D as geometry_msgs/Point.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position3D`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`gestureId`, bound: 128)
    try self.`position3D`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_detection_msgsGesture {
    var v = Ros1Pal_detection_msgsGesture()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`gestureId` = try r.string(bound: 128)
    v.`position3D` = try Ros1Geometry_msgsPoint.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/LegDetections.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsLegDetections: Canonical {
  public static let maximumWireBytes = 576
  public static let codecIdentity =
    "UWVMROS1_eaaabdd63d786de0b4bf51199a211f86024e9f835ede77f9bcf92dc77f67ac1d"
  public static let nativeType = "pal_detection_msgs/LegDetections"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original position3D as geometry_msgs/Point.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `position3D`: [Ros1Geometry_msgsPoint] = []
  /// @brief Preserve original laser_pose as geometry_msgs/TransformStamped.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `laser_pose`: Ros1Geometry_msgsTransformStamped = Ros1Geometry_msgsTransformStamped()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`position3D`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`position3D`.count))
    for e in self.`position3D` {
      try e.write(to: &w)
    }
    try self.`laser_pose`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_detection_msgsLegDetections {
    var v = Ros1Pal_detection_msgsLegDetections()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`position3D` = []
    v.`position3D`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`position3D`.append(try Ros1Geometry_msgsPoint.read(from: &r))
    }
    v.`laser_pose` = try Ros1Geometry_msgsTransformStamped.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/Obstacle.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsObstacle: Canonical {
  public static let maximumWireBytes = 72
  public static let codecIdentity =
    "UWVMROS1_ebc85fb238f48ed8d9d595afd92f5f28c4ead850154e350733e09ec1d407c661"
  public static let nativeType = "pal_detection_msgs/Obstacle"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original id as int64.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `id`: Int64 = 0
  /// @brief Preserve original position as geometry_msgs/Point.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Preserve original position_covariance as float64.
  /// @details Exactly 4 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position_covariance`: [Double] = Array(repeating: 0, count: 4)
  /// @brief Preserve original width as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `width`: Float = 0
  /// @brief Preserve original height as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `height`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try self.`position`.write(to: &w)
    guard self.`position_covariance`.count == 4 else { throw RosError(22) }
    for e in self.`position_covariance` {
      try w.float64(e)
    }
    try w.float32(self.`width`)
    try w.float32(self.`height`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_detection_msgsObstacle {
    var v = Ros1Pal_detection_msgsObstacle()
    v.`id` = try r.integer(Int64.self)
    v.`position` = try Ros1Geometry_msgsPoint.read(from: &r)
    let count2 = 4
    v.`position_covariance` = []
    v.`position_covariance`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`position_covariance`.append(try r.float64())
    }
    v.`width` = try r.float32()
    v.`height` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/Obstacles.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsObstacles: Canonical {
  public static let maximumWireBytes = 436
  public static let codecIdentity =
    "UWVMROS1_4dba9077149d1e00d54b01031f5de9ef885904c00e2ec10b262302fccb86fe7e"
  public static let nativeType = "pal_detection_msgs/Obstacles"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original obstacles as pal_detection_msgs/Obstacle.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `obstacles`: [Ros1Pal_detection_msgsObstacle] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`obstacles`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`obstacles`.count))
    for e in self.`obstacles` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_detection_msgsObstacles {
    var v = Ros1Pal_detection_msgsObstacles()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`obstacles` = []
    v.`obstacles`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`obstacles`.append(try Ros1Pal_detection_msgsObstacle.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/PersonDetection.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsPersonDetection: Canonical {
  public static let maximumWireBytes = 1257
  public static let codecIdentity =
    "UWVMROS1_4da91c014135c4fc077060bdfdde36f82e41d45729fe56642b33b83157d07853"
  public static let nativeType = "pal_detection_msgs/PersonDetection"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original full_body as pal_detection_msgs/Detection2d.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `full_body`: Ros1Pal_detection_msgsDetection2d = Ros1Pal_detection_msgsDetection2d()
  /// @brief Preserve original face as pal_detection_msgs/FaceDetection.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `face`: Ros1Pal_detection_msgsFaceDetection = Ros1Pal_detection_msgsFaceDetection()
  /// @brief Preserve original legs as pal_detection_msgs/LegDetections.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `legs`: Ros1Pal_detection_msgsLegDetections = Ros1Pal_detection_msgsLegDetections()
  /// @brief Preserve original position3D as geometry_msgs/PointStamped.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position3D`: Ros1Geometry_msgsPointStamped = Ros1Geometry_msgsPointStamped()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`full_body`.write(to: &w)
    try self.`face`.write(to: &w)
    try self.`legs`.write(to: &w)
    try self.`position3D`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_detection_msgsPersonDetection
  {
    var v = Ros1Pal_detection_msgsPersonDetection()
    v.`full_body` = try Ros1Pal_detection_msgsDetection2d.read(from: &r)
    v.`face` = try Ros1Pal_detection_msgsFaceDetection.read(from: &r)
    v.`legs` = try Ros1Pal_detection_msgsLegDetections.read(from: &r)
    v.`position3D` = try Ros1Geometry_msgsPointStamped.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/PersonDetections.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsPersonDetections: Canonical {
  public static let maximumWireBytes = 5508
  public static let codecIdentity =
    "UWVMROS1_cafbf2a5df82057119e9638012e379e0126c0cb951ca159747ebe69c1ed0fd91"
  public static let nativeType = "pal_detection_msgs/PersonDetections"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original persons as pal_detection_msgs/PersonDetection.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `persons`: [Ros1Pal_detection_msgsPersonDetection] = []
  /// @brief Preserve original camera_pose as geometry_msgs/TransformStamped.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `camera_pose`: Ros1Geometry_msgsTransformStamped = Ros1Geometry_msgsTransformStamped()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`persons`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`persons`.count))
    for e in self.`persons` {
      try e.write(to: &w)
    }
    try self.`camera_pose`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_detection_msgsPersonDetections
  {
    var v = Ros1Pal_detection_msgsPersonDetections()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`persons` = []
    v.`persons`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`persons`.append(try Ros1Pal_detection_msgsPersonDetection.read(from: &r))
    }
    v.`camera_pose` = try Ros1Geometry_msgsTransformStamped.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 sensor_msgs/CompressedImage.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Sensor_msgsCompressedImage: Canonical {
  public static let maximumWireBytes = 4376
  public static let codecIdentity =
    "UWVMROS1_c72a32a46b8b10037ccaa32f7c5d403f908eed838df86faf2c7d36344cea958d"
  public static let nativeType = "sensor_msgs/CompressedImage"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original format as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `format`: String = ""
  /// @brief Preserve original data as uint8.
  /// @details At most 4096 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `data`: [UInt8] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`format`, bound: 128)
    guard self.`data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsCompressedImage {
    var v = Ros1Sensor_msgsCompressedImage()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`format` = try r.string(bound: 128)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4096 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`data` = []
    v.`data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/RecognizeObjectsGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsRecognizeObjectsGoal: Canonical {
  public static let maximumWireBytes = 4376
  public static let codecIdentity =
    "UWVMROS1_9d87bc6c703c50a0b900a7d4bdcefeda5363c5b2f9affe4e9466a3b4f6dfc585"
  public static let nativeType = "pal_detection_msgs/RecognizeObjectsGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original input_image as sensor_msgs/CompressedImage.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `input_image`: Ros1Sensor_msgsCompressedImage = Ros1Sensor_msgsCompressedImage()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`input_image`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsRecognizeObjectsGoal
  {
    var v = Ros1Pal_detection_msgsRecognizeObjectsGoal()
    v.`input_image` = try Ros1Sensor_msgsCompressedImage.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/RecognizedObject.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsRecognizedObject: Canonical {
  public static let maximumWireBytes = 153
  public static let codecIdentity =
    "UWVMROS1_36cc36b8ff12ed25b3feadadc7e58a76c1e9c57aaa68b2a295c341c5075203fd"
  public static let nativeType = "pal_detection_msgs/RecognizedObject"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original object_class as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `object_class`: String = ""
  /// @brief Preserve original confidence as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `confidence`: Float = 0
  /// @brief Preserve original bounding_box as sensor_msgs/RegionOfInterest.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `bounding_box`: Ros1Sensor_msgsRegionOfInterest = Ros1Sensor_msgsRegionOfInterest()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`object_class`, bound: 128)
    try w.float32(self.`confidence`)
    try self.`bounding_box`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_detection_msgsRecognizedObject
  {
    var v = Ros1Pal_detection_msgsRecognizedObject()
    v.`object_class` = try r.string(bound: 128)
    v.`confidence` = try r.float32()
    v.`bounding_box` = try Ros1Sensor_msgsRegionOfInterest.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/RecognizedObjectArray.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsRecognizedObjectArray: Canonical {
  public static let maximumWireBytes = 760
  public static let codecIdentity =
    "UWVMROS1_8d781116572e1ba9b5cc79b9d4ae844c64e3ef56a274da3de56cc2400baa51e0"
  public static let nativeType = "pal_detection_msgs/RecognizedObjectArray"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original objects as pal_detection_msgs/RecognizedObject.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `objects`: [Ros1Pal_detection_msgsRecognizedObject] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`objects`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`objects`.count))
    for e in self.`objects` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsRecognizedObjectArray
  {
    var v = Ros1Pal_detection_msgsRecognizedObjectArray()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`objects` = []
    v.`objects`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`objects`.append(try Ros1Pal_detection_msgsRecognizedObject.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/RecognizeObjectsResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsRecognizeObjectsResult: Canonical {
  public static let maximumWireBytes = 5138
  public static let codecIdentity =
    "UWVMROS1_1d30540a71461481094e70b11d19c4a327881fd6ed81689bc948b3de5853b8da"
  public static let nativeType = "pal_detection_msgs/RecognizeObjectsResult"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original image as sensor_msgs/CompressedImage.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `image`: Ros1Sensor_msgsCompressedImage = Ros1Sensor_msgsCompressedImage()
  /// @brief Preserve original num_detections as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `num_detections`: Int16 = 0
  /// @brief Preserve original recognized_objects as pal_detection_msgs/RecognizedObjectArray.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `recognized_objects`: Ros1Pal_detection_msgsRecognizedObjectArray =
    Ros1Pal_detection_msgsRecognizedObjectArray()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`image`.write(to: &w)
    try w.integer(self.`num_detections`)
    try self.`recognized_objects`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsRecognizeObjectsResult
  {
    var v = Ros1Pal_detection_msgsRecognizeObjectsResult()
    v.`image` = try Ros1Sensor_msgsCompressedImage.read(from: &r)
    v.`num_detections` = try r.integer(Int16.self)
    v.`recognized_objects` = try Ros1Pal_detection_msgsRecognizedObjectArray.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/RecognizeObjectsFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsRecognizeObjectsFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c18fdb9db683f1ae2a17cc0a7cdc2bcc3ca060ef0c05cacb4defc35af0829f94"
  public static let nativeType = "pal_detection_msgs/RecognizeObjectsFeedback"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsRecognizeObjectsFeedback
  {
    var v = Ros1Pal_detection_msgsRecognizeObjectsFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/RecognizedActions.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsRecognizedActions: Canonical {
  public static let maximumWireBytes = 2524
  public static let codecIdentity =
    "UWVMROS1_b061282e0a4039af635d355d554c8f93af760ff116dfae31f36535b8b9378c33"
  public static let nativeType = "pal_detection_msgs/RecognizedActions"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original action_name as string.
  /// @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `action_name`: [String] = []
  /// @brief Preserve original u as int64.
  /// @details At most 16 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `u`: [Int64] = []
  /// @brief Preserve original v as int64.
  /// @details At most 16 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `v`: [Int64] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`action_name`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`action_name`.count))
    for e in self.`action_name` {
      try w.string(e, bound: 128)
    }
    guard self.`u`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`u`.count))
    for e in self.`u` {
      try w.integer(e)
    }
    guard self.`v`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`v`.count))
    for e in self.`v` {
      try w.integer(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsRecognizedActions
  {
    var v = Ros1Pal_detection_msgsRecognizedActions()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`action_name` = []
    v.`action_name`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`action_name`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`u` = []
    v.`u`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`u`.append(try r.integer(Int64.self))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`v` = []
    v.`v`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`v`.append(try r.integer(Int64.self))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/RecognizerRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsRecognizerRequest: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_0d3ff43e5e851b33f710c9477383884c1db45971e4959df5892abff59fe29f55"
  public static let nativeType = "pal_detection_msgs/RecognizerRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original enabled as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `enabled`: Bool = false
  /// @brief Preserve original minConfidence as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `minConfidence`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`enabled`)
    try w.float32(self.`minConfidence`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsRecognizerRequest
  {
    var v = Ros1Pal_detection_msgsRecognizerRequest()
    v.`enabled` = try r.boolean()
    v.`minConfidence` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/RecognizerResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsRecognizerResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_604e61f18d602f79b4e5a4145530ded34ac47d7a0ed97185c31457cef365935a"
  public static let nativeType = "pal_detection_msgs/RecognizerResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsRecognizerResponse
  {
    var v = Ros1Pal_detection_msgsRecognizerResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/RotatedDetection2d.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsRotatedDetection2d: Canonical {
  public static let maximumWireBytes = 408
  public static let codecIdentity =
    "UWVMROS1_2f22137d0171356fffb61ee8f668d07f90deadad0f900a2aa83ee0edfde0e52d"
  public static let nativeType = "pal_detection_msgs/RotatedDetection2d"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original x as int64.
  /// @details At most 16 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `x`: [Int64] = []
  /// @brief Preserve original y as int64.
  /// @details At most 16 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `y`: [Int64] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`x`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`x`.count))
    for e in self.`x` {
      try w.integer(e)
    }
    guard self.`y`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`y`.count))
    for e in self.`y` {
      try w.integer(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsRotatedDetection2d
  {
    var v = Ros1Pal_detection_msgsRotatedDetection2d()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`x` = []
    v.`x`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`x`.append(try r.integer(Int64.self))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`y` = []
    v.`y`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`y`.append(try r.integer(Int64.self))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/SelectTexturedObjectRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsSelectTexturedObjectRequest: Canonical {
  public static let maximumWireBytes = 148
  public static let codecIdentity =
    "UWVMROS1_866b10e9fcb4e51c9aa5f5a9b7c9c36cbef544fd685f3cfd77de8a3b759e1004"
  public static let nativeType = "pal_detection_msgs/SelectTexturedObjectRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original imageFullPathFileName as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `imageFullPathFileName`: String = ""
  /// @brief Preserve original width as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `width`: Double = 0
  /// @brief Preserve original height as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `height`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`imageFullPathFileName`, bound: 128)
    try w.float64(self.`width`)
    try w.float64(self.`height`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsSelectTexturedObjectRequest
  {
    var v = Ros1Pal_detection_msgsSelectTexturedObjectRequest()
    v.`imageFullPathFileName` = try r.string(bound: 128)
    v.`width` = try r.float64()
    v.`height` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/SelectTexturedObjectResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsSelectTexturedObjectResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_98857d1de78a0b8014ea0dfd0597f41b908869229b1ef9d815a983571180db22"
  public static let nativeType = "pal_detection_msgs/SelectTexturedObjectResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original result as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `result`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsSelectTexturedObjectResponse
  {
    var v = Ros1Pal_detection_msgsSelectTexturedObjectResponse()
    v.`result` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/SetDatabaseRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsSetDatabaseRequest: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_fa4b3a519fcae8b8ac43d6e764203d720939a001c7f572e43e03c2f64904308b"
  public static let nativeType = "pal_detection_msgs/SetDatabaseRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original databaseName as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `databaseName`: String = ""
  /// @brief Preserve original purgeAll as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `purgeAll`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`databaseName`, bound: 128)
    try w.boolean(self.`purgeAll`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsSetDatabaseRequest
  {
    var v = Ros1Pal_detection_msgsSetDatabaseRequest()
    v.`databaseName` = try r.string(bound: 128)
    v.`purgeAll` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/SetDatabaseResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsSetDatabaseResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_31307d8d81296f69a5bb7dbd54bc10aea47a41b1d1458b6d5451d53bdc2f9b46"
  public static let nativeType = "pal_detection_msgs/SetDatabaseResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsSetDatabaseResponse
  {
    var v = Ros1Pal_detection_msgsSetDatabaseResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/StartEnrollmentRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsStartEnrollmentRequest: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_d1175a40ec4050b7d53f0929d9fb9ca6d33155c6df2295082e159db96e2fa7d8"
  public static let nativeType = "pal_detection_msgs/StartEnrollmentRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsStartEnrollmentRequest
  {
    var v = Ros1Pal_detection_msgsStartEnrollmentRequest()
    v.`name` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/StartEnrollmentResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsStartEnrollmentResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_7d24b04c596d75db09309a7244e275e5980344aaf020f91a44bef100927d5b62"
  public static let nativeType = "pal_detection_msgs/StartEnrollmentResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original result as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `result`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsStartEnrollmentResponse
  {
    var v = Ros1Pal_detection_msgsStartEnrollmentResponse()
    v.`result` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/StopEnrollmentRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsStopEnrollmentRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_627511d9388c67421ccbd8f1928ec5a7e87ad1cc19f0e6b69b4be089ea69d3df"
  public static let nativeType = "pal_detection_msgs/StopEnrollmentRequest"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsStopEnrollmentRequest
  {
    var v = Ros1Pal_detection_msgsStopEnrollmentRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/StopEnrollmentResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsStopEnrollmentResponse: Canonical {
  public static let maximumWireBytes = 137
  public static let codecIdentity =
    "UWVMROS1_30384a8e564b227756bc3e778edf7d0a0b60440baf8e966352600b15b1a9a1aa"
  public static let nativeType = "pal_detection_msgs/StopEnrollmentResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original enrollment_ok as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `enrollment_ok`: Bool = false
  /// @brief Preserve original numFacesEnrolled as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `numFacesEnrolled`: Int32 = 0
  /// @brief Preserve original error_msg as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `error_msg`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`enrollment_ok`)
    try w.integer(self.`numFacesEnrolled`)
    try w.string(self.`error_msg`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsStopEnrollmentResponse
  {
    var v = Ros1Pal_detection_msgsStopEnrollmentResponse()
    v.`enrollment_ok` = try r.boolean()
    v.`numFacesEnrolled` = try r.integer(Int32.self)
    v.`error_msg` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/TexturedObjectDetection.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsTexturedObjectDetection: Canonical {
  public static let maximumWireBytes = 4928
  public static let codecIdentity =
    "UWVMROS1_4a13d12a14db4a3f8883d2bd66317d4b50bd2246fde7de5cdc966d4d35cff204"
  public static let nativeType = "pal_detection_msgs/TexturedObjectDetection"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original img as sensor_msgs/CompressedImage.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `img`: Ros1Sensor_msgsCompressedImage = Ros1Sensor_msgsCompressedImage()
  /// @brief Preserve original roi as pal_detection_msgs/RotatedDetection2d.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `roi`: Ros1Pal_detection_msgsRotatedDetection2d =
    Ros1Pal_detection_msgsRotatedDetection2d()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`img`.write(to: &w)
    try self.`roi`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_detection_msgsTexturedObjectDetection
  {
    var v = Ros1Pal_detection_msgsTexturedObjectDetection()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`img` = try Ros1Sensor_msgsCompressedImage.read(from: &r)
    v.`roi` = try Ros1Pal_detection_msgsRotatedDetection2d.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_detection_msgs/WaveDetection.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_detection_msgsWaveDetection: Canonical {
  public static let maximumWireBytes = 147
  public static let codecIdentity =
    "UWVMROS1_9c121f0ad95f8e28a13b1b7b80c32f0cea55b737edccf63fe92908ed806db52e"
  public static let nativeType = "pal_detection_msgs/WaveDetection"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original wave as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `wave`: Bool = false
  /// @brief Preserve original u as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `u`: Int8 = 0
  /// @brief Preserve original v as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `v`: Int8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.boolean(self.`wave`)
    try w.integer(self.`u`)
    try w.integer(self.`v`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_detection_msgsWaveDetection {
    var v = Ros1Pal_detection_msgsWaveDetection()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`wave` = try r.boolean()
    v.`u` = try r.integer(Int8.self)
    v.`v` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/BatteryState.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsBatteryState: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_0c5a63bef9a7aa5a22424277d8d442de7b2330cb3c61e80548dae5a58d70527b"
  public static let nativeType = "pal_device_msgs/BatteryState"
  public static let nativeIdentity: String? = nil
  public static let `FULL`: Int8 = 5
  public static let `HIGH`: Int8 = 4
  public static let `MEDIUM`: Int8 = 3
  public static let `LOW`: Int8 = 2
  public static let `CRITICAL_LOW`: Int8 = 1
  /// @brief Preserve original chargeState as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `chargeState`: Int8 = 0
  /// @brief Preserve original batteryPercentage as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `batteryPercentage`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`chargeState`)
    try w.float32(self.`batteryPercentage`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_device_msgsBatteryState {
    var v = Ros1Pal_device_msgsBatteryState()
    v.`chargeState` = try r.integer(Int8.self)
    v.`batteryPercentage` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/Bumper.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsBumper: Canonical {
  public static let maximumWireBytes = 145
  public static let codecIdentity =
    "UWVMROS1_696d3699d4b707663768df69acccade49e0108ed6d1c91b87fc260cc5c6b8ac9"
  public static let nativeType = "pal_device_msgs/Bumper"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original is_pressed as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `is_pressed`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.boolean(self.`is_pressed`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_device_msgsBumper {
    var v = Ros1Pal_device_msgsBumper()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`is_pressed` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/CancelEffectRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsCancelEffectRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7d1029daaad94f262487491600881e1ec56b29b7f743652b46315b80b9aa4929"
  public static let nativeType = "pal_device_msgs/CancelEffectRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original effectId as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effectId`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`effectId`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_device_msgsCancelEffectRequest
  {
    var v = Ros1Pal_device_msgsCancelEffectRequest()
    v.`effectId` = try r.integer(UInt32.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/CancelEffectResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsCancelEffectResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_5dc811711832b14077af8da7c5a7e5f0813f3428a12e5b4bb80467571f7b9360"
  public static let nativeType = "pal_device_msgs/CancelEffectResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsCancelEffectResponse
  {
    var v = Ros1Pal_device_msgsCancelEffectResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 std_msgs/ColorRGBA.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Std_msgsColorRGBA: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_2c956a9dd28dc999fc04f9704e68021ae940136f6c54d151975792a9344da90d"
  public static let nativeType = "std_msgs/ColorRGBA"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original r as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `r`: Float = 0
  /// @brief Preserve original g as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `g`: Float = 0
  /// @brief Preserve original b as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `b`: Float = 0
  /// @brief Preserve original a as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `a`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`r`)
    try w.float32(self.`g`)
    try w.float32(self.`b`)
    try w.float32(self.`a`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsColorRGBA {
    var v = Ros1Std_msgsColorRGBA()
    v.`r` = try r.float32()
    v.`g` = try r.float32()
    v.`b` = try r.float32()
    v.`a` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/LedFixedColorParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsLedFixedColorParams: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_48ff1292535293f3a3e5e93e2650ea8e949f01c38fa5344e83f3c101d79dab2b"
  public static let nativeType = "pal_device_msgs/LedFixedColorParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original color as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `color`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`color`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_device_msgsLedFixedColorParams
  {
    var v = Ros1Pal_device_msgsLedFixedColorParams()
    v.`color` = try Ros1Std_msgsColorRGBA.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/LedRainbowParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsLedRainbowParams: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_78566593a51307fafdf358be01818b05b93bb22cb9c56241ca9ed3ab99e45ef9"
  public static let nativeType = "pal_device_msgs/LedRainbowParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original transition_duration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `transition_duration`: Ros1Duration = Ros1Duration()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`transition_duration`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_device_msgsLedRainbowParams {
    var v = Ros1Pal_device_msgsLedRainbowParams()
    v.`transition_duration` = try Ros1Duration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/LedFadeParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsLedFadeParams: Canonical {
  public static let maximumWireBytes = 41
  public static let codecIdentity =
    "UWVMROS1_ef4e86603f7f13e7595cb43ee879ad87ce8cb2b77c4fbf918b930066bdf88e6f"
  public static let nativeType = "pal_device_msgs/LedFadeParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original first_color as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original second_color as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original transition_duration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `transition_duration`: Ros1Duration = Ros1Duration()
  /// @brief Preserve original reverse_fade as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `reverse_fade`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`first_color`.write(to: &w)
    try self.`second_color`.write(to: &w)
    try self.`transition_duration`.write(to: &w)
    try w.boolean(self.`reverse_fade`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_device_msgsLedFadeParams {
    var v = Ros1Pal_device_msgsLedFadeParams()
    v.`first_color` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`second_color` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`transition_duration` = try Ros1Duration.read(from: &r)
    v.`reverse_fade` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/LedBlinkParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsLedBlinkParams: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_d8d4df17343bdef6d9ab19c2127c2375e0b97160517c8a59a5b4dc8967c250e2"
  public static let nativeType = "pal_device_msgs/LedBlinkParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original first_color as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original second_color as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original first_color_duration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color_duration`: Ros1Duration = Ros1Duration()
  /// @brief Preserve original second_color_duration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color_duration`: Ros1Duration = Ros1Duration()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`first_color`.write(to: &w)
    try self.`second_color`.write(to: &w)
    try self.`first_color_duration`.write(to: &w)
    try self.`second_color_duration`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_device_msgsLedBlinkParams {
    var v = Ros1Pal_device_msgsLedBlinkParams()
    v.`first_color` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`second_color` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`first_color_duration` = try Ros1Duration.read(from: &r)
    v.`second_color_duration` = try Ros1Duration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/LedProgressParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsLedProgressParams: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_e16b3b7d1c4a997f806a4e5bd67f150f947c0f06c0e1e810e34006d010a3b85e"
  public static let nativeType = "pal_device_msgs/LedProgressParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original first_color as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original second_color as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original percentage as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `percentage`: Float = 0
  /// @brief Preserve original led_offset as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `led_offset`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`first_color`.write(to: &w)
    try self.`second_color`.write(to: &w)
    try w.float32(self.`percentage`)
    try w.float32(self.`led_offset`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_device_msgsLedProgressParams {
    var v = Ros1Pal_device_msgsLedProgressParams()
    v.`first_color` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`second_color` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`percentage` = try r.float32()
    v.`led_offset` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/LedFlowParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsLedFlowParams: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_b056dfced68aebfe2fda868b0d012ff75254be3787cf16f83a3ed939d7647aa7"
  public static let nativeType = "pal_device_msgs/LedFlowParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original first_color as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original second_color as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original percentage as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `percentage`: Float = 0
  /// @brief Preserve original velocity as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `velocity`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`first_color`.write(to: &w)
    try self.`second_color`.write(to: &w)
    try w.float32(self.`percentage`)
    try w.float32(self.`velocity`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_device_msgsLedFlowParams {
    var v = Ros1Pal_device_msgsLedFlowParams()
    v.`first_color` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`second_color` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`percentage` = try r.float32()
    v.`velocity` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/LedPreProgrammedParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsLedPreProgrammedParams: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_86d21feddc513d20ae7c9772636027d56ce7244e56b18d7f4a6814eb246e2f1c"
  public static let nativeType = "pal_device_msgs/LedPreProgrammedParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original preprogrammed_id as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `preprogrammed_id`: UInt8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`preprogrammed_id`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsLedPreProgrammedParams
  {
    var v = Ros1Pal_device_msgsLedPreProgrammedParams()
    v.`preprogrammed_id` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/LedEffectViaTopicParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsLedEffectViaTopicParams: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_0ecb4f17c68f4e0dc1d682a09e40c4177a0f568e4465b5810b8371e8dc544042"
  public static let nativeType = "pal_device_msgs/LedEffectViaTopicParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original topic_name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `topic_name`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`topic_name`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsLedEffectViaTopicParams
  {
    var v = Ros1Pal_device_msgsLedEffectViaTopicParams()
    v.`topic_name` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/LedDataArrayParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsLedDataArrayParams: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_edd98b3ea577b8bb6bc3e66afcf900c719fe0b3e964a636f0e87b5bf1f7fe56a"
  public static let nativeType = "pal_device_msgs/LedDataArrayParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original data as std_msgs/ColorRGBA.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `data`: [Ros1Std_msgsColorRGBA] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`data`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_device_msgsLedDataArrayParams
  {
    var v = Ros1Pal_device_msgsLedDataArrayParams()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 4 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`data` = []
    v.`data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`data`.append(try Ros1Std_msgsColorRGBA.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/LedEffectParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsLedEffectParams: Canonical {
  public static let maximumWireBytes = 395
  public static let codecIdentity =
    "UWVMROS1_c2d7568c4d0e241b555b76b29424dc46d72587421f5c2e0647204b792b9b17a6"
  public static let nativeType = "pal_device_msgs/LedEffectParams"
  public static let nativeIdentity: String? = nil
  public static let `FIXED_COLOR`: UInt8 = 0
  public static let `RAINBOW`: UInt8 = 1
  public static let `FADE`: UInt8 = 2
  public static let `BLINK`: UInt8 = 3
  public static let `PROGRESS`: UInt8 = 4
  public static let `FLOW`: UInt8 = 5
  public static let `PREPROGRAMMED_EFFECT`: UInt8 = 6
  public static let `EFFECT_VIA_TOPIC`: UInt8 = 7
  public static let `DATA_ARRAY`: UInt8 = 8
  /// @brief Preserve original effectType as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effectType`: UInt8 = 0
  /// @brief Preserve original fixed_color as pal_device_msgs/LedFixedColorParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `fixed_color`: Ros1Pal_device_msgsLedFixedColorParams =
    Ros1Pal_device_msgsLedFixedColorParams()
  /// @brief Preserve original rainbow as pal_device_msgs/LedRainbowParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `rainbow`: Ros1Pal_device_msgsLedRainbowParams = Ros1Pal_device_msgsLedRainbowParams()
  /// @brief Preserve original fade as pal_device_msgs/LedFadeParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `fade`: Ros1Pal_device_msgsLedFadeParams = Ros1Pal_device_msgsLedFadeParams()
  /// @brief Preserve original blink as pal_device_msgs/LedBlinkParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `blink`: Ros1Pal_device_msgsLedBlinkParams = Ros1Pal_device_msgsLedBlinkParams()
  /// @brief Preserve original progress as pal_device_msgs/LedProgressParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `progress`: Ros1Pal_device_msgsLedProgressParams =
    Ros1Pal_device_msgsLedProgressParams()
  /// @brief Preserve original flow as pal_device_msgs/LedFlowParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `flow`: Ros1Pal_device_msgsLedFlowParams = Ros1Pal_device_msgsLedFlowParams()
  /// @brief Preserve original preprogrammed as pal_device_msgs/LedPreProgrammedParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `preprogrammed`: Ros1Pal_device_msgsLedPreProgrammedParams =
    Ros1Pal_device_msgsLedPreProgrammedParams()
  /// @brief Preserve original effect_via_topic as pal_device_msgs/LedEffectViaTopicParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effect_via_topic`: Ros1Pal_device_msgsLedEffectViaTopicParams =
    Ros1Pal_device_msgsLedEffectViaTopicParams()
  /// @brief Preserve original data_array as pal_device_msgs/LedDataArrayParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `data_array`: Ros1Pal_device_msgsLedDataArrayParams =
    Ros1Pal_device_msgsLedDataArrayParams()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`effectType`)
    try self.`fixed_color`.write(to: &w)
    try self.`rainbow`.write(to: &w)
    try self.`fade`.write(to: &w)
    try self.`blink`.write(to: &w)
    try self.`progress`.write(to: &w)
    try self.`flow`.write(to: &w)
    try self.`preprogrammed`.write(to: &w)
    try self.`effect_via_topic`.write(to: &w)
    try self.`data_array`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_device_msgsLedEffectParams {
    var v = Ros1Pal_device_msgsLedEffectParams()
    v.`effectType` = try r.integer(UInt8.self)
    v.`fixed_color` = try Ros1Pal_device_msgsLedFixedColorParams.read(from: &r)
    v.`rainbow` = try Ros1Pal_device_msgsLedRainbowParams.read(from: &r)
    v.`fade` = try Ros1Pal_device_msgsLedFadeParams.read(from: &r)
    v.`blink` = try Ros1Pal_device_msgsLedBlinkParams.read(from: &r)
    v.`progress` = try Ros1Pal_device_msgsLedProgressParams.read(from: &r)
    v.`flow` = try Ros1Pal_device_msgsLedFlowParams.read(from: &r)
    v.`preprogrammed` = try Ros1Pal_device_msgsLedPreProgrammedParams.read(from: &r)
    v.`effect_via_topic` = try Ros1Pal_device_msgsLedEffectViaTopicParams.read(from: &r)
    v.`data_array` = try Ros1Pal_device_msgsLedDataArrayParams.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/DoTimedLedEffectGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsDoTimedLedEffectGoal: Canonical {
  public static let maximumWireBytes = 472
  public static let codecIdentity =
    "UWVMROS1_683df32baf5dae0e44c1f7345d0867d5f68ae493d0652b44b314e8d6d348b7dc"
  public static let nativeType = "pal_device_msgs/DoTimedLedEffectGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original devices as uint32.
  /// @details At most 16 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `devices`: [UInt32] = []
  /// @brief Preserve original params as pal_device_msgs/LedEffectParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `params`: Ros1Pal_device_msgsLedEffectParams = Ros1Pal_device_msgsLedEffectParams()
  /// @brief Preserve original effectDuration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effectDuration`: Ros1Duration = Ros1Duration()
  /// @brief Preserve original priority as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `priority`: UInt8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`devices`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`devices`.count))
    for e in self.`devices` {
      try w.integer(e)
    }
    try self.`params`.write(to: &w)
    try self.`effectDuration`.write(to: &w)
    try w.integer(self.`priority`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsDoTimedLedEffectGoal
  {
    var v = Ros1Pal_device_msgsDoTimedLedEffectGoal()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`devices` = []
    v.`devices`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`devices`.append(try r.integer(UInt32.self))
    }
    v.`params` = try Ros1Pal_device_msgsLedEffectParams.read(from: &r)
    v.`effectDuration` = try Ros1Duration.read(from: &r)
    v.`priority` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/DoTimedLedEffectResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsDoTimedLedEffectResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b23c6e239b4bf2ca3810eeb253d87a1e834c8ccb4b3c0c473cb4097aa3456be8"
  public static let nativeType = "pal_device_msgs/DoTimedLedEffectResult"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsDoTimedLedEffectResult
  {
    var v = Ros1Pal_device_msgsDoTimedLedEffectResult()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/DoTimedLedEffectFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsDoTimedLedEffectFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_75ad5b9ac229b54a0b9883961cf275a9c11a0dd4c7761913326a8df0aea182f6"
  public static let nativeType = "pal_device_msgs/DoTimedLedEffectFeedback"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsDoTimedLedEffectFeedback
  {
    var v = Ros1Pal_device_msgsDoTimedLedEffectFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/LedGroup.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsLedGroup: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d28d4258c918d58634c62cd20e417ca06734a5a2de8516b65663a9a3be82b008"
  public static let nativeType = "pal_device_msgs/LedGroup"
  public static let nativeIdentity: String? = nil
  public static let `LEFT_EAR`: Int8 = 1
  public static let `RIGHT_EAR`: Int8 = 2
  /// @brief Preserve original ledMask as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ledMask`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ledMask`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_device_msgsLedGroup {
    var v = Ros1Pal_device_msgsLedGroup()
    v.`ledMask` = try r.integer(UInt32.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/ShutdownAndWakeUpRobotRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_e4fee1d5bb74578f009ac582242bf11237d0af2a1b8ff57b750e74dd338e3cbf"
  public static let nativeType = "pal_device_msgs/ShutdownAndWakeUpRobotRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original shutdown_duration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `shutdown_duration`: Ros1Duration = Ros1Duration()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`shutdown_duration`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest
  {
    var v = Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest()
    v.`shutdown_duration` = try Ros1Duration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/ShutdownAndWakeUpRobotResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e4d1f2b350c53536e168ee2b8b51f439084939dd2ff14769152d99d52f16c3a8"
  public static let nativeType = "pal_device_msgs/ShutdownAndWakeUpRobotResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse
  {
    var v = Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/TimedBlinkEffectRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsTimedBlinkEffectRequest: Canonical {
  public static let maximumWireBytes = 61
  public static let codecIdentity =
    "UWVMROS1_8ec92359735c7aabcb8896987a538b39e66996ae82805fb82e0dfc6099bd2fb9"
  public static let nativeType = "pal_device_msgs/TimedBlinkEffectRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original leds as pal_device_msgs/LedGroup.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `leds`: Ros1Pal_device_msgsLedGroup = Ros1Pal_device_msgsLedGroup()
  /// @brief Preserve original firstColor as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `firstColor`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original secondColor as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `secondColor`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original firstColorDuration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `firstColorDuration`: Ros1Duration = Ros1Duration()
  /// @brief Preserve original secondColorDuration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `secondColorDuration`: Ros1Duration = Ros1Duration()
  /// @brief Preserve original effectDuration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effectDuration`: Ros1Duration = Ros1Duration()
  /// @brief Preserve original priority as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `priority`: UInt8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`leds`.write(to: &w)
    try self.`firstColor`.write(to: &w)
    try self.`secondColor`.write(to: &w)
    try self.`firstColorDuration`.write(to: &w)
    try self.`secondColorDuration`.write(to: &w)
    try self.`effectDuration`.write(to: &w)
    try w.integer(self.`priority`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsTimedBlinkEffectRequest
  {
    var v = Ros1Pal_device_msgsTimedBlinkEffectRequest()
    v.`leds` = try Ros1Pal_device_msgsLedGroup.read(from: &r)
    v.`firstColor` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`secondColor` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`firstColorDuration` = try Ros1Duration.read(from: &r)
    v.`secondColorDuration` = try Ros1Duration.read(from: &r)
    v.`effectDuration` = try Ros1Duration.read(from: &r)
    v.`priority` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/TimedBlinkEffectResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsTimedBlinkEffectResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_40ddabd6ab74343f2fd4be29e2987fcd382376d3d5f1873220524f47667b00bd"
  public static let nativeType = "pal_device_msgs/TimedBlinkEffectResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original effectId as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effectId`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`effectId`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsTimedBlinkEffectResponse
  {
    var v = Ros1Pal_device_msgsTimedBlinkEffectResponse()
    v.`effectId` = try r.integer(UInt32.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/TimedColourEffectRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsTimedColourEffectRequest: Canonical {
  public static let maximumWireBytes = 29
  public static let codecIdentity =
    "UWVMROS1_ad05e8c9bbc7cececa0735b5828b81adcd042b7e738f346ffa758407cd20ded3"
  public static let nativeType = "pal_device_msgs/TimedColourEffectRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original leds as pal_device_msgs/LedGroup.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `leds`: Ros1Pal_device_msgsLedGroup = Ros1Pal_device_msgsLedGroup()
  /// @brief Preserve original color as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `color`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original effectDuration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effectDuration`: Ros1Duration = Ros1Duration()
  /// @brief Preserve original priority as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `priority`: UInt8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`leds`.write(to: &w)
    try self.`color`.write(to: &w)
    try self.`effectDuration`.write(to: &w)
    try w.integer(self.`priority`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsTimedColourEffectRequest
  {
    var v = Ros1Pal_device_msgsTimedColourEffectRequest()
    v.`leds` = try Ros1Pal_device_msgsLedGroup.read(from: &r)
    v.`color` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`effectDuration` = try Ros1Duration.read(from: &r)
    v.`priority` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/TimedColourEffectResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsTimedColourEffectResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2fe607c0e0a960342b47148f85c8d887b4fe51b065e05529cf540260890f9484"
  public static let nativeType = "pal_device_msgs/TimedColourEffectResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original effectId as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effectId`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`effectId`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsTimedColourEffectResponse
  {
    var v = Ros1Pal_device_msgsTimedColourEffectResponse()
    v.`effectId` = try r.integer(UInt32.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/TimedFadeEffectRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsTimedFadeEffectRequest: Canonical {
  public static let maximumWireBytes = 54
  public static let codecIdentity =
    "UWVMROS1_a23170818bde569a005dff556b11553e7973cb7e8c126a5fd292daca2dafe458"
  public static let nativeType = "pal_device_msgs/TimedFadeEffectRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original leds as pal_device_msgs/LedGroup.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `leds`: Ros1Pal_device_msgsLedGroup = Ros1Pal_device_msgsLedGroup()
  /// @brief Preserve original firstColor as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `firstColor`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original secondColor as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `secondColor`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original colorChangeDuration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `colorChangeDuration`: Ros1Duration = Ros1Duration()
  /// @brief Preserve original reverseFade as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `reverseFade`: Bool = false
  /// @brief Preserve original effectDuration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effectDuration`: Ros1Duration = Ros1Duration()
  /// @brief Preserve original priority as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `priority`: UInt8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`leds`.write(to: &w)
    try self.`firstColor`.write(to: &w)
    try self.`secondColor`.write(to: &w)
    try self.`colorChangeDuration`.write(to: &w)
    try w.boolean(self.`reverseFade`)
    try self.`effectDuration`.write(to: &w)
    try w.integer(self.`priority`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsTimedFadeEffectRequest
  {
    var v = Ros1Pal_device_msgsTimedFadeEffectRequest()
    v.`leds` = try Ros1Pal_device_msgsLedGroup.read(from: &r)
    v.`firstColor` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`secondColor` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`colorChangeDuration` = try Ros1Duration.read(from: &r)
    v.`reverseFade` = try r.boolean()
    v.`effectDuration` = try Ros1Duration.read(from: &r)
    v.`priority` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_device_msgs/TimedFadeEffectResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_device_msgsTimedFadeEffectResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_75811f0336a7e87b571ddbdb8a062b120b60b4b142c63e7af328fe9c4ea9ae15"
  public static let nativeType = "pal_device_msgs/TimedFadeEffectResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original effectId as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effectId`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`effectId`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_device_msgsTimedFadeEffectResponse
  {
    var v = Ros1Pal_device_msgsTimedFadeEffectResponse()
    v.`effectId` = try r.integer(UInt32.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/ASRActivation.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsASRActivation: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_30f9e3f26cd145518ec1957bab9ca45f4cbe4ac25f82c8853ad1997bad1fdda7"
  public static let nativeType = "pal_interaction_msgs/ASRActivation"
  public static let nativeIdentity: String? = nil
  public static let `ACTIVATE`: Int8 = 1
  public static let `DEACTIVATE`: Int8 = 2
  public static let `PAUSE`: Int8 = 3
  public static let `RESUME`: Int8 = 4
  public static let `CALIBRATE`: Int8 = 5
  /// @brief Preserve original action as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `action`: Int8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`action`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsASRActivation
  {
    var v = Ros1Pal_interaction_msgsASRActivation()
    v.`action` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/actiontag.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsActiontag: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_bd76d0c6a24ccccf66c8723e96bdb0bacf4b9f89fd569482dbb05b8c3a0e7a08"
  public static let nativeType = "pal_interaction_msgs/actiontag"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original key as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `key`: String = ""
  /// @brief Preserve original value as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `value`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`key`, bound: 128)
    try w.string(self.`value`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsActiontag {
    var v = Ros1Pal_interaction_msgsActiontag()
    v.`key` = try r.string(bound: 128)
    v.`value` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/asrresult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsAsrresult: Canonical {
  public static let maximumWireBytes = 1209
  public static let codecIdentity =
    "UWVMROS1_b259acfd1ed092ec360582155843297af7f18152debe9cfae0573c695f271058"
  public static let nativeType = "pal_interaction_msgs/asrresult"
  public static let nativeIdentity: String? = nil
  public static let `CONFIDENCE_UNDEFINED`: Int8 = -1
  public static let `CONFIDENCE_POOR`: Int8 = 1
  public static let `CONFIDENCE_LOW`: Int8 = 2
  public static let `CONFIDENCE_GOOD`: Int8 = 3
  public static let `CONFIDENCE_MAX`: Int8 = 4
  /// @brief Preserve original text as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `text`: String = ""
  /// @brief Preserve original confidence as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `confidence`: Int8 = 0
  /// @brief Preserve original start as time.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `start`: Ros1Time = Ros1Time()
  /// @brief Preserve original end as time.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `end`: Ros1Time = Ros1Time()
  /// @brief Preserve original tags as pal_interaction_msgs/actiontag.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `tags`: [Ros1Pal_interaction_msgsActiontag] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`text`, bound: 128)
    try w.integer(self.`confidence`)
    try self.`start`.write(to: &w)
    try self.`end`.write(to: &w)
    guard self.`tags`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`tags`.count))
    for e in self.`tags` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsAsrresult {
    var v = Ros1Pal_interaction_msgsAsrresult()
    v.`text` = try r.string(bound: 128)
    v.`confidence` = try r.integer(Int8.self)
    v.`start` = try Ros1Time.read(from: &r)
    v.`end` = try Ros1Time.read(from: &r)
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 4 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`tags` = []
    v.`tags`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`tags`.append(try Ros1Pal_interaction_msgsActiontag.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/ASREvent.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsASREvent: Canonical {
  public static let maximumWireBytes = 1212
  public static let codecIdentity =
    "UWVMROS1_459ea9c0c0a993881cc4189329bc42ae244d6133b8d3ae789206dbc4655a0926"
  public static let nativeType = "pal_interaction_msgs/ASREvent"
  public static let nativeIdentity: String? = nil
  public static let `EVENT_UNDEFINED`: Int8 = -1
  public static let `EVENT_LISTEN_STATE`: Int8 = 1
  public static let `EVENT_RECOGNIZED_UTT`: Int8 = 2
  public static let `EVENT_ASR_ACTIVATION`: Int8 = 3
  public static let `EVENT_FAILED_DECODING`: Int8 = 4
  public static let `LISTEN_UNDEFINED`: Int8 = 20
  public static let `LISTEN_CALIBRATION`: Int8 = 21
  public static let `LISTEN_WAITING_FOR_SPEECH`: Int8 = 22
  public static let `LISTEN_SPEECH_DETECTED`: Int8 = 23
  public static let `LISTEN_END_OF_SPEECH`: Int8 = 24
  /// @brief Preserve original event_id as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `event_id`: Int8 = 0
  /// @brief Preserve original listen_state as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `listen_state`: Int8 = 0
  /// @brief Preserve original recognized_utterance as pal_interaction_msgs/asrresult.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `recognized_utterance`: Ros1Pal_interaction_msgsAsrresult =
    Ros1Pal_interaction_msgsAsrresult()
  /// @brief Preserve original active as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `active`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`event_id`)
    try w.integer(self.`listen_state`)
    try self.`recognized_utterance`.write(to: &w)
    try w.boolean(self.`active`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsASREvent {
    var v = Ros1Pal_interaction_msgsASREvent()
    v.`event_id` = try r.integer(Int8.self)
    v.`listen_state` = try r.integer(Int8.self)
    v.`recognized_utterance` = try Ros1Pal_interaction_msgsAsrresult.read(from: &r)
    v.`active` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/ASRFileGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsASRFileGoal: Canonical {
  public static let maximumWireBytes = 396
  public static let codecIdentity =
    "UWVMROS1_9ccba4b3d861d0e759312bec211e5f198eb11bd3838088906a7cba85ab56dd35"
  public static let nativeType = "pal_interaction_msgs/ASRFileGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original file as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `file`: String = ""
  /// @brief Preserve original lang_id as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `lang_id`: String = ""
  /// @brief Preserve original grammar as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `grammar`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`file`, bound: 128)
    try w.string(self.`lang_id`, bound: 128)
    try w.string(self.`grammar`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsASRFileGoal {
    var v = Ros1Pal_interaction_msgsASRFileGoal()
    v.`file` = try r.string(bound: 128)
    v.`lang_id` = try r.string(bound: 128)
    v.`grammar` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/ASRFileResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsASRFileResult: Canonical {
  public static let maximumWireBytes = 5104
  public static let codecIdentity =
    "UWVMROS1_8fef2b5f288de2136bf3d58eca596fcb8d41c43e0eb428d5fac61cc0dfdc9db2"
  public static let nativeType = "pal_interaction_msgs/ASRFileResult"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original file as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `file`: String = ""
  /// @brief Preserve original msg as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `msg`: String = ""
  /// @brief Preserve original recognised_utterances as pal_interaction_msgs/asrresult.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `recognised_utterances`: [Ros1Pal_interaction_msgsAsrresult] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`file`, bound: 128)
    try w.string(self.`msg`, bound: 128)
    guard self.`recognised_utterances`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`recognised_utterances`.count))
    for e in self.`recognised_utterances` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsASRFileResult
  {
    var v = Ros1Pal_interaction_msgsASRFileResult()
    v.`file` = try r.string(bound: 128)
    v.`msg` = try r.string(bound: 128)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`recognised_utterances` = []
    v.`recognised_utterances`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`recognised_utterances`.append(try Ros1Pal_interaction_msgsAsrresult.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/ASRFileFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsASRFileFeedback: Canonical {
  public static let maximumWireBytes = 1209
  public static let codecIdentity =
    "UWVMROS1_c5a53add76fa297f74af24e0ecb0d3dc68b3ce85eaecdff21a26a7441e2ad9c3"
  public static let nativeType = "pal_interaction_msgs/ASRFileFeedback"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original recognised_utterance as pal_interaction_msgs/asrresult.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `recognised_utterance`: Ros1Pal_interaction_msgsAsrresult =
    Ros1Pal_interaction_msgsAsrresult()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`recognised_utterance`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsASRFileFeedback
  {
    var v = Ros1Pal_interaction_msgsASRFileFeedback()
    v.`recognised_utterance` = try Ros1Pal_interaction_msgsAsrresult.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/ASRLangModelMngmt.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsASRLangModelMngmt: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_9ef368d2c72d86f541952fd520429be4998fd28e46c32da1d60edc1cd63c3b09"
  public static let nativeType = "pal_interaction_msgs/ASRLangModelMngmt"
  public static let nativeIdentity: String? = nil
  public static let `ENABLE`: Int8 = 1
  public static let `DISABLE`: Int8 = 2
  public static let `LOAD`: Int8 = 3
  public static let `UNLOAD`: Int8 = 4
  /// @brief Preserve original action as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `action`: Int8 = 0
  /// @brief Preserve original modelName as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `modelName`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`action`)
    try w.string(self.`modelName`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsASRLangModelMngmt
  {
    var v = Ros1Pal_interaction_msgsASRLangModelMngmt()
    v.`action` = try r.integer(Int8.self)
    v.`modelName` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/ASRLanguage.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsASRLanguage: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_227aee498814954d3800e631b8dce3a5fd3d22dc5437ec24b03b5f8cc48000eb"
  public static let nativeType = "pal_interaction_msgs/ASRLanguage"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original language as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `language`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`language`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsASRLanguage {
    var v = Ros1Pal_interaction_msgsASRLanguage()
    v.`language` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/ASRSrvRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsASRSrvRequest: Canonical {
  public static let maximumWireBytes = 526
  public static let codecIdentity =
    "UWVMROS1_3a7fc134e8d1e0c32421ff0ad9831a892e7bc94b211d8309f8a2c2e99720e170"
  public static let nativeType = "pal_interaction_msgs/ASRSrvRequest"
  public static let nativeIdentity: String? = nil
  public static let `ACTIVATION`: Int8 = 1
  public static let `GRAMMAR`: Int8 = 2
  public static let `LANGUAGE`: Int8 = 3
  public static let `STATUS`: Int8 = 4
  public static let `KWSPOTTING`: Int8 = 5
  /// @brief Preserve original requests as int8.
  /// @details At most 256 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `requests`: [Int8] = []
  /// @brief Preserve original activation as pal_interaction_msgs/ASRActivation.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `activation`: Ros1Pal_interaction_msgsASRActivation =
    Ros1Pal_interaction_msgsASRActivation()
  /// @brief Preserve original model as pal_interaction_msgs/ASRLangModelMngmt.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `model`: Ros1Pal_interaction_msgsASRLangModelMngmt =
    Ros1Pal_interaction_msgsASRLangModelMngmt()
  /// @brief Preserve original lang as pal_interaction_msgs/ASRLanguage.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `lang`: Ros1Pal_interaction_msgsASRLanguage = Ros1Pal_interaction_msgsASRLanguage()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`requests`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`requests`.count))
    for e in self.`requests` {
      try w.integer(e)
    }
    try self.`activation`.write(to: &w)
    try self.`model`.write(to: &w)
    try self.`lang`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsASRSrvRequest
  {
    var v = Ros1Pal_interaction_msgsASRSrvRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 256 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`requests` = []
    v.`requests`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`requests`.append(try r.integer(Int8.self))
    }
    v.`activation` = try Ros1Pal_interaction_msgsASRActivation.read(from: &r)
    v.`model` = try Ros1Pal_interaction_msgsASRLangModelMngmt.read(from: &r)
    v.`lang` = try Ros1Pal_interaction_msgsASRLanguage.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/ASRServiceRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsASRServiceRequest: Canonical {
  public static let maximumWireBytes = 526
  public static let codecIdentity =
    "UWVMROS1_c78e78d5d88eb264ecc15c534da9e28e04bc6e3bb33685e24b9cf695aee73715"
  public static let nativeType = "pal_interaction_msgs/ASRServiceRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original request as pal_interaction_msgs/ASRSrvRequest.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `request`: Ros1Pal_interaction_msgsASRSrvRequest =
    Ros1Pal_interaction_msgsASRSrvRequest()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`request`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsASRServiceRequest
  {
    var v = Ros1Pal_interaction_msgsASRServiceRequest()
    v.`request` = try Ros1Pal_interaction_msgsASRSrvRequest.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/AudioDeviceDescription.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsAudioDeviceDescription: Canonical {
  public static let maximumWireBytes = 141
  public static let codecIdentity =
    "UWVMROS1_899a8393d0b03ca92891b0c60871b5e3a697750b036ef34b37709eed88139857"
  public static let nativeType = "pal_interaction_msgs/AudioDeviceDescription"
  public static let nativeIdentity: String? = nil
  public static let `SIGNED`: Int8 = 0
  public static let `UNSIGNED`: Int8 = 1
  /// @brief Preserve original device_name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `device_name`: String = ""
  /// @brief Preserve original sample_rate as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `sample_rate`: UInt32 = 0
  /// @brief Preserve original sample_size as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `sample_size`: Int8 = 0
  /// @brief Preserve original format as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `format`: Int8 = 0
  /// @brief Preserve original buffer_size as uint16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `buffer_size`: UInt16 = 0
  /// @brief Preserve original number_of_channels as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `number_of_channels`: Int8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`device_name`, bound: 128)
    try w.integer(self.`sample_rate`)
    try w.integer(self.`sample_size`)
    try w.integer(self.`format`)
    try w.integer(self.`buffer_size`)
    try w.integer(self.`number_of_channels`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsAudioDeviceDescription
  {
    var v = Ros1Pal_interaction_msgsAudioDeviceDescription()
    v.`device_name` = try r.string(bound: 128)
    v.`sample_rate` = try r.integer(UInt32.self)
    v.`sample_size` = try r.integer(Int8.self)
    v.`format` = try r.integer(Int8.self)
    v.`buffer_size` = try r.integer(UInt16.self)
    v.`number_of_channels` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/ASRStatus.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsASRStatus: Canonical {
  public static let maximumWireBytes = 538
  public static let codecIdentity =
    "UWVMROS1_0469173f91448cb5069e27cab54cfd117d9a22d757e8a8303ac5cb1c53e7e985"
  public static let nativeType = "pal_interaction_msgs/ASRStatus"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original active as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `active`: Bool = false
  /// @brief Preserve original language as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `language`: String = ""
  /// @brief Preserve original enabled_grammar as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `enabled_grammar`: String = ""
  /// @brief Preserve original acoustic_env as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `acoustic_env`: String = ""
  /// @brief Preserve original device as pal_interaction_msgs/AudioDeviceDescription.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `device`: Ros1Pal_interaction_msgsAudioDeviceDescription =
    Ros1Pal_interaction_msgsAudioDeviceDescription()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`active`)
    try w.string(self.`language`, bound: 128)
    try w.string(self.`enabled_grammar`, bound: 128)
    try w.string(self.`acoustic_env`, bound: 128)
    try self.`device`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsASRStatus {
    var v = Ros1Pal_interaction_msgsASRStatus()
    v.`active` = try r.boolean()
    v.`language` = try r.string(bound: 128)
    v.`enabled_grammar` = try r.string(bound: 128)
    v.`acoustic_env` = try r.string(bound: 128)
    v.`device` = try Ros1Pal_interaction_msgsAudioDeviceDescription.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/ASRSrvResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsASRSrvResponse: Canonical {
  public static let maximumWireBytes = 802
  public static let codecIdentity =
    "UWVMROS1_b0d47bec71896b9a6090ee0e99c5dad16272306b7b266a99e3da0db334e24d3a"
  public static let nativeType = "pal_interaction_msgs/ASRSrvResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original status as pal_interaction_msgs/ASRStatus.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `status`: Ros1Pal_interaction_msgsASRStatus = Ros1Pal_interaction_msgsASRStatus()
  /// @brief Preserve original error_msg as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `error_msg`: String = ""
  /// @brief Preserve original warn_msg as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `warn_msg`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`status`.write(to: &w)
    try w.string(self.`error_msg`, bound: 128)
    try w.string(self.`warn_msg`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsASRSrvResponse
  {
    var v = Ros1Pal_interaction_msgsASRSrvResponse()
    v.`status` = try Ros1Pal_interaction_msgsASRStatus.read(from: &r)
    v.`error_msg` = try r.string(bound: 128)
    v.`warn_msg` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/ASRServiceResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsASRServiceResponse: Canonical {
  public static let maximumWireBytes = 802
  public static let codecIdentity =
    "UWVMROS1_bfa0a5701b04c4f637febfb3c24d5f49ebd690b82089ec88e21d7dca40028680"
  public static let nativeType = "pal_interaction_msgs/ASRServiceResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original response as pal_interaction_msgs/ASRSrvResponse.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `response`: Ros1Pal_interaction_msgsASRSrvResponse =
    Ros1Pal_interaction_msgsASRSrvResponse()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`response`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsASRServiceResponse
  {
    var v = Ros1Pal_interaction_msgsASRServiceResponse()
    v.`response` = try Ros1Pal_interaction_msgsASRSrvResponse.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/AudioPlayGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsAudioPlayGoal: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_1c2b6894e5b00f204c3d36af18802e5b54e2950b2ef22d3294460f3e7bd84e30"
  public static let nativeType = "pal_interaction_msgs/AudioPlayGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original file as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `file`: String = ""
  /// @brief Preserve original priority as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `priority`: UInt8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`file`, bound: 128)
    try w.integer(self.`priority`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsAudioPlayGoal
  {
    var v = Ros1Pal_interaction_msgsAudioPlayGoal()
    v.`file` = try r.string(bound: 128)
    v.`priority` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/AudioPlayResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsAudioPlayResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_46d6efb4dbf5cca76894398daf8b70e0f6577f624e90dc088beeca147a4f91fe"
  public static let nativeType = "pal_interaction_msgs/AudioPlayResult"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsAudioPlayResult
  {
    var v = Ros1Pal_interaction_msgsAudioPlayResult()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/AudioPlayFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsAudioPlayFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_8715716200235ab9076d7f152ef277236349ffb02f01b16ba5f10ede343729bd"
  public static let nativeType = "pal_interaction_msgs/AudioPlayFeedback"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsAudioPlayFeedback
  {
    var v = Ros1Pal_interaction_msgsAudioPlayFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/AudioPlayerState.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsAudioPlayerState: Canonical {
  public static let maximumWireBytes = 277
  public static let codecIdentity =
    "UWVMROS1_01549954e3ca3bfb4dd7e5c82e8697d0a480d16757826cc4708266794ec85675"
  public static let nativeType = "pal_interaction_msgs/AudioPlayerState"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original isPlaying as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `isPlaying`: Bool = false
  /// @brief Preserve original msg as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `msg`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.boolean(self.`isPlaying`)
    try w.string(self.`msg`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsAudioPlayerState
  {
    var v = Ros1Pal_interaction_msgsAudioPlayerState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`isPlaying` = try r.boolean()
    v.`msg` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/DirectionOfArrival.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsDirectionOfArrival: Canonical {
  public static let maximumWireBytes = 144
  public static let codecIdentity =
    "UWVMROS1_1569630ee3abd3caad9a14797d6381b68e764f0c00266d2de5c450f002c8f5fd"
  public static let nativeType = "pal_interaction_msgs/DirectionOfArrival"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original doa as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `doa`: Float = 0
  /// @brief Preserve original prob as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `prob`: Float = 0
  /// @brief Preserve original power as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `power`: Float = 0
  /// @brief Preserve original metadoa as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `metadoa`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`doa`)
    try w.float32(self.`prob`)
    try w.float32(self.`power`)
    try w.string(self.`metadoa`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsDirectionOfArrival
  {
    var v = Ros1Pal_interaction_msgsDirectionOfArrival()
    v.`doa` = try r.float32()
    v.`prob` = try r.float32()
    v.`power` = try r.float32()
    v.`metadoa` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/EnablingSoundLocalisation.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsEnablingSoundLocalisation: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_8df033349e2f5d7072336e535fc87c1ff6148ed15bc36cc952a99d133a69d495"
  public static let nativeType = "pal_interaction_msgs/EnablingSoundLocalisation"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original enable as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `enable`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`enable`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsEnablingSoundLocalisation
  {
    var v = Ros1Pal_interaction_msgsEnablingSoundLocalisation()
    v.`enable` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/I18nArgument.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsI18nArgument: Canonical {
  public static let maximumWireBytes = 396
  public static let codecIdentity =
    "UWVMROS1_2ca48fd9d8f6dc4a1bc9b69c33c407ea1d6c400f22ceff31f784f161f41f27fb"
  public static let nativeType = "pal_interaction_msgs/I18nArgument"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original section as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `section`: String = ""
  /// @brief Preserve original key as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `key`: String = ""
  /// @brief Preserve original expanded as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `expanded`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`section`, bound: 128)
    try w.string(self.`key`, bound: 128)
    try w.string(self.`expanded`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsI18nArgument {
    var v = Ros1Pal_interaction_msgsI18nArgument()
    v.`section` = try r.string(bound: 128)
    v.`key` = try r.string(bound: 128)
    v.`expanded` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/I18nText.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsI18nText: Canonical {
  public static let maximumWireBytes = 1984
  public static let codecIdentity =
    "UWVMROS1_b3e1cb48129a6ed9cad7f0b543c770aa8b7b0362d00e71185bb6b5ad8c38816c"
  public static let nativeType = "pal_interaction_msgs/I18nText"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original section as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `section`: String = ""
  /// @brief Preserve original key as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `key`: String = ""
  /// @brief Preserve original lang_id as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `lang_id`: String = ""
  /// @brief Preserve original arguments as pal_interaction_msgs/I18nArgument.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `arguments`: [Ros1Pal_interaction_msgsI18nArgument] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`section`, bound: 128)
    try w.string(self.`key`, bound: 128)
    try w.string(self.`lang_id`, bound: 128)
    guard self.`arguments`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`arguments`.count))
    for e in self.`arguments` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsI18nText {
    var v = Ros1Pal_interaction_msgsI18nText()
    v.`section` = try r.string(bound: 128)
    v.`key` = try r.string(bound: 128)
    v.`lang_id` = try r.string(bound: 128)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 4 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`arguments` = []
    v.`arguments`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`arguments`.append(try Ros1Pal_interaction_msgsI18nArgument.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/TtsText.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsTtsText: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_0bf14fabb5b62c5341e606b8ac9f6abaf74a85033a10e9a8f1e5b8bdfe178a87"
  public static let nativeType = "pal_interaction_msgs/TtsText"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original text as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `text`: String = ""
  /// @brief Preserve original lang_id as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `lang_id`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`text`, bound: 128)
    try w.string(self.`lang_id`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsTtsText {
    var v = Ros1Pal_interaction_msgsTtsText()
    v.`text` = try r.string(bound: 128)
    v.`lang_id` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/GetSpeechDurationRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsGetSpeechDurationRequest: Canonical {
  public static let maximumWireBytes = 2248
  public static let codecIdentity =
    "UWVMROS1_0926f4515183e6c9fd4cd5b20c6aa53014ba7dbd4e64113c9b6c514123ba7dc5"
  public static let nativeType = "pal_interaction_msgs/GetSpeechDurationRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original text as pal_interaction_msgs/I18nText.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `text`: Ros1Pal_interaction_msgsI18nText = Ros1Pal_interaction_msgsI18nText()
  /// @brief Preserve original rawtext as pal_interaction_msgs/TtsText.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `rawtext`: Ros1Pal_interaction_msgsTtsText = Ros1Pal_interaction_msgsTtsText()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`text`.write(to: &w)
    try self.`rawtext`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsGetSpeechDurationRequest
  {
    var v = Ros1Pal_interaction_msgsGetSpeechDurationRequest()
    v.`text` = try Ros1Pal_interaction_msgsI18nText.read(from: &r)
    v.`rawtext` = try Ros1Pal_interaction_msgsTtsText.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/GetSpeechDurationResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsGetSpeechDurationResponse: Canonical {
  public static let maximumWireBytes = 2249
  public static let codecIdentity =
    "UWVMROS1_44379b24ddf4582ec184a0da7993d27b9f4ec5d430a129468bf8aef6d5437578"
  public static let nativeType = "pal_interaction_msgs/GetSpeechDurationResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original ok as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ok`: Bool = false
  /// @brief Preserve original words as string.
  /// @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `words`: [String] = []
  /// @brief Preserve original word_durations as duration.
  /// @details At most 16 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `word_durations`: [Ros1Duration] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`ok`)
    guard self.`words`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`words`.count))
    for e in self.`words` {
      try w.string(e, bound: 128)
    }
    guard self.`word_durations`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`word_durations`.count))
    for e in self.`word_durations` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsGetSpeechDurationResponse
  {
    var v = Ros1Pal_interaction_msgsGetSpeechDurationResponse()
    v.`ok` = try r.boolean()
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`words` = []
    v.`words`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`words`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`word_durations` = []
    v.`word_durations`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`word_durations`.append(try Ros1Duration.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/InputArgument.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsInputArgument: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_96c3c0967199a746bf47ffd146123f31ec2f1949b7f3a343cad3825b8b1e8dd0"
  public static let nativeType = "pal_interaction_msgs/InputArgument"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original key as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `key`: String = ""
  /// @brief Preserve original value as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `value`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`key`, bound: 128)
    try w.string(self.`value`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsInputArgument
  {
    var v = Ros1Pal_interaction_msgsInputArgument()
    v.`key` = try r.string(bound: 128)
    v.`value` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/Input.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsInput: Canonical {
  public static let maximumWireBytes = 1192
  public static let codecIdentity =
    "UWVMROS1_11478aeb5c676f50680ee5c4e75973b10cec5df40f09cbb8573ddad4eb91d307"
  public static let nativeType = "pal_interaction_msgs/Input"
  public static let nativeIdentity: String? = nil
  public static let `INPUT_ACCEPT`: String =
    "\u{49}\u{4e}\u{50}\u{55}\u{54}\u{5f}\u{41}\u{43}\u{43}\u{45}\u{50}\u{54}"
  public static let `INPUT_REJECT`: String =
    "\u{49}\u{4e}\u{50}\u{55}\u{54}\u{5f}\u{52}\u{45}\u{4a}\u{45}\u{43}\u{54}"
  public static let `INPUT_CANCEL`: String =
    "\u{49}\u{4e}\u{50}\u{55}\u{54}\u{5f}\u{43}\u{41}\u{4e}\u{43}\u{45}\u{4c}"
  public static let `OK`: String = "\u{6f}\u{6b}"
  public static let `YES`: String = "\u{79}\u{65}\u{73}"
  public static let `NO`: String = "\u{6e}\u{6f}"
  public static let `CANCEL`: String = "\u{63}\u{61}\u{6e}\u{63}\u{65}\u{6c}"
  public static let `ABORT`: String = "\u{61}\u{62}\u{6f}\u{72}\u{74}"
  /// @brief Preserve original action as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `action`: String = ""
  /// @brief Preserve original args as pal_interaction_msgs/InputArgument.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `args`: [Ros1Pal_interaction_msgsInputArgument] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`action`, bound: 128)
    guard self.`args`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`args`.count))
    for e in self.`args` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsInput {
    var v = Ros1Pal_interaction_msgsInput()
    v.`action` = try r.string(bound: 128)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`args` = []
    v.`args`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`args`.append(try Ros1Pal_interaction_msgsInputArgument.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/SoundGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsSoundGoal: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_07b9c59deb5669b601a4e02708bd14d16a19263edde6f8fef3a4781724a4f3db"
  public static let nativeType = "pal_interaction_msgs/SoundGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original text as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `text`: String = ""
  /// @brief Preserve original lang_id as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `lang_id`: String = ""
  /// @brief Preserve original wait_before_speaking as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `wait_before_speaking`: Ros1Duration = Ros1Duration()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`text`, bound: 128)
    try w.string(self.`lang_id`, bound: 128)
    try self.`wait_before_speaking`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsSoundGoal {
    var v = Ros1Pal_interaction_msgsSoundGoal()
    v.`text` = try r.string(bound: 128)
    v.`lang_id` = try r.string(bound: 128)
    v.`wait_before_speaking` = try Ros1Duration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/SoundResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsSoundResult: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_53c3ab50649a2ffe113e4ae246aa05736090d42f5a0158f2878292319ee89a86"
  public static let nativeType = "pal_interaction_msgs/SoundResult"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original text as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `text`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`text`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsSoundResult {
    var v = Ros1Pal_interaction_msgsSoundResult()
    v.`text` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/SoundFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsSoundFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e9a77075706815852fbf5684df54d9d655925f7fecc7caa407d9076adc645d7d"
  public static let nativeType = "pal_interaction_msgs/SoundFeedback"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsSoundFeedback
  {
    var v = Ros1Pal_interaction_msgsSoundFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/SoundLocalisationServiceRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsSoundLocalisationServiceRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e7505ba44b9dc511311f5609c1618a1214362063600b32e2057dbe9cc2d32feb"
  public static let nativeType = "pal_interaction_msgs/SoundLocalisationServiceRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original enabling as pal_interaction_msgs/EnablingSoundLocalisation.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `enabling`: Ros1Pal_interaction_msgsEnablingSoundLocalisation =
    Ros1Pal_interaction_msgsEnablingSoundLocalisation()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`enabling`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsSoundLocalisationServiceRequest
  {
    var v = Ros1Pal_interaction_msgsSoundLocalisationServiceRequest()
    v.`enabling` = try Ros1Pal_interaction_msgsEnablingSoundLocalisation.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/SoundLocalisationServiceResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsSoundLocalisationServiceResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_205fe5e2195345e29bac8477e95059862a44b476a359d808551427941c64ad6e"
  public static let nativeType = "pal_interaction_msgs/SoundLocalisationServiceResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsSoundLocalisationServiceResponse
  {
    var v = Ros1Pal_interaction_msgsSoundLocalisationServiceResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/TTSstate.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsTTSstate: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_b9269838ab729ac39efc69c373314419ace1b43a2bf47176c822671aba9d9987"
  public static let nativeType = "pal_interaction_msgs/TTSstate"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original isSpeaking as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `isSpeaking`: Bool = false
  /// @brief Preserve original text as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `text`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`isSpeaking`)
    try w.string(self.`text`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsTTSstate {
    var v = Ros1Pal_interaction_msgsTTSstate()
    v.`isSpeaking` = try r.boolean()
    v.`text` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/TtsGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsTtsGoal: Canonical {
  public static let maximumWireBytes = 2388
  public static let codecIdentity =
    "UWVMROS1_d128a99394120e1688e4feb9906b033af53982dbf12040604502aeb8f59304c7"
  public static let nativeType = "pal_interaction_msgs/TtsGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original text as pal_interaction_msgs/I18nText.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `text`: Ros1Pal_interaction_msgsI18nText = Ros1Pal_interaction_msgsI18nText()
  /// @brief Preserve original rawtext as pal_interaction_msgs/TtsText.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `rawtext`: Ros1Pal_interaction_msgsTtsText = Ros1Pal_interaction_msgsTtsText()
  /// @brief Preserve original speakerName as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `speakerName`: String = ""
  /// @brief Preserve original wait_before_speaking as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `wait_before_speaking`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`text`.write(to: &w)
    try self.`rawtext`.write(to: &w)
    try w.string(self.`speakerName`, bound: 128)
    try w.float64(self.`wait_before_speaking`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsTtsGoal {
    var v = Ros1Pal_interaction_msgsTtsGoal()
    v.`text` = try Ros1Pal_interaction_msgsI18nText.read(from: &r)
    v.`rawtext` = try Ros1Pal_interaction_msgsTtsText.read(from: &r)
    v.`speakerName` = try r.string(bound: 128)
    v.`wait_before_speaking` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/TtsResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsTtsResult: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_74f6eebecfd7e0e50e48ca3393fc0f9e9e24baec834bf39cb30455e9f0d9cf56"
  public static let nativeType = "pal_interaction_msgs/TtsResult"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original text as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `text`: String = ""
  /// @brief Preserve original msg as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `msg`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`text`, bound: 128)
    try w.string(self.`msg`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsTtsResult {
    var v = Ros1Pal_interaction_msgsTtsResult()
    v.`text` = try r.string(bound: 128)
    v.`msg` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/TtsMark.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsTtsMark: Canonical {
  public static let maximumWireBytes = 4364
  public static let codecIdentity =
    "UWVMROS1_4f92d66f3ec5bc7645da4cb0dabce2d662ebffe13a67c999c5cf3d771f11fc95"
  public static let nativeType = "pal_interaction_msgs/TtsMark"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original id as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `id`: String = ""
  /// @brief Preserve original keys as string.
  /// @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `keys`: [String] = []
  /// @brief Preserve original value as string.
  /// @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `value`: [String] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`id`, bound: 128)
    guard self.`keys`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`keys`.count))
    for e in self.`keys` {
      try w.string(e, bound: 128)
    }
    guard self.`value`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`value`.count))
    for e in self.`value` {
      try w.string(e, bound: 128)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsTtsMark {
    var v = Ros1Pal_interaction_msgsTtsMark()
    v.`id` = try r.string(bound: 128)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`keys` = []
    v.`keys`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`keys`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`value` = []
    v.`value`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`value`.append(try r.string(bound: 128))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/TtsFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsTtsFeedback: Canonical {
  public static let maximumWireBytes = 4770
  public static let codecIdentity =
    "UWVMROS1_3154aa11cda4bc9750910ea8283b14106fc992d9b4f99055bdefd226bf784894"
  public static let nativeType = "pal_interaction_msgs/TtsFeedback"
  public static let nativeIdentity: String? = nil
  public static let `TTS_EVENT_INITIALIZATION`: UInt16 = 1
  public static let `TTS_EVENT_SHUTDOWN`: UInt16 = 2
  public static let `TTS_EVENT_SYNCHRONIZATION`: UInt16 = 4
  public static let `TTS_EVENT_FINISHED_PLAYING_UTTERANCE`: UInt16 = 8
  public static let `TTS_EVENT_MARK`: UInt16 = 16
  public static let `TTS_EVENT_STARTED_PLAYING_WORD`: UInt16 = 32
  public static let `TTS_EVENT_FINISHED_PLAYING_PHRASE`: UInt16 = 64
  public static let `TTS_EVENT_FINISHED_PLAYING_SENTENCE`: UInt16 = 128
  public static let `TTS_EVENT_VISEME`: UInt16 = 256
  /// @brief Preserve original event_type as uint16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `event_type`: UInt16 = 0
  /// @brief Preserve original timestamp as time.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `timestamp`: Ros1Time = Ros1Time()
  /// @brief Preserve original text_said as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `text_said`: String = ""
  /// @brief Preserve original next_word as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `next_word`: String = ""
  /// @brief Preserve original viseme_id as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `viseme_id`: String = ""
  /// @brief Preserve original marks as pal_interaction_msgs/TtsMark.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `marks`: Ros1Pal_interaction_msgsTtsMark = Ros1Pal_interaction_msgsTtsMark()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`event_type`)
    try self.`timestamp`.write(to: &w)
    try w.string(self.`text_said`, bound: 128)
    try w.string(self.`next_word`, bound: 128)
    try w.string(self.`viseme_id`, bound: 128)
    try self.`marks`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsTtsFeedback {
    var v = Ros1Pal_interaction_msgsTtsFeedback()
    v.`event_type` = try r.integer(UInt16.self)
    v.`timestamp` = try Ros1Time.read(from: &r)
    v.`text_said` = try r.string(bound: 128)
    v.`next_word` = try r.string(bound: 128)
    v.`viseme_id` = try r.string(bound: 128)
    v.`marks` = try Ros1Pal_interaction_msgsTtsMark.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/VoiceActivity.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsVoiceActivity: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c33952dbed35f2e6e08dd4dd8b7adf5c71a52106e2b274b988ec3218648b42a7"
  public static let nativeType = "pal_interaction_msgs/VoiceActivity"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original isSpeech as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `isSpeech`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`isSpeech`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsVoiceActivity
  {
    var v = Ros1Pal_interaction_msgsVoiceActivity()
    v.`isSpeech` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/WebGuiEvent.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsWebGuiEvent: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_fb8030a4cb371da5dae852d62b28d8e7b03c3d37f0f6390c904ef3dc84084e23"
  public static let nativeType = "pal_interaction_msgs/WebGuiEvent"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original arg as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `arg`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.string(self.`arg`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsWebGuiEvent {
    var v = Ros1Pal_interaction_msgsWebGuiEvent()
    v.`name` = try r.string(bound: 128)
    v.`arg` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/asrupdate.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsAsrupdate: Canonical {
  public static let maximumWireBytes = 529
  public static let codecIdentity =
    "UWVMROS1_34584358ab6faa36c96fbbe2de2bef7cba7ae6eb5879cd6b676a1826fb154fda"
  public static let nativeType = "pal_interaction_msgs/asrupdate"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original language as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `language`: String = ""
  /// @brief Preserve original enable_grammar as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `enable_grammar`: String = ""
  /// @brief Preserve original disable_grammar as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `disable_grammar`: String = ""
  /// @brief Preserve original acousticenv as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `acousticenv`: String = ""
  /// @brief Preserve original active as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `active`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`language`, bound: 128)
    try w.string(self.`enable_grammar`, bound: 128)
    try w.string(self.`disable_grammar`, bound: 128)
    try w.string(self.`acousticenv`, bound: 128)
    try w.boolean(self.`active`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsAsrupdate {
    var v = Ros1Pal_interaction_msgsAsrupdate()
    v.`language` = try r.string(bound: 128)
    v.`enable_grammar` = try r.string(bound: 128)
    v.`disable_grammar` = try r.string(bound: 128)
    v.`acousticenv` = try r.string(bound: 128)
    v.`active` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/audiosignal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsAudiosignal: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_f70d9a987e0f5443060a55d2f617d9a8fc9e59fe110a9acd256a186b64e5e809"
  public static let nativeType = "pal_interaction_msgs/audiosignal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original channel0 as float64.
  /// @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `channel0`: [Double] = []
  /// @brief Preserve original channel1 as float64.
  /// @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `channel1`: [Double] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`channel0`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`channel0`.count))
    for e in self.`channel0` {
      try w.float64(e)
    }
    guard self.`channel1`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`channel1`.count))
    for e in self.`channel1` {
      try w.float64(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_interaction_msgsAudiosignal {
    var v = Ros1Pal_interaction_msgsAudiosignal()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`channel0` = []
    v.`channel0`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`channel0`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`channel1` = []
    v.`channel1`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`channel1`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/recognizerServiceRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsRecognizerServiceRequest: Canonical {
  public static let maximumWireBytes = 529
  public static let codecIdentity =
    "UWVMROS1_369151b882d849a0ab75110068aedd9eac22d87afe7b5bc13af87a6f78588edc"
  public static let nativeType = "pal_interaction_msgs/recognizerServiceRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original asrupdate as pal_interaction_msgs/asrupdate.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `asrupdate`: Ros1Pal_interaction_msgsAsrupdate = Ros1Pal_interaction_msgsAsrupdate()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`asrupdate`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsRecognizerServiceRequest
  {
    var v = Ros1Pal_interaction_msgsRecognizerServiceRequest()
    v.`asrupdate` = try Ros1Pal_interaction_msgsAsrupdate.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_interaction_msgs/recognizerServiceResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_interaction_msgsRecognizerServiceResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_3598ef995f13f4377e0e4eff270a9e277c3c94018f60aeb944119ce9f5b25813"
  public static let nativeType = "pal_interaction_msgs/recognizerServiceResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_interaction_msgsRecognizerServiceResponse
  {
    var v = Ros1Pal_interaction_msgsRecognizerServiceResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_motion_model_msgs/GetMotionMapRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_motion_model_msgsGetMotionMapRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4bfce8e9cc79e30ec211aa18bafb432fa0d3ff4fa18569a1c0ef178fe2729e97"
  public static let nativeType = "pal_motion_model_msgs/GetMotionMapRequest"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_motion_model_msgsGetMotionMapRequest
  {
    var v = Ros1Pal_motion_model_msgsGetMotionMapRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_motion_model_msgs/MotionModel.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_motion_model_msgsMotionModel: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_3d44b889a1c70d5e84107202bccf2143c8dd559a2cd5499d0c7319568469c1ea"
  public static let nativeType = "pal_motion_model_msgs/MotionModel"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original heading_mean as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `heading_mean`: Float = 0
  /// @brief Preserve original heading_std_dev as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `heading_std_dev`: Float = 0
  /// @brief Preserve original linear_speed_mean as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `linear_speed_mean`: Float = 0
  /// @brief Preserve original linear_speed_std_dev as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `linear_speed_std_dev`: Float = 0
  /// @brief Preserve original angular_speed_mean as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `angular_speed_mean`: Float = 0
  /// @brief Preserve original angular_speed_std_dev as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `angular_speed_std_dev`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`heading_mean`)
    try w.float32(self.`heading_std_dev`)
    try w.float32(self.`linear_speed_mean`)
    try w.float32(self.`linear_speed_std_dev`)
    try w.float32(self.`angular_speed_mean`)
    try w.float32(self.`angular_speed_std_dev`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_motion_model_msgsMotionModel {
    var v = Ros1Pal_motion_model_msgsMotionModel()
    v.`heading_mean` = try r.float32()
    v.`heading_std_dev` = try r.float32()
    v.`linear_speed_mean` = try r.float32()
    v.`linear_speed_std_dev` = try r.float32()
    v.`angular_speed_mean` = try r.float32()
    v.`angular_speed_std_dev` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_motion_model_msgs/MotionModelList.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_motion_model_msgsMotionModelList: Canonical {
  public static let maximumWireBytes = 100
  public static let codecIdentity =
    "UWVMROS1_f85f87d53cc9ae6392347e9d2cc41d306260335b4568e671890ebdd43a27a294"
  public static let nativeType = "pal_motion_model_msgs/MotionModelList"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original models as pal_motion_model_msgs/MotionModel.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `models`: [Ros1Pal_motion_model_msgsMotionModel] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`models`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`models`.count))
    for e in self.`models` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_motion_model_msgsMotionModelList
  {
    var v = Ros1Pal_motion_model_msgsMotionModelList()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 4 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`models` = []
    v.`models`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`models`.append(try Ros1Pal_motion_model_msgsMotionModel.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_motion_model_msgs/MotionModelMap.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_motion_model_msgsMotionModelMap: Canonical {
  public static let maximumWireBytes = 624
  public static let codecIdentity =
    "UWVMROS1_6f1702acedc40207e16d9a06d68581fb055ac1b42135efdbbbd1477eff42b289"
  public static let nativeType = "pal_motion_model_msgs/MotionModelMap"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original info as nav_msgs/MapMetaData.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `info`: Ros1Nav_msgsMapMetaData = Ros1Nav_msgsMapMetaData()
  /// @brief Preserve original data as pal_motion_model_msgs/MotionModelList.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `data`: [Ros1Pal_motion_model_msgsMotionModelList] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`info`.write(to: &w)
    guard self.`data`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_motion_model_msgsMotionModelMap
  {
    var v = Ros1Pal_motion_model_msgsMotionModelMap()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`info` = try Ros1Nav_msgsMapMetaData.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`data` = []
    v.`data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`data`.append(try Ros1Pal_motion_model_msgsMotionModelList.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_motion_model_msgs/GetMotionMapResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_motion_model_msgsGetMotionMapResponse: Canonical {
  public static let maximumWireBytes = 624
  public static let codecIdentity =
    "UWVMROS1_b031c17ef990e784eeeb7fbf270b482207c5de43323a9cbf37306ac07b159440"
  public static let nativeType = "pal_motion_model_msgs/GetMotionMapResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original map as pal_motion_model_msgs/MotionModelMap.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `map`: Ros1Pal_motion_model_msgsMotionModelMap =
    Ros1Pal_motion_model_msgsMotionModelMap()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`map`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_motion_model_msgsGetMotionMapResponse
  {
    var v = Ros1Pal_motion_model_msgsGetMotionMapResponse()
    v.`map` = try Ros1Pal_motion_model_msgsMotionModelMap.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_multirobot_msgs/WifiServiceDetection.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_multirobot_msgsWifiServiceDetection: Canonical {
  public static let maximumWireBytes = 278
  public static let codecIdentity =
    "UWVMROS1_1f9a244c4e98ec5f4eb60bd008a62b94a91a6982b56273510c3019b95f1b5741"
  public static let nativeType = "pal_multirobot_msgs/WifiServiceDetection"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original id as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `id`: String = ""
  /// @brief Preserve original signal as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `signal`: Int16 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`id`, bound: 128)
    try w.integer(self.`signal`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_multirobot_msgsWifiServiceDetection
  {
    var v = Ros1Pal_multirobot_msgsWifiServiceDetection()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`id` = try r.string(bound: 128)
    v.`signal` = try r.integer(Int16.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_simulation_msgs/ExternalWrench.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_simulation_msgsExternalWrench: Canonical {
  public static let maximumWireBytes = 356
  public static let codecIdentity =
    "UWVMROS1_b85249fbffa7b83dd13e2f42d71c5a4136743e892760cf0eb65bbaf3dfd0824c"
  public static let nativeType = "pal_simulation_msgs/ExternalWrench"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original link_name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `link_name`: String = ""
  /// @brief Preserve original wrench as geometry_msgs/Wrench.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `wrench`: Ros1Geometry_msgsWrench = Ros1Geometry_msgsWrench()
  /// @brief Preserve original application_point as geometry_msgs/Point.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `application_point`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Preserve original duration as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `duration`: Ros1Duration = Ros1Duration()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`link_name`, bound: 128)
    try self.`wrench`.write(to: &w)
    try self.`application_point`.write(to: &w)
    try self.`duration`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_simulation_msgsExternalWrench
  {
    var v = Ros1Pal_simulation_msgsExternalWrench()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`link_name` = try r.string(bound: 128)
    v.`wrench` = try Ros1Geometry_msgsWrench.read(from: &r)
    v.`application_point` = try Ros1Geometry_msgsPoint.read(from: &r)
    v.`duration` = try Ros1Duration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 std_msgs/String.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Std_msgsString: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_8a71a2d5957414e5a34318653c6314c005aab13980a35fa331401a4acd4442dc"
  public static let nativeType = "std_msgs/String"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original data as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `data`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`data`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsString {
    var v = Ros1Std_msgsString()
    v.`data` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 std_msgs/Bool.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Std_msgsBool: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_cbbbbbf2df23f98389500cbf265f45ca9210c3495622a1fd122c1b8b76ce7d33"
  public static let nativeType = "std_msgs/Bool"
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
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsBool {
    var v = Ros1Std_msgsBool()
    v.`data` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_tablet_msgs/FunctionalityStatus.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_tablet_msgsFunctionalityStatus: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_ce7e4fc9d13688058739c422c63a6af44d883b54b3efde8aed4e3272f8b0de35"
  public static let nativeType = "pal_tablet_msgs/FunctionalityStatus"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original errMessage as std_msgs/String.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `errMessage`: Ros1Std_msgsString = Ros1Std_msgsString()
  /// @brief Preserve original errStatus as std_msgs/Bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `errStatus`: Ros1Std_msgsBool = Ros1Std_msgsBool()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`errMessage`.write(to: &w)
    try self.`errStatus`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_tablet_msgsFunctionalityStatus
  {
    var v = Ros1Pal_tablet_msgsFunctionalityStatus()
    v.`errMessage` = try Ros1Std_msgsString.read(from: &r)
    v.`errStatus` = try Ros1Std_msgsBool.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_tablet_msgs/RobotStatus.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_tablet_msgsRobotStatus: Canonical {
  public static let maximumWireBytes = 536
  public static let codecIdentity =
    "UWVMROS1_b01e5783832f7b816d0dca678bca11f49554304116bf9a8fccc9b36b18b4478d"
  public static let nativeType = "pal_tablet_msgs/RobotStatus"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original messages as pal_tablet_msgs/FunctionalityStatus.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `messages`: [Ros1Pal_tablet_msgsFunctionalityStatus] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`messages`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`messages`.count))
    for e in self.`messages` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_tablet_msgsRobotStatus {
    var v = Ros1Pal_tablet_msgsRobotStatus()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 4 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`messages` = []
    v.`messages`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`messages`.append(try Ros1Pal_tablet_msgsFunctionalityStatus.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_video_recording_msgs/StartRecordingRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_video_recording_msgsStartRecordingRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_214a2bd3c382b4bd7dbb15d1b694e6d385bd9b2656944068177bd0408a16d914"
  public static let nativeType = "pal_video_recording_msgs/StartRecordingRequest"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_video_recording_msgsStartRecordingRequest
  {
    var v = Ros1Pal_video_recording_msgsStartRecordingRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_video_recording_msgs/StartRecordingResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_video_recording_msgsStartRecordingResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_03b8bcd879b02864300b8a90d721958a4335f53bd17abbd29178471de736d9b6"
  public static let nativeType = "pal_video_recording_msgs/StartRecordingResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_video_recording_msgsStartRecordingResponse
  {
    var v = Ros1Pal_video_recording_msgsStartRecordingResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_video_recording_msgs/StopRecordingRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_video_recording_msgsStopRecordingRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_2fe53f84621ac67f592d86f028c2d5be67f4fee13663b82a9b128d50a8a1c4f5"
  public static let nativeType = "pal_video_recording_msgs/StopRecordingRequest"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_video_recording_msgsStopRecordingRequest
  {
    var v = Ros1Pal_video_recording_msgsStopRecordingRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_video_recording_msgs/StopRecordingResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_video_recording_msgsStopRecordingResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0e7555737246a82dcf9203313b8bfc43c808fa1d8a405c4159bf3b837545b7c2"
  public static let nativeType = "pal_video_recording_msgs/StopRecordingResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_video_recording_msgsStopRecordingResponse
  {
    var v = Ros1Pal_video_recording_msgsStopRecordingResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/DetectedObject.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsDetectedObject: Canonical {
  public static let maximumWireBytes = 168
  public static let codecIdentity =
    "UWVMROS1_49ddd55b2f5fc8053980d77760c563c563113d1dafc899b0b5d619f98ab7ad25"
  public static let nativeType = "pal_vision_msgs/DetectedObject"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original position3D as geometry_msgs/Point.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position3D`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`position3D`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsDetectedObject {
    var v = Ros1Pal_vision_msgsDetectedObject()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`position3D` = try Ros1Geometry_msgsPoint.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/Rectangle.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsRectangle: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_fa96c9ba0ef62b6f620e1200ffde47ce33ae8d41e444c39ae65e6aa3b27954c4"
  public static let nativeType = "pal_vision_msgs/Rectangle"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original x as int64.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `x`: Int64 = 0
  /// @brief Preserve original y as int64.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `y`: Int64 = 0
  /// @brief Preserve original width as int64.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `width`: Int64 = 0
  /// @brief Preserve original height as int64.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `height`: Int64 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`x`)
    try w.integer(self.`y`)
    try w.integer(self.`width`)
    try w.integer(self.`height`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsRectangle {
    var v = Ros1Pal_vision_msgsRectangle()
    v.`x` = try r.integer(Int64.self)
    v.`y` = try r.integer(Int64.self)
    v.`width` = try r.integer(Int64.self)
    v.`height` = try r.integer(Int64.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/DetectedPerson.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsDetectedPerson: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_ce1f7b8789e0928dc98ba3819be067f6bb077a9144f475f5c50a849be781c82e"
  public static let nativeType = "pal_vision_msgs/DetectedPerson"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original objectId as int64.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `objectId`: Int64 = 0
  /// @brief Preserve original boxColour as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `boxColour`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original confidence as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `confidence`: Double = 0
  /// @brief Preserve original position3D as geometry_msgs/Point.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position3D`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Preserve original box as pal_vision_msgs/Rectangle.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `box`: Ros1Pal_vision_msgsRectangle = Ros1Pal_vision_msgsRectangle()
  /// @brief Preserve original faceBox as pal_vision_msgs/Rectangle.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `faceBox`: Ros1Pal_vision_msgsRectangle = Ros1Pal_vision_msgsRectangle()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`objectId`)
    try self.`boxColour`.write(to: &w)
    try w.float64(self.`confidence`)
    try self.`position3D`.write(to: &w)
    try self.`box`.write(to: &w)
    try self.`faceBox`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsDetectedPerson {
    var v = Ros1Pal_vision_msgsDetectedPerson()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`objectId` = try r.integer(Int64.self)
    v.`boxColour` = try Ros1Std_msgsColorRGBA.read(from: &r)
    v.`confidence` = try r.float64()
    v.`position3D` = try Ros1Geometry_msgsPoint.read(from: &r)
    v.`box` = try Ros1Pal_vision_msgsRectangle.read(from: &r)
    v.`faceBox` = try Ros1Pal_vision_msgsRectangle.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FaceDetection.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFaceDetection: Canonical {
  public static let maximumWireBytes = 124
  public static let codecIdentity =
    "UWVMROS1_57943eb9a19b9558fc5e7390bfbb3f7ab271cfb5ab7892bc1442a43c8d3217d5"
  public static let nativeType = "pal_vision_msgs/FaceDetection"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original position3D as geometry_msgs/Point.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position3D`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Preserve original imageBoundingBox as pal_vision_msgs/Rectangle.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `imageBoundingBox`: Ros1Pal_vision_msgsRectangle = Ros1Pal_vision_msgsRectangle()
  /// @brief Preserve original hog as float32.
  /// @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `hog`: [Float] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`position3D`.write(to: &w)
    try self.`imageBoundingBox`.write(to: &w)
    guard self.`hog`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`hog`.count))
    for e in self.`hog` {
      try w.float32(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsFaceDetection {
    var v = Ros1Pal_vision_msgsFaceDetection()
    v.`position3D` = try Ros1Geometry_msgsPoint.read(from: &r)
    v.`imageBoundingBox` = try Ros1Pal_vision_msgsRectangle.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`hog` = []
    v.`hog`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`hog`.append(try r.float32())
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FaceDetections.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFaceDetections: Canonical {
  public static let maximumWireBytes = 648
  public static let codecIdentity =
    "UWVMROS1_bc135c2c93419e99b87edabfe3a72e744e574ec703e77919736ae90f069417a0"
  public static let nativeType = "pal_vision_msgs/FaceDetections"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original imgID as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `imgID`: UInt32 = 0
  /// @brief Preserve original faces as pal_vision_msgs/FaceDetection.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `faces`: [Ros1Pal_vision_msgsFaceDetection] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`imgID`)
    guard self.`faces`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`faces`.count))
    for e in self.`faces` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsFaceDetections {
    var v = Ros1Pal_vision_msgsFaceDetections()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`imgID` = try r.integer(UInt32.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`faces` = []
    v.`faces`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`faces`.append(try Ros1Pal_vision_msgsFaceDetection.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FaceRecognitionGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFaceRecognitionGoal: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_bcf0281ebf646f90ea48d50971aedcd174eec9bdf8cb45ca66c6e4aa672cda4b"
  public static let nativeType = "pal_vision_msgs/FaceRecognitionGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original order_id as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `order_id`: UInt8 = 0
  /// @brief Preserve original order_argument as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `order_argument`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`order_id`)
    try w.string(self.`order_argument`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsFaceRecognitionGoal
  {
    var v = Ros1Pal_vision_msgsFaceRecognitionGoal()
    v.`order_id` = try r.integer(UInt8.self)
    v.`order_argument` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FaceRecognitionResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFaceRecognitionResult: Canonical {
  public static let maximumWireBytes = 2185
  public static let codecIdentity =
    "UWVMROS1_47287112c67933fc592f58a910627ff0ddc35f2cf8f38437399ef1ed94e4d36e"
  public static let nativeType = "pal_vision_msgs/FaceRecognitionResult"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original order_id as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `order_id`: UInt8 = 0
  /// @brief Preserve original names as string.
  /// @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `names`: [String] = []
  /// @brief Preserve original confidence as float32.
  /// @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `confidence`: [Float] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`order_id`)
    guard self.`names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`names`.count))
    for e in self.`names` {
      try w.string(e, bound: 128)
    }
    guard self.`confidence`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`confidence`.count))
    for e in self.`confidence` {
      try w.float32(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_vision_msgsFaceRecognitionResult
  {
    var v = Ros1Pal_vision_msgsFaceRecognitionResult()
    v.`order_id` = try r.integer(UInt8.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`names` = []
    v.`names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`names`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`confidence` = []
    v.`confidence`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`confidence`.append(try r.float32())
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FaceRecognitionFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFaceRecognitionFeedback: Canonical {
  public static let maximumWireBytes = 2185
  public static let codecIdentity =
    "UWVMROS1_42cb3618f562e3083ca7069e0f41233a9584cd00b9a3d2cb791d5956735dbfd7"
  public static let nativeType = "pal_vision_msgs/FaceRecognitionFeedback"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original order_id as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `order_id`: UInt8 = 0
  /// @brief Preserve original names as string.
  /// @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `names`: [String] = []
  /// @brief Preserve original confidence as float32.
  /// @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `confidence`: [Float] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`order_id`)
    guard self.`names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`names`.count))
    for e in self.`names` {
      try w.string(e, bound: 128)
    }
    guard self.`confidence`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`confidence`.count))
    for e in self.`confidence` {
      try w.float32(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_vision_msgsFaceRecognitionFeedback
  {
    var v = Ros1Pal_vision_msgsFaceRecognitionFeedback()
    v.`order_id` = try r.integer(UInt8.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`names` = []
    v.`names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`names`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`confidence` = []
    v.`confidence`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`confidence`.append(try r.float32())
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FaceTrackingStartRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFaceTrackingStartRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e41bf1927b5c764ff89ca9d9049719e35c96c1689ba4bb930d1e90480a13647c"
  public static let nativeType = "pal_vision_msgs/FaceTrackingStartRequest"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_vision_msgsFaceTrackingStartRequest
  {
    var v = Ros1Pal_vision_msgsFaceTrackingStartRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FaceTrackingStartResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFaceTrackingStartResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_51e6335ecfe5827f0bae5e5610b5dec443373b1233942b40387958b1b47ba4bf"
  public static let nativeType = "pal_vision_msgs/FaceTrackingStartResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_vision_msgsFaceTrackingStartResponse
  {
    var v = Ros1Pal_vision_msgsFaceTrackingStartResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FaceTrackingStopRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFaceTrackingStopRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_850dd9a2cdf7e12197ac7efad3facaf4609c7be7c63d8157a6b92bc1e56926e5"
  public static let nativeType = "pal_vision_msgs/FaceTrackingStopRequest"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_vision_msgsFaceTrackingStopRequest
  {
    var v = Ros1Pal_vision_msgsFaceTrackingStopRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FaceTrackingStopResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFaceTrackingStopResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_158adae14ad8a978f5c934c5aee9489306e9ddd31d9afa15ff1a9f9af8872b5f"
  public static let nativeType = "pal_vision_msgs/FaceTrackingStopResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_vision_msgsFaceTrackingStopResponse
  {
    var v = Ros1Pal_vision_msgsFaceTrackingStopResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FollowMeResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFollowMeResponse: Canonical {
  public static let maximumWireBytes = 145
  public static let codecIdentity =
    "UWVMROS1_509edcb3854474332fd562cc897fff9266b789772700de1b4a447670fd0bb24f"
  public static let nativeType = "pal_vision_msgs/FollowMeResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original targetDetected as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `targetDetected`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.boolean(self.`targetDetected`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsFollowMeResponse {
    var v = Ros1Pal_vision_msgsFollowMeResponse()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`targetDetected` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FollowMeStartRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFollowMeStartRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9ad00d43667a3ac5324f5999d68f04b8c176c308d94c2ed4da9d357697b0faba"
  public static let nativeType = "pal_vision_msgs/FollowMeStartRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original maxSecondsTargetLost as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `maxSecondsTargetLost`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`maxSecondsTargetLost`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_vision_msgsFollowMeStartRequest
  {
    var v = Ros1Pal_vision_msgsFollowMeStartRequest()
    v.`maxSecondsTargetLost` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FollowMeStartResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFollowMeStartResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_2d61bb56a1595cfb26c8607e75c06b6ad712ee04f23f8bb3ec2055a311d3376a"
  public static let nativeType = "pal_vision_msgs/FollowMeStartResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_vision_msgsFollowMeStartResponse
  {
    var v = Ros1Pal_vision_msgsFollowMeStartResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FollowMeStopRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFollowMeStopRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6027cba04b80218bf304f2a426f716bba87534e477b5dda411c921ac27e9a8b2"
  public static let nativeType = "pal_vision_msgs/FollowMeStopRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsFollowMeStopRequest
  {
    var v = Ros1Pal_vision_msgsFollowMeStopRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/FollowMeStopResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsFollowMeStopResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a2b3b521174fc092b8f04cdc09ff4a43113b71b9daa4977e7a233fc8a5c02cdb"
  public static let nativeType = "pal_vision_msgs/FollowMeStopResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_vision_msgsFollowMeStopResponse
  {
    var v = Ros1Pal_vision_msgsFollowMeStopResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/Gesture.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsGesture: Canonical {
  public static let maximumWireBytes = 300
  public static let codecIdentity =
    "UWVMROS1_e947cfbffe33a44d3590ff6513d4486c7411747df12fed9c178662e5beb2e4d1"
  public static let nativeType = "pal_vision_msgs/Gesture"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original gestureId as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `gestureId`: String = ""
  /// @brief Preserve original position3D as geometry_msgs/Point.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `position3D`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`gestureId`, bound: 128)
    try self.`position3D`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsGesture {
    var v = Ros1Pal_vision_msgsGesture()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`gestureId` = try r.string(bound: 128)
    v.`position3D` = try Ros1Geometry_msgsPoint.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/HeadPanTilt.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsHeadPanTilt: Canonical {
  public static let maximumWireBytes = 152
  public static let codecIdentity =
    "UWVMROS1_69c6664a98a42741b82d5c147ccfabdb7bb7138cae590c77a2b63103cdf899cc"
  public static let nativeType = "pal_vision_msgs/HeadPanTilt"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original pan as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `pan`: Float = 0
  /// @brief Preserve original tilt as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `tilt`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float32(self.`pan`)
    try w.float32(self.`tilt`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsHeadPanTilt {
    var v = Ros1Pal_vision_msgsHeadPanTilt()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`pan` = try r.float32()
    v.`tilt` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/HogDetection.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsHogDetection: Canonical {
  public static let maximumWireBytes = 344
  public static let codecIdentity =
    "UWVMROS1_4d745cf6bb2b9fce9d25b0c7b15be14ba7aec15d19a6677f7d8f4dfc40c3dcf4"
  public static let nativeType = "pal_vision_msgs/HogDetection"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original imageBoundingBox as pal_vision_msgs/Rectangle.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `imageBoundingBox`: Ros1Pal_vision_msgsRectangle = Ros1Pal_vision_msgsRectangle()
  /// @brief Preserve original direction as geometry_msgs/Vector3.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `direction`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  /// @brief Preserve original hog as float32.
  /// @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `hog`: [Float] = []
  /// @brief Preserve original principalEigenVectorRGB as std_msgs/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `principalEigenVectorRGB`: Ros1Std_msgsColorRGBA = Ros1Std_msgsColorRGBA()
  /// @brief Preserve original rgbClusterCenters as std_msgs/ColorRGBA.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `rgbClusterCenters`: [Ros1Std_msgsColorRGBA] = []
  /// @brief Preserve original rgbDescriptor1 as uint32.
  /// @details At most 16 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `rgbDescriptor1`: [UInt32] = []
  /// @brief Preserve original rgbDescriptor2 as uint32.
  /// @details At most 16 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `rgbDescriptor2`: [UInt32] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`imageBoundingBox`.write(to: &w)
    try self.`direction`.write(to: &w)
    guard self.`hog`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`hog`.count))
    for e in self.`hog` {
      try w.float32(e)
    }
    try self.`principalEigenVectorRGB`.write(to: &w)
    guard self.`rgbClusterCenters`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`rgbClusterCenters`.count))
    for e in self.`rgbClusterCenters` {
      try e.write(to: &w)
    }
    guard self.`rgbDescriptor1`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`rgbDescriptor1`.count))
    for e in self.`rgbDescriptor1` {
      try w.integer(e)
    }
    guard self.`rgbDescriptor2`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`rgbDescriptor2`.count))
    for e in self.`rgbDescriptor2` {
      try w.integer(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsHogDetection {
    var v = Ros1Pal_vision_msgsHogDetection()
    v.`imageBoundingBox` = try Ros1Pal_vision_msgsRectangle.read(from: &r)
    v.`direction` = try Ros1Geometry_msgsVector3.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`hog` = []
    v.`hog`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`hog`.append(try r.float32())
    }
    v.`principalEigenVectorRGB` = try Ros1Std_msgsColorRGBA.read(from: &r)
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 4 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`rgbClusterCenters` = []
    v.`rgbClusterCenters`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`rgbClusterCenters`.append(try Ros1Std_msgsColorRGBA.read(from: &r))
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 16 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`rgbDescriptor1` = []
    v.`rgbDescriptor1`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`rgbDescriptor1`.append(try r.integer(UInt32.self))
    }
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`rgbDescriptor2` = []
    v.`rgbDescriptor2`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`rgbDescriptor2`.append(try r.integer(UInt32.self))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/HogDetections.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsHogDetections: Canonical {
  public static let maximumWireBytes = 1528
  public static let codecIdentity =
    "UWVMROS1_8ea9e8cc6d81de0b518f3dd1fd3fedca765711f965644e2a0fa88b8d334cbace"
  public static let nativeType = "pal_vision_msgs/HogDetections"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original imgID as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `imgID`: UInt32 = 0
  /// @brief Preserve original persons as pal_vision_msgs/HogDetection.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `persons`: [Ros1Pal_vision_msgsHogDetection] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`imgID`)
    guard self.`persons`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`persons`.count))
    for e in self.`persons` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsHogDetections {
    var v = Ros1Pal_vision_msgsHogDetections()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`imgID` = try r.integer(UInt32.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`persons` = []
    v.`persons`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`persons`.append(try Ros1Pal_vision_msgsHogDetection.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/LegDetections.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsLegDetections: Canonical {
  public static let maximumWireBytes = 244
  public static let codecIdentity =
    "UWVMROS1_e175101eca8d474e2569d4e4e125fd84e8c8a73c957472cf7e4b6aae9dfa0549"
  public static let nativeType = "pal_vision_msgs/LegDetections"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original position3D as geometry_msgs/Point.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `position3D`: [Ros1Geometry_msgsPoint] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`position3D`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`position3D`.count))
    for e in self.`position3D` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsLegDetections {
    var v = Ros1Pal_vision_msgsLegDetections()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`position3D` = []
    v.`position3D`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`position3D`.append(try Ros1Geometry_msgsPoint.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/LookToPixelRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsLookToPixelRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_ead4559133ef68c0248064d865cceaeb335f6104424a199ebc4452e6878383ff"
  public static let nativeType = "pal_vision_msgs/LookToPixelRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original x as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `x`: Float = 0
  /// @brief Preserve original y as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `y`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsLookToPixelRequest
  {
    var v = Ros1Pal_vision_msgsLookToPixelRequest()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_vision_msgs/LookToPixelResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_vision_msgsLookToPixelResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_137d83d2b779310ee91811bd5a17c4d232fb2114246da1520656876385562ae1"
  public static let nativeType = "pal_vision_msgs/LookToPixelResponse"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_vision_msgsLookToPixelResponse
  {
    var v = Ros1Pal_vision_msgsLookToPixelResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_visual_localization_msgs/VisualLocAddPlaceGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6d84634e1bebf082190a3992acd2379d94a375158775cf0a01c430779105049d"
  public static let nativeType = "pal_visual_localization_msgs/VisualLocAddPlaceGoal"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal
  {
    var v = Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_visual_localization_msgs/VisualLocAddPlaceResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_604eadb052736d8c3999fff8ab635886d87f779943632ce01e89742d591c265a"
  public static let nativeType = "pal_visual_localization_msgs/VisualLocAddPlaceResult"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original res as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `res`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`res`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult
  {
    var v = Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult()
    v.`res` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_visual_localization_msgs/VisualLocAddPlaceFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ceb1b2594d5bf763de97096f0bb683276be372393e779d3b3334b3adc7a6f3b6"
  public static let nativeType = "pal_visual_localization_msgs/VisualLocAddPlaceFeedback"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback
  {
    var v = Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_visual_localization_msgs/VisualLocRecognizeGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b1aa9fe3f12a81861385e9421e153869ee3f2ba0949fe55c0ed0fe7170ae4c4a"
  public static let nativeType = "pal_visual_localization_msgs/VisualLocRecognizeGoal"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal
  {
    var v = Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_visual_localization_msgs/VisualLocRecognizeResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_visual_localization_msgsVisualLocRecognizeResult: Canonical {
  public static let maximumWireBytes = 497
  public static let codecIdentity =
    "UWVMROS1_e20e2e4ba374756256518e0e7075689be3c87660703926ab5d1cb33c8ff1c6da"
  public static let nativeType = "pal_visual_localization_msgs/VisualLocRecognizeResult"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original success as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `success`: Bool = false
  /// @brief Preserve original confidence as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `confidence`: Double = 0
  /// @brief Preserve original estimatedPose as geometry_msgs/PoseWithCovarianceStamped.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `estimatedPose`: Ros1Geometry_msgsPoseWithCovarianceStamped =
    Ros1Geometry_msgsPoseWithCovarianceStamped()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.float64(self.`confidence`)
    try self.`estimatedPose`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_visual_localization_msgsVisualLocRecognizeResult
  {
    var v = Ros1Pal_visual_localization_msgsVisualLocRecognizeResult()
    v.`success` = try r.boolean()
    v.`confidence` = try r.float64()
    v.`estimatedPose` = try Ros1Geometry_msgsPoseWithCovarianceStamped.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_visual_localization_msgs/VisualLocRecognizeFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_07206e6717d8ba2621e7a00f69d65a2e56102b64e84e0ef66e44e93a4468e65e"
  public static let nativeType = "pal_visual_localization_msgs/VisualLocRecognizeFeedback"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback
  {
    var v = Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_walking_msgs/ContactState.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_walking_msgsContactState: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_632dc784a31db78e0b56fe3c2f324e19dcdcac6d6bdc72e0f9fab21e2a8ea3a8"
  public static let nativeType = "pal_walking_msgs/ContactState"
  public static let nativeIdentity: String? = nil
  public static let `TYPE_DS`: UInt8 = 0
  public static let `TYPE_LSS`: UInt8 = 1
  public static let `TYPE_RSS`: UInt8 = 2
  /// @brief Preserve original type as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `type`: UInt8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`type`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_walking_msgsContactState {
    var v = Ros1Pal_walking_msgsContactState()
    v.`type` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_walking_msgs/MoveHipFeetRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_walking_msgsMoveHipFeetRequest: Canonical {
  public static let maximumWireBytes = 1248
  public static let codecIdentity =
    "UWVMROS1_5fb083fec01e8eab76d0023802e8ec7590fc993ba7a68d1a2033c43065131c5c"
  public static let nativeType = "pal_walking_msgs/MoveHipFeetRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original hip_poses as geometry_msgs/PoseArray.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `hip_poses`: Ros1Geometry_msgsPoseArray = Ros1Geometry_msgsPoseArray()
  /// @brief Preserve original left_foot_poses as geometry_msgs/PoseArray.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `left_foot_poses`: Ros1Geometry_msgsPoseArray = Ros1Geometry_msgsPoseArray()
  /// @brief Preserve original right_foot_poses as geometry_msgs/PoseArray.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `right_foot_poses`: Ros1Geometry_msgsPoseArray = Ros1Geometry_msgsPoseArray()
  /// @brief Preserve original times_after_previous as duration.
  /// @details At most 16 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `times_after_previous`: [Ros1Duration] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`hip_poses`.write(to: &w)
    try self.`left_foot_poses`.write(to: &w)
    try self.`right_foot_poses`.write(to: &w)
    guard self.`times_after_previous`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`times_after_previous`.count))
    for e in self.`times_after_previous` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_walking_msgsMoveHipFeetRequest
  {
    var v = Ros1Pal_walking_msgsMoveHipFeetRequest()
    v.`hip_poses` = try Ros1Geometry_msgsPoseArray.read(from: &r)
    v.`left_foot_poses` = try Ros1Geometry_msgsPoseArray.read(from: &r)
    v.`right_foot_poses` = try Ros1Geometry_msgsPoseArray.read(from: &r)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`times_after_previous` = []
    v.`times_after_previous`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`times_after_previous`.append(try Ros1Duration.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_walking_msgs/MoveHipFeetResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_walking_msgsMoveHipFeetResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d5adee26d6498a466a886f9869495d90adae91081287903faa9b90ac6ab2306e"
  public static let nativeType = "pal_walking_msgs/MoveHipFeetResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_walking_msgsMoveHipFeetResponse
  {
    var v = Ros1Pal_walking_msgsMoveHipFeetResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_walking_msgs/SMStatus.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_walking_msgsSMStatus: Canonical {
  public static let maximumWireBytes = 170
  public static let codecIdentity =
    "UWVMROS1_490c0966b36899ce64a1271d9c1eaf9802b9285eb7835b0565a3e2bbf01a0c6e"
  public static let nativeType = "pal_walking_msgs/SMStatus"
  public static let nativeIdentity: String? = nil
  public static let `right`: UInt8 = 1
  public static let `left`: UInt8 = 0
  /// @brief Preserve original left_foot_pose as geometry_msgs/Pose.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `left_foot_pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Preserve original right_foot_pose as geometry_msgs/Pose.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `right_foot_pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Preserve original stance_foot_side as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `stance_foot_side`: UInt8 = 0
  /// @brief Preserve original future_swing_landing_pose as geometry_msgs/Pose.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `future_swing_landing_pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Preserve original future_swing_side as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `future_swing_side`: UInt8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`left_foot_pose`.write(to: &w)
    try self.`right_foot_pose`.write(to: &w)
    try w.integer(self.`stance_foot_side`)
    try self.`future_swing_landing_pose`.write(to: &w)
    try w.integer(self.`future_swing_side`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_walking_msgsSMStatus {
    var v = Ros1Pal_walking_msgsSMStatus()
    v.`left_foot_pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`right_foot_pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`stance_foot_side` = try r.integer(UInt8.self)
    v.`future_swing_landing_pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`future_swing_side` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_walking_msgs/SitRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_walking_msgsSitRequest: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_8dc49a028691c5be0752fad0ad7cf1d2d4cc3e093ff8fe53b0f0f5dcf66241da"
  public static let nativeType = "pal_walking_msgs/SitRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original down as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `down`: Bool = false
  /// @brief Preserve original weight_threshold as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `weight_threshold`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`down`)
    try w.float64(self.`weight_threshold`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_walking_msgsSitRequest {
    var v = Ros1Pal_walking_msgsSitRequest()
    v.`down` = try r.boolean()
    v.`weight_threshold` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_walking_msgs/SitResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_walking_msgsSitResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6af9975562de7fe4864f8409ec5c1210f5d144c872e0ce9b553a391a1790df35"
  public static let nativeType = "pal_walking_msgs/SitResponse"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_walking_msgsSitResponse {
    var v = Ros1Pal_walking_msgsSitResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_walking_msgs/StepOverRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_walking_msgsStepOverRequest: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_00736de4ce830d33f33d93ca8c703dfc555f0ecc2ac86d90002929f4cefaedde"
  public static let nativeType = "pal_walking_msgs/StepOverRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original step_length as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `step_length`: Double = 0
  /// @brief Preserve original step_time as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `step_time`: Double = 0
  /// @brief Preserve original step_height as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `step_height`: Double = 0
  /// @brief Preserve original z_lipm as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `z_lipm`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`step_length`)
    try w.float64(self.`step_time`)
    try w.float64(self.`step_height`)
    try w.float64(self.`z_lipm`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_walking_msgsStepOverRequest {
    var v = Ros1Pal_walking_msgsStepOverRequest()
    v.`step_length` = try r.float64()
    v.`step_time` = try r.float64()
    v.`step_height` = try r.float64()
    v.`z_lipm` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_walking_msgs/StepOverResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_walking_msgsStepOverResponse: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_e7803ee0f8ffd0f2c1eb698670454e2eaae232d60f629e5f0b3b57f876dce944"
  public static let nativeType = "pal_walking_msgs/StepOverResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original result as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `result`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`result`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_walking_msgsStepOverResponse {
    var v = Ros1Pal_walking_msgsStepOverResponse()
    v.`result` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_walking_msgs/WalkStepsRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_walking_msgsWalkStepsRequest: Canonical {
  public static let maximumWireBytes = 20
  public static let codecIdentity =
    "UWVMROS1_eab28f422b38937bef44f8c9ef8c5f08283d3fefd0f16865a91e641b489e446a"
  public static let nativeType = "pal_walking_msgs/WalkStepsRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original nsteps as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `nsteps`: Int32 = 0
  /// @brief Preserve original step_length as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `step_length`: Double = 0
  /// @brief Preserve original step_time as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `step_time`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`nsteps`)
    try w.float64(self.`step_length`)
    try w.float64(self.`step_time`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_walking_msgsWalkStepsRequest {
    var v = Ros1Pal_walking_msgsWalkStepsRequest()
    v.`nsteps` = try r.integer(Int32.self)
    v.`step_length` = try r.float64()
    v.`step_time` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_walking_msgs/WalkStepsResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_walking_msgsWalkStepsResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_69cf3d1ffea1bbf362863bbaf88af9177ab0324312b2549fb248d3fa21a9522f"
  public static let nativeType = "pal_walking_msgs/WalkStepsResponse"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_walking_msgsWalkStepsResponse
  {
    var v = Ros1Pal_walking_msgsWalkStepsResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_walking_msgs/WalkingStatus.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_walking_msgsWalkingStatus: Canonical {
  public static let maximumWireBytes = 336
  public static let codecIdentity =
    "UWVMROS1_8831e9c68eeb3e065e2986f7671b2925425e07b18a48228e977f984fb9c09e02"
  public static let nativeType = "pal_walking_msgs/WalkingStatus"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original hip_reference_pose as geometry_msgs/Pose.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `hip_reference_pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Preserve original foot_reference_pose as geometry_msgs/Pose.
  /// @details Exactly 2 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `foot_reference_pose`: [Ros1Geometry_msgsPose] = Array(
    repeating: Ros1Geometry_msgsPose(), count: 2)
  /// @brief Preserve original zmp_reference as geometry_msgs/Point.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `zmp_reference`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`hip_reference_pose`.write(to: &w)
    guard self.`foot_reference_pose`.count == 2 else { throw RosError(22) }
    for e in self.`foot_reference_pose` {
      try e.write(to: &w)
    }
    try self.`zmp_reference`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_walking_msgsWalkingStatus {
    var v = Ros1Pal_walking_msgsWalkingStatus()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`hip_reference_pose` = try Ros1Geometry_msgsPose.read(from: &r)
    let count2 = 2
    v.`foot_reference_pose` = []
    v.`foot_reference_pose`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`foot_reference_pose`.append(try Ros1Geometry_msgsPose.read(from: &r))
    }
    v.`zmp_reference` = try Ros1Geometry_msgsPoint.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 std_msgs/Duration.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Std_msgsDuration: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_195444342590aabe87833226c1cce7cc900519e5b1fe13ff460406396e3ce175"
  public static let nativeType = "std_msgs/Duration"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original data as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `data`: Ros1Duration = Ros1Duration()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`data`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsDuration {
    var v = Ros1Std_msgsDuration()
    v.`data` = try Ros1Duration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_walking_msgs/WalkingStep.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_walking_msgsWalkingStep: Canonical {
  public static let maximumWireBytes = 181
  public static let codecIdentity =
    "UWVMROS1_b6bacf08a7ff7277b0c96730c5b2691540af208dd61f2662990253ba4d1925dd"
  public static let nativeType = "pal_walking_msgs/WalkingStep"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original step_target as humanoid_nav_msgs/StepTarget.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `step_target`: Ros1Humanoid_nav_msgsStepTarget = Ros1Humanoid_nav_msgsStepTarget()
  /// @brief Preserve original step_duration as std_msgs/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `step_duration`: Ros1Std_msgsDuration = Ros1Std_msgsDuration()
  /// @brief Preserve original step_list_size as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `step_list_size`: Int32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`step_target`.write(to: &w)
    try self.`step_duration`.write(to: &w)
    try w.integer(self.`step_list_size`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_walking_msgsWalkingStep {
    var v = Ros1Pal_walking_msgsWalkingStep()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`step_target` = try Ros1Humanoid_nav_msgsStepTarget.read(from: &r)
    v.`step_duration` = try Ros1Std_msgsDuration.read(from: &r)
    v.`step_list_size` = try r.integer(Int32.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_wifi_localization_msgs/GetWifiMapRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_wifi_localization_msgsGetWifiMapRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_91f308677881cbf1a91911f58602b59adabc3935db966392d28ad81acd70d832"
  public static let nativeType = "pal_wifi_localization_msgs/GetWifiMapRequest"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_wifi_localization_msgsGetWifiMapRequest
  {
    var v = Ros1Pal_wifi_localization_msgsGetWifiMapRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_wifi_localization_msgs/WifiSignal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_wifi_localization_msgsWifiSignal: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_f2397d50da735cc25a1392f79d7dca7e1a4bf2837e5981cb987bdfbb0dcebf71"
  public static let nativeType = "pal_wifi_localization_msgs/WifiSignal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original id as std_msgs/String.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `id`: Ros1Std_msgsString = Ros1Std_msgsString()
  /// @brief Preserve original mean as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `mean`: Float = 0
  /// @brief Preserve original std_dev as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `std_dev`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`id`.write(to: &w)
    try w.float32(self.`mean`)
    try w.float32(self.`std_dev`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_wifi_localization_msgsWifiSignal
  {
    var v = Ros1Pal_wifi_localization_msgsWifiSignal()
    v.`id` = try Ros1Std_msgsString.read(from: &r)
    v.`mean` = try r.float32()
    v.`std_dev` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_wifi_localization_msgs/WifiSignalList.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_wifi_localization_msgsWifiSignalList: Canonical {
  public static let maximumWireBytes = 580
  public static let codecIdentity =
    "UWVMROS1_9a15f8c545d1fb461b8b4d42c31fe7803392a5277c9ee0377aa9b79888ae64fc"
  public static let nativeType = "pal_wifi_localization_msgs/WifiSignalList"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original networks as pal_wifi_localization_msgs/WifiSignal.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `networks`: [Ros1Pal_wifi_localization_msgsWifiSignal] = []
  /// @brief Preserve original start_time as time.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `start_time`: Ros1Time = Ros1Time()
  /// @brief Preserve original end_time as time.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `end_time`: Ros1Time = Ros1Time()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`networks`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`networks`.count))
    for e in self.`networks` {
      try e.write(to: &w)
    }
    try self.`start_time`.write(to: &w)
    try self.`end_time`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_wifi_localization_msgsWifiSignalList
  {
    var v = Ros1Pal_wifi_localization_msgsWifiSignalList()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 4 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`networks` = []
    v.`networks`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`networks`.append(try Ros1Pal_wifi_localization_msgsWifiSignal.read(from: &r))
    }
    v.`start_time` = try Ros1Time.read(from: &r)
    v.`end_time` = try Ros1Time.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_wifi_localization_msgs/WifiSignalMap.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_wifi_localization_msgsWifiSignalMap: Canonical {
  public static let maximumWireBytes = 2548
  public static let codecIdentity =
    "UWVMROS1_948926ffa19fd58fabf24b61ae0d2334e09b3815358f79b521dd3b84fe231a3e"
  public static let nativeType = "pal_wifi_localization_msgs/WifiSignalMap"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original info as nav_msgs/MapMetaData.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `info`: Ros1Nav_msgsMapMetaData = Ros1Nav_msgsMapMetaData()
  /// @brief Preserve original sectors as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `sectors`: UInt32 = 0
  /// @brief Preserve original data as pal_wifi_localization_msgs/WifiSignalList.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `data`: [Ros1Pal_wifi_localization_msgsWifiSignalList] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`info`.write(to: &w)
    try w.integer(self.`sectors`)
    guard self.`data`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_wifi_localization_msgsWifiSignalMap
  {
    var v = Ros1Pal_wifi_localization_msgsWifiSignalMap()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`info` = try Ros1Nav_msgsMapMetaData.read(from: &r)
    v.`sectors` = try r.integer(UInt32.self)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 4 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`data` = []
    v.`data`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`data`.append(try Ros1Pal_wifi_localization_msgsWifiSignalList.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_wifi_localization_msgs/GetWifiMapResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_wifi_localization_msgsGetWifiMapResponse: Canonical {
  public static let maximumWireBytes = 2548
  public static let codecIdentity =
    "UWVMROS1_576278a043277d7621c6fc90fbbf583a0ad0ef9d7704fb8b5cca8b1b86c7bcb3"
  public static let nativeType = "pal_wifi_localization_msgs/GetWifiMapResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original map as pal_wifi_localization_msgs/WifiSignalMap.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `map`: Ros1Pal_wifi_localization_msgsWifiSignalMap =
    Ros1Pal_wifi_localization_msgsWifiSignalMap()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`map`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_wifi_localization_msgsGetWifiMapResponse
  {
    var v = Ros1Pal_wifi_localization_msgsGetWifiMapResponse()
    v.`map` = try Ros1Pal_wifi_localization_msgsWifiSignalMap.read(from: &r)
    return v
  }
}
