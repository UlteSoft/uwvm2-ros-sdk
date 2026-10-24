// @brief Complete original franka ros1 canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical values. No I/O or authority.
import RosWasm

/// @brief Own every original field of franka_example_controllers/JointTorqueComparison.
/// @details Canonical extent 176..176 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_example_controllersJointTorqueComparison: Canonical {
  public static let maximumWireBytes = 176
  public static let codecIdentity =
    "UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254"
  public static let nativeType = "franka_example_controllers/JointTorqueComparison"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_example_controllers/JointTorqueComparison.tau_error; native type float64.
  /// Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `tau_error`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_example_controllers/JointTorqueComparison.tau_commanded; native type
  /// float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `tau_commanded`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_example_controllers/JointTorqueComparison.tau_measured; native type
  /// float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `tau_measured`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_example_controllers/JointTorqueComparison.root_mean_square_error; native
  /// type float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `root_mean_square_error`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`tau_error`.count == 7 else { throw RosError(22) }
    for e in self.`tau_error` {
      try w.float64(e)
    }
    guard self.`tau_commanded`.count == 7 else { throw RosError(22) }
    for e in self.`tau_commanded` {
      try w.float64(e)
    }
    guard self.`tau_measured`.count == 7 else { throw RosError(22) }
    for e in self.`tau_measured` {
      try w.float64(e)
    }
    try w.float64(self.`root_mean_square_error`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Franka_example_controllersJointTorqueComparison
  {
    var v = Ros1Franka_example_controllersJointTorqueComparison()
    let count0 = 7
    v.`tau_error` = []
    v.`tau_error`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`tau_error`.append(try r.float64())
    }
    let count1 = 7
    v.`tau_commanded` = []
    v.`tau_commanded`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`tau_commanded`.append(try r.float64())
    }
    let count2 = 7
    v.`tau_measured` = []
    v.`tau_measured`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`tau_measured`.append(try r.float64())
    }
    v.`root_mean_square_error` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_gripper/GraspEpsilon.
