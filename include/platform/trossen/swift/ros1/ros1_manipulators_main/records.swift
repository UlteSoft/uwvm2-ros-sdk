/// UWVM_COMPLETE_FIELD_CONTRACTS
/// @details Field domains below come from the unchanged canonical source catalog.
/**
 * @file records.swift
 * @brief Provide the complete trossen ros1_manipulators_main canonical value surface.
 * @details The original 1 record catalog retains field order, constants, defaults and quotas.
 * Borrowed values and buffers must remain stable while a conversion is in progress.
 * Malformed, truncated and trailing wire values are refused through the shared wire error contract.
 * No declaration grants a capability or establishes a native ROS registry identity.
 * Original declarations and units are retained in share/platform/trossen/catalogs.
 */
// Generated complete canonical values. No I/O or authority.
import RosWasm

/// @brief Own every original field of ROS1 interbotix_uxarm_joy/ArmJoy.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_uxarm_joyArmJoy: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53"
  public static let nativeType = "interbotix_uxarm_joy/ArmJoy"
  public static let nativeIdentity: String? = nil
  public static let `EE_X_INC`: Int8 = 1
  public static let `EE_X_DEC`: Int8 = 2
  public static let `EE_Y_INC`: Int8 = 3
  public static let `EE_Y_DEC`: Int8 = 4
  public static let `EE_Z_INC`: Int8 = 5
  public static let `EE_Z_DEC`: Int8 = 6
  public static let `EE_YAW_CCW`: Int8 = 7
  public static let `EE_YAW_CW`: Int8 = 8
  public static let `EE_PITCH_UP`: Int8 = 9
  public static let `EE_PITCH_DOWN`: Int8 = 10
  public static let `WAIST_CCW`: Int8 = 11
  public static let `WAIST_CW`: Int8 = 12
  public static let `GRIPPER_OPEN`: Int8 = 13
  public static let `GRIPPER_CLOSE`: Int8 = 14
  public static let `HOME_POSE`: Int8 = 15
  public static let `HOLDUP_POSE`: Int8 = 16
  public static let `SPEED_INC`: Int8 = 17
  public static let `SPEED_DEC`: Int8 = 18
  public static let `SPEED_COARSE`: Int8 = 19
  public static let `SPEED_FINE`: Int8 = 20
  public static let `GRIPPER_SPEED_INC`: Int8 = 21
  public static let `GRIPPER_SPEED_DEC`: Int8 = 22
  public static let `MODE_SERVO`: Int8 = 23
  public static let `MODE_TEACH`: Int8 = 24
  /// @brief Preserve original ee_x_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_x_cmd`: Int8 = 0
  /// @brief Preserve original ee_y_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_y_cmd`: Int8 = 0
  /// @brief Preserve original ee_z_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_z_cmd`: Int8 = 0
  /// @brief Preserve original ee_yaw_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_yaw_cmd`: Int8 = 0
  /// @brief Preserve original ee_pitch_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_pitch_cmd`: Int8 = 0
  /// @brief Preserve original waist_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `waist_cmd`: Int8 = 0
  /// @brief Preserve original gripper_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `gripper_cmd`: Int8 = 0
  /// @brief Preserve original pose_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose_cmd`: Int8 = 0
  /// @brief Preserve original speed_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `speed_cmd`: Int8 = 0
  /// @brief Preserve original speed_toggle_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `speed_toggle_cmd`: Int8 = 0
  /// @brief Preserve original gripper_speed_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `gripper_speed_cmd`: Int8 = 0
  /// @brief Preserve original mode_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `mode_cmd`: Int8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ee_x_cmd`)
    try w.integer(self.`ee_y_cmd`)
    try w.integer(self.`ee_z_cmd`)
    try w.integer(self.`ee_yaw_cmd`)
    try w.integer(self.`ee_pitch_cmd`)
    try w.integer(self.`waist_cmd`)
    try w.integer(self.`gripper_cmd`)
    try w.integer(self.`pose_cmd`)
    try w.integer(self.`speed_cmd`)
    try w.integer(self.`speed_toggle_cmd`)
    try w.integer(self.`gripper_speed_cmd`)
    try w.integer(self.`mode_cmd`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Interbotix_uxarm_joyArmJoy {
    var v = Ros1Interbotix_uxarm_joyArmJoy()
    v.`ee_x_cmd` = try r.integer(Int8.self)
    v.`ee_y_cmd` = try r.integer(Int8.self)
    v.`ee_z_cmd` = try r.integer(Int8.self)
    v.`ee_yaw_cmd` = try r.integer(Int8.self)
    v.`ee_pitch_cmd` = try r.integer(Int8.self)
    v.`waist_cmd` = try r.integer(Int8.self)
    v.`gripper_cmd` = try r.integer(Int8.self)
    v.`pose_cmd` = try r.integer(Int8.self)
    v.`speed_cmd` = try r.integer(Int8.self)
    v.`speed_toggle_cmd` = try r.integer(Int8.self)
    v.`gripper_speed_cmd` = try r.integer(Int8.self)
    v.`mode_cmd` = try r.integer(Int8.self)
    return v
  }
}
