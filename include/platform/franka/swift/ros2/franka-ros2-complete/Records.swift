// @brief Complete original franka ros2 canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical values. No I/O or authority.
import RosWasm

/// @brief Own every original field of builtin_interfaces/msg/Time.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Builtin_interfacesMsgTime: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
  public static let nativeType = "builtin_interfaces/msg/Time"
  public static let nativeIdentity: String? = nil
  /// @brief This message communicates ROS Time defined here:
  /// https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32
  /// values.
  /// @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
  /// to the complete value and acquires no ROS resource.
  public var `sec`: Int32 = 0
  /// @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
  /// e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is
  /// represented as {sec: 1, nanosec: 7e8}
  /// @details Original builtin_interfaces/msg/Time.nanosec; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `nanosec`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    if self.`nanosec` >= 1_000_000_000 { throw RosError(22) }
    try w.integer(self.`sec`)
    try w.integer(self.`nanosec`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Builtin_interfacesMsgTime {
    var v = Ros2Builtin_interfacesMsgTime()
    v.`sec` = try r.integer(Int32.self)
    v.`nanosec` = try r.integer(UInt32.self)
    if v.`nanosec` >= 1_000_000_000 { throw RosError(22) }
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/ErrorRecovery_Goal.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionErrorRecovery_Goal: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070"
  public static let nativeType = "franka_msgs/action/ErrorRecovery_Goal"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsActionErrorRecovery_Goal
  {
    var v = Ros2Franka_msgsActionErrorRecovery_Goal()
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/ErrorRecovery_Result.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionErrorRecovery_Result: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9"
  public static let nativeType = "franka_msgs/action/ErrorRecovery_Result"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsActionErrorRecovery_Result
  {
    var v = Ros2Franka_msgsActionErrorRecovery_Result()
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/ErrorRecovery_Feedback.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionErrorRecovery_Feedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f"
  public static let nativeType = "franka_msgs/action/ErrorRecovery_Feedback"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsActionErrorRecovery_Feedback
  {
    var v = Ros2Franka_msgsActionErrorRecovery_Feedback()
    return v
  }
}
/// @brief Own every original field of franka_msgs/msg/GraspEpsilon.
/// @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsMsgGraspEpsilon: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38"
  public static let nativeType = "franka_msgs/msg/GraspEpsilon"
  public static let nativeIdentity: String? = nil
  /// @brief Maximum tolerated deviation when the actual grasped width is smaller than the commanded grasp
  /// width. Unit: [m]
  /// @details Original franka_msgs/msg/GraspEpsilon.inner; native type float64. Scalar value. Declared
  /// original default 0.005. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `inner`: Double = Double(bitPattern: 0x3f74_7ae1_47ae_147b)
  /// @brief Maximum tolerated deviation when the actual grasped width is larger than the commanded grasp
  /// width. Unit: [m]
  /// @details Original franka_msgs/msg/GraspEpsilon.outer; native type float64. Scalar value. Declared
  /// original default 0.005. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `outer`: Double = Double(bitPattern: 0x3f74_7ae1_47ae_147b)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`inner`)
    try w.float64(self.`outer`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsMsgGraspEpsilon {
    var v = Ros2Franka_msgsMsgGraspEpsilon()
    v.`inner` = try r.float64()
    v.`outer` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/Grasp_Goal.
/// @details Canonical extent 40..40 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionGrasp_Goal: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f"
  public static let nativeType = "franka_msgs/action/Grasp_Goal"
  public static let nativeIdentity: String? = nil
  /// @brief [m]
  /// @details Original franka_msgs/action/Grasp_Goal.width; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `width`: Double = 0
  /// @brief Retain the complete original franka_msgs/msg/GraspEpsilon field.
  /// @details Original franka_msgs/action/Grasp_Goal.epsilon; native type franka_msgs/msg/GraspEpsilon.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `epsilon`: Ros2Franka_msgsMsgGraspEpsilon = Ros2Franka_msgsMsgGraspEpsilon()
  /// @brief [m/s]
  /// @details Original franka_msgs/action/Grasp_Goal.speed; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `speed`: Double = 0
  /// @brief [N]
  /// @details Original franka_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `force`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`width`)
    try self.`epsilon`.write(to: &w)
    try w.float64(self.`speed`)
    try w.float64(self.`force`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsActionGrasp_Goal {
    var v = Ros2Franka_msgsActionGrasp_Goal()
    v.`width` = try r.float64()
    v.`epsilon` = try Ros2Franka_msgsMsgGraspEpsilon.read(from: &r)
    v.`speed` = try r.float64()
    v.`force` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/Grasp_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionGrasp_Result: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733"
  public static let nativeType = "franka_msgs/action/Grasp_Result"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsActionGrasp_Result {
    var v = Ros2Franka_msgsActionGrasp_Result()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/Grasp_Feedback.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionGrasp_Feedback: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe"
  public static let nativeType = "franka_msgs/action/Grasp_Feedback"
  public static let nativeIdentity: String? = nil
  /// @brief [m]
  /// @details Original franka_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `current_width`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`current_width`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsActionGrasp_Feedback {
    var v = Ros2Franka_msgsActionGrasp_Feedback()
    v.`current_width` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/Homing_Goal.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionHoming_Goal: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d"
  public static let nativeType = "franka_msgs/action/Homing_Goal"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsActionHoming_Goal {
    var v = Ros2Franka_msgsActionHoming_Goal()
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/Homing_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionHoming_Result: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c"
  public static let nativeType = "franka_msgs/action/Homing_Result"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/action/Homing_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/action/Homing_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsActionHoming_Result {
    var v = Ros2Franka_msgsActionHoming_Result()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/Homing_Feedback.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionHoming_Feedback: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46"
  public static let nativeType = "franka_msgs/action/Homing_Feedback"
  public static let nativeIdentity: String? = nil
  /// @brief [m]
  /// @details Original franka_msgs/action/Homing_Feedback.current_width; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `current_width`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`current_width`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsActionHoming_Feedback {
    var v = Ros2Franka_msgsActionHoming_Feedback()
    v.`current_width` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/Move_Goal.
/// @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionMove_Goal: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f"
  public static let nativeType = "franka_msgs/action/Move_Goal"
  public static let nativeIdentity: String? = nil
  /// @brief [m]
  /// @details Original franka_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `width`: Double = 0
  /// @brief [m/s]
  /// @details Original franka_msgs/action/Move_Goal.speed; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `speed`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`width`)
    try w.float64(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsActionMove_Goal {
    var v = Ros2Franka_msgsActionMove_Goal()
    v.`width` = try r.float64()
    v.`speed` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/Move_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionMove_Result: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266"
  public static let nativeType = "franka_msgs/action/Move_Result"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsActionMove_Result {
    var v = Ros2Franka_msgsActionMove_Result()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/Move_Feedback.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionMove_Feedback: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596"
  public static let nativeType = "franka_msgs/action/Move_Feedback"
  public static let nativeIdentity: String? = nil
  /// @brief [m]
  /// @details Original franka_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `current_width`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`current_width`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsActionMove_Feedback {
    var v = Ros2Franka_msgsActionMove_Feedback()
    v.`current_width` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/PTPMotion_Goal.
/// @details Canonical extent 16..128 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionPTPMotion_Goal: Canonical {
  public static let maximumWireBytes = 128
  public static let codecIdentity =
    "UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc"
  public static let nativeType = "franka_msgs/action/PTPMotion_Goal"
  public static let nativeIdentity: String? = nil
  /// @brief ## This defines a PTPMotion action for controlling a Franka robot using point-to-point motion
  /// commands. The goal_joint_configuration specifies the desired joint angles. [rad]
  /// @details Original franka_msgs/action/PTPMotion_Goal.goal_joint_configuration; native type float64.
  /// At most 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `goal_joint_configuration`: [Double] = []
  /// @brief The maximum allowed joint velocities for the motion. [rad/s]
  /// @details Original franka_msgs/action/PTPMotion_Goal.maximum_joint_velocities; native type float64.
  /// At most 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `maximum_joint_velocities`: [Double] = []
  /// @brief The acceptable goal tolerance for the motion. The 'target reached condition is met when - the
  /// absolute difference between the current and goal joint positions is within this goal_tolerance - the
  /// joint velocities are below a small threshold [rad]
  /// @details Original franka_msgs/action/PTPMotion_Goal.goal_tolerance; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `goal_tolerance`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`goal_joint_configuration`.count <= 7 else { throw RosError(22) }
    try w.integer(UInt32(self.`goal_joint_configuration`.count))
    for e in self.`goal_joint_configuration` {
      try w.float64(e)
    }
    guard self.`maximum_joint_velocities`.count <= 7 else { throw RosError(22) }
    try w.integer(UInt32(self.`maximum_joint_velocities`.count))
    for e in self.`maximum_joint_velocities` {
      try w.float64(e)
    }
    try w.float64(self.`goal_tolerance`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsActionPTPMotion_Goal {
    var v = Ros2Franka_msgsActionPTPMotion_Goal()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 7 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`goal_joint_configuration` = []
    v.`goal_joint_configuration`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`goal_joint_configuration`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 7 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`maximum_joint_velocities` = []
    v.`maximum_joint_velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`maximum_joint_velocities`.append(try r.float64())
    }
    v.`goal_tolerance` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_msgs/msg/TargetStatus.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsMsgTargetStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585"
  public static let nativeType = "franka_msgs/msg/TargetStatus"
  public static let nativeIdentity: String? = nil
  public static let `IDLE`: UInt8 = 0
  public static let `EXECUTING`: UInt8 = 1
  public static let `TARGET_REACHED`: UInt8 = 2
  public static let `ABORTED`: UInt8 = 3
  /// @brief # The current status of the motion (one of the above states)
  /// @details Original franka_msgs/msg/TargetStatus.status; native type uint8. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `status`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsMsgTargetStatus {
    var v = Ros2Franka_msgsMsgTargetStatus()
    v.`status` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/PTPMotion_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionPTPMotion_Result: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1"
  public static let nativeType = "franka_msgs/action/PTPMotion_Result"
  public static let nativeIdentity: String? = nil
  /// @brief Result of the point-to-point motion action
  /// @details Original franka_msgs/action/PTPMotion_Result.target_status; native type
  /// franka_msgs/msg/TargetStatus. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `target_status`: Ros2Franka_msgsMsgTargetStatus = Ros2Franka_msgsMsgTargetStatus()
  /// @brief In case of failure, an error message describing the issue
  /// @details Original franka_msgs/action/PTPMotion_Result.error_message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `error_message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`target_status`.write(to: &w)
    try w.string(self.`error_message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsActionPTPMotion_Result
  {
    var v = Ros2Franka_msgsActionPTPMotion_Result()
    v.`target_status` = try Ros2Franka_msgsMsgTargetStatus.read(from: &r)
    v.`error_message` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/action/PTPMotion_Feedback.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsActionPTPMotion_Feedback: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300"
  public static let nativeType = "franka_msgs/action/PTPMotion_Feedback"
  public static let nativeIdentity: String? = nil
  /// @brief Feedback during the execution of the point-to-point motion
  /// @details Original franka_msgs/action/PTPMotion_Feedback.target_status; native type
  /// franka_msgs/msg/TargetStatus. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `target_status`: Ros2Franka_msgsMsgTargetStatus = Ros2Franka_msgsMsgTargetStatus()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`target_status`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsActionPTPMotion_Feedback
  {
    var v = Ros2Franka_msgsActionPTPMotion_Feedback()
    v.`target_status` = try Ros2Franka_msgsMsgTargetStatus.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Vector3.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgVector3: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
  public static let nativeType = "geometry_msgs/msg/Vector3"
  public static let nativeIdentity: String? = nil
  /// @brief This represents a vector in free space. This is semantically different than a point. A vector
  /// is always anchored at the origin. When a transform is applied to a vector, only the rotational
  /// component is applied.
  /// @details Original geometry_msgs/msg/Vector3.x; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `x`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Vector3.y; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `y`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Vector3.z; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `z`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgVector3 {
    var v = Ros2Geometry_msgsMsgVector3()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_msgs/msg/CollisionIndicators.
/// @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsMsgCollisionIndicators: Canonical {
  public static let maximumWireBytes = 208
  public static let codecIdentity =
    "UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1"
  public static let nativeType = "franka_msgs/msg/CollisionIndicators"
  public static let nativeIdentity: String? = nil
  /// @brief ## Indicates which dimensions have an active contact/collision flag raised
  /// @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_linear_collision; native type
  /// geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `is_cartesian_linear_collision`: Ros2Geometry_msgsMsgVector3 =
    Ros2Geometry_msgsMsgVector3()
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_angular_collision; native type
  /// geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `is_cartesian_angular_collision`: Ros2Geometry_msgsMsgVector3 =
    Ros2Geometry_msgsMsgVector3()
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_linear_contact; native type
  /// geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `is_cartesian_linear_contact`: Ros2Geometry_msgsMsgVector3 =
    Ros2Geometry_msgsMsgVector3()
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_angular_contact; native type
  /// geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `is_cartesian_angular_contact`: Ros2Geometry_msgsMsgVector3 =
    Ros2Geometry_msgsMsgVector3()
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/CollisionIndicators.is_joint_collision; native type float64.
  /// Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `is_joint_collision`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/CollisionIndicators.is_joint_contact; native type float64. Exactly
  /// 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `is_joint_contact`: [Double] = Array(repeating: 0, count: 7)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`is_cartesian_linear_collision`.write(to: &w)
    try self.`is_cartesian_angular_collision`.write(to: &w)
    try self.`is_cartesian_linear_contact`.write(to: &w)
    try self.`is_cartesian_angular_contact`.write(to: &w)
    guard self.`is_joint_collision`.count == 7 else { throw RosError(22) }
    for e in self.`is_joint_collision` {
      try w.float64(e)
    }
    guard self.`is_joint_contact`.count == 7 else { throw RosError(22) }
    for e in self.`is_joint_contact` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsMsgCollisionIndicators
  {
    var v = Ros2Franka_msgsMsgCollisionIndicators()
    v.`is_cartesian_linear_collision` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`is_cartesian_angular_collision` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`is_cartesian_linear_contact` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`is_cartesian_angular_contact` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    let count4 = 7
    v.`is_joint_collision` = []
    v.`is_joint_collision`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`is_joint_collision`.append(try r.float64())
    }
    let count5 = 7
    v.`is_joint_contact` = []
    v.`is_joint_contact`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`is_joint_contact`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/msg/Elbow.
/// @details Canonical extent 80..80 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsMsgElbow: Canonical {
  public static let maximumWireBytes = 80
  public static let codecIdentity =
    "UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6"
  public static let nativeType = "franka_msgs/msg/Elbow"
  public static let nativeIdentity: String? = nil
  /// @brief ## The state of the elbow
  /// @details Original franka_msgs/msg/Elbow.position; native type float64. Exactly 2 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `position`: [Double] = Array(repeating: 0, count: 2)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/Elbow.desired_position; native type float64. Exactly 2 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `desired_position`: [Double] = Array(repeating: 0, count: 2)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/Elbow.commanded_position; native type float64. Exactly 2 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `commanded_position`: [Double] = Array(repeating: 0, count: 2)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/Elbow.commanded_velocity; native type float64. Exactly 2 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `commanded_velocity`: [Double] = Array(repeating: 0, count: 2)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/Elbow.commanded_acceleration; native type float64. Exactly 2
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `commanded_acceleration`: [Double] = Array(repeating: 0, count: 2)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`position`.count == 2 else { throw RosError(22) }
    for e in self.`position` {
      try w.float64(e)
    }
    guard self.`desired_position`.count == 2 else { throw RosError(22) }
    for e in self.`desired_position` {
      try w.float64(e)
    }
    guard self.`commanded_position`.count == 2 else { throw RosError(22) }
    for e in self.`commanded_position` {
      try w.float64(e)
    }
    guard self.`commanded_velocity`.count == 2 else { throw RosError(22) }
    for e in self.`commanded_velocity` {
      try w.float64(e)
    }
    guard self.`commanded_acceleration`.count == 2 else { throw RosError(22) }
    for e in self.`commanded_acceleration` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsMsgElbow {
    var v = Ros2Franka_msgsMsgElbow()
    let count0 = 2
    v.`position` = []
    v.`position`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`position`.append(try r.float64())
    }
    let count1 = 2
    v.`desired_position` = []
    v.`desired_position`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`desired_position`.append(try r.float64())
    }
    let count2 = 2
    v.`commanded_position` = []
    v.`commanded_position`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`commanded_position`.append(try r.float64())
    }
    let count3 = 2
    v.`commanded_velocity` = []
    v.`commanded_velocity`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`commanded_velocity`.append(try r.float64())
    }
    let count4 = 2
    v.`commanded_acceleration` = []
    v.`commanded_acceleration`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`commanded_acceleration`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/msg/Errors.
/// @details Canonical extent 36..36 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsMsgErrors: Canonical {
  public static let maximumWireBytes = 36
  public static let codecIdentity =
    "UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c"
  public static let nativeType = "franka_msgs/msg/Errors"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_position_limits_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_position_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_position_limits_violation; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_position_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.self_collision_avoidance_violation; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `self_collision_avoidance_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_velocity_violation; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_velocity_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_velocity_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_velocity_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.force_control_safety_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `force_control_safety_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_reflex; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `joint_reflex`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_reflex; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `cartesian_reflex`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.max_goal_pose_deviation_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `max_goal_pose_deviation_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.max_path_pose_deviation_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `max_path_pose_deviation_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_velocity_profile_safety_violation; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_velocity_profile_safety_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_position_motion_generator_start_pose_invalid; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_position_motion_generator_start_pose_invalid`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_motion_generator_position_limits_violation; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_motion_generator_position_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_motion_generator_velocity_limits_violation; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_motion_generator_velocity_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_motion_generator_velocity_discontinuity; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_motion_generator_velocity_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_motion_generator_acceleration_discontinuity; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_motion_generator_acceleration_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_position_motion_generator_start_pose_invalid;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_position_motion_generator_start_pose_invalid`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_elbow_limit_violation; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_elbow_limit_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_velocity_limits_violation;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_velocity_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_velocity_discontinuity; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_velocity_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_acceleration_discontinuity;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_acceleration_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_elbow_sign_inconsistent; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_elbow_sign_inconsistent`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_start_elbow_invalid; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_start_elbow_invalid`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_position_limits_violation;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_joint_position_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_limits_violation;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_joint_velocity_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_discontinuity;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_joint_velocity_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original
  /// franka_msgs/msg/Errors.cartesian_motion_generator_joint_acceleration_discontinuity; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_joint_acceleration_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_position_motion_generator_invalid_frame; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_position_motion_generator_invalid_frame`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.force_controller_desired_force_tolerance_violation; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `force_controller_desired_force_tolerance_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.controller_torque_discontinuity; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `controller_torque_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.start_elbow_sign_inconsistent; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `start_elbow_sign_inconsistent`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.communication_constraints_violation; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `communication_constraints_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.power_limit_violation; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `power_limit_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_p2p_insufficient_torque_for_planning; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_p2p_insufficient_torque_for_planning`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.tau_j_range_violation; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `tau_j_range_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.instability_detected; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `instability_detected`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`joint_position_limits_violation`)
    try w.boolean(self.`cartesian_position_limits_violation`)
    try w.boolean(self.`self_collision_avoidance_violation`)
    try w.boolean(self.`joint_velocity_violation`)
    try w.boolean(self.`cartesian_velocity_violation`)
    try w.boolean(self.`force_control_safety_violation`)
    try w.boolean(self.`joint_reflex`)
    try w.boolean(self.`cartesian_reflex`)
    try w.boolean(self.`max_goal_pose_deviation_violation`)
    try w.boolean(self.`max_path_pose_deviation_violation`)
    try w.boolean(self.`cartesian_velocity_profile_safety_violation`)
    try w.boolean(self.`joint_position_motion_generator_start_pose_invalid`)
    try w.boolean(self.`joint_motion_generator_position_limits_violation`)
    try w.boolean(self.`joint_motion_generator_velocity_limits_violation`)
    try w.boolean(self.`joint_motion_generator_velocity_discontinuity`)
    try w.boolean(self.`joint_motion_generator_acceleration_discontinuity`)
    try w.boolean(self.`cartesian_position_motion_generator_start_pose_invalid`)
    try w.boolean(self.`cartesian_motion_generator_elbow_limit_violation`)
    try w.boolean(self.`cartesian_motion_generator_velocity_limits_violation`)
    try w.boolean(self.`cartesian_motion_generator_velocity_discontinuity`)
    try w.boolean(self.`cartesian_motion_generator_acceleration_discontinuity`)
    try w.boolean(self.`cartesian_motion_generator_elbow_sign_inconsistent`)
    try w.boolean(self.`cartesian_motion_generator_start_elbow_invalid`)
    try w.boolean(self.`cartesian_motion_generator_joint_position_limits_violation`)
    try w.boolean(self.`cartesian_motion_generator_joint_velocity_limits_violation`)
    try w.boolean(self.`cartesian_motion_generator_joint_velocity_discontinuity`)
    try w.boolean(self.`cartesian_motion_generator_joint_acceleration_discontinuity`)
    try w.boolean(self.`cartesian_position_motion_generator_invalid_frame`)
    try w.boolean(self.`force_controller_desired_force_tolerance_violation`)
    try w.boolean(self.`controller_torque_discontinuity`)
    try w.boolean(self.`start_elbow_sign_inconsistent`)
    try w.boolean(self.`communication_constraints_violation`)
    try w.boolean(self.`power_limit_violation`)
    try w.boolean(self.`joint_p2p_insufficient_torque_for_planning`)
    try w.boolean(self.`tau_j_range_violation`)
    try w.boolean(self.`instability_detected`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsMsgErrors {
    var v = Ros2Franka_msgsMsgErrors()
    v.`joint_position_limits_violation` = try r.boolean()
    v.`cartesian_position_limits_violation` = try r.boolean()
    v.`self_collision_avoidance_violation` = try r.boolean()
    v.`joint_velocity_violation` = try r.boolean()
    v.`cartesian_velocity_violation` = try r.boolean()
    v.`force_control_safety_violation` = try r.boolean()
    v.`joint_reflex` = try r.boolean()
    v.`cartesian_reflex` = try r.boolean()
    v.`max_goal_pose_deviation_violation` = try r.boolean()
    v.`max_path_pose_deviation_violation` = try r.boolean()
    v.`cartesian_velocity_profile_safety_violation` = try r.boolean()
    v.`joint_position_motion_generator_start_pose_invalid` = try r.boolean()
    v.`joint_motion_generator_position_limits_violation` = try r.boolean()
    v.`joint_motion_generator_velocity_limits_violation` = try r.boolean()
    v.`joint_motion_generator_velocity_discontinuity` = try r.boolean()
    v.`joint_motion_generator_acceleration_discontinuity` = try r.boolean()
    v.`cartesian_position_motion_generator_start_pose_invalid` = try r.boolean()
    v.`cartesian_motion_generator_elbow_limit_violation` = try r.boolean()
    v.`cartesian_motion_generator_velocity_limits_violation` = try r.boolean()
    v.`cartesian_motion_generator_velocity_discontinuity` = try r.boolean()
    v.`cartesian_motion_generator_acceleration_discontinuity` = try r.boolean()
    v.`cartesian_motion_generator_elbow_sign_inconsistent` = try r.boolean()
    v.`cartesian_motion_generator_start_elbow_invalid` = try r.boolean()
    v.`cartesian_motion_generator_joint_position_limits_violation` = try r.boolean()
    v.`cartesian_motion_generator_joint_velocity_limits_violation` = try r.boolean()
    v.`cartesian_motion_generator_joint_velocity_discontinuity` = try r.boolean()
    v.`cartesian_motion_generator_joint_acceleration_discontinuity` = try r.boolean()
    v.`cartesian_position_motion_generator_invalid_frame` = try r.boolean()
    v.`force_controller_desired_force_tolerance_violation` = try r.boolean()
    v.`controller_torque_discontinuity` = try r.boolean()
    v.`start_elbow_sign_inconsistent` = try r.boolean()
    v.`communication_constraints_violation` = try r.boolean()
    v.`power_limit_violation` = try r.boolean()
    v.`joint_p2p_insufficient_torque_for_planning` = try r.boolean()
    v.`tau_j_range_violation` = try r.boolean()
    v.`instability_detected` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of std_msgs/msg/Header.
/// @details Canonical extent 12..140 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Std_msgsMsgHeader: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
  public static let nativeType = "std_msgs/msg/Header"
  public static let nativeIdentity: String? = nil
  /// @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
  /// timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
  /// seconds and nanoseconds.
  /// @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Transform frame with which this data is associated.
  /// @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
  /// bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgHeader {
    var v = Ros2Std_msgsMsgHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    v.`frame_id` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of sensor_msgs/msg/JointState.
/// @details Canonical extent 28..1248 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Sensor_msgsMsgJointState: Canonical {
  public static let maximumWireBytes = 1248
  public static let codecIdentity =
    "UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3"
  public static let nativeType = "sensor_msgs/msg/JointState"
  public static let nativeIdentity: String? = nil
  /// @brief This is a message that holds data to describe the state of a set of torque controlled joints.
  /// The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or
  /// m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or
  /// N).  Each joint is uniquely identified by its name The header specifies the time at which the joint
  /// states were recorded. All the joint states in one message have to be recorded at the same time.
  /// This message consists of a multiple arrays, one for each part of the joint state. The goal is to
  /// make each of the fields optional. When e.g. your joints have no effort associated with them, you can
  /// leave the effort array empty.  All arrays in this message should have the same size, or be empty.
  /// This is the only way to uniquely associate the joint name with the correct states.
  /// @details Original sensor_msgs/msg/JointState.header; native type std_msgs/msg/Header. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original string field.
  /// @details Original sensor_msgs/msg/JointState.name; native type string. At most 7 elements. UTF-8
  /// capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `name`: [String] = []
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.position; native type float64. At most 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `position`: [Double] = []
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `velocity`: [Double] = []
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `effort`: [Double] = []
  public init() {}
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
    guard self.`name`.count <= 7 else { throw RosError(22) }
    try w.integer(UInt32(self.`name`.count))
    for e in self.`name` {
      try w.string(e, bound: 128)
    }
    guard self.`position`.count <= 7 else { throw RosError(22) }
    try w.integer(UInt32(self.`position`.count))
    for e in self.`position` {
      try w.float64(e)
    }
    guard self.`velocity`.count <= 7 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity`.count))
    for e in self.`velocity` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 7 else { throw RosError(22) }
    try w.integer(UInt32(self.`effort`.count))
    for e in self.`effort` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Sensor_msgsMsgJointState {
    var v = Ros2Sensor_msgsMsgJointState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 7 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`name` = []
    v.`name`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`name`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 7 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`position` = []
    v.`position`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`position`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 7 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`velocity`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 7 else { throw RosError(22) }
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
/// @brief Own every original field of geometry_msgs/msg/Wrench.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgWrench: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6"
  public static let nativeType = "geometry_msgs/msg/Wrench"
  public static let nativeIdentity: String? = nil
  /// @brief This represents force in free space, separated into its linear and angular parts.
  /// @details Original geometry_msgs/msg/Wrench.force; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `force`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original geometry_msgs/msg/Wrench.torque; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `torque`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`force`.write(to: &w)
    try self.`torque`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgWrench {
    var v = Ros2Geometry_msgsMsgWrench()
    v.`force` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`torque` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/WrenchStamped.
/// @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgWrenchStamped: Canonical {
  public static let maximumWireBytes = 188
  public static let codecIdentity =
    "UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66"
  public static let nativeType = "geometry_msgs/msg/WrenchStamped"
  public static let nativeIdentity: String? = nil
  /// @brief A wrench with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/WrenchStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
  /// @details Original geometry_msgs/msg/WrenchStamped.wrench; native type geometry_msgs/msg/Wrench.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `wrench`: Ros2Geometry_msgsMsgWrench = Ros2Geometry_msgsMsgWrench()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`wrench`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgWrenchStamped {
    var v = Ros2Geometry_msgsMsgWrenchStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`wrench` = try Ros2Geometry_msgsMsgWrench.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Inertia.
/// @details Canonical extent 80..80 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgInertia: Canonical {
  public static let maximumWireBytes = 80
  public static let codecIdentity =
    "UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a"
  public static let nativeType = "geometry_msgs/msg/Inertia"
  public static let nativeIdentity: String? = nil
  /// @brief Mass [kg]
  /// @details Original geometry_msgs/msg/Inertia.m; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `m`: Double = 0
  /// @brief Center of mass [m]
  /// @details Original geometry_msgs/msg/Inertia.com; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `com`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Inertia Tensor [kg-m^2] about the center of mass | ixx ixy ixz | I = | ixy iyy iyz | | ixz
  /// iyz izz |
  /// @details Original geometry_msgs/msg/Inertia.ixx; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `ixx`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Inertia.ixy; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `ixy`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Inertia.ixz; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `ixz`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Inertia.iyy; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `iyy`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Inertia.iyz; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `iyz`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Inertia.izz; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `izz`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`m`)
    try self.`com`.write(to: &w)
    try w.float64(self.`ixx`)
    try w.float64(self.`ixy`)
    try w.float64(self.`ixz`)
    try w.float64(self.`iyy`)
    try w.float64(self.`iyz`)
    try w.float64(self.`izz`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgInertia {
    var v = Ros2Geometry_msgsMsgInertia()
    v.`m` = try r.float64()
    v.`com` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`ixx` = try r.float64()
    v.`ixy` = try r.float64()
    v.`ixz` = try r.float64()
    v.`iyy` = try r.float64()
    v.`iyz` = try r.float64()
    v.`izz` = try r.float64()
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/InertiaStamped.
/// @details Canonical extent 92..220 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgInertiaStamped: Canonical {
  public static let maximumWireBytes = 220
  public static let codecIdentity =
    "UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576"
  public static let nativeType = "geometry_msgs/msg/InertiaStamped"
  public static let nativeIdentity: String? = nil
  /// @brief An Inertia with a time stamp and reference frame.
  /// @details Original geometry_msgs/msg/InertiaStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original geometry_msgs/msg/Inertia field.
  /// @details Original geometry_msgs/msg/InertiaStamped.inertia; native type geometry_msgs/msg/Inertia.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `inertia`: Ros2Geometry_msgsMsgInertia = Ros2Geometry_msgsMsgInertia()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`inertia`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgInertiaStamped {
    var v = Ros2Geometry_msgsMsgInertiaStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`inertia` = try Ros2Geometry_msgsMsgInertia.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Point.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgPoint: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
  public static let nativeType = "geometry_msgs/msg/Point"
  public static let nativeIdentity: String? = nil
  /// @brief This contains the position of a point in free space
  /// @details Original geometry_msgs/msg/Point.x; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `x`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Point.y; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `y`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Point.z; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `z`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPoint {
    var v = Ros2Geometry_msgsMsgPoint()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Quaternion.
/// @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgQuaternion: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
  public static let nativeType = "geometry_msgs/msg/Quaternion"
  public static let nativeIdentity: String? = nil
  /// @brief This represents an orientation in free space in quaternion form.
  /// @details Original geometry_msgs/msg/Quaternion.x; native type float64. Scalar value. Declared
  /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `x`: Double = Double(bitPattern: 0x0)
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Quaternion.y; native type float64. Scalar value. Declared
  /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `y`: Double = Double(bitPattern: 0x0)
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Quaternion.z; native type float64. Scalar value. Declared
  /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `z`: Double = Double(bitPattern: 0x0)
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Quaternion.w; native type float64. Scalar value. Declared
  /// original default 1.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `w`: Double = Double(bitPattern: 0x3ff0_0000_0000_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`w`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgQuaternion {
    var v = Ros2Geometry_msgsMsgQuaternion()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`w` = try r.float64()
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Pose.
/// @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgPose: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
  public static let nativeType = "geometry_msgs/msg/Pose"
  public static let nativeIdentity: String? = nil
  /// @brief A representation of pose in free space, composed of position and orientation.
  /// @details Original geometry_msgs/msg/Pose.position; native type geometry_msgs/msg/Point. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `position`: Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint()
  /// @brief Retain the complete original geometry_msgs/msg/Quaternion field.
  /// @details Original geometry_msgs/msg/Pose.orientation; native type geometry_msgs/msg/Quaternion.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `orientation`: Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`position`.write(to: &w)
    try self.`orientation`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPose {
    var v = Ros2Geometry_msgsMsgPose()
    v.`position` = try Ros2Geometry_msgsMsgPoint.read(from: &r)
    v.`orientation` = try Ros2Geometry_msgsMsgQuaternion.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/PoseStamped.
/// @details Canonical extent 68..196 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgPoseStamped: Canonical {
  public static let maximumWireBytes = 196
  public static let codecIdentity =
    "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2"
  public static let nativeType = "geometry_msgs/msg/PoseStamped"
  public static let nativeIdentity: String? = nil
  /// @brief A Pose with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/PoseStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original geometry_msgs/msg/Pose field.
  /// @details Original geometry_msgs/msg/PoseStamped.pose; native type geometry_msgs/msg/Pose. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPoseStamped {
    var v = Ros2Geometry_msgsMsgPoseStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Twist.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgTwist: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
  public static let nativeType = "geometry_msgs/msg/Twist"
  public static let nativeIdentity: String? = nil
  /// @brief This expresses velocity in free space broken into its linear and angular parts.
  /// @details Original geometry_msgs/msg/Twist.linear; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `linear`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original geometry_msgs/msg/Twist.angular; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `angular`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`linear`.write(to: &w)
    try self.`angular`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgTwist {
    var v = Ros2Geometry_msgsMsgTwist()
    v.`linear` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`angular` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/TwistStamped.
/// @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgTwistStamped: Canonical {
  public static let maximumWireBytes = 188
  public static let codecIdentity =
    "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573"
  public static let nativeType = "geometry_msgs/msg/TwistStamped"
  public static let nativeIdentity: String? = nil
  /// @brief A twist with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/TwistStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original geometry_msgs/msg/Twist field.
  /// @details Original geometry_msgs/msg/TwistStamped.twist; native type geometry_msgs/msg/Twist. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `twist`: Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`twist`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgTwistStamped {
    var v = Ros2Geometry_msgsMsgTwistStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`twist` = try Ros2Geometry_msgsMsgTwist.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Accel.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgAccel: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde"
  public static let nativeType = "geometry_msgs/msg/Accel"
  public static let nativeIdentity: String? = nil
  /// @brief This expresses acceleration in free space broken into its linear and angular parts.
  /// @details Original geometry_msgs/msg/Accel.linear; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `linear`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original geometry_msgs/msg/Accel.angular; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `angular`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`linear`.write(to: &w)
    try self.`angular`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgAccel {
    var v = Ros2Geometry_msgsMsgAccel()
    v.`linear` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`angular` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/AccelStamped.
/// @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgAccelStamped: Canonical {
  public static let maximumWireBytes = 188
  public static let codecIdentity =
    "UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899"
  public static let nativeType = "geometry_msgs/msg/AccelStamped"
  public static let nativeIdentity: String? = nil
  /// @brief An accel with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/AccelStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original geometry_msgs/msg/Accel field.
  /// @details Original geometry_msgs/msg/AccelStamped.accel; native type geometry_msgs/msg/Accel. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `accel`: Ros2Geometry_msgsMsgAccel = Ros2Geometry_msgsMsgAccel()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`accel`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgAccelStamped {
    var v = Ros2Geometry_msgsMsgAccelStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`accel` = try Ros2Geometry_msgsMsgAccel.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Vector3Stamped.
/// @details Canonical extent 36..164 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgVector3Stamped: Canonical {
  public static let maximumWireBytes = 164
  public static let codecIdentity =
    "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b"
  public static let nativeType = "geometry_msgs/msg/Vector3Stamped"
  public static let nativeIdentity: String? = nil
  /// @brief This represents a Vector3 with reference coordinate frame and timestamp Note that this
  /// follows vector semantics with it always anchored at the origin, so the rotational elements of a
  /// transform are the only parts applied when transforming.
  /// @details Original geometry_msgs/msg/Vector3Stamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original geometry_msgs/msg/Vector3Stamped.vector; native type geometry_msgs/msg/Vector3.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `vector`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`vector`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgVector3Stamped {
    var v = Ros2Geometry_msgsMsgVector3Stamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`vector` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of franka_msgs/msg/FrankaRobotState.
/// @details Canonical extent 1961..10169 bytes. Native type identity is independent; constructing a
/// value opens no resource.
public struct Ros2Franka_msgsMsgFrankaRobotState: Canonical {
  public static let maximumWireBytes = 10169
  public static let codecIdentity =
    "UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282"
  public static let nativeType = "franka_msgs/msg/FrankaRobotState"
  public static let nativeIdentity: String? = nil
  public static let `ROBOT_MODE_OTHER`: UInt8 = 0
  public static let `ROBOT_MODE_IDLE`: UInt8 = 1
  public static let `ROBOT_MODE_MOVE`: UInt8 = 2
  public static let `ROBOT_MODE_GUIDING`: UInt8 = 3
  public static let `ROBOT_MODE_REFLEX`: UInt8 = 4
  public static let `ROBOT_MODE_USER_STOPPED`: UInt8 = 5
  public static let `ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY`: UInt8 = 6
  /// @brief ## Default parts of the message
  /// @details Original franka_msgs/msg/FrankaRobotState.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief ## Indicates which dimensions have an active contact/collision flag raised
  /// @details Original franka_msgs/msg/FrankaRobotState.collision_indicators; native type
  /// franka_msgs/msg/CollisionIndicators. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `collision_indicators`: Ros2Franka_msgsMsgCollisionIndicators =
    Ros2Franka_msgsMsgCollisionIndicators()
  /// @brief ## The state of the arm in joint space The joint state consisting out of position (q),
  /// velocity (dq) and effort (tau_J)
  /// @details Original franka_msgs/msg/FrankaRobotState.measured_joint_state; native type
  /// sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `measured_joint_state`: Ros2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState()
  /// @brief The desired joint state consisting out of position (q_d), velocity (dq_d) and effort
  /// (tau_J_d)
  /// @details Original franka_msgs/msg/FrankaRobotState.desired_joint_state; native type
  /// sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `desired_joint_state`: Ros2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState()
  /// @brief The measured motor state of the joints consisting out of position (theta) and velocity
  /// (dtheta)
  /// @details Original franka_msgs/msg/FrankaRobotState.measured_joint_motor_state; native type
  /// sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `measured_joint_motor_state`: Ros2Sensor_msgsMsgJointState =
    Ros2Sensor_msgsMsgJointState()
  /// @brief The desired joint acceleration
  /// @details Original franka_msgs/msg/FrankaRobotState.ddq_d; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `ddq_d`: [Double] = Array(repeating: 0, count: 7)
  /// @brief The derivative of the measured torque signal
  /// @details Original franka_msgs/msg/FrankaRobotState.dtau_j; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `dtau_j`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Filtered external torque. The JointState consists out of effort (tau_ext_hat_filtered)
  /// @details Original franka_msgs/msg/FrankaRobotState.tau_ext_hat_filtered; native type
  /// sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `tau_ext_hat_filtered`: Ros2Sensor_msgsMsgJointState = Ros2Sensor_msgsMsgJointState()
  /// @brief ## The state of the elbow
  /// @details Original franka_msgs/msg/FrankaRobotState.elbow; native type franka_msgs/msg/Elbow. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `elbow`: Ros2Franka_msgsMsgElbow = Ros2Franka_msgsMsgElbow()
  /// @brief ## The active wrenches acting on the stiffness frame expressed relative to stiffness frame
  /// @details Original franka_msgs/msg/FrankaRobotState.k_f_ext_hat_k; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `k_f_ext_hat_k`: Ros2Geometry_msgsMsgWrenchStamped =
    Ros2Geometry_msgsMsgWrenchStamped()
  /// @brief base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_f_ext_hat_k; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `o_f_ext_hat_k`: Ros2Geometry_msgsMsgWrenchStamped =
    Ros2Geometry_msgsMsgWrenchStamped()
  /// @brief ## The different inertias of the arm The end-effector inertia
  /// @details Original franka_msgs/msg/FrankaRobotState.inertia_ee; native type
  /// geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `inertia_ee`: Ros2Geometry_msgsMsgInertiaStamped = Ros2Geometry_msgsMsgInertiaStamped()
  /// @brief The load inertia
  /// @details Original franka_msgs/msg/FrankaRobotState.inertia_load; native type
  /// geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `inertia_load`: Ros2Geometry_msgsMsgInertiaStamped =
    Ros2Geometry_msgsMsgInertiaStamped()
  /// @brief The total (end-effector + load) inertia
  /// @details Original franka_msgs/msg/FrankaRobotState.inertia_total; native type
  /// geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `inertia_total`: Ros2Geometry_msgsMsgInertiaStamped =
    Ros2Geometry_msgsMsgInertiaStamped()
  /// @brief ## The poses describing the transformations between different frames of the arm Measured end-
  /// effector pose in base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_t_ee; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `o_t_ee`: Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped()
  /// @brief Last desired end-effector pose of motion generation in base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_t_ee_d; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `o_t_ee_d`: Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped()
  /// @brief Last commanded end-effector pose of motion generation in base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_t_ee_c; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `o_t_ee_c`: Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped()
  /// @brief Flange to end-effector frame
  /// @details Original franka_msgs/msg/FrankaRobotState.f_t_ee; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `f_t_ee`: Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped()
  /// @brief End-effector to stiffness frame
  /// @details Original franka_msgs/msg/FrankaRobotState.ee_t_k; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `ee_t_k`: Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped()
  /// @brief Desired end effector twist in base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_dp_ee_d; native type
  /// geometry_msgs/msg/TwistStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `o_dp_ee_d`: Ros2Geometry_msgsMsgTwistStamped = Ros2Geometry_msgsMsgTwistStamped()
  /// @brief Last commanded end effector twist in base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_dp_ee_c; native type
  /// geometry_msgs/msg/TwistStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `o_dp_ee_c`: Ros2Geometry_msgsMsgTwistStamped = Ros2Geometry_msgsMsgTwistStamped()
  /// @brief Last commanded end effector acceleration in base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_ddp_ee_c; native type
  /// geometry_msgs/msg/AccelStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `o_ddp_ee_c`: Ros2Geometry_msgsMsgAccelStamped = Ros2Geometry_msgsMsgAccelStamped()
  /// @brief ## Additional information
  /// @details Original franka_msgs/msg/FrankaRobotState.time; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `time`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/FrankaRobotState.control_command_success_rate; native type
  /// float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `control_command_success_rate`: Double = 0
  /// @brief Retain the complete original uint8 field.
  /// @details Original franka_msgs/msg/FrankaRobotState.robot_mode; native type uint8. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `robot_mode`: UInt8 = 0
  /// @brief Retain the complete original franka_msgs/msg/Errors field.
  /// @details Original franka_msgs/msg/FrankaRobotState.current_errors; native type
  /// franka_msgs/msg/Errors. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `current_errors`: Ros2Franka_msgsMsgErrors = Ros2Franka_msgsMsgErrors()
  /// @brief Retain the complete original franka_msgs/msg/Errors field.
  /// @details Original franka_msgs/msg/FrankaRobotState.last_motion_errors; native type
  /// franka_msgs/msg/Errors. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `last_motion_errors`: Ros2Franka_msgsMsgErrors = Ros2Franka_msgsMsgErrors()
  /// @brief ## Translational acceleration data from the joint-mounted accelerometers, expressed in the
  /// "<prefix>link<i>_accelerometer_<side>" frame named in each header (joints 1 through 6, mounted on
  /// links 0 through 5; no accelerometer on joint 7)
  /// @details Original franka_msgs/msg/FrankaRobotState.accelerometer_top; native type
  /// geometry_msgs/msg/Vector3Stamped. Exactly 6 elements. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `accelerometer_top`: [Ros2Geometry_msgsMsgVector3Stamped] = Array(
    repeating: Ros2Geometry_msgsMsgVector3Stamped(),
    count: 6)
  /// @brief Retain the complete original geometry_msgs/msg/Vector3Stamped field.
  /// @details Original franka_msgs/msg/FrankaRobotState.accelerometer_bottom; native type
  /// geometry_msgs/msg/Vector3Stamped. Exactly 6 elements. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `accelerometer_bottom`: [Ros2Geometry_msgsMsgVector3Stamped] = Array(
    repeating: Ros2Geometry_msgsMsgVector3Stamped(),
    count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`collision_indicators`.write(to: &w)
    try self.`measured_joint_state`.write(to: &w)
    try self.`desired_joint_state`.write(to: &w)
    try self.`measured_joint_motor_state`.write(to: &w)
    guard self.`ddq_d`.count == 7 else { throw RosError(22) }
    for e in self.`ddq_d` {
      try w.float64(e)
    }
    guard self.`dtau_j`.count == 7 else { throw RosError(22) }
    for e in self.`dtau_j` {
      try w.float64(e)
    }
    try self.`tau_ext_hat_filtered`.write(to: &w)
    try self.`elbow`.write(to: &w)
    try self.`k_f_ext_hat_k`.write(to: &w)
    try self.`o_f_ext_hat_k`.write(to: &w)
    try self.`inertia_ee`.write(to: &w)
    try self.`inertia_load`.write(to: &w)
    try self.`inertia_total`.write(to: &w)
    try self.`o_t_ee`.write(to: &w)
    try self.`o_t_ee_d`.write(to: &w)
    try self.`o_t_ee_c`.write(to: &w)
    try self.`f_t_ee`.write(to: &w)
    try self.`ee_t_k`.write(to: &w)
    try self.`o_dp_ee_d`.write(to: &w)
    try self.`o_dp_ee_c`.write(to: &w)
    try self.`o_ddp_ee_c`.write(to: &w)
    try w.float64(self.`time`)
    try w.float64(self.`control_command_success_rate`)
    try w.integer(self.`robot_mode`)
    try self.`current_errors`.write(to: &w)
    try self.`last_motion_errors`.write(to: &w)
    guard self.`accelerometer_top`.count == 6 else { throw RosError(22) }
    for e in self.`accelerometer_top` {
      try e.write(to: &w)
    }
    guard self.`accelerometer_bottom`.count == 6 else { throw RosError(22) }
    for e in self.`accelerometer_bottom` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsMsgFrankaRobotState {
    var v = Ros2Franka_msgsMsgFrankaRobotState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`collision_indicators` = try Ros2Franka_msgsMsgCollisionIndicators.read(from: &r)
    v.`measured_joint_state` = try Ros2Sensor_msgsMsgJointState.read(from: &r)
    v.`desired_joint_state` = try Ros2Sensor_msgsMsgJointState.read(from: &r)
    v.`measured_joint_motor_state` = try Ros2Sensor_msgsMsgJointState.read(from: &r)
    let count5 = 7
    v.`ddq_d` = []
    v.`ddq_d`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`ddq_d`.append(try r.float64())
    }
    let count6 = 7
    v.`dtau_j` = []
    v.`dtau_j`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`dtau_j`.append(try r.float64())
    }
    v.`tau_ext_hat_filtered` = try Ros2Sensor_msgsMsgJointState.read(from: &r)
    v.`elbow` = try Ros2Franka_msgsMsgElbow.read(from: &r)
    v.`k_f_ext_hat_k` = try Ros2Geometry_msgsMsgWrenchStamped.read(from: &r)
    v.`o_f_ext_hat_k` = try Ros2Geometry_msgsMsgWrenchStamped.read(from: &r)
    v.`inertia_ee` = try Ros2Geometry_msgsMsgInertiaStamped.read(from: &r)
    v.`inertia_load` = try Ros2Geometry_msgsMsgInertiaStamped.read(from: &r)
    v.`inertia_total` = try Ros2Geometry_msgsMsgInertiaStamped.read(from: &r)
    v.`o_t_ee` = try Ros2Geometry_msgsMsgPoseStamped.read(from: &r)
    v.`o_t_ee_d` = try Ros2Geometry_msgsMsgPoseStamped.read(from: &r)
    v.`o_t_ee_c` = try Ros2Geometry_msgsMsgPoseStamped.read(from: &r)
    v.`f_t_ee` = try Ros2Geometry_msgsMsgPoseStamped.read(from: &r)
    v.`ee_t_k` = try Ros2Geometry_msgsMsgPoseStamped.read(from: &r)
    v.`o_dp_ee_d` = try Ros2Geometry_msgsMsgTwistStamped.read(from: &r)
    v.`o_dp_ee_c` = try Ros2Geometry_msgsMsgTwistStamped.read(from: &r)
    v.`o_ddp_ee_c` = try Ros2Geometry_msgsMsgAccelStamped.read(from: &r)
    v.`time` = try r.float64()
    v.`control_command_success_rate` = try r.float64()
    v.`robot_mode` = try r.integer(UInt8.self)
    v.`current_errors` = try Ros2Franka_msgsMsgErrors.read(from: &r)
    v.`last_motion_errors` = try Ros2Franka_msgsMsgErrors.read(from: &r)
    let count27 = 6
    v.`accelerometer_top` = []
    v.`accelerometer_top`.reserveCapacity(count27)
    for _ in 0..<count27 {
      v.`accelerometer_top`.append(try Ros2Geometry_msgsMsgVector3Stamped.read(from: &r))
    }
    let count28 = 6
    v.`accelerometer_bottom` = []
    v.`accelerometer_bottom`.reserveCapacity(count28)
    for _ in 0..<count28 {
      v.`accelerometer_bottom`.append(try Ros2Geometry_msgsMsgVector3Stamped.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetCartesianStiffness_Request.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetCartesianStiffness_Request: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260"
  public static let nativeType = "franka_msgs/srv/SetCartesianStiffness_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Cartesian stiffness represented as (x, y, z, roll, pitch, yaw). The values are used in the
  /// direction of the stiffness frame.
  /// @details Original franka_msgs/srv/SetCartesianStiffness_Request.cartesian_stiffness; native type
  /// float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `cartesian_stiffness`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`cartesian_stiffness`.count == 6 else { throw RosError(22) }
    for e in self.`cartesian_stiffness` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsSrvSetCartesianStiffness_Request
  {
    var v = Ros2Franka_msgsSrvSetCartesianStiffness_Request()
    let count0 = 6
    v.`cartesian_stiffness` = []
    v.`cartesian_stiffness`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`cartesian_stiffness`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetCartesianStiffness_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetCartesianStiffness_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa"
  public static let nativeType = "franka_msgs/srv/SetCartesianStiffness_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetCartesianStiffness_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetCartesianStiffness_Response.error; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsSrvSetCartesianStiffness_Response
  {
    var v = Ros2Franka_msgsSrvSetCartesianStiffness_Response()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
/// @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request: Canonical {
  public static let maximumWireBytes = 208
  public static let codecIdentity =
    "UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c"
  public static let nativeType = "franka_msgs/srv/SetForceTorqueCollisionBehavior_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_torque_thresholds_nominal; native type
  /// float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `lower_torque_thresholds_nominal`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_torque_thresholds_nominal; native type
  /// float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `upper_torque_thresholds_nominal`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_force_thresholds_nominal; native type
  /// float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `lower_force_thresholds_nominal`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_force_thresholds_nominal; native type
  /// float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `upper_force_thresholds_nominal`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`lower_torque_thresholds_nominal`.count == 7 else { throw RosError(22) }
    for e in self.`lower_torque_thresholds_nominal` {
      try w.float64(e)
    }
    guard self.`upper_torque_thresholds_nominal`.count == 7 else { throw RosError(22) }
    for e in self.`upper_torque_thresholds_nominal` {
      try w.float64(e)
    }
    guard self.`lower_force_thresholds_nominal`.count == 6 else { throw RosError(22) }
    for e in self.`lower_force_thresholds_nominal` {
      try w.float64(e)
    }
    guard self.`upper_force_thresholds_nominal`.count == 6 else { throw RosError(22) }
    for e in self.`upper_force_thresholds_nominal` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
  {
    var v = Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request()
    let count0 = 7
    v.`lower_torque_thresholds_nominal` = []
    v.`lower_torque_thresholds_nominal`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`lower_torque_thresholds_nominal`.append(try r.float64())
    }
    let count1 = 7
    v.`upper_torque_thresholds_nominal` = []
    v.`upper_torque_thresholds_nominal`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`upper_torque_thresholds_nominal`.append(try r.float64())
    }
    let count2 = 6
    v.`lower_force_thresholds_nominal` = []
    v.`lower_force_thresholds_nominal`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`lower_force_thresholds_nominal`.append(try r.float64())
    }
    let count3 = 6
    v.`upper_force_thresholds_nominal` = []
    v.`upper_force_thresholds_nominal`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`upper_force_thresholds_nominal`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a"
  public static let nativeType = "franka_msgs/srv/SetForceTorqueCollisionBehavior_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.success; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.error; native type
  /// string. Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
  {
    var v = Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetFullCollisionBehavior_Request.
/// @details Canonical extent 416..416 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetFullCollisionBehavior_Request: Canonical {
  public static let maximumWireBytes = 416
  public static let codecIdentity =
    "UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824"
  public static let nativeType = "franka_msgs/srv/SetFullCollisionBehavior_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_acceleration; native type
  /// float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `lower_torque_thresholds_acceleration`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_acceleration; native type
  /// float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `upper_torque_thresholds_acceleration`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_nominal;
  /// native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `lower_torque_thresholds_nominal`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_nominal;
  /// native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `upper_torque_thresholds_nominal`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_acceleration; native type
  /// float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `lower_force_thresholds_acceleration`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_acceleration; native type
  /// float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `upper_force_thresholds_acceleration`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_nominal;
  /// native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `lower_force_thresholds_nominal`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_nominal;
  /// native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `upper_force_thresholds_nominal`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`lower_torque_thresholds_acceleration`.count == 7 else { throw RosError(22) }
    for e in self.`lower_torque_thresholds_acceleration` {
      try w.float64(e)
    }
    guard self.`upper_torque_thresholds_acceleration`.count == 7 else { throw RosError(22) }
    for e in self.`upper_torque_thresholds_acceleration` {
      try w.float64(e)
    }
    guard self.`lower_torque_thresholds_nominal`.count == 7 else { throw RosError(22) }
    for e in self.`lower_torque_thresholds_nominal` {
      try w.float64(e)
    }
    guard self.`upper_torque_thresholds_nominal`.count == 7 else { throw RosError(22) }
    for e in self.`upper_torque_thresholds_nominal` {
      try w.float64(e)
    }
    guard self.`lower_force_thresholds_acceleration`.count == 6 else { throw RosError(22) }
    for e in self.`lower_force_thresholds_acceleration` {
      try w.float64(e)
    }
    guard self.`upper_force_thresholds_acceleration`.count == 6 else { throw RosError(22) }
    for e in self.`upper_force_thresholds_acceleration` {
      try w.float64(e)
    }
    guard self.`lower_force_thresholds_nominal`.count == 6 else { throw RosError(22) }
    for e in self.`lower_force_thresholds_nominal` {
      try w.float64(e)
    }
    guard self.`upper_force_thresholds_nominal`.count == 6 else { throw RosError(22) }
    for e in self.`upper_force_thresholds_nominal` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
  {
    var v = Ros2Franka_msgsSrvSetFullCollisionBehavior_Request()
    let count0 = 7
    v.`lower_torque_thresholds_acceleration` = []
    v.`lower_torque_thresholds_acceleration`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`lower_torque_thresholds_acceleration`.append(try r.float64())
    }
    let count1 = 7
    v.`upper_torque_thresholds_acceleration` = []
    v.`upper_torque_thresholds_acceleration`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`upper_torque_thresholds_acceleration`.append(try r.float64())
    }
    let count2 = 7
    v.`lower_torque_thresholds_nominal` = []
    v.`lower_torque_thresholds_nominal`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`lower_torque_thresholds_nominal`.append(try r.float64())
    }
    let count3 = 7
    v.`upper_torque_thresholds_nominal` = []
    v.`upper_torque_thresholds_nominal`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`upper_torque_thresholds_nominal`.append(try r.float64())
    }
    let count4 = 6
    v.`lower_force_thresholds_acceleration` = []
    v.`lower_force_thresholds_acceleration`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`lower_force_thresholds_acceleration`.append(try r.float64())
    }
    let count5 = 6
    v.`upper_force_thresholds_acceleration` = []
    v.`upper_force_thresholds_acceleration`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`upper_force_thresholds_acceleration`.append(try r.float64())
    }
    let count6 = 6
    v.`lower_force_thresholds_nominal` = []
    v.`lower_force_thresholds_nominal`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`lower_force_thresholds_nominal`.append(try r.float64())
    }
    let count7 = 6
    v.`upper_force_thresholds_nominal` = []
    v.`upper_force_thresholds_nominal`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`upper_force_thresholds_nominal`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetFullCollisionBehavior_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetFullCollisionBehavior_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300"
  public static let nativeType = "franka_msgs/srv/SetFullCollisionBehavior_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetFullCollisionBehavior_Response.success; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetFullCollisionBehavior_Response.error; native type string.
  /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
  {
    var v = Ros2Franka_msgsSrvSetFullCollisionBehavior_Response()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetJointStiffness_Request.
/// @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetJointStiffness_Request: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c"
  public static let nativeType = "franka_msgs/srv/SetJointStiffness_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Impedance for each joint in the internal controller
  /// @details Original franka_msgs/srv/SetJointStiffness_Request.joint_stiffness; native type float64.
  /// Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `joint_stiffness`: [Double] = Array(repeating: 0, count: 7)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_stiffness`.count == 7 else { throw RosError(22) }
    for e in self.`joint_stiffness` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsSrvSetJointStiffness_Request
  {
    var v = Ros2Franka_msgsSrvSetJointStiffness_Request()
    let count0 = 7
    v.`joint_stiffness` = []
    v.`joint_stiffness`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_stiffness`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetJointStiffness_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetJointStiffness_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d"
  public static let nativeType = "franka_msgs/srv/SetJointStiffness_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetJointStiffness_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetJointStiffness_Response.error; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsSrvSetJointStiffness_Response
  {
    var v = Ros2Franka_msgsSrvSetJointStiffness_Response()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetLoad_Request.
/// @details Canonical extent 104..104 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetLoad_Request: Canonical {
  public static let maximumWireBytes = 104
  public static let codecIdentity =
    "UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8"
  public static let nativeType = "franka_msgs/srv/SetLoad_Request"
  public static let nativeIdentity: String? = nil
  /// @brief The mass of the object
  /// @details Original franka_msgs/srv/SetLoad_Request.mass; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `mass`: Double = 0
  /// @brief Position of the center of mass
  /// @details Original franka_msgs/srv/SetLoad_Request.center_of_mass; native type float64. Exactly 3
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `center_of_mass`: [Double] = Array(repeating: 0, count: 3)
  /// @brief Inertia of the object - the provided 3x3 matrix is in column major form.
  /// @details Original franka_msgs/srv/SetLoad_Request.load_inertia; native type float64. Exactly 9
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `load_inertia`: [Double] = Array(repeating: 0, count: 9)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`mass`)
    guard self.`center_of_mass`.count == 3 else { throw RosError(22) }
    for e in self.`center_of_mass` {
      try w.float64(e)
    }
    guard self.`load_inertia`.count == 9 else { throw RosError(22) }
    for e in self.`load_inertia` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsSrvSetLoad_Request {
    var v = Ros2Franka_msgsSrvSetLoad_Request()
    v.`mass` = try r.float64()
    let count1 = 3
    v.`center_of_mass` = []
    v.`center_of_mass`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`center_of_mass`.append(try r.float64())
    }
    let count2 = 9
    v.`load_inertia` = []
    v.`load_inertia`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`load_inertia`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetLoad_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetLoad_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf"
  public static let nativeType = "franka_msgs/srv/SetLoad_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetLoad_Response.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetLoad_Response.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsSrvSetLoad_Response {
    var v = Ros2Franka_msgsSrvSetLoad_Response()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetStiffnessFrame_Request.
/// @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetStiffnessFrame_Request: Canonical {
  public static let maximumWireBytes = 128
  public static let codecIdentity =
    "UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402"
  public static let nativeType = "franka_msgs/srv/SetStiffnessFrame_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Sets the transformation matrix describing the stiffness frame relative to the TCP frame. A
  /// 4x4 column-major transformation matrix representing the position and orientation.
  /// @details Original franka_msgs/srv/SetStiffnessFrame_Request.transformation; native type float64.
  /// Exactly 16 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `transformation`: [Double] = Array(repeating: 0, count: 16)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`transformation`.count == 16 else { throw RosError(22) }
    for e in self.`transformation` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsSrvSetStiffnessFrame_Request
  {
    var v = Ros2Franka_msgsSrvSetStiffnessFrame_Request()
    let count0 = 16
    v.`transformation` = []
    v.`transformation`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`transformation`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetStiffnessFrame_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetStiffnessFrame_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744"
  public static let nativeType = "franka_msgs/srv/SetStiffnessFrame_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetStiffnessFrame_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetStiffnessFrame_Response.error; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_msgsSrvSetStiffnessFrame_Response
  {
    var v = Ros2Franka_msgsSrvSetStiffnessFrame_Response()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetTCPFrame_Request.
/// @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetTCPFrame_Request: Canonical {
  public static let maximumWireBytes = 128
  public static let codecIdentity =
    "UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f"
  public static let nativeType = "franka_msgs/srv/SetTCPFrame_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Sets the transformation matrix describing the tcp frame to the end-effector frame. A 4x4
  /// column-major transformation matrix representing the position and orientation.
  /// @details Original franka_msgs/srv/SetTCPFrame_Request.transformation; native type float64. Exactly
  /// 16 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `transformation`: [Double] = Array(repeating: 0, count: 16)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`transformation`.count == 16 else { throw RosError(22) }
    for e in self.`transformation` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsSrvSetTCPFrame_Request
  {
    var v = Ros2Franka_msgsSrvSetTCPFrame_Request()
    let count0 = 16
    v.`transformation` = []
    v.`transformation`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`transformation`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/srv/SetTCPFrame_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_msgsSrvSetTCPFrame_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38"
  public static let nativeType = "franka_msgs/srv/SetTCPFrame_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetTCPFrame_Response.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetTCPFrame_Response.error; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_msgsSrvSetTCPFrame_Response
  {
    var v = Ros2Franka_msgsSrvSetTCPFrame_Response()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Goal.
/// @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsActionMoveAbsolute_Goal: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13"
  public static let nativeType = "franka_spine_msgs/action/MoveAbsolute_Goal"
  public static let nativeIdentity: String? = nil
  /// @brief Command an absolute move of the Franka Spine. Target position [m]
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Goal.position; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `position`: Double = 0
  /// @brief Motion velocity [m/s], must be > 0
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Goal.velocity; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `velocity`: Double = 0
  /// @brief Motion acceleration [m/s²], must be > 0
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Goal.acceleration; native type float64.
  /// Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `acceleration`: Double = 0
  /// @brief Motion deceleration [m/s²], must be > 0
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Goal.deceleration; native type float64.
  /// Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `deceleration`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`position`)
    try w.float64(self.`velocity`)
    try w.float64(self.`acceleration`)
    try w.float64(self.`deceleration`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsActionMoveAbsolute_Goal
  {
    var v = Ros2Franka_spine_msgsActionMoveAbsolute_Goal()
    v.`position` = try r.float64()
    v.`velocity` = try r.float64()
    v.`acceleration` = try r.float64()
    v.`deceleration` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Result.
/// @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsActionMoveAbsolute_Result: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5"
  public static let nativeType = "franka_spine_msgs/action/MoveAbsolute_Result"
  public static let nativeIdentity: String? = nil
  /// @brief True if the target position was reached
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Result.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief How the motion was stopped (from spine response)
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Result.stop_by; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `stop_by`: String = ""
  /// @brief Error description if success is false
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Result.error; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`stop_by`, bound: 256)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsActionMoveAbsolute_Result
  {
    var v = Ros2Franka_spine_msgsActionMoveAbsolute_Result()
    v.`success` = try r.boolean()
    v.`stop_by` = try r.string(bound: 256)
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Feedback.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsActionMoveAbsolute_Feedback: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929"
  public static let nativeType = "franka_spine_msgs/action/MoveAbsolute_Feedback"
  public static let nativeIdentity: String? = nil
  /// @brief Current spine position [m]
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Feedback.current_position; native type
  /// float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `current_position`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`current_position`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
  {
    var v = Ros2Franka_spine_msgsActionMoveAbsolute_Feedback()
    v.`current_position` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/msg/UserLimits.
/// @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsMsgUserLimits: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368"
  public static let nativeType = "franka_spine_msgs/msg/UserLimits"
  public static let nativeIdentity: String? = nil
  /// @brief User-defined soft motion limits for the spine. Lower motion limit [m]
  /// @details Original franka_spine_msgs/msg/UserLimits.lower_limit; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `lower_limit`: Double = 0
  /// @brief Upper motion limit [m]
  /// @details Original franka_spine_msgs/msg/UserLimits.upper_limit; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `upper_limit`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`lower_limit`)
    try w.float64(self.`upper_limit`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_spine_msgsMsgUserLimits {
    var v = Ros2Franka_spine_msgsMsgUserLimits()
    v.`lower_limit` = try r.float64()
    v.`upper_limit` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/msg/SpineParameters.
/// @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsMsgSpineParameters: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223"
  public static let nativeType = "franka_spine_msgs/msg/SpineParameters"
  public static let nativeIdentity: String? = nil
  /// @brief Aggregated spine parameters returned by the GetParameters service. User-defined motion limits
  /// @details Original franka_spine_msgs/msg/SpineParameters.user_limits; native type
  /// franka_spine_msgs/msg/UserLimits. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `user_limits`: Ros2Franka_spine_msgsMsgUserLimits =
    Ros2Franka_spine_msgsMsgUserLimits()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`user_limits`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsMsgSpineParameters
  {
    var v = Ros2Franka_spine_msgsMsgSpineParameters()
    v.`user_limits` = try Ros2Franka_spine_msgsMsgUserLimits.read(from: &r)
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/msg/SpinePosition.
/// @details Canonical extent 21..149 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsMsgSpinePosition: Canonical {
  public static let maximumWireBytes = 149
  public static let codecIdentity =
    "UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775"
  public static let nativeType = "franka_spine_msgs/msg/SpinePosition"
  public static let nativeIdentity: String? = nil
  /// @brief Periodic spine position sample published on ~/position. Subscribe to this instead of polling
  /// the GetPosition service in a loop.
  /// @details Original franka_spine_msgs/msg/SpinePosition.header; native type std_msgs/msg/Header.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Last known position [m]
  /// @details Original franka_spine_msgs/msg/SpinePosition.position; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `position`: Double = 0
  /// @brief False when the sample is stale because the REST read failed
  /// @details Original franka_spine_msgs/msg/SpinePosition.valid; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `valid`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float64(self.`position`)
    try w.boolean(self.`valid`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_spine_msgsMsgSpinePosition
  {
    var v = Ros2Franka_spine_msgsMsgSpinePosition()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`position` = try r.float64()
    v.`valid` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/msg/SpineState.
/// @details Canonical extent 25..921 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsMsgSpineState: Canonical {
  public static let maximumWireBytes = 921
  public static let codecIdentity =
    "UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441"
  public static let nativeType = "franka_spine_msgs/msg/SpineState"
  public static let nativeIdentity: String? = nil
  /// @brief Periodic spine state sample published on ~/state. Subscribe to this instead of polling the
  /// GetSpineState service in a loop. Possible states: NotReadyToSwitchOn, SwitchedOff, ReadyToSwitchOn,
  /// MotorOff, SwitchedOn, QuickStopActive, FaultReactionActive, Fault, Unknown.
  /// @details Original franka_spine_msgs/msg/SpineState.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Current spine state
  /// @details Original franka_spine_msgs/msg/SpineState.state; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `state`: String = ""
  /// @brief Error code (empty when no error)
  /// @details Original franka_spine_msgs/msg/SpineState.error_code; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error_code`: String = ""
  /// @brief Human-readable error description
  /// @details Original franka_spine_msgs/msg/SpineState.error_description; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `error_description`: String = ""
  /// @brief False when the sample is stale because the REST read failed
  /// @details Original franka_spine_msgs/msg/SpineState.valid; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `valid`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`state`, bound: 256)
    try w.string(self.`error_code`, bound: 256)
    try w.string(self.`error_description`, bound: 256)
    try w.boolean(self.`valid`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_spine_msgsMsgSpineState {
    var v = Ros2Franka_spine_msgsMsgSpineState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`state` = try r.string(bound: 256)
    v.`error_code` = try r.string(bound: 256)
    v.`error_description` = try r.string(bound: 256)
    v.`valid` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/FaultReset_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvFaultReset_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33"
  public static let nativeType = "franka_spine_msgs/srv/FaultReset_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsSrvFaultReset_Request
  {
    var v = Ros2Franka_spine_msgsSrvFaultReset_Request()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/FaultReset_Response.
/// @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvFaultReset_Response: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c"
  public static let nativeType = "franka_spine_msgs/srv/FaultReset_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Spine state after the reset
  /// @details Original franka_spine_msgs/srv/FaultReset_Response.state; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `state`: String = ""
  /// @brief True if the fault was cleared
  /// @details Original franka_spine_msgs/srv/FaultReset_Response.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Human-readable status or error description
  /// @details Original franka_spine_msgs/srv/FaultReset_Response.message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`state`, bound: 256)
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsSrvFaultReset_Response
  {
    var v = Ros2Franka_spine_msgsSrvFaultReset_Response()
    v.`state` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/GetParameters_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvGetParameters_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14"
  public static let nativeType = "franka_spine_msgs/srv/GetParameters_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsSrvGetParameters_Request
  {
    var v = Ros2Franka_spine_msgsSrvGetParameters_Request()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/GetParameters_Response.
/// @details Canonical extent 21..277 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvGetParameters_Response: Canonical {
  public static let maximumWireBytes = 277
  public static let codecIdentity =
    "UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed"
  public static let nativeType = "franka_spine_msgs/srv/GetParameters_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Calibration and limit values
  /// @details Original franka_spine_msgs/srv/GetParameters_Response.parameters; native type
  /// franka_spine_msgs/msg/SpineParameters. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `parameters`: Ros2Franka_spine_msgsMsgSpineParameters =
    Ros2Franka_spine_msgsMsgSpineParameters()
  /// @brief True if the REST call succeeded
  /// @details Original franka_spine_msgs/srv/GetParameters_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Human-readable status or error description
  /// @details Original franka_spine_msgs/srv/GetParameters_Response.message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`parameters`.write(to: &w)
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsSrvGetParameters_Response
  {
    var v = Ros2Franka_spine_msgsSrvGetParameters_Response()
    v.`parameters` = try Ros2Franka_spine_msgsMsgSpineParameters.read(from: &r)
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/GetPosition_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvGetPosition_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2"
  public static let nativeType = "franka_spine_msgs/srv/GetPosition_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsSrvGetPosition_Request
  {
    var v = Ros2Franka_spine_msgsSrvGetPosition_Request()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/GetPosition_Response.
/// @details Canonical extent 9..9 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvGetPosition_Response: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8"
  public static let nativeType = "franka_spine_msgs/srv/GetPosition_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Current position [m]
  /// @details Original franka_spine_msgs/srv/GetPosition_Response.position; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `position`: Double = 0
  /// @brief True if the REST call succeeded
  /// @details Original franka_spine_msgs/srv/GetPosition_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`position`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsSrvGetPosition_Response
  {
    var v = Ros2Franka_spine_msgsSrvGetPosition_Response()
    v.`position` = try r.float64()
    v.`success` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/GetSpineState_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvGetSpineState_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67"
  public static let nativeType = "franka_spine_msgs/srv/GetSpineState_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsSrvGetSpineState_Request
  {
    var v = Ros2Franka_spine_msgsSrvGetSpineState_Request()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/GetSpineState_Response.
/// @details Canonical extent 13..781 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvGetSpineState_Response: Canonical {
  public static let maximumWireBytes = 781
  public static let codecIdentity =
    "UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1"
  public static let nativeType = "franka_spine_msgs/srv/GetSpineState_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Current spine state
  /// @details Original franka_spine_msgs/srv/GetSpineState_Response.state; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `state`: String = ""
  /// @brief Error code (empty when no error)
  /// @details Original franka_spine_msgs/srv/GetSpineState_Response.error_code; native type string.
  /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `error_code`: String = ""
  /// @brief Human-readable error description
  /// @details Original franka_spine_msgs/srv/GetSpineState_Response.error_description; native type
  /// string. Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `error_description`: String = ""
  /// @brief True if the REST call succeeded
  /// @details Original franka_spine_msgs/srv/GetSpineState_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`state`, bound: 256)
    try w.string(self.`error_code`, bound: 256)
    try w.string(self.`error_description`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsSrvGetSpineState_Response
  {
    var v = Ros2Franka_spine_msgsSrvGetSpineState_Response()
    v.`state` = try r.string(bound: 256)
    v.`error_code` = try r.string(bound: 256)
    v.`error_description` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/Halt_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvHalt_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111"
  public static let nativeType = "franka_spine_msgs/srv/Halt_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_spine_msgsSrvHalt_Request {
    var v = Ros2Franka_spine_msgsSrvHalt_Request()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/Halt_Response.
/// @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvHalt_Response: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77"
  public static let nativeType = "franka_spine_msgs/srv/Halt_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Spine state after the halt
  /// @details Original franka_spine_msgs/srv/Halt_Response.state; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `state`: String = ""
  /// @brief True if the halt was executed
  /// @details Original franka_spine_msgs/srv/Halt_Response.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Human-readable status or error description
  /// @details Original franka_spine_msgs/srv/Halt_Response.message; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`state`, bound: 256)
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Franka_spine_msgsSrvHalt_Response
  {
    var v = Ros2Franka_spine_msgsSrvHalt_Response()
    v.`state` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/SwitchOff_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvSwitchOff_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16"
  public static let nativeType = "franka_spine_msgs/srv/SwitchOff_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsSrvSwitchOff_Request
  {
    var v = Ros2Franka_spine_msgsSrvSwitchOff_Request()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/SwitchOff_Response.
/// @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvSwitchOff_Response: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad"
  public static let nativeType = "franka_spine_msgs/srv/SwitchOff_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Spine state after switching off
  /// @details Original franka_spine_msgs/srv/SwitchOff_Response.state; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `state`: String = ""
  /// @brief True if the transition succeeded
  /// @details Original franka_spine_msgs/srv/SwitchOff_Response.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Human-readable status or error description
  /// @details Original franka_spine_msgs/srv/SwitchOff_Response.message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`state`, bound: 256)
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsSrvSwitchOff_Response
  {
    var v = Ros2Franka_spine_msgsSrvSwitchOff_Response()
    v.`state` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/SwitchOn_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvSwitchOn_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56"
  public static let nativeType = "franka_spine_msgs/srv/SwitchOn_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsSrvSwitchOn_Request
  {
    var v = Ros2Franka_spine_msgsSrvSwitchOn_Request()
    return v
  }
}
/// @brief Own every original field of franka_spine_msgs/srv/SwitchOn_Response.
/// @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Franka_spine_msgsSrvSwitchOn_Response: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d"
  public static let nativeType = "franka_spine_msgs/srv/SwitchOn_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Spine state after switching on
  /// @details Original franka_spine_msgs/srv/SwitchOn_Response.state; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `state`: String = ""
  /// @brief True if the transition succeeded
  /// @details Original franka_spine_msgs/srv/SwitchOn_Response.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Human-readable status or error description
  /// @details Original franka_spine_msgs/srv/SwitchOn_Response.message; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`state`, bound: 256)
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Franka_spine_msgsSrvSwitchOn_Response
  {
    var v = Ros2Franka_spine_msgsSrvSwitchOn_Response()
    v.`state` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
