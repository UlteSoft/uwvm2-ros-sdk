/// UWVM_COMPLETE_FIELD_CONTRACTS
/// @details Field domains below come from the unchanged canonical source catalog.
/**
 * @file records.swift
 * @brief Provide the complete trossen ros1_melodic canonical value surface.
 * @details The original 59 record catalog retains field order, constants, defaults and quotas.
 * Borrowed values and buffers must remain stable while a conversion is in progress.
 * Malformed, truncated and trailing wire values are refused through the shared wire error contract.
 * No declaration grants a capability or establishes a native ROS registry identity.
 * Original declarations and units are retained in share/platform/trossen/catalogs.
 */
// Generated complete canonical values. No I/O or authority.
import RosWasm

/// @brief Own every original field of ROS1 interbotix_xs_msgs/ArmJoy.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsArmJoy: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3"
  public static let nativeType = "interbotix_xs_msgs/ArmJoy"
  public static let nativeIdentity: String? = nil
  public static let `EE_X_INC`: Int8 = 1
  public static let `EE_X_DEC`: Int8 = 2
  public static let `EE_Y_INC`: Int8 = 3
  public static let `EE_Y_DEC`: Int8 = 4
  public static let `EE_Z_INC`: Int8 = 5
  public static let `EE_Z_DEC`: Int8 = 6
  public static let `EE_ROLL_CCW`: Int8 = 7
  public static let `EE_ROLL_CW`: Int8 = 8
  public static let `EE_PITCH_UP`: Int8 = 9
  public static let `EE_PITCH_DOWN`: Int8 = 10
  public static let `WAIST_CCW`: Int8 = 11
  public static let `WAIST_CW`: Int8 = 12
  public static let `GRIPPER_OPEN`: Int8 = 13
  public static let `GRIPPER_CLOSE`: Int8 = 14
  public static let `HOME_POSE`: Int8 = 15
  public static let `SLEEP_POSE`: Int8 = 16
  public static let `SPEED_INC`: Int8 = 17
  public static let `SPEED_DEC`: Int8 = 18
  public static let `SPEED_COURSE`: Int8 = 19
  public static let `SPEED_FINE`: Int8 = 20
  public static let `GRIPPER_PWM_INC`: Int8 = 21
  public static let `GRIPPER_PWM_DEC`: Int8 = 22
  public static let `TORQUE_ON`: Int8 = 23
  public static let `TORQUE_OFF`: Int8 = 24
  /// @brief Preserve original ee_x_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_x_cmd`: Int8 = 0
  /// @brief Preserve original ee_y_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_y_cmd`: Int8 = 0
  /// @brief Preserve original ee_z_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_z_cmd`: Int8 = 0
  /// @brief Preserve original ee_roll_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_roll_cmd`: Int8 = 0
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
  /// @brief Preserve original gripper_pwm_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `gripper_pwm_cmd`: Int8 = 0
  /// @brief Preserve original torque_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `torque_cmd`: Int8 = 0
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
    try w.integer(self.`ee_roll_cmd`)
    try w.integer(self.`ee_pitch_cmd`)
    try w.integer(self.`waist_cmd`)
    try w.integer(self.`gripper_cmd`)
    try w.integer(self.`pose_cmd`)
    try w.integer(self.`speed_cmd`)
    try w.integer(self.`speed_toggle_cmd`)
    try w.integer(self.`gripper_pwm_cmd`)
    try w.integer(self.`torque_cmd`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Interbotix_xs_msgsArmJoy {
    var v = Ros1Interbotix_xs_msgsArmJoy()
    v.`ee_x_cmd` = try r.integer(Int8.self)
    v.`ee_y_cmd` = try r.integer(Int8.self)
    v.`ee_z_cmd` = try r.integer(Int8.self)
    v.`ee_roll_cmd` = try r.integer(Int8.self)
    v.`ee_pitch_cmd` = try r.integer(Int8.self)
    v.`waist_cmd` = try r.integer(Int8.self)
    v.`gripper_cmd` = try r.integer(Int8.self)
    v.`pose_cmd` = try r.integer(Int8.self)
    v.`speed_cmd` = try r.integer(Int8.self)
    v.`speed_toggle_cmd` = try r.integer(Int8.self)
    v.`gripper_pwm_cmd` = try r.integer(Int8.self)
    v.`torque_cmd` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/HexJoy.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsHexJoy: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37"
  public static let nativeType = "interbotix_xs_msgs/HexJoy"
  public static let nativeIdentity: String? = nil
  public static let `WORLD_X_INC`: Int8 = 1
  public static let `WORLD_X_DEC`: Int8 = 2
  public static let `WORLD_Y_INC`: Int8 = 3
  public static let `WORLD_Y_DEC`: Int8 = 4
  public static let `WORLD_YAW_CCW`: Int8 = 5
  public static let `WORLD_YAW_CW`: Int8 = 6
  public static let `PLACE_X_INC`: Int8 = 7
  public static let `PLACE_X_DEC`: Int8 = 8
  public static let `PLACE_Y_INC`: Int8 = 9
  public static let `PLACE_Y_DEC`: Int8 = 10
  public static let `PLACE_Z_INC`: Int8 = 11
  public static let `PLACE_Z_DEC`: Int8 = 12
  public static let `PLACE_ROLL_CCW`: Int8 = 13
  public static let `PLACE_ROLL_CW`: Int8 = 14
  public static let `PLACE_PITCH_UP`: Int8 = 15
  public static let `PLACE_PITCH_DOWN`: Int8 = 16
  public static let `MOVE_HEXAPOD`: Int8 = 17
  public static let `MOVE_LEG`: Int8 = 18
  public static let `HOME_POSE`: Int8 = 19
  public static let `SLEEP_POSE`: Int8 = 20
  public static let `GAIT_NEXT`: Int8 = 21
  public static let `GAIT_PREVIOUS`: Int8 = 22
  public static let `LEG_NEXT`: Int8 = 23
  public static let `LEG_PREVIOUS`: Int8 = 24
  public static let `WIDEN_STANCE`: Int8 = 25
  public static let `NARROW_STANCE`: Int8 = 26
  public static let `REBOOT_MOTORS`: Int8 = 27
  public static let `SET_HOME_POSE`: Int8 = 28
  public static let `SPEED_INC`: Int8 = 29
  public static let `SPEED_DEC`: Int8 = 30
  public static let `SPEED_COURSE`: Int8 = 31
  public static let `SPEED_FINE`: Int8 = 32
  /// @brief Preserve original world_x_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `world_x_cmd`: Int8 = 0
  /// @brief Preserve original world_y_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `world_y_cmd`: Int8 = 0
  /// @brief Preserve original world_yaw_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `world_yaw_cmd`: Int8 = 0
  /// @brief Preserve original place_x_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `place_x_cmd`: Int8 = 0
  /// @brief Preserve original place_y_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `place_y_cmd`: Int8 = 0
  /// @brief Preserve original place_z_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `place_z_cmd`: Int8 = 0
  /// @brief Preserve original place_roll_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `place_roll_cmd`: Int8 = 0
  /// @brief Preserve original place_pitch_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `place_pitch_cmd`: Int8 = 0
  /// @brief Preserve original pose_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose_cmd`: Int8 = 0
  /// @brief Preserve original move_type_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `move_type_cmd`: Int8 = 0
  /// @brief Preserve original gait_toggle_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `gait_toggle_cmd`: Int8 = 0
  /// @brief Preserve original leg_toggle_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `leg_toggle_cmd`: Int8 = 0
  /// @brief Preserve original stance_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `stance_cmd`: Int8 = 0
  /// @brief Preserve original reboot_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `reboot_cmd`: Int8 = 0
  /// @brief Preserve original set_home_pose_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `set_home_pose_cmd`: Int8 = 0
  /// @brief Preserve original speed_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `speed_cmd`: Int8 = 0
  /// @brief Preserve original speed_toggle_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `speed_toggle_cmd`: Int8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`world_x_cmd`)
    try w.integer(self.`world_y_cmd`)
    try w.integer(self.`world_yaw_cmd`)
    try w.integer(self.`place_x_cmd`)
    try w.integer(self.`place_y_cmd`)
    try w.integer(self.`place_z_cmd`)
    try w.integer(self.`place_roll_cmd`)
    try w.integer(self.`place_pitch_cmd`)
    try w.integer(self.`pose_cmd`)
    try w.integer(self.`move_type_cmd`)
    try w.integer(self.`gait_toggle_cmd`)
    try w.integer(self.`leg_toggle_cmd`)
    try w.integer(self.`stance_cmd`)
    try w.integer(self.`reboot_cmd`)
    try w.integer(self.`set_home_pose_cmd`)
    try w.integer(self.`speed_cmd`)
    try w.integer(self.`speed_toggle_cmd`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Interbotix_xs_msgsHexJoy {
    var v = Ros1Interbotix_xs_msgsHexJoy()
    v.`world_x_cmd` = try r.integer(Int8.self)
    v.`world_y_cmd` = try r.integer(Int8.self)
    v.`world_yaw_cmd` = try r.integer(Int8.self)
    v.`place_x_cmd` = try r.integer(Int8.self)
    v.`place_y_cmd` = try r.integer(Int8.self)
    v.`place_z_cmd` = try r.integer(Int8.self)
    v.`place_roll_cmd` = try r.integer(Int8.self)
    v.`place_pitch_cmd` = try r.integer(Int8.self)
    v.`pose_cmd` = try r.integer(Int8.self)
    v.`move_type_cmd` = try r.integer(Int8.self)
    v.`gait_toggle_cmd` = try r.integer(Int8.self)
    v.`leg_toggle_cmd` = try r.integer(Int8.self)
    v.`stance_cmd` = try r.integer(Int8.self)
    v.`reboot_cmd` = try r.integer(Int8.self)
    v.`set_home_pose_cmd` = try r.integer(Int8.self)
    v.`speed_cmd` = try r.integer(Int8.self)
    v.`speed_toggle_cmd` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/JointGroupCommand.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsJointGroupCommand: Canonical {
  public static let maximumWireBytes = 392
  public static let codecIdentity =
    "UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec"
  public static let nativeType = "interbotix_xs_msgs/JointGroupCommand"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original cmd as float32.
  /// @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `cmd`: [Float] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    guard self.`cmd`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`cmd`.count))
    for e in self.`cmd` {
      try w.float32(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Interbotix_xs_msgsJointGroupCommand
  {
    var v = Ros1Interbotix_xs_msgsJointGroupCommand()
    v.`name` = try r.string(bound: 128)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 64 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`cmd` = []
    v.`cmd`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`cmd`.append(try r.float32())
    }
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/JointSingleCommand.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsJointSingleCommand: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0"
  public static let nativeType = "interbotix_xs_msgs/JointSingleCommand"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original cmd as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `cmd`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.float32(self.`cmd`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Interbotix_xs_msgsJointSingleCommand
  {
    var v = Ros1Interbotix_xs_msgsJointSingleCommand()
    v.`name` = try r.string(bound: 128)
    v.`cmd` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/JointTemps.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsJointTemps: Canonical {
  public static let maximumWireBytes = 8712
  public static let codecIdentity =
    "UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511"
  public static let nativeType = "interbotix_xs_msgs/JointTemps"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original names as string.
  /// @details At most 64 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `names`: [String] = []
  /// @brief Preserve original temps as int32.
  /// @details At most 64 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `temps`: [Int32] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`names`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`names`.count))
    for e in self.`names` {
      try w.string(e, bound: 128)
    }
    guard self.`temps`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`temps`.count))
    for e in self.`temps` {
      try w.integer(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Interbotix_xs_msgsJointTemps {
    var v = Ros1Interbotix_xs_msgsJointTemps()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 64 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`names` = []
    v.`names`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`names`.append(try r.string(bound: 128))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 64 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`temps` = []
    v.`temps`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`temps`.append(try r.integer(Int32.self))
    }
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
/// @brief Own every original field of ROS1 trajectory_msgs/JointTrajectoryPoint.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Trajectory_msgsJointTrajectoryPoint: Canonical {
  public static let maximumWireBytes = 536
  public static let codecIdentity =
    "UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81"
  public static let nativeType = "trajectory_msgs/JointTrajectoryPoint"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original positions as float64.
  /// @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `positions`: [Double] = []
  /// @brief Preserve original velocities as float64.
  /// @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `velocities`: [Double] = []
  /// @brief Preserve original accelerations as float64.
  /// @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `accelerations`: [Double] = []
  /// @brief Preserve original effort as float64.
  /// @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `effort`: [Double] = []
  /// @brief Preserve original time_from_start as duration.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `time_from_start`: Ros1Duration = Ros1Duration()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`positions`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`positions`.count))
    for e in self.`positions` {
      try w.float64(e)
    }
    guard self.`velocities`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try w.float64(e)
    }
    guard self.`accelerations`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`accelerations`.count))
    for e in self.`accelerations` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 16 else { throw RosError(22) }
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
    -> Ros1Trajectory_msgsJointTrajectoryPoint
  {
    var v = Ros1Trajectory_msgsJointTrajectoryPoint()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`positions` = []
    v.`positions`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`positions`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`accelerations` = []
    v.`accelerations`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`accelerations`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`effort` = []
    v.`effort`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`effort`.append(try r.float64())
    }
    v.`time_from_start` = try Ros1Duration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 trajectory_msgs/JointTrajectory.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Trajectory_msgsJointTrajectory: Canonical {
  public static let maximumWireBytes = 4408
  public static let codecIdentity =
    "UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9"
  public static let nativeType = "trajectory_msgs/JointTrajectory"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Preserve original joint_names as string.
  /// @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `joint_names`: [String] = []
  /// @brief Preserve original points as trajectory_msgs/JointTrajectoryPoint.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  /// model limit is inferred.
  public var `points`: [Ros1Trajectory_msgsJointTrajectoryPoint] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 128)
    }
    guard self.`points`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`points`.count))
    for e in self.`points` {
      try e.write(to: &w)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Trajectory_msgsJointTrajectory {
    var v = Ros1Trajectory_msgsJointTrajectory()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`points` = []
    v.`points`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`points`.append(try Ros1Trajectory_msgsJointTrajectoryPoint.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/JointTrajectoryCommand.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsJointTrajectoryCommand: Canonical {
  public static let maximumWireBytes = 4672
  public static let codecIdentity =
    "UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7"
  public static let nativeType = "interbotix_xs_msgs/JointTrajectoryCommand"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original cmd_type as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `cmd_type`: String = ""
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original traj as trajectory_msgs/JointTrajectory.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `traj`: Ros1Trajectory_msgsJointTrajectory = Ros1Trajectory_msgsJointTrajectory()
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`cmd_type`, bound: 128)
    try w.string(self.`name`, bound: 128)
    try self.`traj`.write(to: &w)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Interbotix_xs_msgsJointTrajectoryCommand
  {
    var v = Ros1Interbotix_xs_msgsJointTrajectoryCommand()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    v.`traj` = try Ros1Trajectory_msgsJointTrajectory.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/LocobotJoy.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsLocobotJoy: Canonical {
  public static let maximumWireBytes = 30
  public static let codecIdentity =
    "UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613"
  public static let nativeType = "interbotix_xs_msgs/LocobotJoy"
  public static let nativeIdentity: String? = nil
  public static let `RESET_ODOM`: Int8 = 1
  public static let `PAN_CCW`: Int8 = 2
  public static let `PAN_CW`: Int8 = 3
  public static let `TILT_UP`: Int8 = 4
  public static let `TILT_DOWN`: Int8 = 5
  public static let `PAN_TILT_HOME`: Int8 = 6
  public static let `EE_X_INC`: Int8 = 7
  public static let `EE_X_DEC`: Int8 = 8
  public static let `EE_Y_INC`: Int8 = 9
  public static let `EE_Y_DEC`: Int8 = 10
  public static let `EE_Z_INC`: Int8 = 11
  public static let `EE_Z_DEC`: Int8 = 12
  public static let `EE_ROLL_CCW`: Int8 = 13
  public static let `EE_ROLL_CW`: Int8 = 14
  public static let `EE_PITCH_UP`: Int8 = 15
  public static let `EE_PITCH_DOWN`: Int8 = 16
  public static let `WAIST_CCW`: Int8 = 17
  public static let `WAIST_CW`: Int8 = 18
  public static let `GRIPPER_OPEN`: Int8 = 19
  public static let `GRIPPER_CLOSE`: Int8 = 20
  public static let `HOME_POSE`: Int8 = 21
  public static let `SLEEP_POSE`: Int8 = 22
  public static let `SPEED_INC`: Int8 = 23
  public static let `SPEED_DEC`: Int8 = 24
  public static let `SPEED_COURSE`: Int8 = 25
  public static let `SPEED_FINE`: Int8 = 26
  public static let `GRIPPER_PWM_INC`: Int8 = 27
  public static let `GRIPPER_PWM_DEC`: Int8 = 28
  /// @brief Preserve original base_x_cmd as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `base_x_cmd`: Double = 0
  /// @brief Preserve original base_theta_cmd as float64.
  /// @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `base_theta_cmd`: Double = 0
  /// @brief Preserve original base_reset_odom_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `base_reset_odom_cmd`: Int8 = 0
  /// @brief Preserve original pan_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pan_cmd`: Int8 = 0
  /// @brief Preserve original tilt_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `tilt_cmd`: Int8 = 0
  /// @brief Preserve original ee_x_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_x_cmd`: Int8 = 0
  /// @brief Preserve original ee_y_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_y_cmd`: Int8 = 0
  /// @brief Preserve original ee_z_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_z_cmd`: Int8 = 0
  /// @brief Preserve original ee_roll_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ee_roll_cmd`: Int8 = 0
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
  /// @brief Preserve original gripper_pwm_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `gripper_pwm_cmd`: Int8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`base_x_cmd`)
    try w.float64(self.`base_theta_cmd`)
    try w.integer(self.`base_reset_odom_cmd`)
    try w.integer(self.`pan_cmd`)
    try w.integer(self.`tilt_cmd`)
    try w.integer(self.`ee_x_cmd`)
    try w.integer(self.`ee_y_cmd`)
    try w.integer(self.`ee_z_cmd`)
    try w.integer(self.`ee_roll_cmd`)
    try w.integer(self.`ee_pitch_cmd`)
    try w.integer(self.`waist_cmd`)
    try w.integer(self.`gripper_cmd`)
    try w.integer(self.`pose_cmd`)
    try w.integer(self.`speed_cmd`)
    try w.integer(self.`speed_toggle_cmd`)
    try w.integer(self.`gripper_pwm_cmd`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Interbotix_xs_msgsLocobotJoy {
    var v = Ros1Interbotix_xs_msgsLocobotJoy()
    v.`base_x_cmd` = try r.float64()
    v.`base_theta_cmd` = try r.float64()
    v.`base_reset_odom_cmd` = try r.integer(Int8.self)
    v.`pan_cmd` = try r.integer(Int8.self)
    v.`tilt_cmd` = try r.integer(Int8.self)
    v.`ee_x_cmd` = try r.integer(Int8.self)
    v.`ee_y_cmd` = try r.integer(Int8.self)
    v.`ee_z_cmd` = try r.integer(Int8.self)
    v.`ee_roll_cmd` = try r.integer(Int8.self)
    v.`ee_pitch_cmd` = try r.integer(Int8.self)
    v.`waist_cmd` = try r.integer(Int8.self)
    v.`gripper_cmd` = try r.integer(Int8.self)
    v.`pose_cmd` = try r.integer(Int8.self)
    v.`speed_cmd` = try r.integer(Int8.self)
    v.`speed_toggle_cmd` = try r.integer(Int8.self)
    v.`gripper_pwm_cmd` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/MotorGainsRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsMotorGainsRequest: Canonical {
  public static let maximumWireBytes = 292
  public static let codecIdentity =
    "UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009"
  public static let nativeType = "interbotix_xs_msgs/MotorGainsRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original cmd_type as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `cmd_type`: String = ""
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original kp_pos as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `kp_pos`: Int32 = 0
  /// @brief Preserve original ki_pos as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ki_pos`: Int32 = 0
  /// @brief Preserve original kd_pos as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `kd_pos`: Int32 = 0
  /// @brief Preserve original k1 as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `k1`: Int32 = 0
  /// @brief Preserve original k2 as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `k2`: Int32 = 0
  /// @brief Preserve original kp_vel as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `kp_vel`: Int32 = 0
  /// @brief Preserve original ki_vel as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ki_vel`: Int32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`cmd_type`, bound: 128)
    try w.string(self.`name`, bound: 128)
    try w.integer(self.`kp_pos`)
    try w.integer(self.`ki_pos`)
    try w.integer(self.`kd_pos`)
    try w.integer(self.`k1`)
    try w.integer(self.`k2`)
    try w.integer(self.`kp_vel`)
    try w.integer(self.`ki_vel`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Interbotix_xs_msgsMotorGainsRequest
  {
    var v = Ros1Interbotix_xs_msgsMotorGainsRequest()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    v.`kp_pos` = try r.integer(Int32.self)
    v.`ki_pos` = try r.integer(Int32.self)
    v.`kd_pos` = try r.integer(Int32.self)
    v.`k1` = try r.integer(Int32.self)
    v.`k2` = try r.integer(Int32.self)
    v.`kp_vel` = try r.integer(Int32.self)
    v.`ki_vel` = try r.integer(Int32.self)
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/MotorGainsResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsMotorGainsResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89"
  public static let nativeType = "interbotix_xs_msgs/MotorGainsResponse"
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
    -> Ros1Interbotix_xs_msgsMotorGainsResponse
  {
    var v = Ros1Interbotix_xs_msgsMotorGainsResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/OperatingModesRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsOperatingModesRequest: Canonical {
  public static let maximumWireBytes = 536
  public static let codecIdentity =
    "UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3"
  public static let nativeType = "interbotix_xs_msgs/OperatingModesRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original cmd_type as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `cmd_type`: String = ""
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original mode as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `mode`: String = ""
  /// @brief Preserve original profile_type as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `profile_type`: String = ""
  /// @brief Preserve original profile_velocity as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `profile_velocity`: Int32 = 0
  /// @brief Preserve original profile_acceleration as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `profile_acceleration`: Int32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`cmd_type`, bound: 128)
    try w.string(self.`name`, bound: 128)
    try w.string(self.`mode`, bound: 128)
    try w.string(self.`profile_type`, bound: 128)
    try w.integer(self.`profile_velocity`)
    try w.integer(self.`profile_acceleration`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Interbotix_xs_msgsOperatingModesRequest
  {
    var v = Ros1Interbotix_xs_msgsOperatingModesRequest()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    v.`mode` = try r.string(bound: 128)
    v.`profile_type` = try r.string(bound: 128)
    v.`profile_velocity` = try r.integer(Int32.self)
    v.`profile_acceleration` = try r.integer(Int32.self)
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/OperatingModesResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsOperatingModesResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e"
  public static let nativeType = "interbotix_xs_msgs/OperatingModesResponse"
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
    -> Ros1Interbotix_xs_msgsOperatingModesResponse
  {
    var v = Ros1Interbotix_xs_msgsOperatingModesResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/RebootRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsRebootRequest: Canonical {
  public static let maximumWireBytes = 266
  public static let codecIdentity =
    "UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a"
  public static let nativeType = "interbotix_xs_msgs/RebootRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original cmd_type as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `cmd_type`: String = ""
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original enable as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `enable`: Bool = false
  /// @brief Preserve original smart_reboot as bool.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `smart_reboot`: Bool = false
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`cmd_type`, bound: 128)
    try w.string(self.`name`, bound: 128)
    try w.boolean(self.`enable`)
    try w.boolean(self.`smart_reboot`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Interbotix_xs_msgsRebootRequest {
    var v = Ros1Interbotix_xs_msgsRebootRequest()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    v.`enable` = try r.boolean()
    v.`smart_reboot` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/RebootResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsRebootResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4"
  public static let nativeType = "interbotix_xs_msgs/RebootResponse"
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
  public static func read(from r: inout WireReader) throws -> Ros1Interbotix_xs_msgsRebootResponse {
    var v = Ros1Interbotix_xs_msgsRebootResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/RegisterValuesRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsRegisterValuesRequest: Canonical {
  public static let maximumWireBytes = 400
  public static let codecIdentity =
    "UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a"
  public static let nativeType = "interbotix_xs_msgs/RegisterValuesRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original cmd_type as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `cmd_type`: String = ""
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original reg as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `reg`: String = ""
  /// @brief Preserve original value as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `value`: Int32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`cmd_type`, bound: 128)
    try w.string(self.`name`, bound: 128)
    try w.string(self.`reg`, bound: 128)
    try w.integer(self.`value`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Interbotix_xs_msgsRegisterValuesRequest
  {
    var v = Ros1Interbotix_xs_msgsRegisterValuesRequest()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    v.`reg` = try r.string(bound: 128)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/RegisterValuesResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsRegisterValuesResponse: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659"
  public static let nativeType = "interbotix_xs_msgs/RegisterValuesResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original values as int32.
  /// @details At most 16 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `values`: [Int32] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`values`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.integer(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Interbotix_xs_msgsRegisterValuesResponse
  {
    var v = Ros1Interbotix_xs_msgsRegisterValuesResponse()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`values` = []
    v.`values`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`values`.append(try r.integer(Int32.self))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/RobotInfoRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsRobotInfoRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176"
  public static let nativeType = "interbotix_xs_msgs/RobotInfoRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original cmd_type as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `cmd_type`: String = ""
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
    try w.string(self.`cmd_type`, bound: 128)
    try w.string(self.`name`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Interbotix_xs_msgsRobotInfoRequest
  {
    var v = Ros1Interbotix_xs_msgsRobotInfoRequest()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/RobotInfoResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsRobotInfoResponse: Canonical {
  public static let maximumWireBytes = 18474
  public static let codecIdentity =
    "UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d"
  public static let nativeType = "interbotix_xs_msgs/RobotInfoResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original mode as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `mode`: String = ""
  /// @brief Preserve original profile_type as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `profile_type`: String = ""
  /// @brief Preserve original joint_names as string.
  /// @details At most 64 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `joint_names`: [String] = []
  /// @brief Preserve original joint_ids as int16.
  /// @details At most 64 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `joint_ids`: [Int16] = []
  /// @brief Preserve original joint_lower_limits as float32.
  /// @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `joint_lower_limits`: [Float] = []
  /// @brief Preserve original joint_upper_limits as float32.
  /// @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `joint_upper_limits`: [Float] = []
  /// @brief Preserve original joint_velocity_limits as float32.
  /// @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `joint_velocity_limits`: [Float] = []
  /// @brief Preserve original joint_sleep_positions as float32.
  /// @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `joint_sleep_positions`: [Float] = []
  /// @brief Preserve original joint_state_indices as int16.
  /// @details At most 64 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `joint_state_indices`: [Int16] = []
  /// @brief Preserve original num_joints as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `num_joints`: Int16 = 0
  /// @brief Preserve original name as string.
  /// @details At most 64 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `name`: [String] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`mode`, bound: 128)
    try w.string(self.`profile_type`, bound: 128)
    guard self.`joint_names`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 128)
    }
    guard self.`joint_ids`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_ids`.count))
    for e in self.`joint_ids` {
      try w.integer(e)
    }
    guard self.`joint_lower_limits`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_lower_limits`.count))
    for e in self.`joint_lower_limits` {
      try w.float32(e)
    }
    guard self.`joint_upper_limits`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_upper_limits`.count))
    for e in self.`joint_upper_limits` {
      try w.float32(e)
    }
    guard self.`joint_velocity_limits`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_velocity_limits`.count))
    for e in self.`joint_velocity_limits` {
      try w.float32(e)
    }
    guard self.`joint_sleep_positions`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_sleep_positions`.count))
    for e in self.`joint_sleep_positions` {
      try w.float32(e)
    }
    guard self.`joint_state_indices`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_state_indices`.count))
    for e in self.`joint_state_indices` {
      try w.integer(e)
    }
    try w.integer(self.`num_joints`)
    guard self.`name`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`name`.count))
    for e in self.`name` {
      try w.string(e, bound: 128)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Interbotix_xs_msgsRobotInfoResponse
  {
    var v = Ros1Interbotix_xs_msgsRobotInfoResponse()
    v.`mode` = try r.string(bound: 128)
    v.`profile_type` = try r.string(bound: 128)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 64 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`joint_names`.append(try r.string(bound: 128))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 64 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`joint_ids` = []
    v.`joint_ids`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`joint_ids`.append(try r.integer(Int16.self))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 64 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`joint_lower_limits` = []
    v.`joint_lower_limits`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`joint_lower_limits`.append(try r.float32())
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 64 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`joint_upper_limits` = []
    v.`joint_upper_limits`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`joint_upper_limits`.append(try r.float32())
    }
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 64 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`joint_velocity_limits` = []
    v.`joint_velocity_limits`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`joint_velocity_limits`.append(try r.float32())
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 64 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`joint_sleep_positions` = []
    v.`joint_sleep_positions`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`joint_sleep_positions`.append(try r.float32())
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 64 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`joint_state_indices` = []
    v.`joint_state_indices`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`joint_state_indices`.append(try r.integer(Int16.self))
    }
    v.`num_joints` = try r.integer(Int16.self)
    let rawcount10 = try r.integer(UInt32.self)
    guard rawcount10 <= 64 else { throw RosError(22) }
    let count10 = Int(rawcount10)
    v.`name` = []
    v.`name`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`name`.append(try r.string(bound: 128))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/TorqueEnableRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsTorqueEnableRequest: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a"
  public static let nativeType = "interbotix_xs_msgs/TorqueEnableRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original cmd_type as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `cmd_type`: String = ""
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
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
    try w.string(self.`cmd_type`, bound: 128)
    try w.string(self.`name`, bound: 128)
    try w.boolean(self.`enable`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Interbotix_xs_msgsTorqueEnableRequest
  {
    var v = Ros1Interbotix_xs_msgsTorqueEnableRequest()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    v.`enable` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/TorqueEnableResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsTorqueEnableResponse: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44"
  public static let nativeType = "interbotix_xs_msgs/TorqueEnableResponse"
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
    -> Ros1Interbotix_xs_msgsTorqueEnableResponse
  {
    var v = Ros1Interbotix_xs_msgsTorqueEnableResponse()
    return v
  }
}
/// @brief Own every original field of ROS1 interbotix_xs_msgs/TurretJoy.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Interbotix_xs_msgsTurretJoy: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70"
  public static let nativeType = "interbotix_xs_msgs/TurretJoy"
  public static let nativeIdentity: String? = nil
  public static let `PAN_CCW`: Int8 = 1
  public static let `PAN_CW`: Int8 = 2
  public static let `TILT_UP`: Int8 = 3
  public static let `TILT_DOWN`: Int8 = 4
  public static let `PAN_TILT_HOME`: Int8 = 5
  public static let `SPEED_INC`: Int8 = 6
  public static let `SPEED_DEC`: Int8 = 7
  public static let `SPEED_COURSE`: Int8 = 8
  public static let `SPEED_FINE`: Int8 = 9
  /// @brief Preserve original pan_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pan_cmd`: Int8 = 0
  /// @brief Preserve original tilt_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `tilt_cmd`: Int8 = 0
  /// @brief Preserve original speed_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `speed_cmd`: Int8 = 0
  /// @brief Preserve original speed_toggle_cmd as int8.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `speed_toggle_cmd`: Int8 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pan_cmd`)
    try w.integer(self.`tilt_cmd`)
    try w.integer(self.`speed_cmd`)
    try w.integer(self.`speed_toggle_cmd`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Interbotix_xs_msgsTurretJoy {
    var v = Ros1Interbotix_xs_msgsTurretJoy()
    v.`pan_cmd` = try r.integer(Int8.self)
    v.`tilt_cmd` = try r.integer(Int8.self)
    v.`speed_cmd` = try r.integer(Int8.self)
    v.`speed_toggle_cmd` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/ClearErrRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsClearErrRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8"
  public static let nativeType = "xarm_msgs/ClearErrRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsClearErrRequest {
    var v = Ros1Xarm_msgsClearErrRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/ClearErrResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsClearErrResponse: Canonical {
  public static let maximumWireBytes = 134
  public static let codecIdentity =
    "UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1"
  public static let nativeType = "xarm_msgs/ClearErrResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
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
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsClearErrResponse {
    var v = Ros1Xarm_msgsClearErrResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/ConfigToolModbusRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsConfigToolModbusRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5"
  public static let nativeType = "xarm_msgs/ConfigToolModbusRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original baud_rate as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `baud_rate`: Int32 = 0
  /// @brief Preserve original timeout_ms as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `timeout_ms`: Int32 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`baud_rate`)
    try w.integer(self.`timeout_ms`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsConfigToolModbusRequest {
    var v = Ros1Xarm_msgsConfigToolModbusRequest()
    v.`baud_rate` = try r.integer(Int32.self)
    v.`timeout_ms` = try r.integer(Int32.self)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/ConfigToolModbusResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsConfigToolModbusResponse: Canonical {
  public static let maximumWireBytes = 134
  public static let codecIdentity =
    "UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b"
  public static let nativeType = "xarm_msgs/ConfigToolModbusResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original message as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `message`: String = ""
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`message`, bound: 128)
    try w.integer(self.`ret`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsConfigToolModbusResponse
  {
    var v = Ros1Xarm_msgsConfigToolModbusResponse()
    v.`message` = try r.string(bound: 128)
    v.`ret` = try r.integer(Int16.self)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GetAnalogIORequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGetAnalogIORequest: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8"
  public static let nativeType = "xarm_msgs/GetAnalogIORequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original port_num as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `port_num`: Int16 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`port_num`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetAnalogIORequest {
    var v = Ros1Xarm_msgsGetAnalogIORequest()
    v.`port_num` = try r.integer(Int16.self)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GetAnalogIOResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGetAnalogIOResponse: Canonical {
  public static let maximumWireBytes = 138
  public static let codecIdentity =
    "UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968"
  public static let nativeType = "xarm_msgs/GetAnalogIOResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original analog_value as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `analog_value`: Float = 0
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
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
    try w.float32(self.`analog_value`)
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetAnalogIOResponse {
    var v = Ros1Xarm_msgsGetAnalogIOResponse()
    v.`analog_value` = try r.float32()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GetControllerDigitalIORequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGetControllerDigitalIORequest: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c"
  public static let nativeType = "xarm_msgs/GetControllerDigitalIORequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original io_num as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `io_num`: Int16 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`io_num`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Xarm_msgsGetControllerDigitalIORequest
  {
    var v = Ros1Xarm_msgsGetControllerDigitalIORequest()
    v.`io_num` = try r.integer(Int16.self)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GetControllerDigitalIOResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGetControllerDigitalIOResponse: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3"
  public static let nativeType = "xarm_msgs/GetControllerDigitalIOResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
  /// @brief Preserve original value as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `value`: Int16 = 0
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
    try w.integer(self.`ret`)
    try w.integer(self.`value`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws
    -> Ros1Xarm_msgsGetControllerDigitalIOResponse
  {
    var v = Ros1Xarm_msgsGetControllerDigitalIOResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`value` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GetDigitalIORequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGetDigitalIORequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da"
  public static let nativeType = "xarm_msgs/GetDigitalIORequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetDigitalIORequest {
    var v = Ros1Xarm_msgsGetDigitalIORequest()
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GetDigitalIOResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGetDigitalIOResponse: Canonical {
  public static let maximumWireBytes = 142
  public static let codecIdentity =
    "UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2"
  public static let nativeType = "xarm_msgs/GetDigitalIOResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original digital_1 as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `digital_1`: Int32 = 0
  /// @brief Preserve original digital_2 as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `digital_2`: Int32 = 0
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
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
    try w.integer(self.`digital_1`)
    try w.integer(self.`digital_2`)
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetDigitalIOResponse {
    var v = Ros1Xarm_msgsGetDigitalIOResponse()
    v.`digital_1` = try r.integer(Int32.self)
    v.`digital_2` = try r.integer(Int32.self)
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GetErrRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGetErrRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531"
  public static let nativeType = "xarm_msgs/GetErrRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetErrRequest {
    var v = Ros1Xarm_msgsGetErrRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GetErrResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGetErrResponse: Canonical {
  public static let maximumWireBytes = 134
  public static let codecIdentity =
    "UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037"
  public static let nativeType = "xarm_msgs/GetErrResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original err as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `err`: Int16 = 0
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
    try w.integer(self.`err`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetErrResponse {
    var v = Ros1Xarm_msgsGetErrResponse()
    v.`err` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GripperConfigRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGripperConfigRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4"
  public static let nativeType = "xarm_msgs/GripperConfigRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original pulse_vel as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `pulse_vel`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`pulse_vel`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGripperConfigRequest {
    var v = Ros1Xarm_msgsGripperConfigRequest()
    v.`pulse_vel` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GripperConfigResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGripperConfigResponse: Canonical {
  public static let maximumWireBytes = 134
  public static let codecIdentity =
    "UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5"
  public static let nativeType = "xarm_msgs/GripperConfigResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
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
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGripperConfigResponse {
    var v = Ros1Xarm_msgsGripperConfigResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GripperMoveRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGripperMoveRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2"
  public static let nativeType = "xarm_msgs/GripperMoveRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original pulse_pos as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `pulse_pos`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`pulse_pos`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGripperMoveRequest {
    var v = Ros1Xarm_msgsGripperMoveRequest()
    v.`pulse_pos` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GripperMoveResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGripperMoveResponse: Canonical {
  public static let maximumWireBytes = 134
  public static let codecIdentity =
    "UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998"
  public static let nativeType = "xarm_msgs/GripperMoveResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
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
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGripperMoveResponse {
    var v = Ros1Xarm_msgsGripperMoveResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GripperStateRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGripperStateRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d"
  public static let nativeType = "xarm_msgs/GripperStateRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGripperStateRequest {
    var v = Ros1Xarm_msgsGripperStateRequest()
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/GripperStateResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsGripperStateResponse: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4"
  public static let nativeType = "xarm_msgs/GripperStateResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original curr_pos as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `curr_pos`: Float = 0
  /// @brief Preserve original err_code as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `err_code`: Int16 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`curr_pos`)
    try w.integer(self.`err_code`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGripperStateResponse {
    var v = Ros1Xarm_msgsGripperStateResponse()
    v.`curr_pos` = try r.float32()
    v.`err_code` = try r.integer(Int16.self)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/IOState.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsIOState: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996"
  public static let nativeType = "xarm_msgs/IOState"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original digital_1 as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `digital_1`: Int32 = 0
  /// @brief Preserve original digital_2 as int32.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `digital_2`: Int32 = 0
  /// @brief Preserve original analog_1 as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `analog_1`: Float = 0
  /// @brief Preserve original analog_2 as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `analog_2`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`digital_1`)
    try w.integer(self.`digital_2`)
    try w.float32(self.`analog_1`)
    try w.float32(self.`analog_2`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsIOState {
    var v = Ros1Xarm_msgsIOState()
    v.`digital_1` = try r.integer(Int32.self)
    v.`digital_2` = try r.integer(Int32.self)
    v.`analog_1` = try r.float32()
    v.`analog_2` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/MoveRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsMoveRequest: Canonical {
  public static let maximumWireBytes = 84
  public static let codecIdentity =
    "UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5"
  public static let nativeType = "xarm_msgs/MoveRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original pose as float32.
  /// @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose`: [Float] = []
  /// @brief Preserve original mvvelo as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `mvvelo`: Float = 0
  /// @brief Preserve original mvacc as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `mvacc`: Float = 0
  /// @brief Preserve original mvtime as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `mvtime`: Float = 0
  /// @brief Preserve original mvradii as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `mvradii`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`pose`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`pose`.count))
    for e in self.`pose` {
      try w.float32(e)
    }
    try w.float32(self.`mvvelo`)
    try w.float32(self.`mvacc`)
    try w.float32(self.`mvtime`)
    try w.float32(self.`mvradii`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsMoveRequest {
    var v = Ros1Xarm_msgsMoveRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`pose` = []
    v.`pose`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pose`.append(try r.float32())
    }
    v.`mvvelo` = try r.float32()
    v.`mvacc` = try r.float32()
    v.`mvtime` = try r.float32()
    v.`mvradii` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/MoveResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsMoveResponse: Canonical {
  public static let maximumWireBytes = 134
  public static let codecIdentity =
    "UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658"
  public static let nativeType = "xarm_msgs/MoveResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
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
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsMoveResponse {
    var v = Ros1Xarm_msgsMoveResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/RobotMsg.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsRobotMsg: Canonical {
  public static let maximumWireBytes = 130
  public static let codecIdentity =
    "UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41"
  public static let nativeType = "xarm_msgs/RobotMsg"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original state as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `state`: Int16 = 0
  /// @brief Preserve original mode as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `mode`: Int16 = 0
  /// @brief Preserve original cmdnum as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `cmdnum`: Int16 = 0
  /// @brief Preserve original mt_brake as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `mt_brake`: Int16 = 0
  /// @brief Preserve original mt_able as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `mt_able`: Int16 = 0
  /// @brief Preserve original err as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `err`: Int16 = 0
  /// @brief Preserve original warn as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `warn`: Int16 = 0
  /// @brief Preserve original angle as float32.
  /// @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `angle`: [Float] = []
  /// @brief Preserve original pose as float32.
  /// @details Exactly 6 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `pose`: [Float] = Array(repeating: 0, count: 6)
  /// @brief Preserve original offset as float32.
  /// @details Exactly 6 logical elements. Finite IEEE float32 values are required by the canonical profile.
  /// Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `offset`: [Float] = Array(repeating: 0, count: 6)
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`state`)
    try w.integer(self.`mode`)
    try w.integer(self.`cmdnum`)
    try w.integer(self.`mt_brake`)
    try w.integer(self.`mt_able`)
    try w.integer(self.`err`)
    try w.integer(self.`warn`)
    guard self.`angle`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`angle`.count))
    for e in self.`angle` {
      try w.float32(e)
    }
    guard self.`pose`.count == 6 else { throw RosError(22) }
    for e in self.`pose` {
      try w.float32(e)
    }
    guard self.`offset`.count == 6 else { throw RosError(22) }
    for e in self.`offset` {
      try w.float32(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsRobotMsg {
    var v = Ros1Xarm_msgsRobotMsg()
    v.`state` = try r.integer(Int16.self)
    v.`mode` = try r.integer(Int16.self)
    v.`cmdnum` = try r.integer(Int16.self)
    v.`mt_brake` = try r.integer(Int16.self)
    v.`mt_able` = try r.integer(Int16.self)
    v.`err` = try r.integer(Int16.self)
    v.`warn` = try r.integer(Int16.self)
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`angle` = []
    v.`angle`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`angle`.append(try r.float32())
    }
    let count8 = 6
    v.`pose` = []
    v.`pose`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`pose`.append(try r.float32())
    }
    let count9 = 6
    v.`offset` = []
    v.`offset`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`offset`.append(try r.float32())
    }
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/SetAxisRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsSetAxisRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6"
  public static let nativeType = "xarm_msgs/SetAxisRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original id as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `id`: Int16 = 0
  /// @brief Preserve original data as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `data`: Int16 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.integer(self.`data`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetAxisRequest {
    var v = Ros1Xarm_msgsSetAxisRequest()
    v.`id` = try r.integer(Int16.self)
    v.`data` = try r.integer(Int16.self)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/SetAxisResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsSetAxisResponse: Canonical {
  public static let maximumWireBytes = 134
  public static let codecIdentity =
    "UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7"
  public static let nativeType = "xarm_msgs/SetAxisResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
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
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetAxisResponse {
    var v = Ros1Xarm_msgsSetAxisResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/SetDigitalIORequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsSetDigitalIORequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959"
  public static let nativeType = "xarm_msgs/SetDigitalIORequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original io_num as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `io_num`: Int16 = 0
  /// @brief Preserve original value as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `value`: Int16 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`io_num`)
    try w.integer(self.`value`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetDigitalIORequest {
    var v = Ros1Xarm_msgsSetDigitalIORequest()
    v.`io_num` = try r.integer(Int16.self)
    v.`value` = try r.integer(Int16.self)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/SetDigitalIOResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsSetDigitalIOResponse: Canonical {
  public static let maximumWireBytes = 134
  public static let codecIdentity =
    "UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c"
  public static let nativeType = "xarm_msgs/SetDigitalIOResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
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
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetDigitalIOResponse {
    var v = Ros1Xarm_msgsSetDigitalIOResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/SetInt16Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsSetInt16Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7"
  public static let nativeType = "xarm_msgs/SetInt16Request"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original data as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `data`: Int16 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`data`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetInt16Request {
    var v = Ros1Xarm_msgsSetInt16Request()
    v.`data` = try r.integer(Int16.self)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/SetInt16Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsSetInt16Response: Canonical {
  public static let maximumWireBytes = 134
  public static let codecIdentity =
    "UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d"
  public static let nativeType = "xarm_msgs/SetInt16Response"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
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
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetInt16Response {
    var v = Ros1Xarm_msgsSetInt16Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/SetLoadRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsSetLoadRequest: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077"
  public static let nativeType = "xarm_msgs/SetLoadRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original mass as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `mass`: Float = 0
  /// @brief Preserve original xc as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `xc`: Float = 0
  /// @brief Preserve original yc as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `yc`: Float = 0
  /// @brief Preserve original zc as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `zc`: Float = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`mass`)
    try w.float32(self.`xc`)
    try w.float32(self.`yc`)
    try w.float32(self.`zc`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetLoadRequest {
    var v = Ros1Xarm_msgsSetLoadRequest()
    v.`mass` = try r.float32()
    v.`xc` = try r.float32()
    v.`yc` = try r.float32()
    v.`zc` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/SetLoadResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsSetLoadResponse: Canonical {
  public static let maximumWireBytes = 134
  public static let codecIdentity =
    "UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3"
  public static let nativeType = "xarm_msgs/SetLoadResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
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
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetLoadResponse {
    var v = Ros1Xarm_msgsSetLoadResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/SetToolModbusRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsSetToolModbusRequest: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a"
  public static let nativeType = "xarm_msgs/SetToolModbusRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original send_data as uint8.
  /// @details At most 256 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `send_data`: [UInt8] = []
  /// @brief Preserve original respond_len as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `respond_len`: Int16 = 0
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    guard self.`send_data`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`send_data`.count))
    for e in self.`send_data` {
      try w.integer(e)
    }
    try w.integer(self.`respond_len`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetToolModbusRequest {
    var v = Ros1Xarm_msgsSetToolModbusRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 256 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`send_data` = []
    v.`send_data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`send_data`.append(try r.integer(UInt8.self))
    }
    v.`respond_len` = try r.integer(Int16.self)
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/SetToolModbusResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsSetToolModbusResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15"
  public static let nativeType = "xarm_msgs/SetToolModbusResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
  /// @brief Preserve original respond_data as uint8.
  /// @details At most 256 logical elements. Physical units remain those of the original declaration; no
  /// additional model limit is inferred.
  public var `respond_data`: [UInt8] = []
  /// @brief Construct all original fields using their declared native defaults.
  /// @details Later container assignment follows ordinary Swift value/reference semantics.
  public init() {}
  /// @brief Validate and append every original field to the bounded writer.
  /// @param w Borrowed stateful writer; discard it after an error.
  /// @throws Shared RosError for invalid domains, bounds or complete wire quota.
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    guard self.`respond_data`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`respond_data`.count))
    for e in self.`respond_data` {
      try w.integer(e)
    }
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetToolModbusResponse {
    var v = Ros1Xarm_msgsSetToolModbusResponse()
    v.`ret` = try r.integer(Int16.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 256 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`respond_data` = []
    v.`respond_data`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`respond_data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/TCPOffsetRequest.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsTCPOffsetRequest: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd"
  public static let nativeType = "xarm_msgs/TCPOffsetRequest"
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
  /// @brief Preserve original roll as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `roll`: Float = 0
  /// @brief Preserve original pitch as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `pitch`: Float = 0
  /// @brief Preserve original yaw as float32.
  /// @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  /// the original declaration; no additional model limit is inferred.
  public var `yaw`: Float = 0
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
    try w.float32(self.`roll`)
    try w.float32(self.`pitch`)
    try w.float32(self.`yaw`)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsTCPOffsetRequest {
    var v = Ros1Xarm_msgsTCPOffsetRequest()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`roll` = try r.float32()
    v.`pitch` = try r.float32()
    v.`yaw` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS1 xarm_msgs/TCPOffsetResponse.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros1Xarm_msgsTCPOffsetResponse: Canonical {
  public static let maximumWireBytes = 134
  public static let codecIdentity =
    "UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773"
  public static let nativeType = "xarm_msgs/TCPOffsetResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original ret as int16.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `ret`: Int16 = 0
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
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 128)
  }
  /// @brief Read complete nested fields from the current bounded cursor.
  /// @param r Borrowed stateful reader; public top-level decode separately requires complete consumption.
  /// @return New complete record; discard the reader when a shared RosError is thrown.
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsTCPOffsetResponse {
    var v = Ros1Xarm_msgsTCPOffsetResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
