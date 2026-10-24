/// UWVM_COMPLETE_FIELD_CONTRACTS
/// @details Field domains below come from the unchanged canonical source catalog.
/**
 * @file records.swift
 * @brief Provide the complete pal ros2_humble_devel canonical value surface.
 * @details The original 30 record catalog retains field order, constants, defaults and quotas.
 * Borrowed values and buffers must remain stable while a conversion is in progress.
 * Malformed, truncated and trailing wire values are refused through the shared wire error contract.
 * No declaration grants a capability or establishes a native ROS registry identity.
 * Original declarations and units are retained in share/platform/pal/catalogs.
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
/// @brief Own every original field of ROS2 std_msgs/msg/ColorRGBA.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Std_msgsMsgColorRGBA: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2"
  public static let nativeType = "std_msgs/msg/ColorRGBA"
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
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgColorRGBA {
    var v = Ros2Std_msgsMsgColorRGBA()
    v.`r` = try r.float32()
    v.`g` = try r.float32()
    v.`b` = try r.float32()
    v.`a` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/msg/LedFixedColorParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgLedFixedColorParams: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac"
  public static let nativeType = "pal_device_msgs/msg/LedFixedColorParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Pal_device_msgsMsgLedFixedColorParams
  {
    var v = Ros2Pal_device_msgsMsgLedFixedColorParams()
    v.`color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/msg/LedRainbowParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgLedRainbowParams: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2"
  public static let nativeType = "pal_device_msgs/msg/LedRainbowParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original transition_duration as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `transition_duration`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
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
  public static func read(from r: inout WireReader) throws -> Ros2Pal_device_msgsMsgLedRainbowParams
  {
    var v = Ros2Pal_device_msgsMsgLedRainbowParams()
    v.`transition_duration` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/msg/LedFadeParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgLedFadeParams: Canonical {
  public static let maximumWireBytes = 41
  public static let codecIdentity =
    "UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5"
  public static let nativeType = "pal_device_msgs/msg/LedFadeParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original first_color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
  /// @brief Preserve original second_color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
  /// @brief Preserve original transition_duration as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `transition_duration`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
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
  public static func read(from r: inout WireReader) throws -> Ros2Pal_device_msgsMsgLedFadeParams {
    var v = Ros2Pal_device_msgsMsgLedFadeParams()
    v.`first_color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`second_color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`transition_duration` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    v.`reverse_fade` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/msg/LedBlinkParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgLedBlinkParams: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd"
  public static let nativeType = "pal_device_msgs/msg/LedBlinkParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original first_color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
  /// @brief Preserve original second_color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
  /// @brief Preserve original first_color_duration as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color_duration`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Preserve original second_color_duration as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color_duration`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
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
  public static func read(from r: inout WireReader) throws -> Ros2Pal_device_msgsMsgLedBlinkParams {
    var v = Ros2Pal_device_msgsMsgLedBlinkParams()
    v.`first_color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`second_color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`first_color_duration` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    v.`second_color_duration` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/msg/LedProgressParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgLedProgressParams: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0"
  public static let nativeType = "pal_device_msgs/msg/LedProgressParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original first_color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
  /// @brief Preserve original second_color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Pal_device_msgsMsgLedProgressParams
  {
    var v = Ros2Pal_device_msgsMsgLedProgressParams()
    v.`first_color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`second_color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`percentage` = try r.float32()
    v.`led_offset` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/msg/LedFlowParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgLedFlowParams: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561"
  public static let nativeType = "pal_device_msgs/msg/LedFlowParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original first_color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
  /// @brief Preserve original second_color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
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
  public static func read(from r: inout WireReader) throws -> Ros2Pal_device_msgsMsgLedFlowParams {
    var v = Ros2Pal_device_msgsMsgLedFlowParams()
    v.`first_color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`second_color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`percentage` = try r.float32()
    v.`velocity` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/msg/LedPreProgrammedParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgLedPreProgrammedParams: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be"
  public static let nativeType = "pal_device_msgs/msg/LedPreProgrammedParams"
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
    -> Ros2Pal_device_msgsMsgLedPreProgrammedParams
  {
    var v = Ros2Pal_device_msgsMsgLedPreProgrammedParams()
    v.`preprogrammed_id` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/msg/LedEffectViaTopicParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgLedEffectViaTopicParams: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485"
  public static let nativeType = "pal_device_msgs/msg/LedEffectViaTopicParams"
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
    -> Ros2Pal_device_msgsMsgLedEffectViaTopicParams
  {
    var v = Ros2Pal_device_msgsMsgLedEffectViaTopicParams()
    v.`topic_name` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/msg/LedDataArrayParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgLedDataArrayParams: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349"
  public static let nativeType = "pal_device_msgs/msg/LedDataArrayParams"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original data as std_msgs/msg/ColorRGBA.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `data`: [Ros2Std_msgsMsgColorRGBA] = []
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Pal_device_msgsMsgLedDataArrayParams
  {
    var v = Ros2Pal_device_msgsMsgLedDataArrayParams()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 4 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`data` = []
    v.`data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`data`.append(try Ros2Std_msgsMsgColorRGBA.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/msg/LedEffectParams.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgLedEffectParams: Canonical {
  public static let maximumWireBytes = 395
  public static let codecIdentity =
    "UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848"
  public static let nativeType = "pal_device_msgs/msg/LedEffectParams"
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
  /// @brief Preserve original effect_type as uint8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effect_type`: UInt8 = 0
  /// @brief Preserve original fixed_color as pal_device_msgs/msg/LedFixedColorParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `fixed_color`: Ros2Pal_device_msgsMsgLedFixedColorParams =
    Ros2Pal_device_msgsMsgLedFixedColorParams()
  /// @brief Preserve original rainbow as pal_device_msgs/msg/LedRainbowParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `rainbow`: Ros2Pal_device_msgsMsgLedRainbowParams =
    Ros2Pal_device_msgsMsgLedRainbowParams()
  /// @brief Preserve original fade as pal_device_msgs/msg/LedFadeParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `fade`: Ros2Pal_device_msgsMsgLedFadeParams = Ros2Pal_device_msgsMsgLedFadeParams()
  /// @brief Preserve original blink as pal_device_msgs/msg/LedBlinkParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `blink`: Ros2Pal_device_msgsMsgLedBlinkParams = Ros2Pal_device_msgsMsgLedBlinkParams()
  /// @brief Preserve original progress as pal_device_msgs/msg/LedProgressParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `progress`: Ros2Pal_device_msgsMsgLedProgressParams =
    Ros2Pal_device_msgsMsgLedProgressParams()
  /// @brief Preserve original flow as pal_device_msgs/msg/LedFlowParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `flow`: Ros2Pal_device_msgsMsgLedFlowParams = Ros2Pal_device_msgsMsgLedFlowParams()
  /// @brief Preserve original preprogrammed as pal_device_msgs/msg/LedPreProgrammedParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `preprogrammed`: Ros2Pal_device_msgsMsgLedPreProgrammedParams =
    Ros2Pal_device_msgsMsgLedPreProgrammedParams()
  /// @brief Preserve original effect_via_topic as pal_device_msgs/msg/LedEffectViaTopicParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effect_via_topic`: Ros2Pal_device_msgsMsgLedEffectViaTopicParams =
    Ros2Pal_device_msgsMsgLedEffectViaTopicParams()
  /// @brief Preserve original data_array as pal_device_msgs/msg/LedDataArrayParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `data_array`: Ros2Pal_device_msgsMsgLedDataArrayParams =
    Ros2Pal_device_msgsMsgLedDataArrayParams()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`effect_type`)
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
  public static func read(from r: inout WireReader) throws -> Ros2Pal_device_msgsMsgLedEffectParams
  {
    var v = Ros2Pal_device_msgsMsgLedEffectParams()
    v.`effect_type` = try r.integer(UInt8.self)
    v.`fixed_color` = try Ros2Pal_device_msgsMsgLedFixedColorParams.read(from: &r)
    v.`rainbow` = try Ros2Pal_device_msgsMsgLedRainbowParams.read(from: &r)
    v.`fade` = try Ros2Pal_device_msgsMsgLedFadeParams.read(from: &r)
    v.`blink` = try Ros2Pal_device_msgsMsgLedBlinkParams.read(from: &r)
    v.`progress` = try Ros2Pal_device_msgsMsgLedProgressParams.read(from: &r)
    v.`flow` = try Ros2Pal_device_msgsMsgLedFlowParams.read(from: &r)
    v.`preprogrammed` = try Ros2Pal_device_msgsMsgLedPreProgrammedParams.read(from: &r)
    v.`effect_via_topic` = try Ros2Pal_device_msgsMsgLedEffectViaTopicParams.read(from: &r)
    v.`data_array` = try Ros2Pal_device_msgsMsgLedDataArrayParams.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/action/DoTimedLedEffect_Goal.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsActionDoTimedLedEffect_Goal: Canonical {
  public static let maximumWireBytes = 472
  public static let codecIdentity =
    "UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2"
  public static let nativeType = "pal_device_msgs/action/DoTimedLedEffect_Goal"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original devices as uint32.
  /// @details At most 16 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `devices`: [UInt32] = []
  /// @brief Preserve original params as pal_device_msgs/msg/LedEffectParams.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `params`: Ros2Pal_device_msgsMsgLedEffectParams =
    Ros2Pal_device_msgsMsgLedEffectParams()
  /// @brief Preserve original effect_duration as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effect_duration`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
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
    try self.`effect_duration`.write(to: &w)
    try w.integer(self.`priority`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Pal_device_msgsActionDoTimedLedEffect_Goal
  {
    var v = Ros2Pal_device_msgsActionDoTimedLedEffect_Goal()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`devices` = []
    v.`devices`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`devices`.append(try r.integer(UInt32.self))
    }
    v.`params` = try Ros2Pal_device_msgsMsgLedEffectParams.read(from: &r)
    v.`effect_duration` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    v.`priority` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/action/DoTimedLedEffect_Result.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsActionDoTimedLedEffect_Result: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9"
  public static let nativeType = "pal_device_msgs/action/DoTimedLedEffect_Result"
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
    -> Ros2Pal_device_msgsActionDoTimedLedEffect_Result
  {
    var v = Ros2Pal_device_msgsActionDoTimedLedEffect_Result()
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/action/DoTimedLedEffect_Feedback.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d"
  public static let nativeType = "pal_device_msgs/action/DoTimedLedEffect_Feedback"
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
    -> Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback
  {
    var v = Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback()
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/msg/BatteryState.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgBatteryState: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904"
  public static let nativeType = "pal_device_msgs/msg/BatteryState"
  public static let nativeIdentity: String? = nil
  public static let `FULL`: UInt8 = 5
  public static let `HIGH`: UInt8 = 4
  public static let `MEDIUM`: UInt8 = 3
  public static let `LOW`: UInt8 = 2
  public static let `CRITICAL_LOW`: UInt8 = 1
  /// @brief Preserve original charge_state as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `charge_state`: Int8 = 0
  /// @brief Preserve original battery_percentage as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `battery_percentage`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`charge_state`)
    try w.float32(self.`battery_percentage`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Pal_device_msgsMsgBatteryState {
    var v = Ros2Pal_device_msgsMsgBatteryState()
    v.`charge_state` = try r.integer(Int8.self)
    v.`battery_percentage` = try r.float32()
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
/// @brief Own every original field of ROS2 pal_device_msgs/msg/Bumper.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgBumper: Canonical {
  public static let maximumWireBytes = 141
  public static let codecIdentity =
    "UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022"
  public static let nativeType = "pal_device_msgs/msg/Bumper"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
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
  public static func read(from r: inout WireReader) throws -> Ros2Pal_device_msgsMsgBumper {
    var v = Ros2Pal_device_msgsMsgBumper()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`is_pressed` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/msg/LedGroup.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsMsgLedGroup: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0"
  public static let nativeType = "pal_device_msgs/msg/LedGroup"
  public static let nativeIdentity: String? = nil
  public static let `LEFT_EAR`: UInt8 = 1
  public static let `RIGHT_EAR`: UInt8 = 2
  /// @brief Preserve original led_mask as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `led_mask`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`led_mask`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros2Pal_device_msgsMsgLedGroup {
    var v = Ros2Pal_device_msgsMsgLedGroup()
    v.`led_mask` = try r.integer(UInt32.self)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/srv/CancelEffect_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsSrvCancelEffect_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062"
  public static let nativeType = "pal_device_msgs/srv/CancelEffect_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original effect_id as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effect_id`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`effect_id`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Pal_device_msgsSrvCancelEffect_Request
  {
    var v = Ros2Pal_device_msgsSrvCancelEffect_Request()
    v.`effect_id` = try r.integer(UInt32.self)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/srv/CancelEffect_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsSrvCancelEffect_Response: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657"
  public static let nativeType = "pal_device_msgs/srv/CancelEffect_Response"
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
    -> Ros2Pal_device_msgsSrvCancelEffect_Response
  {
    var v = Ros2Pal_device_msgsSrvCancelEffect_Response()
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166"
  public static let nativeType = "pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original shutdown_duration as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `shutdown_duration`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
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
    -> Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request
  {
    var v = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request()
    v.`shutdown_duration` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af"
  public static let nativeType = "pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response"
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
    -> Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response
  {
    var v = Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response()
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/srv/TimedBlinkEffect_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsSrvTimedBlinkEffect_Request: Canonical {
  public static let maximumWireBytes = 61
  public static let codecIdentity =
    "UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c"
  public static let nativeType = "pal_device_msgs/srv/TimedBlinkEffect_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original leds as pal_device_msgs/msg/LedGroup.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `leds`: Ros2Pal_device_msgsMsgLedGroup = Ros2Pal_device_msgsMsgLedGroup()
  /// @brief Preserve original first_color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
  /// @brief Preserve original second_color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
  /// @brief Preserve original first_color_duration as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color_duration`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Preserve original second_color_duration as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color_duration`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Preserve original effect_duration as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effect_duration`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
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
    try self.`first_color`.write(to: &w)
    try self.`second_color`.write(to: &w)
    try self.`first_color_duration`.write(to: &w)
    try self.`second_color_duration`.write(to: &w)
    try self.`effect_duration`.write(to: &w)
    try w.integer(self.`priority`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Pal_device_msgsSrvTimedBlinkEffect_Request
  {
    var v = Ros2Pal_device_msgsSrvTimedBlinkEffect_Request()
    v.`leds` = try Ros2Pal_device_msgsMsgLedGroup.read(from: &r)
    v.`first_color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`second_color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`first_color_duration` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    v.`second_color_duration` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    v.`effect_duration` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    v.`priority` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/srv/TimedBlinkEffect_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsSrvTimedBlinkEffect_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a"
  public static let nativeType = "pal_device_msgs/srv/TimedBlinkEffect_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original effect_id as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effect_id`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`effect_id`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Pal_device_msgsSrvTimedBlinkEffect_Response
  {
    var v = Ros2Pal_device_msgsSrvTimedBlinkEffect_Response()
    v.`effect_id` = try r.integer(UInt32.self)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/srv/TimedColourEffect_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsSrvTimedColourEffect_Request: Canonical {
  public static let maximumWireBytes = 29
  public static let codecIdentity =
    "UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8"
  public static let nativeType = "pal_device_msgs/srv/TimedColourEffect_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original leds as pal_device_msgs/msg/LedGroup.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `leds`: Ros2Pal_device_msgsMsgLedGroup = Ros2Pal_device_msgsMsgLedGroup()
  /// @brief Preserve original color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
  /// @brief Preserve original effect_duration as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effect_duration`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
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
    try self.`effect_duration`.write(to: &w)
    try w.integer(self.`priority`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Pal_device_msgsSrvTimedColourEffect_Request
  {
    var v = Ros2Pal_device_msgsSrvTimedColourEffect_Request()
    v.`leds` = try Ros2Pal_device_msgsMsgLedGroup.read(from: &r)
    v.`color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`effect_duration` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    v.`priority` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/srv/TimedColourEffect_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsSrvTimedColourEffect_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9"
  public static let nativeType = "pal_device_msgs/srv/TimedColourEffect_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original effect_id as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effect_id`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`effect_id`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Pal_device_msgsSrvTimedColourEffect_Response
  {
    var v = Ros2Pal_device_msgsSrvTimedColourEffect_Response()
    v.`effect_id` = try r.integer(UInt32.self)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/srv/TimedFadeEffect_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsSrvTimedFadeEffect_Request: Canonical {
  public static let maximumWireBytes = 54
  public static let codecIdentity =
    "UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13"
  public static let nativeType = "pal_device_msgs/srv/TimedFadeEffect_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original leds as pal_device_msgs/msg/LedGroup.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `leds`: Ros2Pal_device_msgsMsgLedGroup = Ros2Pal_device_msgsMsgLedGroup()
  /// @brief Preserve original first_color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `first_color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
  /// @brief Preserve original second_color as std_msgs/msg/ColorRGBA.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `second_color`: Ros2Std_msgsMsgColorRGBA = Ros2Std_msgsMsgColorRGBA()
  /// @brief Preserve original color_change_duration as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `color_change_duration`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Preserve original reverse_fade as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `reverse_fade`: Bool = false
  /// @brief Preserve original effect_duration as builtin_interfaces/msg/Duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effect_duration`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
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
    try self.`first_color`.write(to: &w)
    try self.`second_color`.write(to: &w)
    try self.`color_change_duration`.write(to: &w)
    try w.boolean(self.`reverse_fade`)
    try self.`effect_duration`.write(to: &w)
    try w.integer(self.`priority`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Pal_device_msgsSrvTimedFadeEffect_Request
  {
    var v = Ros2Pal_device_msgsSrvTimedFadeEffect_Request()
    v.`leds` = try Ros2Pal_device_msgsMsgLedGroup.read(from: &r)
    v.`first_color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`second_color` = try Ros2Std_msgsMsgColorRGBA.read(from: &r)
    v.`color_change_duration` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    v.`reverse_fade` = try r.boolean()
    v.`effect_duration` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    v.`priority` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of ROS2 pal_device_msgs/srv/TimedFadeEffect_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Pal_device_msgsSrvTimedFadeEffect_Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5"
  public static let nativeType = "pal_device_msgs/srv/TimedFadeEffect_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original effect_id as uint32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effect_id`: UInt32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`effect_id`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros2Pal_device_msgsSrvTimedFadeEffect_Response
  {
    var v = Ros2Pal_device_msgsSrvTimedFadeEffect_Response()
    v.`effect_id` = try r.integer(UInt32.self)
    return v
  }
}
