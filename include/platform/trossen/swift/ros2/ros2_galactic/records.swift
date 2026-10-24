/// UWVM_COMPLETE_FIELD_CONTRACTS
/// @details Field domains below come from the unchanged canonical source catalog.
/**
 * @file records.swift
 * @brief Provide the complete trossen ros2_galactic canonical value surface.
 * @details The original 25 record catalog retains field order, constants, defaults and quotas.
 * Borrowed values and buffers must remain stable while a conversion is in progress.
 * Malformed, truncated and trailing wire values are refused through the shared wire error contract.
 * No declaration grants a capability or establishes a native ROS registry identity.
 * Original declarations and units are retained in share/platform/trossen/catalogs.
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
/// @brief Own every original field of ROS2 interbotix_xs_msgs/msg/ArmJoy.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsMsgArmJoy: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f"
  public static let nativeType = "interbotix_xs_msgs/msg/ArmJoy"
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
  public static let `GRIPPER_RELEASE`: Int8 = 13
  public static let `GRIPPER_GRASP`: Int8 = 14
  public static let `HOME_POSE`: Int8 = 15
  public static let `SLEEP_POSE`: Int8 = 16
  public static let `SPEED_INC`: Int8 = 17
  public static let `SPEED_DEC`: Int8 = 18
  public static let `SPEED_COARSE`: Int8 = 19
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
  public static func read(from r: inout WireReader) throws -> Ros2Interbotix_xs_msgsMsgArmJoy {
    var v = Ros2Interbotix_xs_msgsMsgArmJoy()
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
/// @brief Own every original field of ROS2 interbotix_xs_msgs/msg/HexJoy.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsMsgHexJoy: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d"
  public static let nativeType = "interbotix_xs_msgs/msg/HexJoy"
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
  public static let `SPEED_COARSE`: Int8 = 31
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
  public static func read(from r: inout WireReader) throws -> Ros2Interbotix_xs_msgsMsgHexJoy {
    var v = Ros2Interbotix_xs_msgsMsgHexJoy()
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
/// @brief Own every original field of ROS2 interbotix_xs_msgs/msg/JointGroupCommand.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsMsgJointGroupCommand: Canonical {
  public static let maximumWireBytes = 392
  public static let codecIdentity =
    "UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a"
  public static let nativeType = "interbotix_xs_msgs/msg/JointGroupCommand"
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
    -> Ros2Interbotix_xs_msgsMsgJointGroupCommand
  {
    var v = Ros2Interbotix_xs_msgsMsgJointGroupCommand()
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
/// @brief Own every original field of ROS2 interbotix_xs_msgs/msg/JointSingleCommand.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsMsgJointSingleCommand: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94"
  public static let nativeType = "interbotix_xs_msgs/msg/JointSingleCommand"
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
    -> Ros2Interbotix_xs_msgsMsgJointSingleCommand
  {
    var v = Ros2Interbotix_xs_msgsMsgJointSingleCommand()
    v.`name` = try r.string(bound: 128)
    v.`cmd` = try r.float32()
    return v
  }
}
/// @brief Own every original field of ROS2 interbotix_xs_msgs/msg/JointTemps.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsMsgJointTemps: Canonical {
  public static let maximumWireBytes = 8712
  public static let codecIdentity =
    "UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4"
  public static let nativeType = "interbotix_xs_msgs/msg/JointTemps"
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
  public static func read(from r: inout WireReader) throws -> Ros2Interbotix_xs_msgsMsgJointTemps {
    var v = Ros2Interbotix_xs_msgsMsgJointTemps()
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
  public static let maximumWireBytes = 536
  public static let codecIdentity =
    "UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1"
  public static let nativeType = "trajectory_msgs/msg/JointTrajectoryPoint"
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
    -> Ros2Trajectory_msgsMsgJointTrajectoryPoint
  {
    var v = Ros2Trajectory_msgsMsgJointTrajectoryPoint()
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
    v.`time_from_start` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 trajectory_msgs/msg/JointTrajectory.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Trajectory_msgsMsgJointTrajectory: Canonical {
  public static let maximumWireBytes = 4404
  public static let codecIdentity =
    "UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7"
  public static let nativeType = "trajectory_msgs/msg/JointTrajectory"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original header as std_msgs/msg/Header.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Preserve original joint_names as string.
  /// @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  /// units remain those of the original declaration; no additional model limit is inferred.
  public var `joint_names`: [String] = []
  /// @brief Preserve original points as trajectory_msgs/msg/JointTrajectoryPoint.
  /// @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
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
  public static func read(from r: inout WireReader) throws -> Ros2Trajectory_msgsMsgJointTrajectory
  {
    var v = Ros2Trajectory_msgsMsgJointTrajectory()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
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
      v.`points`.append(try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of ROS2 interbotix_xs_msgs/msg/JointTrajectoryCommand.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand: Canonical {
  public static let maximumWireBytes = 4668
  public static let codecIdentity =
    "UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52"
  public static let nativeType = "interbotix_xs_msgs/msg/JointTrajectoryCommand"
  public static let nativeIdentity: String? = nil
  /// @brief Preserve original cmd_type as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `cmd_type`: String = ""
  /// @brief Preserve original name as string.
  /// @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  /// original declaration; no additional model limit is inferred.
  public var `name`: String = ""
  /// @brief Preserve original traj as trajectory_msgs/msg/JointTrajectory.
  /// @details Physical units remain those of the original declaration; no additional model limit is inferred.
  public var `traj`: Ros2Trajectory_msgsMsgJointTrajectory = Ros2Trajectory_msgsMsgJointTrajectory()
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
    -> Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand
  {
    var v = Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    v.`traj` = try Ros2Trajectory_msgsMsgJointTrajectory.read(from: &r)
    return v
  }
}
/// @brief Own every original field of ROS2 interbotix_xs_msgs/msg/LocobotJoy.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsMsgLocobotJoy: Canonical {
  public static let maximumWireBytes = 30
  public static let codecIdentity =
    "UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633"
  public static let nativeType = "interbotix_xs_msgs/msg/LocobotJoy"
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
  public static let `GRIPPER_RELEASE`: Int8 = 19
  public static let `GRIPPER_GRASP`: Int8 = 20
  public static let `HOME_POSE`: Int8 = 21
  public static let `SLEEP_POSE`: Int8 = 22
  public static let `SPEED_INC`: Int8 = 23
  public static let `SPEED_DEC`: Int8 = 24
  public static let `SPEED_COARSE`: Int8 = 25
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
  public static func read(from r: inout WireReader) throws -> Ros2Interbotix_xs_msgsMsgLocobotJoy {
    var v = Ros2Interbotix_xs_msgsMsgLocobotJoy()
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
/// @brief Own every original field of ROS2 interbotix_xs_msgs/msg/TurretJoy.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsMsgTurretJoy: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f"
  public static let nativeType = "interbotix_xs_msgs/msg/TurretJoy"
  public static let nativeIdentity: String? = nil
  public static let `PAN_CCW`: Int8 = 1
  public static let `PAN_CW`: Int8 = 2
  public static let `TILT_UP`: Int8 = 3
  public static let `TILT_DOWN`: Int8 = 4
  public static let `PAN_TILT_HOME`: Int8 = 5
  public static let `SPEED_INC`: Int8 = 6
  public static let `SPEED_DEC`: Int8 = 7
  public static let `SPEED_COARSE`: Int8 = 8
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
  public static func read(from r: inout WireReader) throws -> Ros2Interbotix_xs_msgsMsgTurretJoy {
    var v = Ros2Interbotix_xs_msgsMsgTurretJoy()
    v.`pan_cmd` = try r.integer(Int8.self)
    v.`tilt_cmd` = try r.integer(Int8.self)
    v.`speed_cmd` = try r.integer(Int8.self)
    v.`speed_toggle_cmd` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of ROS2 interbotix_xs_msgs/srv/MotorGains_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsSrvMotorGains_Request: Canonical {
  public static let maximumWireBytes = 292
  public static let codecIdentity =
    "UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f"
  public static let nativeType = "interbotix_xs_msgs/srv/MotorGains_Request"
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
    -> Ros2Interbotix_xs_msgsSrvMotorGains_Request
  {
    var v = Ros2Interbotix_xs_msgsSrvMotorGains_Request()
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
/// @brief Own every original field of ROS2 interbotix_xs_msgs/srv/MotorGains_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsSrvMotorGains_Response: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972"
  public static let nativeType = "interbotix_xs_msgs/srv/MotorGains_Response"
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
    -> Ros2Interbotix_xs_msgsSrvMotorGains_Response
  {
    var v = Ros2Interbotix_xs_msgsSrvMotorGains_Response()
    return v
  }
}
/// @brief Own every original field of ROS2 interbotix_xs_msgs/srv/OperatingModes_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsSrvOperatingModes_Request: Canonical {
  public static let maximumWireBytes = 536
  public static let codecIdentity =
    "UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15"
  public static let nativeType = "interbotix_xs_msgs/srv/OperatingModes_Request"
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
    -> Ros2Interbotix_xs_msgsSrvOperatingModes_Request
  {
    var v = Ros2Interbotix_xs_msgsSrvOperatingModes_Request()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    v.`mode` = try r.string(bound: 128)
    v.`profile_type` = try r.string(bound: 128)
    v.`profile_velocity` = try r.integer(Int32.self)
    v.`profile_acceleration` = try r.integer(Int32.self)
    return v
  }
}
/// @brief Own every original field of ROS2 interbotix_xs_msgs/srv/OperatingModes_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsSrvOperatingModes_Response: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345"
  public static let nativeType = "interbotix_xs_msgs/srv/OperatingModes_Response"
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
    -> Ros2Interbotix_xs_msgsSrvOperatingModes_Response
  {
    var v = Ros2Interbotix_xs_msgsSrvOperatingModes_Response()
    return v
  }
}
/// @brief Own every original field of ROS2 interbotix_xs_msgs/srv/Reboot_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsSrvReboot_Request: Canonical {
  public static let maximumWireBytes = 266
  public static let codecIdentity =
    "UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55"
  public static let nativeType = "interbotix_xs_msgs/srv/Reboot_Request"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Interbotix_xs_msgsSrvReboot_Request
  {
    var v = Ros2Interbotix_xs_msgsSrvReboot_Request()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    v.`enable` = try r.boolean()
    v.`smart_reboot` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS2 interbotix_xs_msgs/srv/Reboot_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsSrvReboot_Response: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b"
  public static let nativeType = "interbotix_xs_msgs/srv/Reboot_Response"
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
    -> Ros2Interbotix_xs_msgsSrvReboot_Response
  {
    var v = Ros2Interbotix_xs_msgsSrvReboot_Response()
    return v
  }
}
/// @brief Own every original field of ROS2 interbotix_xs_msgs/srv/RegisterValues_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsSrvRegisterValues_Request: Canonical {
  public static let maximumWireBytes = 400
  public static let codecIdentity =
    "UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd"
  public static let nativeType = "interbotix_xs_msgs/srv/RegisterValues_Request"
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
    -> Ros2Interbotix_xs_msgsSrvRegisterValues_Request
  {
    var v = Ros2Interbotix_xs_msgsSrvRegisterValues_Request()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    v.`reg` = try r.string(bound: 128)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
/// @brief Own every original field of ROS2 interbotix_xs_msgs/srv/RegisterValues_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsSrvRegisterValues_Response: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a"
  public static let nativeType = "interbotix_xs_msgs/srv/RegisterValues_Response"
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
    -> Ros2Interbotix_xs_msgsSrvRegisterValues_Response
  {
    var v = Ros2Interbotix_xs_msgsSrvRegisterValues_Response()
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
/// @brief Own every original field of ROS2 interbotix_xs_msgs/srv/RobotInfo_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsSrvRobotInfo_Request: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9"
  public static let nativeType = "interbotix_xs_msgs/srv/RobotInfo_Request"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Interbotix_xs_msgsSrvRobotInfo_Request
  {
    var v = Ros2Interbotix_xs_msgsSrvRobotInfo_Request()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of ROS2 interbotix_xs_msgs/srv/RobotInfo_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsSrvRobotInfo_Response: Canonical {
  public static let maximumWireBytes = 18474
  public static let codecIdentity =
    "UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14"
  public static let nativeType = "interbotix_xs_msgs/srv/RobotInfo_Response"
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
    -> Ros2Interbotix_xs_msgsSrvRobotInfo_Response
  {
    var v = Ros2Interbotix_xs_msgsSrvRobotInfo_Response()
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
/// @brief Own every original field of ROS2 interbotix_xs_msgs/srv/TorqueEnable_Request.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsSrvTorqueEnable_Request: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da"
  public static let nativeType = "interbotix_xs_msgs/srv/TorqueEnable_Request"
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
    -> Ros2Interbotix_xs_msgsSrvTorqueEnable_Request
  {
    var v = Ros2Interbotix_xs_msgsSrvTorqueEnable_Request()
    v.`cmd_type` = try r.string(bound: 128)
    v.`name` = try r.string(bound: 128)
    v.`enable` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of ROS2 interbotix_xs_msgs/srv/TorqueEnable_Response.
/// @details Values retain declared defaults and full nested/array capacities; local construction grants no
/// authority.
public struct Ros2Interbotix_xs_msgsSrvTorqueEnable_Response: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b"
  public static let nativeType = "interbotix_xs_msgs/srv/TorqueEnable_Response"
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
    -> Ros2Interbotix_xs_msgsSrvTorqueEnable_Response
  {
    var v = Ros2Interbotix_xs_msgsSrvTorqueEnable_Response()
    return v
  }
}