/// @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperGraspEpsilon: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9"
  public static let nativeType = "franka_gripper/GraspEpsilon"
  public static let nativeIdentity: String? = nil
  /// @brief [m]
  /// @details Original franka_gripper/GraspEpsilon.inner; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `inner`: Double = 0
  /// @brief [m]
  /// @details Original franka_gripper/GraspEpsilon.outer; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `outer`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`inner`)
    try w.float64(self.`outer`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperGraspEpsilon {
    var v = Ros1Franka_gripperGraspEpsilon()
    v.`inner` = try r.float64()
    v.`outer` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_gripper/GraspGoal.
/// @details Canonical extent 40..40 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperGraspGoal: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf"
  public static let nativeType = "franka_gripper/GraspGoal"
  public static let nativeIdentity: String? = nil
  /// @brief [m]
  /// @details Original franka_gripper/GraspGoal.width; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `width`: Double = 0
  /// @brief Retain the complete original franka_gripper/GraspEpsilon field.
  /// @details Original franka_gripper/GraspGoal.epsilon; native type franka_gripper/GraspEpsilon. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `epsilon`: Ros1Franka_gripperGraspEpsilon = Ros1Franka_gripperGraspEpsilon()
  /// @brief [m/s]
  /// @details Original franka_gripper/GraspGoal.speed; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `speed`: Double = 0
  /// @brief [N]
  /// @details Original franka_gripper/GraspGoal.force; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `force`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`width`)
    try self.`epsilon`.write(to: &w)
    try w.float64(self.`speed`)
    try w.float64(self.`force`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperGraspGoal {
    var v = Ros1Franka_gripperGraspGoal()
    v.`width` = try r.float64()
    v.`epsilon` = try Ros1Franka_gripperGraspEpsilon.read(from: &r)
    v.`speed` = try r.float64()
    v.`force` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_gripper/GraspResult.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperGraspResult: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e"
  public static let nativeType = "franka_gripper/GraspResult"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_gripper/GraspResult.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_gripper/GraspResult.error; native type string. Scalar value. UTF-8 capacity
  /// 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperGraspResult {
    var v = Ros1Franka_gripperGraspResult()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_gripper/GraspFeedback.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperGraspFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d"
  public static let nativeType = "franka_gripper/GraspFeedback"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperGraspFeedback {
    var v = Ros1Franka_gripperGraspFeedback()
    return v
  }
}
/// @brief Own every original field of franka_gripper/HomingGoal.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperHomingGoal: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f"
  public static let nativeType = "franka_gripper/HomingGoal"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperHomingGoal {
    var v = Ros1Franka_gripperHomingGoal()
    return v
  }
}
/// @brief Own every original field of franka_gripper/HomingResult.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperHomingResult: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477"
  public static let nativeType = "franka_gripper/HomingResult"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_gripper/HomingResult.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_gripper/HomingResult.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperHomingResult {
    var v = Ros1Franka_gripperHomingResult()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_gripper/HomingFeedback.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperHomingFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e"
  public static let nativeType = "franka_gripper/HomingFeedback"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperHomingFeedback {
    var v = Ros1Franka_gripperHomingFeedback()
    return v
  }
}
/// @brief Own every original field of franka_gripper/MoveGoal.
/// @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperMoveGoal: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a"
  public static let nativeType = "franka_gripper/MoveGoal"
  public static let nativeIdentity: String? = nil
  /// @brief [m]
  /// @details Original franka_gripper/MoveGoal.width; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `width`: Double = 0
  /// @brief [m/s]
  /// @details Original franka_gripper/MoveGoal.speed; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `speed`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`width`)
    try w.float64(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperMoveGoal {
    var v = Ros1Franka_gripperMoveGoal()
    v.`width` = try r.float64()
    v.`speed` = try r.float64()
    return v
  }
}
/// @brief Own every original field of franka_gripper/MoveResult.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperMoveResult: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3"
  public static let nativeType = "franka_gripper/MoveResult"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_gripper/MoveResult.success; native type bool. Scalar value. Storage belongs
  /// to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_gripper/MoveResult.error; native type string. Scalar value. UTF-8 capacity
  /// 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperMoveResult {
    var v = Ros1Franka_gripperMoveResult()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_gripper/MoveFeedback.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperMoveFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80"
  public static let nativeType = "franka_gripper/MoveFeedback"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperMoveFeedback {
    var v = Ros1Franka_gripperMoveFeedback()
    return v
  }
}
/// @brief Own every original field of franka_gripper/StopGoal.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperStopGoal: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245"
  public static let nativeType = "franka_gripper/StopGoal"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperStopGoal {
    var v = Ros1Franka_gripperStopGoal()
    return v
  }
}
/// @brief Own every original field of franka_gripper/StopResult.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperStopResult: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61"
  public static let nativeType = "franka_gripper/StopResult"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_gripper/StopResult.success; native type bool. Scalar value. Storage belongs
  /// to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_gripper/StopResult.error; native type string. Scalar value. UTF-8 capacity
  /// 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperStopResult {
    var v = Ros1Franka_gripperStopResult()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_gripper/StopFeedback.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_gripperStopFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d"
  public static let nativeType = "franka_gripper/StopFeedback"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_gripperStopFeedback {
    var v = Ros1Franka_gripperStopFeedback()
    return v
  }
}
/// @brief Own every original field of franka_msgs/ErrorRecoveryGoal.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsErrorRecoveryGoal: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64"
  public static let nativeType = "franka_msgs/ErrorRecoveryGoal"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_msgsErrorRecoveryGoal {
    var v = Ros1Franka_msgsErrorRecoveryGoal()
    return v
  }
}
/// @brief Own every original field of franka_msgs/ErrorRecoveryResult.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsErrorRecoveryResult: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794"
  public static let nativeType = "franka_msgs/ErrorRecoveryResult"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_msgsErrorRecoveryResult {
    var v = Ros1Franka_msgsErrorRecoveryResult()
    return v
  }
}
/// @brief Own every original field of franka_msgs/ErrorRecoveryFeedback.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsErrorRecoveryFeedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21"
  public static let nativeType = "franka_msgs/ErrorRecoveryFeedback"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_msgsErrorRecoveryFeedback {
    var v = Ros1Franka_msgsErrorRecoveryFeedback()
    return v
  }
}
/// @brief Own every original field of franka_msgs/Errors.
/// @details Canonical extent 41..41 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsErrors: Canonical {
  public static let maximumWireBytes = 41
  public static let codecIdentity =
    "UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca"
  public static let nativeType = "franka_msgs/Errors"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.joint_position_limits_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_position_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_position_limits_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_position_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.self_collision_avoidance_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `self_collision_avoidance_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.joint_velocity_violation; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_velocity_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_velocity_violation; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_velocity_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.force_control_safety_violation; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `force_control_safety_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.joint_reflex; native type bool. Scalar value. Storage belongs
  /// to the complete value and acquires no ROS resource.
  public var `joint_reflex`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_reflex; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `cartesian_reflex`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.max_goal_pose_deviation_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `max_goal_pose_deviation_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.max_path_pose_deviation_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `max_path_pose_deviation_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_velocity_profile_safety_violation; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_velocity_profile_safety_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.joint_position_motion_generator_start_pose_invalid; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_position_motion_generator_start_pose_invalid`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.joint_motion_generator_position_limits_violation; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_motion_generator_position_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.joint_motion_generator_velocity_limits_violation; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_motion_generator_velocity_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.joint_motion_generator_velocity_discontinuity; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_motion_generator_velocity_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.joint_motion_generator_acceleration_discontinuity; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_motion_generator_acceleration_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_position_motion_generator_start_pose_invalid; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_position_motion_generator_start_pose_invalid`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_motion_generator_elbow_limit_violation; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_elbow_limit_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_motion_generator_velocity_limits_violation; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_velocity_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_motion_generator_velocity_discontinuity; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_velocity_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_motion_generator_acceleration_discontinuity; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_acceleration_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_motion_generator_elbow_sign_inconsistent; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_elbow_sign_inconsistent`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_motion_generator_start_elbow_invalid; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_start_elbow_invalid`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_motion_generator_joint_position_limits_violation;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_joint_position_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_motion_generator_joint_velocity_limits_violation;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_joint_velocity_limits_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_motion_generator_joint_velocity_discontinuity; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_joint_velocity_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_motion_generator_joint_acceleration_discontinuity;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_motion_generator_joint_acceleration_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_position_motion_generator_invalid_frame; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_position_motion_generator_invalid_frame`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.force_controller_desired_force_tolerance_violation; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `force_controller_desired_force_tolerance_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.controller_torque_discontinuity; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `controller_torque_discontinuity`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.start_elbow_sign_inconsistent; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `start_elbow_sign_inconsistent`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.communication_constraints_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `communication_constraints_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.power_limit_violation; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `power_limit_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.joint_p2p_insufficient_torque_for_planning; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_p2p_insufficient_torque_for_planning`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.tau_j_range_violation; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `tau_j_range_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.instability_detected; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `instability_detected`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.joint_move_in_wrong_direction; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_move_in_wrong_direction`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.cartesian_spline_motion_generator_violation; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cartesian_spline_motion_generator_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.joint_via_motion_generator_planning_joint_limit_violation;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `joint_via_motion_generator_planning_joint_limit_violation`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.base_acceleration_initialization_timeout; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `base_acceleration_initialization_timeout`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/Errors.base_acceleration_invalid_reading; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `base_acceleration_invalid_reading`: Bool = false
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
    try w.boolean(self.`joint_move_in_wrong_direction`)
    try w.boolean(self.`cartesian_spline_motion_generator_violation`)
    try w.boolean(self.`joint_via_motion_generator_planning_joint_limit_violation`)
    try w.boolean(self.`base_acceleration_initialization_timeout`)
    try w.boolean(self.`base_acceleration_invalid_reading`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_msgsErrors {
    var v = Ros1Franka_msgsErrors()
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
    v.`joint_move_in_wrong_direction` = try r.boolean()
    v.`cartesian_spline_motion_generator_violation` = try r.boolean()
    v.`joint_via_motion_generator_planning_joint_limit_violation` = try r.boolean()
    v.`base_acceleration_initialization_timeout` = try r.boolean()
    v.`base_acceleration_invalid_reading` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of time.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Time: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
  public static let nativeType = "time"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original uint32 field.
  /// @details Original time.sec; native type uint32. Scalar value. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `sec`: UInt32 = 0
  /// @brief Retain the complete original uint32 field.
  /// @details Original time.nsec; native type uint32. Scalar value. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `nsec`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    if self.`nsec` >= 1_000_000_000 { throw RosError(22) }
    try w.integer(self.`sec`)
    try w.integer(self.`nsec`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Time {
    var v = Ros1Time()
    v.`sec` = try r.integer(UInt32.self)
    v.`nsec` = try r.integer(UInt32.self)
    if v.`nsec` >= 1_000_000_000 { throw RosError(22) }
    return v
  }
}
/// @brief Own every original field of std_msgs/Header.
/// @details Canonical extent 16..144 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Std_msgsHeader: Canonical {
  public static let maximumWireBytes = 144
  public static let codecIdentity =
    "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
  public static let nativeType = "std_msgs/Header"
  public static let nativeIdentity: String? = nil
  /// @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
  /// timestamped data in a particular coordinate frame.  sequence ID: consecutively increasing ID
  /// @details Original std_msgs/Header.seq; native type uint32. Scalar value. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `seq`: UInt32 = 0
  /// @brief Two-integer timestamp that is expressed as: * stamp.sec: seconds (stamp_secs) since epoch (in
  /// Python the variable is called 'secs') * stamp.nsec: nanoseconds since stamp_secs (in Python the
  /// variable is called 'nsecs') time-handling sugar is provided by the client library
  /// @details Original std_msgs/Header.stamp; native type time. Scalar value. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `stamp`: Ros1Time = Ros1Time()
  /// @brief Frame this data is associated with
  /// @details Original std_msgs/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
  /// bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`seq`)
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsHeader {
    var v = Ros1Std_msgsHeader()
    v.`seq` = try r.integer(UInt32.self)
    v.`stamp` = try Ros1Time.read(from: &r)
    v.`frame_id` = try r.string(bound: 128)
    return v
  }
}
/// @brief Own every original field of franka_msgs/FrankaState.
/// @details Canonical extent 2491..2619 bytes. Native type identity is independent; constructing a
/// value opens no resource.
public struct Ros1Franka_msgsFrankaState: Canonical {
  public static let maximumWireBytes = 2619
  public static let codecIdentity =
    "UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71"
  public static let nativeType = "franka_msgs/FrankaState"
  public static let nativeIdentity: String? = nil
  public static let `ROBOT_MODE_OTHER`: UInt8 = 0
  public static let `ROBOT_MODE_IDLE`: UInt8 = 1
  public static let `ROBOT_MODE_MOVE`: UInt8 = 2
  public static let `ROBOT_MODE_GUIDING`: UInt8 = 3
  public static let `ROBOT_MODE_REFLEX`: UInt8 = 4
  public static let `ROBOT_MODE_USER_STOPPED`: UInt8 = 5
  public static let `ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY`: UInt8 = 6
  /// @brief Retain the complete original std_msgs/Header field.
  /// @details Original franka_msgs/FrankaState.header; native type std_msgs/Header. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.cartesian_collision; native type float64. Exactly 6
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `cartesian_collision`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.cartesian_contact; native type float64. Exactly 6
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `cartesian_contact`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.q; native type float64. Exactly 7 elements. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `q`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.q_d; native type float64. Exactly 7 elements. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `q_d`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.dq; native type float64. Exactly 7 elements. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `dq`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.dq_d; native type float64. Exactly 7 elements. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `dq_d`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.ddq_d; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `ddq_d`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.theta; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `theta`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.dtheta; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `dtheta`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.tau_J; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `tau_J`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.dtau_J; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `dtau_J`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.tau_J_d; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `tau_J_d`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.K_F_ext_hat_K; native type float64. Exactly 6 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `K_F_ext_hat_K`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.elbow; native type float64. Exactly 2 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `elbow`: [Double] = Array(repeating: 0, count: 2)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.elbow_d; native type float64. Exactly 2 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `elbow_d`: [Double] = Array(repeating: 0, count: 2)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.elbow_c; native type float64. Exactly 2 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `elbow_c`: [Double] = Array(repeating: 0, count: 2)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.delbow_c; native type float64. Exactly 2 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `delbow_c`: [Double] = Array(repeating: 0, count: 2)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.ddelbow_c; native type float64. Exactly 2 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `ddelbow_c`: [Double] = Array(repeating: 0, count: 2)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.joint_collision; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `joint_collision`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.joint_contact; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `joint_contact`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.O_F_ext_hat_K; native type float64. Exactly 6 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `O_F_ext_hat_K`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.O_dP_EE_d; native type float64. Exactly 6 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `O_dP_EE_d`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.O_ddP_O; native type float64. Exactly 3 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `O_ddP_O`: [Double] = Array(repeating: 0, count: 3)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.O_dP_EE_c; native type float64. Exactly 6 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `O_dP_EE_c`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.O_ddP_EE_c; native type float64. Exactly 6 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `O_ddP_EE_c`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.tau_ext_hat_filtered; native type float64. Exactly 7
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `tau_ext_hat_filtered`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.m_ee; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `m_ee`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.F_x_Cee; native type float64. Exactly 3 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `F_x_Cee`: [Double] = Array(repeating: 0, count: 3)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.I_ee; native type float64. Exactly 9 elements. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `I_ee`: [Double] = Array(repeating: 0, count: 9)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.m_load; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `m_load`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.F_x_Cload; native type float64. Exactly 3 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `F_x_Cload`: [Double] = Array(repeating: 0, count: 3)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.I_load; native type float64. Exactly 9 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `I_load`: [Double] = Array(repeating: 0, count: 9)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.m_total; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `m_total`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.F_x_Ctotal; native type float64. Exactly 3 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `F_x_Ctotal`: [Double] = Array(repeating: 0, count: 3)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.I_total; native type float64. Exactly 9 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `I_total`: [Double] = Array(repeating: 0, count: 9)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.O_T_EE; native type float64. Exactly 16 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `O_T_EE`: [Double] = Array(repeating: 0, count: 16)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.O_T_EE_d; native type float64. Exactly 16 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `O_T_EE_d`: [Double] = Array(repeating: 0, count: 16)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.O_T_EE_c; native type float64. Exactly 16 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `O_T_EE_c`: [Double] = Array(repeating: 0, count: 16)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.F_T_EE; native type float64. Exactly 16 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `F_T_EE`: [Double] = Array(repeating: 0, count: 16)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.F_T_NE; native type float64. Exactly 16 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `F_T_NE`: [Double] = Array(repeating: 0, count: 16)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.NE_T_EE; native type float64. Exactly 16 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `NE_T_EE`: [Double] = Array(repeating: 0, count: 16)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.EE_T_K; native type float64. Exactly 16 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `EE_T_K`: [Double] = Array(repeating: 0, count: 16)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.time; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `time`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/FrankaState.control_command_success_rate; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `control_command_success_rate`: Double = 0
  /// @brief Retain the complete original uint8 field.
  /// @details Original franka_msgs/FrankaState.robot_mode; native type uint8. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `robot_mode`: UInt8 = 0
  /// @brief Retain the complete original franka_msgs/Errors field.
  /// @details Original franka_msgs/FrankaState.current_errors; native type franka_msgs/Errors. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `current_errors`: Ros1Franka_msgsErrors = Ros1Franka_msgsErrors()
  /// @brief Retain the complete original franka_msgs/Errors field.
  /// @details Original franka_msgs/FrankaState.last_motion_errors; native type franka_msgs/Errors. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `last_motion_errors`: Ros1Franka_msgsErrors = Ros1Franka_msgsErrors()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`cartesian_collision`.count == 6 else { throw RosError(22) }
    for e in self.`cartesian_collision` {
      try w.float64(e)
    }
    guard self.`cartesian_contact`.count == 6 else { throw RosError(22) }
    for e in self.`cartesian_contact` {
      try w.float64(e)
    }
    guard self.`q`.count == 7 else { throw RosError(22) }
    for e in self.`q` {
      try w.float64(e)
    }
    guard self.`q_d`.count == 7 else { throw RosError(22) }
    for e in self.`q_d` {
      try w.float64(e)
    }
    guard self.`dq`.count == 7 else { throw RosError(22) }
    for e in self.`dq` {
      try w.float64(e)
    }
    guard self.`dq_d`.count == 7 else { throw RosError(22) }
    for e in self.`dq_d` {
      try w.float64(e)
    }
    guard self.`ddq_d`.count == 7 else { throw RosError(22) }
    for e in self.`ddq_d` {
      try w.float64(e)
    }
    guard self.`theta`.count == 7 else { throw RosError(22) }
    for e in self.`theta` {
      try w.float64(e)
    }
    guard self.`dtheta`.count == 7 else { throw RosError(22) }
    for e in self.`dtheta` {
      try w.float64(e)
    }
    guard self.`tau_J`.count == 7 else { throw RosError(22) }
    for e in self.`tau_J` {
      try w.float64(e)
    }
    guard self.`dtau_J`.count == 7 else { throw RosError(22) }
    for e in self.`dtau_J` {
      try w.float64(e)
    }
    guard self.`tau_J_d`.count == 7 else { throw RosError(22) }
    for e in self.`tau_J_d` {
      try w.float64(e)
    }
    guard self.`K_F_ext_hat_K`.count == 6 else { throw RosError(22) }
    for e in self.`K_F_ext_hat_K` {
      try w.float64(e)
    }
    guard self.`elbow`.count == 2 else { throw RosError(22) }
    for e in self.`elbow` {
      try w.float64(e)
    }
    guard self.`elbow_d`.count == 2 else { throw RosError(22) }
    for e in self.`elbow_d` {
      try w.float64(e)
    }
    guard self.`elbow_c`.count == 2 else { throw RosError(22) }
    for e in self.`elbow_c` {
      try w.float64(e)
    }
    guard self.`delbow_c`.count == 2 else { throw RosError(22) }
    for e in self.`delbow_c` {
      try w.float64(e)
    }
    guard self.`ddelbow_c`.count == 2 else { throw RosError(22) }
    for e in self.`ddelbow_c` {
      try w.float64(e)
    }
    guard self.`joint_collision`.count == 7 else { throw RosError(22) }
    for e in self.`joint_collision` {
      try w.float64(e)
    }
    guard self.`joint_contact`.count == 7 else { throw RosError(22) }
    for e in self.`joint_contact` {
      try w.float64(e)
    }
    guard self.`O_F_ext_hat_K`.count == 6 else { throw RosError(22) }
    for e in self.`O_F_ext_hat_K` {
      try w.float64(e)
    }
    guard self.`O_dP_EE_d`.count == 6 else { throw RosError(22) }
    for e in self.`O_dP_EE_d` {
      try w.float64(e)
    }
    guard self.`O_ddP_O`.count == 3 else { throw RosError(22) }
    for e in self.`O_ddP_O` {
      try w.float64(e)
    }
    guard self.`O_dP_EE_c`.count == 6 else { throw RosError(22) }
    for e in self.`O_dP_EE_c` {
      try w.float64(e)
    }
    guard self.`O_ddP_EE_c`.count == 6 else { throw RosError(22) }
    for e in self.`O_ddP_EE_c` {
      try w.float64(e)
    }
    guard self.`tau_ext_hat_filtered`.count == 7 else { throw RosError(22) }
    for e in self.`tau_ext_hat_filtered` {
      try w.float64(e)
    }
    try w.float64(self.`m_ee`)
    guard self.`F_x_Cee`.count == 3 else { throw RosError(22) }
    for e in self.`F_x_Cee` {
      try w.float64(e)
    }
    guard self.`I_ee`.count == 9 else { throw RosError(22) }
    for e in self.`I_ee` {
      try w.float64(e)
    }
    try w.float64(self.`m_load`)
    guard self.`F_x_Cload`.count == 3 else { throw RosError(22) }
    for e in self.`F_x_Cload` {
      try w.float64(e)
    }
    guard self.`I_load`.count == 9 else { throw RosError(22) }
    for e in self.`I_load` {
      try w.float64(e)
    }
    try w.float64(self.`m_total`)
    guard self.`F_x_Ctotal`.count == 3 else { throw RosError(22) }
    for e in self.`F_x_Ctotal` {
      try w.float64(e)
    }
    guard self.`I_total`.count == 9 else { throw RosError(22) }
    for e in self.`I_total` {
      try w.float64(e)
    }
    guard self.`O_T_EE`.count == 16 else { throw RosError(22) }
    for e in self.`O_T_EE` {
      try w.float64(e)
    }
    guard self.`O_T_EE_d`.count == 16 else { throw RosError(22) }
    for e in self.`O_T_EE_d` {
      try w.float64(e)
    }
    guard self.`O_T_EE_c`.count == 16 else { throw RosError(22) }
    for e in self.`O_T_EE_c` {
      try w.float64(e)
    }
    guard self.`F_T_EE`.count == 16 else { throw RosError(22) }
    for e in self.`F_T_EE` {
      try w.float64(e)
    }
    guard self.`F_T_NE`.count == 16 else { throw RosError(22) }
    for e in self.`F_T_NE` {
      try w.float64(e)
    }
    guard self.`NE_T_EE`.count == 16 else { throw RosError(22) }
    for e in self.`NE_T_EE` {
      try w.float64(e)
    }
    guard self.`EE_T_K`.count == 16 else { throw RosError(22) }
    for e in self.`EE_T_K` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
    try w.float64(self.`control_command_success_rate`)
    try w.integer(self.`robot_mode`)
    try self.`current_errors`.write(to: &w)
    try self.`last_motion_errors`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_msgsFrankaState {
    var v = Ros1Franka_msgsFrankaState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let count1 = 6
    v.`cartesian_collision` = []
    v.`cartesian_collision`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`cartesian_collision`.append(try r.float64())
    }
    let count2 = 6
    v.`cartesian_contact` = []
    v.`cartesian_contact`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`cartesian_contact`.append(try r.float64())
    }
    let count3 = 7
    v.`q` = []
    v.`q`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`q`.append(try r.float64())
    }
    let count4 = 7
    v.`q_d` = []
    v.`q_d`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`q_d`.append(try r.float64())
    }
    let count5 = 7
    v.`dq` = []
    v.`dq`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`dq`.append(try r.float64())
    }
    let count6 = 7
    v.`dq_d` = []
    v.`dq_d`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`dq_d`.append(try r.float64())
    }
    let count7 = 7
    v.`ddq_d` = []
    v.`ddq_d`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`ddq_d`.append(try r.float64())
    }
    let count8 = 7
    v.`theta` = []
    v.`theta`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`theta`.append(try r.float64())
    }
    let count9 = 7
    v.`dtheta` = []
    v.`dtheta`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`dtheta`.append(try r.float64())
    }
    let count10 = 7
    v.`tau_J` = []
    v.`tau_J`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`tau_J`.append(try r.float64())
    }
    let count11 = 7
    v.`dtau_J` = []
    v.`dtau_J`.reserveCapacity(count11)
    for _ in 0..<count11 {
      v.`dtau_J`.append(try r.float64())
    }
    let count12 = 7
    v.`tau_J_d` = []
    v.`tau_J_d`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`tau_J_d`.append(try r.float64())
    }
    let count13 = 6
    v.`K_F_ext_hat_K` = []
    v.`K_F_ext_hat_K`.reserveCapacity(count13)
    for _ in 0..<count13 {
      v.`K_F_ext_hat_K`.append(try r.float64())
    }
    let count14 = 2
    v.`elbow` = []
    v.`elbow`.reserveCapacity(count14)
    for _ in 0..<count14 {
      v.`elbow`.append(try r.float64())
    }
    let count15 = 2
    v.`elbow_d` = []
    v.`elbow_d`.reserveCapacity(count15)
    for _ in 0..<count15 {
      v.`elbow_d`.append(try r.float64())
    }
    let count16 = 2
    v.`elbow_c` = []
    v.`elbow_c`.reserveCapacity(count16)
    for _ in 0..<count16 {
      v.`elbow_c`.append(try r.float64())
    }
    let count17 = 2
    v.`delbow_c` = []
    v.`delbow_c`.reserveCapacity(count17)
    for _ in 0..<count17 {
      v.`delbow_c`.append(try r.float64())
    }
    let count18 = 2
    v.`ddelbow_c` = []
    v.`ddelbow_c`.reserveCapacity(count18)
    for _ in 0..<count18 {
      v.`ddelbow_c`.append(try r.float64())
    }
    let count19 = 7
    v.`joint_collision` = []
    v.`joint_collision`.reserveCapacity(count19)
    for _ in 0..<count19 {
      v.`joint_collision`.append(try r.float64())
    }
    let count20 = 7
    v.`joint_contact` = []
    v.`joint_contact`.reserveCapacity(count20)
    for _ in 0..<count20 {
      v.`joint_contact`.append(try r.float64())
    }
    let count21 = 6
    v.`O_F_ext_hat_K` = []
    v.`O_F_ext_hat_K`.reserveCapacity(count21)
    for _ in 0..<count21 {
      v.`O_F_ext_hat_K`.append(try r.float64())
    }
    let count22 = 6
    v.`O_dP_EE_d` = []
    v.`O_dP_EE_d`.reserveCapacity(count22)
    for _ in 0..<count22 {
      v.`O_dP_EE_d`.append(try r.float64())
    }
    let count23 = 3
    v.`O_ddP_O` = []
    v.`O_ddP_O`.reserveCapacity(count23)
    for _ in 0..<count23 {
      v.`O_ddP_O`.append(try r.float64())
    }
    let count24 = 6
    v.`O_dP_EE_c` = []
    v.`O_dP_EE_c`.reserveCapacity(count24)
    for _ in 0..<count24 {
      v.`O_dP_EE_c`.append(try r.float64())
    }
    let count25 = 6
    v.`O_ddP_EE_c` = []
    v.`O_ddP_EE_c`.reserveCapacity(count25)
    for _ in 0..<count25 {
      v.`O_ddP_EE_c`.append(try r.float64())
    }
    let count26 = 7
    v.`tau_ext_hat_filtered` = []
    v.`tau_ext_hat_filtered`.reserveCapacity(count26)
    for _ in 0..<count26 {
      v.`tau_ext_hat_filtered`.append(try r.float64())
    }
    v.`m_ee` = try r.float64()
    let count28 = 3
    v.`F_x_Cee` = []
    v.`F_x_Cee`.reserveCapacity(count28)
    for _ in 0..<count28 {
      v.`F_x_Cee`.append(try r.float64())
    }
    let count29 = 9
    v.`I_ee` = []
    v.`I_ee`.reserveCapacity(count29)
    for _ in 0..<count29 {
      v.`I_ee`.append(try r.float64())
    }
    v.`m_load` = try r.float64()
    let count31 = 3
    v.`F_x_Cload` = []
    v.`F_x_Cload`.reserveCapacity(count31)
    for _ in 0..<count31 {
      v.`F_x_Cload`.append(try r.float64())
    }
    let count32 = 9
    v.`I_load` = []
    v.`I_load`.reserveCapacity(count32)
    for _ in 0..<count32 {
      v.`I_load`.append(try r.float64())
    }
    v.`m_total` = try r.float64()
    let count34 = 3
    v.`F_x_Ctotal` = []
    v.`F_x_Ctotal`.reserveCapacity(count34)
    for _ in 0..<count34 {
      v.`F_x_Ctotal`.append(try r.float64())
    }
    let count35 = 9
    v.`I_total` = []
    v.`I_total`.reserveCapacity(count35)
    for _ in 0..<count35 {
      v.`I_total`.append(try r.float64())
    }
    let count36 = 16
    v.`O_T_EE` = []
    v.`O_T_EE`.reserveCapacity(count36)
    for _ in 0..<count36 {
      v.`O_T_EE`.append(try r.float64())
    }
    let count37 = 16
    v.`O_T_EE_d` = []
    v.`O_T_EE_d`.reserveCapacity(count37)
    for _ in 0..<count37 {
      v.`O_T_EE_d`.append(try r.float64())
    }
    let count38 = 16
    v.`O_T_EE_c` = []
    v.`O_T_EE_c`.reserveCapacity(count38)
    for _ in 0..<count38 {
      v.`O_T_EE_c`.append(try r.float64())
    }
    let count39 = 16
    v.`F_T_EE` = []
    v.`F_T_EE`.reserveCapacity(count39)
    for _ in 0..<count39 {
      v.`F_T_EE`.append(try r.float64())
    }
    let count40 = 16
    v.`F_T_NE` = []
    v.`F_T_NE`.reserveCapacity(count40)
    for _ in 0..<count40 {
      v.`F_T_NE`.append(try r.float64())
    }
    let count41 = 16
    v.`NE_T_EE` = []
    v.`NE_T_EE`.reserveCapacity(count41)
    for _ in 0..<count41 {
      v.`NE_T_EE`.append(try r.float64())
    }
    let count42 = 16
    v.`EE_T_K` = []
    v.`EE_T_K`.reserveCapacity(count42)
    for _ in 0..<count42 {
      v.`EE_T_K`.append(try r.float64())
    }
    v.`time` = try r.float64()
    v.`control_command_success_rate` = try r.float64()
    v.`robot_mode` = try r.integer(UInt8.self)
    v.`current_errors` = try Ros1Franka_msgsErrors.read(from: &r)
    v.`last_motion_errors` = try Ros1Franka_msgsErrors.read(from: &r)
    return v
  }
}
/// @brief Own every original field of franka_msgs/SetCartesianImpedanceRequest.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetCartesianImpedanceRequest: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf"
  public static let nativeType = "franka_msgs/SetCartesianImpedanceRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetCartesianImpedanceRequest.cartesian_stiffness; native type float64.
  /// Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `cartesian_stiffness`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`cartesian_stiffness`.count == 6 else { throw RosError(22) }
    for e in self.`cartesian_stiffness` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Franka_msgsSetCartesianImpedanceRequest
  {
    var v = Ros1Franka_msgsSetCartesianImpedanceRequest()
    let count0 = 6
    v.`cartesian_stiffness` = []
    v.`cartesian_stiffness`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`cartesian_stiffness`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/SetCartesianImpedanceResponse.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetCartesianImpedanceResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b"
  public static let nativeType = "franka_msgs/SetCartesianImpedanceResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/SetCartesianImpedanceResponse.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/SetCartesianImpedanceResponse.error; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Franka_msgsSetCartesianImpedanceResponse
  {
    var v = Ros1Franka_msgsSetCartesianImpedanceResponse()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/SetEEFrameRequest.
/// @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetEEFrameRequest: Canonical {
  public static let maximumWireBytes = 128
  public static let codecIdentity =
    "UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc"
  public static let nativeType = "franka_msgs/SetEEFrameRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetEEFrameRequest.NE_T_EE; native type float64. Exactly 16 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `NE_T_EE`: [Double] = Array(repeating: 0, count: 16)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`NE_T_EE`.count == 16 else { throw RosError(22) }
    for e in self.`NE_T_EE` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_msgsSetEEFrameRequest {
    var v = Ros1Franka_msgsSetEEFrameRequest()
    let count0 = 16
    v.`NE_T_EE` = []
    v.`NE_T_EE`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`NE_T_EE`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/SetEEFrameResponse.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetEEFrameResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67"
  public static let nativeType = "franka_msgs/SetEEFrameResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/SetEEFrameResponse.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/SetEEFrameResponse.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_msgsSetEEFrameResponse {
    var v = Ros1Franka_msgsSetEEFrameResponse()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/SetForceTorqueCollisionBehaviorRequest.
/// @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest: Canonical {
  public static let maximumWireBytes = 208
  public static let codecIdentity =
    "UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5"
  public static let nativeType = "franka_msgs/SetForceTorqueCollisionBehaviorRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_torque_thresholds_nominal; native type
  /// float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `lower_torque_thresholds_nominal`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_torque_thresholds_nominal; native type
  /// float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `upper_torque_thresholds_nominal`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_force_thresholds_nominal;
  /// native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `lower_force_thresholds_nominal`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_force_thresholds_nominal;
  /// native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
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
    -> Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
  {
    var v = Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest()
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
/// @brief Own every original field of franka_msgs/SetForceTorqueCollisionBehaviorResponse.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5"
  public static let nativeType = "franka_msgs/SetForceTorqueCollisionBehaviorResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/SetForceTorqueCollisionBehaviorResponse.success; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/SetForceTorqueCollisionBehaviorResponse.error; native type string.
  /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
  {
    var v = Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/SetFullCollisionBehaviorRequest.
/// @details Canonical extent 416..416 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetFullCollisionBehaviorRequest: Canonical {
  public static let maximumWireBytes = 416
  public static let codecIdentity =
    "UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c"
  public static let nativeType = "franka_msgs/SetFullCollisionBehaviorRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_acceleration;
  /// native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `lower_torque_thresholds_acceleration`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_acceleration;
  /// native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `upper_torque_thresholds_acceleration`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_nominal;
  /// native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `lower_torque_thresholds_nominal`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_nominal;
  /// native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `upper_torque_thresholds_nominal`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_acceleration;
  /// native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `lower_force_thresholds_acceleration`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_acceleration;
  /// native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `upper_force_thresholds_acceleration`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_nominal; native
  /// type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs
  /// to the complete value and acquires no ROS resource.
  public var `lower_force_thresholds_nominal`: [Double] = Array(repeating: 0, count: 6)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_nominal; native
  /// type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs
  /// to the complete value and acquires no ROS resource.
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
    -> Ros1Franka_msgsSetFullCollisionBehaviorRequest
  {
    var v = Ros1Franka_msgsSetFullCollisionBehaviorRequest()
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
/// @brief Own every original field of franka_msgs/SetFullCollisionBehaviorResponse.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetFullCollisionBehaviorResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2"
  public static let nativeType = "franka_msgs/SetFullCollisionBehaviorResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/SetFullCollisionBehaviorResponse.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/SetFullCollisionBehaviorResponse.error; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Franka_msgsSetFullCollisionBehaviorResponse
  {
    var v = Ros1Franka_msgsSetFullCollisionBehaviorResponse()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/SetJointImpedanceRequest.
/// @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetJointImpedanceRequest: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53"
  public static let nativeType = "franka_msgs/SetJointImpedanceRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetJointImpedanceRequest.joint_stiffness; native type float64. Exactly
  /// 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `joint_stiffness`: [Double] = Array(repeating: 0, count: 7)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_stiffness`.count == 7 else { throw RosError(22) }
    for e in self.`joint_stiffness` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Franka_msgsSetJointImpedanceRequest
  {
    var v = Ros1Franka_msgsSetJointImpedanceRequest()
    let count0 = 7
    v.`joint_stiffness` = []
    v.`joint_stiffness`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_stiffness`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/SetJointImpedanceResponse.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetJointImpedanceResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55"
  public static let nativeType = "franka_msgs/SetJointImpedanceResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/SetJointImpedanceResponse.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/SetJointImpedanceResponse.error; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Franka_msgsSetJointImpedanceResponse
  {
    var v = Ros1Franka_msgsSetJointImpedanceResponse()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/SetKFrameRequest.
/// @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetKFrameRequest: Canonical {
  public static let maximumWireBytes = 128
  public static let codecIdentity =
    "UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446"
  public static let nativeType = "franka_msgs/SetKFrameRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetKFrameRequest.EE_T_K; native type float64. Exactly 16 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `EE_T_K`: [Double] = Array(repeating: 0, count: 16)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`EE_T_K`.count == 16 else { throw RosError(22) }
    for e in self.`EE_T_K` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_msgsSetKFrameRequest {
    var v = Ros1Franka_msgsSetKFrameRequest()
    let count0 = 16
    v.`EE_T_K` = []
    v.`EE_T_K`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`EE_T_K`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of franka_msgs/SetKFrameResponse.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetKFrameResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443"
  public static let nativeType = "franka_msgs/SetKFrameResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/SetKFrameResponse.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/SetKFrameResponse.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_msgsSetKFrameResponse {
    var v = Ros1Franka_msgsSetKFrameResponse()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of franka_msgs/SetLoadRequest.
/// @details Canonical extent 104..104 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetLoadRequest: Canonical {
  public static let maximumWireBytes = 104
  public static let codecIdentity =
    "UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5"
  public static let nativeType = "franka_msgs/SetLoadRequest"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetLoadRequest.mass; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `mass`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetLoadRequest.F_x_center_load; native type float64. Exactly 3
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `F_x_center_load`: [Double] = Array(repeating: 0, count: 3)
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/SetLoadRequest.load_inertia; native type float64. Exactly 9 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `load_inertia`: [Double] = Array(repeating: 0, count: 9)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`mass`)
    guard self.`F_x_center_load`.count == 3 else { throw RosError(22) }
    for e in self.`F_x_center_load` {
      try w.float64(e)
    }
    guard self.`load_inertia`.count == 9 else { throw RosError(22) }
    for e in self.`load_inertia` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_msgsSetLoadRequest {
    var v = Ros1Franka_msgsSetLoadRequest()
    v.`mass` = try r.float64()
    let count1 = 3
    v.`F_x_center_load` = []
    v.`F_x_center_load`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`F_x_center_load`.append(try r.float64())
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
/// @brief Own every original field of franka_msgs/SetLoadResponse.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Franka_msgsSetLoadResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3"
  public static let nativeType = "franka_msgs/SetLoadResponse"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/SetLoadResponse.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/SetLoadResponse.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Franka_msgsSetLoadResponse {
    var v = Ros1Franka_msgsSetLoadResponse()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
