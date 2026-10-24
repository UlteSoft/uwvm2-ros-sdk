/// UWVM_COMPLETE_FIELD_CONTRACTS
/// @details Field domains below come from the unchanged canonical source catalog.
/**
 * @file records.swift
 * @brief Provide the complete pal ros1_humble_devel canonical value surface.
 * @details The original 275 record catalog retains field order, constants, defaults and quotas.
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
/// @brief Own every original field of ROS1 geometry_msgs/PoseStamped.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Geometry_msgsPoseStamped: Canonical {
  public static let maximumWireBytes = 200
  public static let codecIdentity =
    "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95"
  public static let nativeType = "geometry_msgs/PoseStamped"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original pose as geometry_msgs/Pose.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPoseStamped {
    var v = Ros1Geometry_msgsPoseStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`pose` = try Ros1Geometry_msgsPose.read(from: &r)
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
/// @brief Own every original field of ROS1 nav_msgs/OccupancyGrid.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Nav_msgsOccupancyGrid: Canonical {
  public static let maximumWireBytes = 480
  public static let codecIdentity =
    "UWVMROS1_01c46df6fd069eca1664115a5bfaefa2497f0b44b1c0b11b6f293cb56b0c837d"
  public static let nativeType = "nav_msgs/OccupancyGrid"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original info as nav_msgs/MapMetaData.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `info`: Ros1Nav_msgsMapMetaData = Ros1Nav_msgsMapMetaData()
  /// @brief Preserve original data as int8.
  /// @details At most 256 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `data`: [Int8] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`info`.write(to: &w)
    guard self.`data`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Nav_msgsOccupancyGrid {
    var v = Ros1Nav_msgsOccupancyGrid()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`info` = try Ros1Nav_msgsMapMetaData.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 256 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`data` = []
    v.`data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`data`.append(try r.integer(Int8.self))
    }
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
/// @brief Own every original field of ROS1 pal_navigation_msgs/AcknowledgmentRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsAcknowledgmentRequest: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_0249fb5130ed44b9127f0cb73472fc4366de614fcc3be68ed3e7bf2a4636cae5"
  public static let nativeType = "pal_navigation_msgs/AcknowledgmentRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original input as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `input`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`input`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsAcknowledgmentRequest
  {
    var v = Ros1Pal_navigation_msgsAcknowledgmentRequest()
    v.`input` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/AcknowledgmentResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsAcknowledgmentResponse: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_cbc0f207907bc8de9f5c04bbf13c54ce81e72797ffadd0fea44980d1aa2658ae"
  public static let nativeType = "pal_navigation_msgs/AcknowledgmentResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original output as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `output`: Bool = false
  /// @brief Preserve original error as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `error`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`output`)
    try w.string(self.`error`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsAcknowledgmentResponse
  {
    var v = Ros1Pal_navigation_msgsAcknowledgmentResponse()
    v.`output` = try r.boolean()
    v.`error` = try r.string(bound: 128)
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
/// @brief Own every original field of ROS1 pal_navigation_msgs/AvailableMaps.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsAvailableMaps: Canonical {
  public static let maximumWireBytes = 532
  public static let codecIdentity =
    "UWVMROS1_3ac5ca4dc811d8082ad915e4f81eca379f2165a639dc113bb078f9952ed7322d"
  public static let nativeType = "pal_navigation_msgs/AvailableMaps"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original map_names as std_msgs/String.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `map_names`: [Ros1Std_msgsString] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`map_names`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`map_names`.count))
    for e in self.`map_names` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsAvailableMaps {
    var v = Ros1Pal_navigation_msgsAvailableMaps()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 4 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`map_names` = []
    v.`map_names`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`map_names`.append(try Ros1Std_msgsString.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/ChangeBuildingRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsChangeBuildingRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_6144b47179187bf53c27112461762b29e9af1841704a53981e0b633d798c094c"
  public static let nativeType = "pal_navigation_msgs/ChangeBuildingRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original building_name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `building_name`: String = ""
  /// @brief Preserve original floor_name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `floor_name`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`building_name`, bound: 128)
    try w.string(self.`floor_name`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsChangeBuildingRequest
  {
    var v = Ros1Pal_navigation_msgsChangeBuildingRequest()
    v.`building_name` = try r.string(bound: 128)
    v.`floor_name` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/ChangeBuildingResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsChangeBuildingResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_561da528ec2a5cc779e660da2d9218d3b64339cf0a7c3a889aabb5d8aa63e640"
  public static let nativeType = "pal_navigation_msgs/ChangeBuildingResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsChangeBuildingResponse
  {
    var v = Ros1Pal_navigation_msgsChangeBuildingResponse()
    v.`success` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/ChangeMapRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsChangeMapRequest: Canonical {
  public static let maximumWireBytes = 480
  public static let codecIdentity =
    "UWVMROS1_5b418e8170efc2707f0667474c75034109e36b29e3d00f0b6ae1410a59beb4bf"
  public static let nativeType = "pal_navigation_msgs/ChangeMapRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original map as nav_msgs/OccupancyGrid.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `map`: Ros1Nav_msgsOccupancyGrid = Ros1Nav_msgsOccupancyGrid()
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
    -> Ros1Pal_navigation_msgsChangeMapRequest
  {
    var v = Ros1Pal_navigation_msgsChangeMapRequest()
    v.`map` = try Ros1Nav_msgsOccupancyGrid.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/ChangeMapResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsChangeMapResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_29d8c048afd7b6e76c7045decd5d8af1d994db75f4af2c2e663d95c3579077f5"
  public static let nativeType = "pal_navigation_msgs/ChangeMapResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsChangeMapResponse
  {
    var v = Ros1Pal_navigation_msgsChangeMapResponse()
    v.`success` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/ChangeSyncMapRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsChangeSyncMapRequest: Canonical {
  public static let maximumWireBytes = 2728
  public static let codecIdentity =
    "UWVMROS1_d289a4940286f55bfade22fc3c87a511067e1f1ec078d8735acf455469846de5"
  public static let nativeType = "pal_navigation_msgs/ChangeSyncMapRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original map as nav_msgs/OccupancyGrid.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `map`: Ros1Nav_msgsOccupancyGrid = Ros1Nav_msgsOccupancyGrid()
  /// @brief Preserve original map_name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `map_name`: String = ""
  /// @brief Preserve original sources as string.
  /// @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `sources`: [String] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`map`.write(to: &w)
    try w.string(self.`map_name`, bound: 128)
    guard self.`sources`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`sources`.count))
    for e in self.`sources` {
      try w.string(e, bound: 128)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsChangeSyncMapRequest
  {
    var v = Ros1Pal_navigation_msgsChangeSyncMapRequest()
    v.`map` = try Ros1Nav_msgsOccupancyGrid.read(from: &r)
    v.`map_name` = try r.string(bound: 128)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`sources` = []
    v.`sources`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`sources`.append(try r.string(bound: 128))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/ChangeSyncMapResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsChangeSyncMapResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d10c4bb1230e579ed4b24537211cdfd6d7d155a7297681a14af9a5d9a3f2ab80"
  public static let nativeType = "pal_navigation_msgs/ChangeSyncMapResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsChangeSyncMapResponse
  {
    var v = Ros1Pal_navigation_msgsChangeSyncMapResponse()
    v.`success` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/DisableEmergencyRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsDisableEmergencyRequest: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_70dbc31ae4309c03fa21a0247c16598ca1a9056243963854e9e17a4648cc599c"
  public static let nativeType = "pal_navigation_msgs/DisableEmergencyRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original second as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `second`: Double = 0
  /// @brief Preserve original useLEDs as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `useLEDs`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`second`)
    try w.boolean(self.`useLEDs`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsDisableEmergencyRequest
  {
    var v = Ros1Pal_navigation_msgsDisableEmergencyRequest()
    v.`second` = try r.float64()
    v.`useLEDs` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/DisableEmergencyResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsDisableEmergencyResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c5b7fa73ccceb51e2a6fa950f690a65f91f046644b75f878964d322d9b6573a4"
  public static let nativeType = "pal_navigation_msgs/DisableEmergencyResponse"
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
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsDisableEmergencyResponse
  {
    var v = Ros1Pal_navigation_msgsDisableEmergencyResponse()
    v.`success` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/Emergency.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsEmergency: Canonical {
  public static let maximumWireBytes = 535
  public static let codecIdentity =
    "UWVMROS1_00339764ab9f5d7e90ce08b5675434a1113e38b31e9f94166a6c8b994b02d635"
  public static let nativeType = "pal_navigation_msgs/Emergency"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original data as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `data`: Bool = false
  /// @brief Preserve original forward as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `forward`: Bool = false
  /// @brief Preserve original backward as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `backward`: Bool = false
  /// @brief Preserve original msgs as std_msgs/String.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `msgs`: [Ros1Std_msgsString] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`data`)
    try w.boolean(self.`forward`)
    try w.boolean(self.`backward`)
    guard self.`msgs`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`msgs`.count))
    for e in self.`msgs` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsEmergency {
    var v = Ros1Pal_navigation_msgsEmergency()
    v.`data` = try r.boolean()
    v.`forward` = try r.boolean()
    v.`backward` = try r.boolean()
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 4 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`msgs` = []
    v.`msgs`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`msgs`.append(try Ros1Std_msgsString.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/EulerAngles.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsEulerAngles: Canonical {
  public static let maximumWireBytes = 157
  public static let codecIdentity =
    "UWVMROS1_cc1bd6ac99235a0d92e3f458be257dcd81c88763822f7e9c5b3f034a76691d0f"
  public static let nativeType = "pal_navigation_msgs/EulerAngles"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original sequence as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `sequence`: String = ""
  /// @brief Preserve original angles_in_degrees as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `angles_in_degrees`: Bool = false
  /// @brief Preserve original ai as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `ai`: Double = 0
  /// @brief Preserve original aj as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `aj`: Double = 0
  /// @brief Preserve original ak as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `ak`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`sequence`, bound: 128)
    try w.boolean(self.`angles_in_degrees`)
    try w.float64(self.`ai`)
    try w.float64(self.`aj`)
    try w.float64(self.`ak`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsEulerAngles {
    var v = Ros1Pal_navigation_msgsEulerAngles()
    v.`sequence` = try r.string(bound: 128)
    v.`angles_in_degrees` = try r.boolean()
    v.`ai` = try r.float64()
    v.`aj` = try r.float64()
    v.`ak` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/EulerAnglesStamped.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsEulerAnglesStamped: Canonical {
  public static let maximumWireBytes = 301
  public static let codecIdentity =
    "UWVMROS1_595448173da01bddbdba145a6bd1e6269a37b12ac4a7fdc26ca5cb5083452462"
  public static let nativeType = "pal_navigation_msgs/EulerAnglesStamped"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original angles as pal_navigation_msgs/EulerAngles.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `angles`: Ros1Pal_navigation_msgsEulerAngles = Ros1Pal_navigation_msgsEulerAngles()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`angles`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsEulerAnglesStamped
  {
    var v = Ros1Pal_navigation_msgsEulerAnglesStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`angles` = try Ros1Pal_navigation_msgsEulerAngles.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/ExecuteParkingGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsExecuteParkingGoal: Canonical {
  public static let maximumWireBytes = 281
  public static let codecIdentity =
    "UWVMROS1_5bc772cbbc3a5f90165c84a9f5d81d961a789e78bbbf2fe19706d76be3e3dfae"
  public static let nativeType = "pal_navigation_msgs/ExecuteParkingGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original source_frame as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `source_frame`: String = ""
  /// @brief Preserve original target_frame as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `target_frame`: String = ""
  /// @brief Preserve original backwards as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `backwards`: Bool = false
  /// @brief Preserve original max_lin_vel as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `max_lin_vel`: Double = 0
  /// @brief Preserve original max_rot_vel as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `max_rot_vel`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`source_frame`, bound: 128)
    try w.string(self.`target_frame`, bound: 128)
    try w.boolean(self.`backwards`)
    try w.float64(self.`max_lin_vel`)
    try w.float64(self.`max_rot_vel`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsExecuteParkingGoal
  {
    var v = Ros1Pal_navigation_msgsExecuteParkingGoal()
    v.`source_frame` = try r.string(bound: 128)
    v.`target_frame` = try r.string(bound: 128)
    v.`backwards` = try r.boolean()
    v.`max_lin_vel` = try r.float64()
    v.`max_rot_vel` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/ExecuteParkingResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsExecuteParkingResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_51f06f36f320cad8e090e602ad2b390141b364fc4d13ea92a2cbf1cfb784f1ca"
  public static let nativeType = "pal_navigation_msgs/ExecuteParkingResult"
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
    -> Ros1Pal_navigation_msgsExecuteParkingResult
  {
    var v = Ros1Pal_navigation_msgsExecuteParkingResult()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/ExecuteParkingFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsExecuteParkingFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_54fd7db88b179345d32957a36858d4dc1be0e3d1bdbee1ae2051cb69feabd842"
  public static let nativeType = "pal_navigation_msgs/ExecuteParkingFeedback"
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
    -> Ros1Pal_navigation_msgsExecuteParkingFeedback
  {
    var v = Ros1Pal_navigation_msgsExecuteParkingFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/FinalApproachPoseRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsFinalApproachPoseRequest: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_52d199aa79bb76f00cff19792aefd0414fe7319a5f2e4f6c74f88ff7d3810f16"
  public static let nativeType = "pal_navigation_msgs/FinalApproachPoseRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original pose as geometry_msgs/Pose.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsFinalApproachPoseRequest
  {
    var v = Ros1Pal_navigation_msgsFinalApproachPoseRequest()
    v.`pose` = try Ros1Geometry_msgsPose.read(from: &r)
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
/// @brief Own every original field of ROS1 pal_navigation_msgs/FinalApproachPoseResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsFinalApproachPoseResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b0fdbf02ad6c5cd8352a6b66994bd075acfe88027276b560edb8f0f37ba1bf09"
  public static let nativeType = "pal_navigation_msgs/FinalApproachPoseResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original done as std_msgs/Bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `done`: Ros1Std_msgsBool = Ros1Std_msgsBool()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`done`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsFinalApproachPoseResponse
  {
    var v = Ros1Pal_navigation_msgsFinalApproachPoseResponse()
    v.`done` = try Ros1Std_msgsBool.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GetMapConfigurationRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGetMapConfigurationRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4bfa959fc39c0b51bfa7b9874ff219c2ec1ec59462aa46bf3e504571bda6937e"
  public static let nativeType = "pal_navigation_msgs/GetMapConfigurationRequest"
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
    -> Ros1Pal_navigation_msgsGetMapConfigurationRequest
  {
    var v = Ros1Pal_navigation_msgsGetMapConfigurationRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 std_msgs/Float32.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Std_msgsFloat32: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d19ba548217238df8898fc387f092102779ef51eb3dfece19928caf0025b40b9"
  public static let nativeType = "std_msgs/Float32"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original data as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `data`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`data`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsFloat32 {
    var v = Ros1Std_msgsFloat32()
    v.`data` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/Highways.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsHighways: Canonical {
  public static let maximumWireBytes = 237
  public static let codecIdentity =
    "UWVMROS1_f3717c2a5b4e42173901f70af63a28b4dd00e24adf686212a01ff442379f1c43"
  public static let nativeType = "pal_navigation_msgs/Highways"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original points as geometry_msgs/Point.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `points`: [Ros1Geometry_msgsPoint] = []
  /// @brief Preserve original directional as std_msgs/Bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `directional`: Ros1Std_msgsBool = Ros1Std_msgsBool()
  /// @brief Preserve original line_width as std_msgs/Float32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `line_width`: Ros1Std_msgsFloat32 = Ros1Std_msgsFloat32()
  /// @brief Preserve original name as std_msgs/String.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `name`: Ros1Std_msgsString = Ros1Std_msgsString()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`points`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`points`.count))
    for e in self.`points` {
      try e.write(to: &w)
    }
    try self.`directional`.write(to: &w)
    try self.`line_width`.write(to: &w)
    try self.`name`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsHighways {
    var v = Ros1Pal_navigation_msgsHighways()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 4 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`points` = []
    v.`points`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`points`.append(try Ros1Geometry_msgsPoint.read(from: &r))
    }
    v.`directional` = try Ros1Std_msgsBool.read(from: &r)
    v.`line_width` = try Ros1Std_msgsFloat32.read(from: &r)
    v.`name` = try Ros1Std_msgsString.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 sensor_msgs/ChannelFloat32.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Sensor_msgsChannelFloat32: Canonical {
  public static let maximumWireBytes = 200
  public static let codecIdentity =
    "UWVMROS1_a164e6a7d124c3c1d5cc165f622c492079b7b31686d4bcff3f8dc45b20a0213b"
  public static let nativeType = "sensor_msgs/ChannelFloat32"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original values as float32.
  /// @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `values`: [Float] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    guard self.`values`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.float32(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsChannelFloat32 {
    var v = Ros1Sensor_msgsChannelFloat32()
    v.`name` = try r.string(bound: 128)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`values` = []
    v.`values`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`values`.append(try r.float32())
    }
    return v
  }
}
/// @brief Own every original field of ROS1 sensor_msgs/PointCloud.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Sensor_msgsPointCloud: Canonical {
  public static let maximumWireBytes = 1000
  public static let codecIdentity =
    "UWVMROS1_714f5812773665cb9e8cfb03b86e3926eaae188eed2d96cd775c20a9c42a3fce"
  public static let nativeType = "sensor_msgs/PointCloud"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original points as geometry_msgs/Point32.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `points`: [Ros1Geometry_msgsPoint32] = []
  /// @brief Preserve original channels as sensor_msgs/ChannelFloat32.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `channels`: [Ros1Sensor_msgsChannelFloat32] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`points`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`points`.count))
    for e in self.`points` {
      try e.write(to: &w)
    }
    guard self.`channels`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`channels`.count))
    for e in self.`channels` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Sensor_msgsPointCloud {
    var v = Ros1Sensor_msgsPointCloud()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`points` = []
    v.`points`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`points`.append(try Ros1Geometry_msgsPoint32.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`channels` = []
    v.`channels`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`channels`.append(try Ros1Sensor_msgsChannelFloat32.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/POI.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsPOI: Canonical {
  public static let maximumWireBytes = 1664
  public static let codecIdentity =
    "UWVMROS1_3750170dda28a05b81a5c1255fb3e88adc6105bef955601cccb82a6639e796a4"
  public static let nativeType = "pal_navigation_msgs/POI"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original points as sensor_msgs/PointCloud.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `points`: Ros1Sensor_msgsPointCloud = Ros1Sensor_msgsPointCloud()
  /// @brief Preserve original ids as std_msgs/String.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `ids`: [Ros1Std_msgsString] = []
  /// @brief Preserve original map_id as std_msgs/String.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `map_id`: Ros1Std_msgsString = Ros1Std_msgsString()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`points`.write(to: &w)
    guard self.`ids`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`ids`.count))
    for e in self.`ids` {
      try e.write(to: &w)
    }
    try self.`map_id`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsPOI {
    var v = Ros1Pal_navigation_msgsPOI()
    v.`points` = try Ros1Sensor_msgsPointCloud.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`ids` = []
    v.`ids`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`ids`.append(try Ros1Std_msgsString.read(from: &r))
    }
    v.`map_id` = try Ros1Std_msgsString.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/POIGroup.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsPOIGroup: Canonical {
  public static let maximumWireBytes = 664
  public static let codecIdentity =
    "UWVMROS1_82b1a1a03ae086b33692ee39850fe1d5df11a3ed3f74cf32204a9851a55b0abf"
  public static let nativeType = "pal_navigation_msgs/POIGroup"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original group_name as std_msgs/String.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `group_name`: Ros1Std_msgsString = Ros1Std_msgsString()
  /// @brief Preserve original poi_names as std_msgs/String.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `poi_names`: [Ros1Std_msgsString] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`group_name`.write(to: &w)
    guard self.`poi_names`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`poi_names`.count))
    for e in self.`poi_names` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsPOIGroup {
    var v = Ros1Pal_navigation_msgsPOIGroup()
    v.`group_name` = try Ros1Std_msgsString.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`poi_names` = []
    v.`poi_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`poi_names`.append(try Ros1Std_msgsString.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/VisualLocDB.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsVisualLocDB: Canonical {
  public static let maximumWireBytes = 780
  public static let codecIdentity =
    "UWVMROS1_644cacceb6580e474906170240e511dca1427355428ac346eb5ba2a74eceb063"
  public static let nativeType = "pal_navigation_msgs/VisualLocDB"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original documents as uint8.
  /// @details At most 256 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `documents`: [UInt8] = []
  /// @brief Preserve original tree as uint8.
  /// @details At most 256 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `tree`: [UInt8] = []
  /// @brief Preserve original weights as uint8.
  /// @details At most 256 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `weights`: [UInt8] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`documents`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`documents`.count))
    for e in self.`documents` {
      try w.integer(e)
    }
    guard self.`tree`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`tree`.count))
    for e in self.`tree` {
      try w.integer(e)
    }
    guard self.`weights`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`weights`.count))
    for e in self.`weights` {
      try w.integer(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsVisualLocDB {
    var v = Ros1Pal_navigation_msgsVisualLocDB()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 256 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`documents` = []
    v.`documents`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`documents`.append(try r.integer(UInt8.self))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 256 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`tree` = []
    v.`tree`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`tree`.append(try r.integer(UInt8.self))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 256 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`weights` = []
    v.`weights`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`weights`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/NiceMapTransformation.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsNiceMapTransformation: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_0c52375fd069a4fc6f5d93c7652ddaba7e9e0002e40e5d0db64aa77e355d0ef0"
  public static let nativeType = "pal_navigation_msgs/NiceMapTransformation"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original x as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `x`: Double = 0
  /// @brief Preserve original y as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `y`: Double = 0
  /// @brief Preserve original rotYawRad as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `rotYawRad`: Double = 0
  /// @brief Preserve original scale as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `scale`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`rotYawRad`)
    try w.float64(self.`scale`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsNiceMapTransformation
  {
    var v = Ros1Pal_navigation_msgsNiceMapTransformation()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`rotYawRad` = try r.float64()
    v.`scale` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/MapConfiguration.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsMapConfiguration: Canonical {
  public static let maximumWireBytes = 15953
  public static let codecIdentity =
    "UWVMROS1_807b6436f6e7ee13b63cfadc9de5fd38ca3fedd2d0e902c3c7558c1d7b606255"
  public static let nativeType = "pal_navigation_msgs/MapConfiguration"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original numberOfSubMaps as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `numberOfSubMaps`: Int32 = 0
  /// @brief Preserve original highways as pal_navigation_msgs/Highways.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `highways`: [Ros1Pal_navigation_msgsHighways] = []
  /// @brief Preserve original pois as pal_navigation_msgs/POI.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pois`: Ros1Pal_navigation_msgsPOI = Ros1Pal_navigation_msgsPOI()
  /// @brief Preserve original vo as pal_navigation_msgs/POI.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `vo`: Ros1Pal_navigation_msgsPOI = Ros1Pal_navigation_msgsPOI()
  /// @brief Preserve original zoi as pal_navigation_msgs/POI.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `zoi`: Ros1Pal_navigation_msgsPOI = Ros1Pal_navigation_msgsPOI()
  /// @brief Preserve original ramps as pal_navigation_msgs/POI.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ramps`: Ros1Pal_navigation_msgsPOI = Ros1Pal_navigation_msgsPOI()
  /// @brief Preserve original poigroups as pal_navigation_msgs/POIGroup.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `poigroups`: [Ros1Pal_navigation_msgsPOIGroup] = []
  /// @brief Preserve original visualLocDb as pal_navigation_msgs/VisualLocDB.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `visualLocDb`: Ros1Pal_navigation_msgsVisualLocDB =
    Ros1Pal_navigation_msgsVisualLocDB()
  /// @brief Preserve original navigation_map as nav_msgs/OccupancyGrid.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `navigation_map`: Ros1Nav_msgsOccupancyGrid = Ros1Nav_msgsOccupancyGrid()
  /// @brief Preserve original user_map as sensor_msgs/Image.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `user_map`: Ros1Sensor_msgsImage = Ros1Sensor_msgsImage()
  /// @brief Preserve original transform as pal_navigation_msgs/NiceMapTransformation.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `transform`: Ros1Pal_navigation_msgsNiceMapTransformation =
    Ros1Pal_navigation_msgsNiceMapTransformation()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`numberOfSubMaps`)
    guard self.`highways`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`highways`.count))
    for e in self.`highways` {
      try e.write(to: &w)
    }
    try self.`pois`.write(to: &w)
    try self.`vo`.write(to: &w)
    try self.`zoi`.write(to: &w)
    try self.`ramps`.write(to: &w)
    guard self.`poigroups`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`poigroups`.count))
    for e in self.`poigroups` {
      try e.write(to: &w)
    }
    try self.`visualLocDb`.write(to: &w)
    try self.`navigation_map`.write(to: &w)
    try self.`user_map`.write(to: &w)
    try self.`transform`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsMapConfiguration
  {
    var v = Ros1Pal_navigation_msgsMapConfiguration()
    v.`numberOfSubMaps` = try r.integer(Int32.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`highways` = []
    v.`highways`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`highways`.append(try Ros1Pal_navigation_msgsHighways.read(from: &r))
    }
    v.`pois` = try Ros1Pal_navigation_msgsPOI.read(from: &r)
    v.`vo` = try Ros1Pal_navigation_msgsPOI.read(from: &r)
    v.`zoi` = try Ros1Pal_navigation_msgsPOI.read(from: &r)
    v.`ramps` = try Ros1Pal_navigation_msgsPOI.read(from: &r)
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 4 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`poigroups` = []
    v.`poigroups`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`poigroups`.append(try Ros1Pal_navigation_msgsPOIGroup.read(from: &r))
    }
    v.`visualLocDb` = try Ros1Pal_navigation_msgsVisualLocDB.read(from: &r)
    v.`navigation_map` = try Ros1Nav_msgsOccupancyGrid.read(from: &r)
    v.`user_map` = try Ros1Sensor_msgsImage.read(from: &r)
    v.`transform` = try Ros1Pal_navigation_msgsNiceMapTransformation.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GetMapConfigurationResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGetMapConfigurationResponse: Canonical {
  public static let maximumWireBytes = 15953
  public static let codecIdentity =
    "UWVMROS1_89a83992447a75bd8c210766b00ca09e0235d872716f57c6e438490c762cd60d"
  public static let nativeType = "pal_navigation_msgs/GetMapConfigurationResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original map_config as pal_navigation_msgs/MapConfiguration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `map_config`: Ros1Pal_navigation_msgsMapConfiguration =
    Ros1Pal_navigation_msgsMapConfiguration()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`map_config`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsGetMapConfigurationResponse
  {
    var v = Ros1Pal_navigation_msgsGetMapConfigurationResponse()
    v.`map_config` = try Ros1Pal_navigation_msgsMapConfiguration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GetNodesRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGetNodesRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_dee03ae04981d1dc0c0b9e7af3a8379f8409e50a790c3be71894d97edb00c4e2"
  public static let nativeType = "pal_navigation_msgs/GetNodesRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsGetNodesRequest
  {
    var v = Ros1Pal_navigation_msgsGetNodesRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GetNodesResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGetNodesResponse: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_415815a998e9ab87b1e40663082bddb4c8d19ac64b9165bb4e70feeaedd110a3"
  public static let nativeType = "pal_navigation_msgs/GetNodesResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original node as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `node`: Int8 = 0
  /// @brief Preserve original totPOI as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `totPOI`: Int8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`node`)
    try w.integer(self.`totPOI`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsGetNodesResponse
  {
    var v = Ros1Pal_navigation_msgsGetNodesResponse()
    v.`node` = try r.integer(Int8.self)
    v.`totPOI` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GetPOIRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGetPOIRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4405875fa858b2faaabaca085a3f16846b311ed7866c36b583887c827ad54cc6"
  public static let nativeType = "pal_navigation_msgs/GetPOIRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsGetPOIRequest {
    var v = Ros1Pal_navigation_msgsGetPOIRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GetPOIResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGetPOIResponse: Canonical {
  public static let maximumWireBytes = 1664
  public static let codecIdentity =
    "UWVMROS1_9d7a0f291c648928f13eeb120c69ce685be71ef4de559684d7b4a758dd74dfe3"
  public static let nativeType = "pal_navigation_msgs/GetPOIResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original poi as pal_navigation_msgs/POI.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `poi`: Ros1Pal_navigation_msgsPOI = Ros1Pal_navigation_msgsPOI()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`poi`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsGetPOIResponse
  {
    var v = Ros1Pal_navigation_msgsGetPOIResponse()
    v.`poi` = try Ros1Pal_navigation_msgsPOI.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GetSubMapRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGetSubMapRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_93c60279a243153baa7ab19b93ae27fabfdfff99e28e961c782f7498550ca377"
  public static let nativeType = "pal_navigation_msgs/GetSubMapRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original index as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `index`: Int8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsGetSubMapRequest
  {
    var v = Ros1Pal_navigation_msgsGetSubMapRequest()
    v.`index` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GetSubMapResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGetSubMapResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0e89187a2b88f7eca611483f7dd8db9b09bad5da07cf65e350b1b1e7dbab6768"
  public static let nativeType = "pal_navigation_msgs/GetSubMapResponse"
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
    -> Ros1Pal_navigation_msgsGetSubMapResponse
  {
    var v = Ros1Pal_navigation_msgsGetSubMapResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GoToGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGoToGoal: Canonical {
  public static let maximumWireBytes = 200
  public static let codecIdentity =
    "UWVMROS1_26ff6f3220dee058063f4d81ed396c7d152b56b735878ed3ce2929eeeebb24d1"
  public static let nativeType = "pal_navigation_msgs/GoToGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original target_pose as geometry_msgs/PoseStamped.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `target_pose`: Ros1Geometry_msgsPoseStamped = Ros1Geometry_msgsPoseStamped()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`target_pose`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsGoToGoal {
    var v = Ros1Pal_navigation_msgsGoToGoal()
    v.`target_pose` = try Ros1Geometry_msgsPoseStamped.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GoToResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGoToResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_89a3eb05425f5a9b3e7a514cc44ffcc0c2492cf0247d51c3fe4b5c1635d09ef1"
  public static let nativeType = "pal_navigation_msgs/GoToResult"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsGoToResult {
    var v = Ros1Pal_navigation_msgsGoToResult()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GoToFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGoToFeedback: Canonical {
  public static let maximumWireBytes = 200
  public static let codecIdentity =
    "UWVMROS1_1ae5791a0a5d958bb57df7596658f1ce3cc369b832229fc407d2205f7076847b"
  public static let nativeType = "pal_navigation_msgs/GoToFeedback"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original base_position as geometry_msgs/PoseStamped.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `base_position`: Ros1Geometry_msgsPoseStamped = Ros1Geometry_msgsPoseStamped()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`base_position`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsGoToFeedback {
    var v = Ros1Pal_navigation_msgsGoToFeedback()
    v.`base_position` = try Ros1Geometry_msgsPoseStamped.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GoToPOIGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGoToPOIGoal: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_76b73385b6183f03926456ae38d666a53db772bc4f9dfbb1060cf7955154f043"
  public static let nativeType = "pal_navigation_msgs/GoToPOIGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original poi as std_msgs/String.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `poi`: Ros1Std_msgsString = Ros1Std_msgsString()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`poi`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsGoToPOIGoal {
    var v = Ros1Pal_navigation_msgsGoToPOIGoal()
    v.`poi` = try Ros1Std_msgsString.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GoToPOIResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGoToPOIResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0378eb6adc3b300e5f7bb037789cfab4a986c333bfcb45d191e26f74867ef807"
  public static let nativeType = "pal_navigation_msgs/GoToPOIResult"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsGoToPOIResult {
    var v = Ros1Pal_navigation_msgsGoToPOIResult()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/GoToPOIFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsGoToPOIFeedback: Canonical {
  public static let maximumWireBytes = 200
  public static let codecIdentity =
    "UWVMROS1_78d8367fcd91cdb4d50ab664251531390a75e7042506bf60f048a3ddffe746d6"
  public static let nativeType = "pal_navigation_msgs/GoToPOIFeedback"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original base_position as geometry_msgs/PoseStamped.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `base_position`: Ros1Geometry_msgsPoseStamped = Ros1Geometry_msgsPoseStamped()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`base_position`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsGoToPOIFeedback
  {
    var v = Ros1Pal_navigation_msgsGoToPOIFeedback()
    v.`base_position` = try Ros1Geometry_msgsPoseStamped.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/JoyPriorityGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsJoyPriorityGoal: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d3276e0ecfb362f00a38258d939d052108742f0b7546303a86ea6cf51aa5d7d1"
  public static let nativeType = "pal_navigation_msgs/JoyPriorityGoal"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsJoyPriorityGoal
  {
    var v = Ros1Pal_navigation_msgsJoyPriorityGoal()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/JoyPriorityResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsJoyPriorityResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_877ee5214e72b1c83d9d1335fe7684bb5688b6f6b84c073168b4f0594fa6b20d"
  public static let nativeType = "pal_navigation_msgs/JoyPriorityResult"
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
    -> Ros1Pal_navigation_msgsJoyPriorityResult
  {
    var v = Ros1Pal_navigation_msgsJoyPriorityResult()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/JoyPriorityFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsJoyPriorityFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_46000d5acaf6e01c153895486f7d8f5b19dd8d7df068459ad51cd767e8a979e7"
  public static let nativeType = "pal_navigation_msgs/JoyPriorityFeedback"
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
    -> Ros1Pal_navigation_msgsJoyPriorityFeedback
  {
    var v = Ros1Pal_navigation_msgsJoyPriorityFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/JoyTurboGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsJoyTurboGoal: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_3a7c13c9dd95b66aa331ca3e9324fed749a2ca0c310f4d00ef8a77afd03cd3a5"
  public static let nativeType = "pal_navigation_msgs/JoyTurboGoal"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsJoyTurboGoal {
    var v = Ros1Pal_navigation_msgsJoyTurboGoal()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/JoyTurboResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsJoyTurboResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_3cafcac3a4a1e9f17e9be6827f3c6888c21c7aa0f644a17b097301346f1fc97d"
  public static let nativeType = "pal_navigation_msgs/JoyTurboResult"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsJoyTurboResult
  {
    var v = Ros1Pal_navigation_msgsJoyTurboResult()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/JoyTurboFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsJoyTurboFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_8028ff57865bec806da57ae6bf19e7928af52b969fe0c6662474f39eb27fbb8e"
  public static let nativeType = "pal_navigation_msgs/JoyTurboFeedback"
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
    -> Ros1Pal_navigation_msgsJoyTurboFeedback
  {
    var v = Ros1Pal_navigation_msgsJoyTurboFeedback()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/LaserImage.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsLaserImage: Canonical {
  public static let maximumWireBytes = 4556
  public static let codecIdentity =
    "UWVMROS1_94e3d294205016ea87f46b5cf6bbc1bb7644f24f900ce1f9cbb4bac6004b66f2"
  public static let nativeType = "pal_navigation_msgs/LaserImage"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original origin as geometry_msgs/Point.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `origin`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Preserve original image as sensor_msgs/CompressedImage.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `image`: Ros1Sensor_msgsCompressedImage = Ros1Sensor_msgsCompressedImage()
  /// @brief Preserve original height as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `height`: Float = 0
  /// @brief Preserve original width as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `width`: Float = 0
  /// @brief Preserve original resolution as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `resolution`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`origin`.write(to: &w)
    try self.`image`.write(to: &w)
    try w.float32(self.`height`)
    try w.float32(self.`width`)
    try w.float32(self.`resolution`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsLaserImage {
    var v = Ros1Pal_navigation_msgsLaserImage()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`origin` = try Ros1Geometry_msgsPoint.read(from: &r)
    v.`image` = try Ros1Sensor_msgsCompressedImage.read(from: &r)
    v.`height` = try r.float32()
    v.`width` = try r.float32()
    v.`resolution` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/ListMapsRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsListMapsRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_5705dfe7ff7affbbcc0469694234dba068652b4e2bf1409ab85cf07ee1fd2385"
  public static let nativeType = "pal_navigation_msgs/ListMapsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsListMapsRequest
  {
    var v = Ros1Pal_navigation_msgsListMapsRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/ListMapsResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsListMapsResponse: Canonical {
  public static let maximumWireBytes = 2117
  public static let codecIdentity =
    "UWVMROS1_348a760b57b0c823d35a49efb65bdf8e11d1bcab3aaf218f51781de9fc5d8033"
  public static let nativeType = "pal_navigation_msgs/ListMapsResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original success as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `success`: Bool = false
  /// @brief Preserve original maps as string.
  /// @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `maps`: [String] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    guard self.`maps`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`maps`.count))
    for e in self.`maps` {
      try w.string(e, bound: 128)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsListMapsResponse
  {
    var v = Ros1Pal_navigation_msgsListMapsResponse()
    v.`success` = try r.boolean()
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`maps` = []
    v.`maps`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`maps`.append(try r.string(bound: 128))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/NavigationStatus.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsNavigationStatus: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_64ae750f64cce12a3e2c6379380c208ee9afab146582280af4b6e445a2ccb105"
  public static let nativeType = "pal_navigation_msgs/NavigationStatus"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original status as std_msgs/String.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `status`: Ros1Std_msgsString = Ros1Std_msgsString()
  /// @brief Preserve original msg as std_msgs/String.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `msg`: Ros1Std_msgsString = Ros1Std_msgsString()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`status`.write(to: &w)
    try self.`msg`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsNavigationStatus
  {
    var v = Ros1Pal_navigation_msgsNavigationStatus()
    v.`status` = try Ros1Std_msgsString.read(from: &r)
    v.`msg` = try Ros1Std_msgsString.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/PolarReading.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsPolarReading: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_8fda83158c3186185b077be3457af2c77bb69a9efc6fedde6b2e0d2bfb902fd2"
  public static let nativeType = "pal_navigation_msgs/PolarReading"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original angle as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `angle`: Float = 0
  /// @brief Preserve original distance as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `distance`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`angle`)
    try w.float32(self.`distance`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsPolarReading {
    var v = Ros1Pal_navigation_msgsPolarReading()
    v.`angle` = try r.float32()
    v.`distance` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/PolarReadingScan.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsPolarReadingScan: Canonical {
  public static let maximumWireBytes = 180
  public static let codecIdentity =
    "UWVMROS1_80d29afd1790fc33923dd1233f118dce0189db42194aac17d6059873ead24245"
  public static let nativeType = "pal_navigation_msgs/PolarReadingScan"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original readings as pal_navigation_msgs/PolarReading.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `readings`: [Ros1Pal_navigation_msgsPolarReading] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`readings`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`readings`.count))
    for e in self.`readings` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsPolarReadingScan
  {
    var v = Ros1Pal_navigation_msgsPolarReadingScan()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`readings` = []
    v.`readings`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`readings`.append(try Ros1Pal_navigation_msgsPolarReading.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/RenameMapRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsRenameMapRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_a0c1e30166e0a09c94ab0192d8f0b34954eb795eb34f2636110dee13a1539852"
  public static let nativeType = "pal_navigation_msgs/RenameMapRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original current_map_name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `current_map_name`: String = ""
  /// @brief Preserve original new_map_name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `new_map_name`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`current_map_name`, bound: 128)
    try w.string(self.`new_map_name`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsRenameMapRequest
  {
    var v = Ros1Pal_navigation_msgsRenameMapRequest()
    v.`current_map_name` = try r.string(bound: 128)
    v.`new_map_name` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/RenameMapResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsRenameMapResponse: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_9a2e4bcfbd5b7b7476b7dad1a51fa19f749806fefe395a55834a38e831b51807"
  public static let nativeType = "pal_navigation_msgs/RenameMapResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original success as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `success`: Bool = false
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
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsRenameMapResponse
  {
    var v = Ros1Pal_navigation_msgsRenameMapResponse()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/SafetyZoneRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsSafetyZoneRequest: Canonical {
  public static let maximumWireBytes = 28
  public static let codecIdentity =
    "UWVMROS1_c7bfca2804a0307c6666f800ecaacccc5daf70a315407b097799b2ea2ce8d53f"
  public static let nativeType = "pal_navigation_msgs/SafetyZoneRequest"
  public static let nativeIdentity: String? = nil
  public static let `NO_SENSORS`: Int8 = 0
  public static let `ALL_SENSORS`: Int8 = 127
  public static let `FRONT_SONARS`: Int8 = 1
  public static let `LEFT_SONARS`: Int8 = 2
  public static let `RIGHT_SONARS`: Int8 = 4
  public static let `BACK_SONARS`: Int8 = 8
  public static let `TORSO_SONARS`: Int8 = 16
  public static let `ONLY_SONARS`: Int8 = 31
  public static let `BASE_LASER`: Int8 = 32
  public static let `TORSO_LASER`: Int8 = 64
  public static let `ONLY_LASERS`: Int8 = 96
  /// @brief Preserve original distance as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `distance`: Double = 0
  /// @brief Preserve original leftAngleRad as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `leftAngleRad`: Double = 0
  /// @brief Preserve original rightAngleRad as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `rightAngleRad`: Double = 0
  /// @brief Preserve original sensorMask as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `sensorMask`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`distance`)
    try w.float64(self.`leftAngleRad`)
    try w.float64(self.`rightAngleRad`)
    try w.integer(self.`sensorMask`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsSafetyZoneRequest
  {
    var v = Ros1Pal_navigation_msgsSafetyZoneRequest()
    v.`distance` = try r.float64()
    v.`leftAngleRad` = try r.float64()
    v.`rightAngleRad` = try r.float64()
    v.`sensorMask` = try r.integer(UInt32.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/SafetyZoneResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsSafetyZoneResponse: Canonical {
  public static let maximumWireBytes = 34
  public static let codecIdentity =
    "UWVMROS1_237e4207a82e5b1a1caccdf5a010cef018d1bcebff8c00a550d11bb5f729d122"
  public static let nativeType = "pal_navigation_msgs/SafetyZoneResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original leftSafe as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `leftSafe`: Bool = false
  /// @brief Preserve original leftMinDist as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `leftMinDist`: Double = 0
  /// @brief Preserve original leftMinDistAngleRad as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `leftMinDistAngleRad`: Double = 0
  /// @brief Preserve original rightSafe as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `rightSafe`: Bool = false
  /// @brief Preserve original rightMinDist as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `rightMinDist`: Double = 0
  /// @brief Preserve original rightMinDistAngleRad as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `rightMinDistAngleRad`: Double = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`leftSafe`)
    try w.float64(self.`leftMinDist`)
    try w.float64(self.`leftMinDistAngleRad`)
    try w.boolean(self.`rightSafe`)
    try w.float64(self.`rightMinDist`)
    try w.float64(self.`rightMinDistAngleRad`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsSafetyZoneResponse
  {
    var v = Ros1Pal_navigation_msgsSafetyZoneResponse()
    v.`leftSafe` = try r.boolean()
    v.`leftMinDist` = try r.float64()
    v.`leftMinDistAngleRad` = try r.float64()
    v.`rightSafe` = try r.boolean()
    v.`rightMinDist` = try r.float64()
    v.`rightMinDistAngleRad` = try r.float64()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/SaveMapRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsSaveMapRequest: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_a5ff7c9bf1f8f2117dda21a7ac565fc743a6753a0de329ea601754bfed7fb07d"
  public static let nativeType = "pal_navigation_msgs/SaveMapRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original directory as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `directory`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`directory`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsSaveMapRequest
  {
    var v = Ros1Pal_navigation_msgsSaveMapRequest()
    v.`directory` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/SaveMapResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsSaveMapResponse: Canonical {
  public static let maximumWireBytes = 397
  public static let codecIdentity =
    "UWVMROS1_afc5ee8548a56c73711b0f2057a399d88b02485b96b9ef7c2c4deec48ddcb064"
  public static let nativeType = "pal_navigation_msgs/SaveMapResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original success as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `success`: Bool = false
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original full_path as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `full_path`: String = ""
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
    try w.boolean(self.`success`)
    try w.string(self.`name`, bound: 128)
    try w.string(self.`full_path`, bound: 128)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsSaveMapResponse
  {
    var v = Ros1Pal_navigation_msgsSaveMapResponse()
    v.`success` = try r.boolean()
    v.`name` = try r.string(bound: 128)
    v.`full_path` = try r.string(bound: 128)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/ServiceStatus.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsServiceStatus: Canonical {
  public static let maximumWireBytes = 146
  public static let codecIdentity =
    "UWVMROS1_c08ab79758b14d1722aaaf425096153a299db64bf4efa8f154d08f20b0d68622"
  public static let nativeType = "pal_navigation_msgs/ServiceStatus"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original serviceName as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `serviceName`: String = ""
  /// @brief Preserve original is_running as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `is_running`: Bool = false
  /// @brief Preserve original update_frequency as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `update_frequency`: Float = 0
  /// @brief Preserve original latest_run_time as time.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `latest_run_time`: Ros1Time = Ros1Time()
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
    try w.string(self.`serviceName`, bound: 128)
    try w.boolean(self.`is_running`)
    try w.float32(self.`update_frequency`)
    try self.`latest_run_time`.write(to: &w)
    try w.boolean(self.`status`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsServiceStatus {
    var v = Ros1Pal_navigation_msgsServiceStatus()
    v.`serviceName` = try r.string(bound: 128)
    v.`is_running` = try r.boolean()
    v.`update_frequency` = try r.float32()
    v.`latest_run_time` = try Ros1Time.read(from: &r)
    v.`status` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/SetMapConfigurationRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsSetMapConfigurationRequest: Canonical {
  public static let maximumWireBytes = 15953
  public static let codecIdentity =
    "UWVMROS1_f8205ddf6c3a59445ee1a9868259a07e4b5d2d88e3e722259410016317b88cd8"
  public static let nativeType = "pal_navigation_msgs/SetMapConfigurationRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original map_config as pal_navigation_msgs/MapConfiguration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `map_config`: Ros1Pal_navigation_msgsMapConfiguration =
    Ros1Pal_navigation_msgsMapConfiguration()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`map_config`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsSetMapConfigurationRequest
  {
    var v = Ros1Pal_navigation_msgsSetMapConfigurationRequest()
    v.`map_config` = try Ros1Pal_navigation_msgsMapConfiguration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/SetMapConfigurationResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsSetMapConfigurationResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ef256f903c5860e7f8eb52e644184d325614940a29b96beb716381d1a066f701"
  public static let nativeType = "pal_navigation_msgs/SetMapConfigurationResponse"
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
    -> Ros1Pal_navigation_msgsSetMapConfigurationResponse
  {
    var v = Ros1Pal_navigation_msgsSetMapConfigurationResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/SetPOIRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsSetPOIRequest: Canonical {
  public static let maximumWireBytes = 1664
  public static let codecIdentity =
    "UWVMROS1_ca248b399762c27d6bf941c2600ead52f026f9b5a1fde3987d6050b2626c582e"
  public static let nativeType = "pal_navigation_msgs/SetPOIRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original poi as pal_navigation_msgs/POI.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `poi`: Ros1Pal_navigation_msgsPOI = Ros1Pal_navigation_msgsPOI()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`poi`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsSetPOIRequest {
    var v = Ros1Pal_navigation_msgsSetPOIRequest()
    v.`poi` = try Ros1Pal_navigation_msgsPOI.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/SetPOIResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsSetPOIResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a273017f817a15e0936b8eba139ca9797c2f550b7b5926a9275416dce3dfbfd1"
  public static let nativeType = "pal_navigation_msgs/SetPOIResponse"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsSetPOIResponse
  {
    var v = Ros1Pal_navigation_msgsSetPOIResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/SetSubMapFloorRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsSetSubMapFloorRequest: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_4bade8d2022442add78465f9e7aa302fd650256c6e4fefedadc46f6ea3f19536"
  public static let nativeType = "pal_navigation_msgs/SetSubMapFloorRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original index as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `index`: Int8 = 0
  /// @brief Preserve original floor as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `floor`: Int8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`floor`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsSetSubMapFloorRequest
  {
    var v = Ros1Pal_navigation_msgsSetSubMapFloorRequest()
    v.`index` = try r.integer(Int8.self)
    v.`floor` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/SetSubMapFloorResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsSetSubMapFloorResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_67d24dd2353c6ee7113822da8a23e15a5a465c6f692ef40d8ca8486b5fccc1ac"
  public static let nativeType = "pal_navigation_msgs/SetSubMapFloorResponse"
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
    -> Ros1Pal_navigation_msgsSetSubMapFloorResponse
  {
    var v = Ros1Pal_navigation_msgsSetSubMapFloorResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/TabletPOI.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsTabletPOI: Canonical {
  public static let maximumWireBytes = 764
  public static let codecIdentity =
    "UWVMROS1_0f632e29a4a78c036cf5ccb39ae26a0f64a7642d727698c06f2d879de9241ae0"
  public static let nativeType = "pal_navigation_msgs/TabletPOI"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original POIs as geometry_msgs/Point.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `POIs`: [Ros1Geometry_msgsPoint] = []
  /// @brief Preserve original IDs as std_msgs/String.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `IDs`: [Ros1Std_msgsString] = []
  /// @brief Preserve original map_id as std_msgs/String.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `map_id`: Ros1Std_msgsString = Ros1Std_msgsString()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`POIs`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`POIs`.count))
    for e in self.`POIs` {
      try e.write(to: &w)
    }
    guard self.`IDs`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`IDs`.count))
    for e in self.`IDs` {
      try e.write(to: &w)
    }
    try self.`map_id`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_navigation_msgsTabletPOI {
    var v = Ros1Pal_navigation_msgsTabletPOI()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 4 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`POIs` = []
    v.`POIs`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`POIs`.append(try Ros1Geometry_msgsPoint.read(from: &r))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`IDs` = []
    v.`IDs`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`IDs`.append(try Ros1Std_msgsString.read(from: &r))
    }
    v.`map_id` = try Ros1Std_msgsString.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/VisualLocRecognizeRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsVisualLocRecognizeRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7a4a33e9269b79d338bc44c15c0e9ffab87d8fe9c132fddd487df5b9248600e4"
  public static let nativeType = "pal_navigation_msgs/VisualLocRecognizeRequest"
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
    -> Ros1Pal_navigation_msgsVisualLocRecognizeRequest
  {
    var v = Ros1Pal_navigation_msgsVisualLocRecognizeRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/VisualLocRecognizeResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsVisualLocRecognizeResponse: Canonical {
  public static let maximumWireBytes = 497
  public static let codecIdentity =
    "UWVMROS1_306e234599c2ff8a294a8e078a4f6c43dbf8fba8d368fca5a6016826b098be89"
  public static let nativeType = "pal_navigation_msgs/VisualLocRecognizeResponse"
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
    -> Ros1Pal_navigation_msgsVisualLocRecognizeResponse
  {
    var v = Ros1Pal_navigation_msgsVisualLocRecognizeResponse()
    v.`success` = try r.boolean()
    v.`confidence` = try r.float64()
    v.`estimatedPose` = try Ros1Geometry_msgsPoseWithCovarianceStamped.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/VisualTrainingGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsVisualTrainingGoal: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_ea430253b6b7cd7fd82e0e3cbc0c40cb6d4835444a09587d90f1b698dd53ade4"
  public static let nativeType = "pal_navigation_msgs/VisualTrainingGoal"
  public static let nativeIdentity: String? = nil
  public static let `ACTION_TRAIN`: UInt8 = 0
  /// @brief Preserve original action as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `action`: UInt8 = 0
  /// @brief Preserve original database_path as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `database_path`: String = ""
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`action`)
    try w.string(self.`database_path`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Pal_navigation_msgsVisualTrainingGoal
  {
    var v = Ros1Pal_navigation_msgsVisualTrainingGoal()
    v.`action` = try r.integer(UInt8.self)
    v.`database_path` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/VisualTrainingResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsVisualTrainingResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_3a1c9623f4ec7e02ecf7a33978d54c95b9c3a42f4cb5004e11f062774175c387"
  public static let nativeType = "pal_navigation_msgs/VisualTrainingResult"
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
    -> Ros1Pal_navigation_msgsVisualTrainingResult
  {
    var v = Ros1Pal_navigation_msgsVisualTrainingResult()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_navigation_msgs/VisualTrainingFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_navigation_msgsVisualTrainingFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_39409b2914607480bd3fb1f3ec5162c11ab8b8e773e23f7730693c2461deaab3"
  public static let nativeType = "pal_navigation_msgs/VisualTrainingFeedback"
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
    -> Ros1Pal_navigation_msgsVisualTrainingFeedback
  {
    var v = Ros1Pal_navigation_msgsVisualTrainingFeedback()
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
/// @brief Own every original field of ROS1 pal_web_msgs/WebGoTo.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_web_msgsWebGoTo: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_19f21af491edb41e15ccb284a67005ef6ed2209b873dd94e5241206f4d2471a5"
  public static let nativeType = "pal_web_msgs/WebGoTo"
  public static let nativeIdentity: String? = nil
  public static let `IMAGE`: UInt8 = 0
  public static let `VIDEO`: UInt8 = 1
  public static let `URI`: UInt8 = 2
  public static let `URL`: UInt8 = 3
  public static let `TOUCH_PAGE`: UInt8 = 4
  /// @brief Preserve original type as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `type`: UInt8 = 0
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
    try w.integer(self.`type`)
    try w.string(self.`value`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_web_msgsWebGoTo {
    var v = Ros1Pal_web_msgsWebGoTo()
    v.`type` = try r.integer(UInt8.self)
    v.`value` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_web_msgs/GetUserInputGoal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_web_msgsGetUserInputGoal: Canonical {
  public static let maximumWireBytes = 7167
  public static let codecIdentity =
    "UWVMROS1_d170bc8de6aad94561016ef3c075df8c1f528911d42ac2eb9d22885db2533b3e"
  public static let nativeType = "pal_web_msgs/GetUserInputGoal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original web_go_to as pal_web_msgs/WebGoTo.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `web_go_to`: Ros1Pal_web_msgsWebGoTo = Ros1Pal_web_msgsWebGoTo()
  /// @brief Preserve original question_tts as pal_interaction_msgs/TtsGoal.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `question_tts`: Ros1Pal_interaction_msgsTtsGoal = Ros1Pal_interaction_msgsTtsGoal()
  /// @brief Preserve original valid_asr_inputs as string.
  /// @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `valid_asr_inputs`: [String] = []
  /// @brief Preserve original asr_language as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `asr_language`: String = ""
  /// @brief Preserve original asr_timeout as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `asr_timeout`: Ros1Duration = Ros1Duration()
  /// @brief Preserve original retry_asr as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `retry_asr`: Bool = false
  /// @brief Preserve original retry_tts as pal_interaction_msgs/TtsGoal.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `retry_tts`: Ros1Pal_interaction_msgsTtsGoal = Ros1Pal_interaction_msgsTtsGoal()
  /// @brief Preserve original wait_for_interaction as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `wait_for_interaction`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`web_go_to`.write(to: &w)
    try self.`question_tts`.write(to: &w)
    guard self.`valid_asr_inputs`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`valid_asr_inputs`.count))
    for e in self.`valid_asr_inputs` {
      try w.string(e, bound: 128)
    }
    try w.string(self.`asr_language`, bound: 128)
    try self.`asr_timeout`.write(to: &w)
    try w.boolean(self.`retry_asr`)
    try self.`retry_tts`.write(to: &w)
    try w.boolean(self.`wait_for_interaction`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_web_msgsGetUserInputGoal {
    var v = Ros1Pal_web_msgsGetUserInputGoal()
    v.`web_go_to` = try Ros1Pal_web_msgsWebGoTo.read(from: &r)
    v.`question_tts` = try Ros1Pal_interaction_msgsTtsGoal.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`valid_asr_inputs` = []
    v.`valid_asr_inputs`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`valid_asr_inputs`.append(try r.string(bound: 128))
    }
    v.`asr_language` = try r.string(bound: 128)
    v.`asr_timeout` = try Ros1Duration.read(from: &r)
    v.`retry_asr` = try r.boolean()
    v.`retry_tts` = try Ros1Pal_interaction_msgsTtsGoal.read(from: &r)
    v.`wait_for_interaction` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 pal_web_msgs/GetUserInputResult.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_web_msgsGetUserInputResult: Canonical {
  public static let maximumWireBytes = 1192
  public static let codecIdentity =
    "UWVMROS1_95e443de95ce17d423ad14004609c743ed1ff0bea7f69921384dd499ba9ba778"
  public static let nativeType = "pal_web_msgs/GetUserInputResult"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original input as pal_interaction_msgs/Input.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `input`: Ros1Pal_interaction_msgsInput = Ros1Pal_interaction_msgsInput()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`input`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Pal_web_msgsGetUserInputResult {
    var v = Ros1Pal_web_msgsGetUserInputResult()
    v.`input` = try Ros1Pal_interaction_msgsInput.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 pal_web_msgs/GetUserInputFeedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Pal_web_msgsGetUserInputFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_cc9395e24ce3a8ae3aa198453ac066da1bcb5f90a5883cc4c7dc6a6a52675395"
  public static let nativeType = "pal_web_msgs/GetUserInputFeedback"
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
  public static func read(from r: inout WireReader) throws -> Ros1Pal_web_msgsGetUserInputFeedback {
    var v = Ros1Pal_web_msgsGetUserInputFeedback()
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
