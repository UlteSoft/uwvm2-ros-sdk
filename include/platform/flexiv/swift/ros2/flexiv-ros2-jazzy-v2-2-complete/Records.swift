// @brief Complete original flexiv ros2_jazzy_v2_2 canonical values.
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
/// @brief Own every original field of flexiv_msgs/action/ErrorRecovery_Goal.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionErrorRecovery_Goal: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a034d73edc5891f3a17f52efce4e491e8d08655b3e32d9cf58338547ad412830"
  public static let nativeType = "flexiv_msgs/action/ErrorRecovery_Goal"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Flexiv_msgsActionErrorRecovery_Goal
  {
    var v = Ros2Flexiv_msgsActionErrorRecovery_Goal()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/ErrorRecovery_Result.
/// @details Canonical extent 7..263 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionErrorRecovery_Result: Canonical {
  public static let maximumWireBytes = 263
  public static let codecIdentity =
    "UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc"
  public static let nativeType = "flexiv_msgs/action/ErrorRecovery_Result"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/ErrorRecovery_Result.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Operator-facing explanation of the outcome
  /// @details Original flexiv_msgs/action/ErrorRecovery_Result.message; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `message`: String = ""
  /// @brief True when the robot is operational again but controllers must be restarted to resume motion
  /// @details Original flexiv_msgs/action/ErrorRecovery_Result.requires_controller_restart; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `requires_controller_restart`: Bool = false
  /// @brief Policy that applied to the condition found, values defined in RecoveryPolicy.msg
  /// @details Original flexiv_msgs/action/ErrorRecovery_Result.recovery_policy; native type uint8. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `recovery_policy`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try w.boolean(self.`requires_controller_restart`)
    try w.integer(self.`recovery_policy`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Flexiv_msgsActionErrorRecovery_Result
  {
    var v = Ros2Flexiv_msgsActionErrorRecovery_Result()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`requires_controller_restart` = try r.boolean()
    v.`recovery_policy` = try r.integer(UInt8.self)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/ErrorRecovery_Feedback.
/// @details Canonical extent 9..265 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionErrorRecovery_Feedback: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_eeafe196440ce0e03c9bd313aaeac627eaf8e2f1bc4f2ced2d94bcdf22088739"
  public static let nativeType = "flexiv_msgs/action/ErrorRecovery_Feedback"
  public static let nativeIdentity: String? = nil
  public static let `STATE_IDLE`: UInt8 = 0
  public static let `STATE_CLASSIFY`: UInt8 = 1
  public static let `STATE_STOP`: UInt8 = 2
  public static let `STATE_CLEAR_FAULT`: UInt8 = 3
  public static let `STATE_WAIT_FAULT_CLEARED`: UInt8 = 4
  public static let `STATE_SERVO_ON`: UInt8 = 5
  public static let `STATE_WAIT_OPERATIONAL`: UInt8 = 6
  public static let `STATE_COMPLETE`: UInt8 = 7
  public static let `STATE_FAILED`: UInt8 = 8
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state; native type uint8.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `recovery_state`: UInt8 = 0
  /// @brief Human-readable name of the recovery state above
  /// @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state_name; native type string.
  /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `recovery_state_name`: String = ""
  /// @brief Seconds elapsed since the recovery started
  /// @details Original flexiv_msgs/action/ErrorRecovery_Feedback.elapsed_seconds; native type float32.
  /// Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `elapsed_seconds`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`recovery_state`)
    try w.string(self.`recovery_state_name`, bound: 256)
    try w.float32(self.`elapsed_seconds`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Flexiv_msgsActionErrorRecovery_Feedback
  {
    var v = Ros2Flexiv_msgsActionErrorRecovery_Feedback()
    v.`recovery_state` = try r.integer(UInt8.self)
    v.`recovery_state_name` = try r.string(bound: 256)
    v.`elapsed_seconds` = try r.float32()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/Grasp_Goal.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionGrasp_Goal: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce"
  public static let nativeType = "flexiv_msgs/action/Grasp_Goal"
  public static let nativeIdentity: String? = nil
  /// @brief N
  /// @details Original flexiv_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `force`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`force`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsActionGrasp_Goal {
    var v = Ros2Flexiv_msgsActionGrasp_Goal()
    v.`force` = try r.float64()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/Grasp_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionGrasp_Result: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a"
  public static let nativeType = "flexiv_msgs/action/Grasp_Result"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original flexiv_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsActionGrasp_Result {
    var v = Ros2Flexiv_msgsActionGrasp_Result()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/Grasp_Feedback.
/// @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionGrasp_Feedback: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05"
  public static let nativeType = "flexiv_msgs/action/Grasp_Feedback"
  public static let nativeIdentity: String? = nil
  /// @brief m
  /// @details Original flexiv_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `current_width`: Double = 0
  /// @brief N
  /// @details Original flexiv_msgs/action/Grasp_Feedback.current_force; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `current_force`: Double = 0
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Grasp_Feedback.moving; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `moving`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`current_width`)
    try w.float64(self.`current_force`)
    try w.boolean(self.`moving`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsActionGrasp_Feedback {
    var v = Ros2Flexiv_msgsActionGrasp_Feedback()
    v.`current_width` = try r.float64()
    v.`current_force` = try r.float64()
    v.`moving` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/Move_Goal.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionMove_Goal: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2"
  public static let nativeType = "flexiv_msgs/action/Move_Goal"
  public static let nativeIdentity: String? = nil
  /// @brief m
  /// @details Original flexiv_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `width`: Double = 0
  /// @brief m/s
  /// @details Original flexiv_msgs/action/Move_Goal.velocity; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `velocity`: Double = 0
  /// @brief N
  /// @details Original flexiv_msgs/action/Move_Goal.max_force; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `max_force`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`width`)
    try w.float64(self.`velocity`)
    try w.float64(self.`max_force`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsActionMove_Goal {
    var v = Ros2Flexiv_msgsActionMove_Goal()
    v.`width` = try r.float64()
    v.`velocity` = try r.float64()
    v.`max_force` = try r.float64()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/Move_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionMove_Result: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d"
  public static let nativeType = "flexiv_msgs/action/Move_Result"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original flexiv_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsActionMove_Result {
    var v = Ros2Flexiv_msgsActionMove_Result()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/Move_Feedback.
/// @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionMove_Feedback: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38"
  public static let nativeType = "flexiv_msgs/action/Move_Feedback"
  public static let nativeIdentity: String? = nil
  /// @brief m
  /// @details Original flexiv_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `current_width`: Double = 0
  /// @brief N
  /// @details Original flexiv_msgs/action/Move_Feedback.current_force; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `current_force`: Double = 0
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Move_Feedback.moving; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `moving`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`current_width`)
    try w.float64(self.`current_force`)
    try w.boolean(self.`moving`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsActionMove_Feedback {
    var v = Ros2Flexiv_msgsActionMove_Feedback()
    v.`current_width` = try r.float64()
    v.`current_force` = try r.float64()
    v.`moving` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/Digital.
/// @details Canonical extent 2..2 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgDigital: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf"
  public static let nativeType = "flexiv_msgs/msg/Digital"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/msg/Digital.pin; native type uint8. Scalar value. Storage belongs to
  /// the complete value and acquires no ROS resource.
  public var `pin`: UInt8 = 0
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/Digital.state; native type bool. Scalar value. Storage belongs to
  /// the complete value and acquires no ROS resource.
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pin`)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgDigital {
    var v = Ros2Flexiv_msgsMsgDigital()
    v.`pin` = try r.integer(UInt8.self)
    v.`state` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/GPIOStates.
/// @details Canonical extent 4..68 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgGPIOStates: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14"
  public static let nativeType = "flexiv_msgs/msg/GPIOStates"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original flexiv_msgs/msg/Digital field.
  /// @details Original flexiv_msgs/msg/GPIOStates.states; native type flexiv_msgs/msg/Digital. At most 32
  /// elements. Storage belongs to the complete value and acquires no ROS resource.
  public var `states`: [Ros2Flexiv_msgsMsgDigital] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`states`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`states`.count))
    for e in self.`states` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgGPIOStates {
    var v = Ros2Flexiv_msgsMsgGPIOStates()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`states` = []
    v.`states`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`states`.append(try Ros2Flexiv_msgsMsgDigital.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of std_msgs/msg/Header.
/// @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Std_msgsMsgHeader: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b"
  public static let nativeType = "std_msgs/msg/Header"
  public static let nativeIdentity: String? = nil
  /// @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
  /// timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
  /// seconds and nanoseconds.
  /// @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Transform frame with which this data is associated.
  /// @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 256
  /// bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgHeader {
    var v = Ros2Std_msgsMsgHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    v.`frame_id` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/JointImpedance.
/// @details Canonical extent 29..9373 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgJointImpedance: Canonical {
  public static let maximumWireBytes = 9373
  public static let codecIdentity =
    "UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a"
  public static let nativeType = "flexiv_msgs/msg/JointImpedance"
  public static let nativeIdentity: String? = nil
  /// @brief Impedance properties of the robot's joint motion controller, used in the joint impedance
  /// control modes. Mirrors the arguments of flexiv::rdk::Robot::SetJointImpedance(). Header
  /// @details Original flexiv_msgs/msg/JointImpedance.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
  /// robot are covered: the robot reports no nominal joint stiffness for external axes.
  /// @details Original flexiv_msgs/msg/JointImpedance.joint_names; native type string. At most 32
  /// elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `joint_names`: [String] = []
  /// @brief Joint motion stiffness K_q. A joint at 0 is free-floating. [Nm/rad]
  /// @details Original flexiv_msgs/msg/JointImpedance.k_q; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `k_q`: [Double] = []
  /// @brief Joint motion damping ratio Z_q, dimensionless. Valid range [0.3, 0.8], nominal 0.7
  /// @details Original flexiv_msgs/msg/JointImpedance.z_q; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `z_q`: [Double] = []
  /// @brief Nominal joint motion stiffness, the upper bound of k_q. [Nm/rad]
  /// @details Original flexiv_msgs/msg/JointImpedance.k_q_nom; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `k_q_nom`: [Double] = []
  /// @brief Whether these values are in effect on the robot. False while the robot is not in a joint
  /// impedance control mode: they are held and applied on the next controller start.
  /// @details Original flexiv_msgs/msg/JointImpedance.in_effect; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `in_effect`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 256)
    }
    guard self.`k_q`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`k_q`.count))
    for e in self.`k_q` {
      try w.float64(e)
    }
    guard self.`z_q`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`z_q`.count))
    for e in self.`z_q` {
      try w.float64(e)
    }
    guard self.`k_q_nom`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`k_q_nom`.count))
    for e in self.`k_q_nom` {
      try w.float64(e)
    }
    try w.boolean(self.`in_effect`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgJointImpedance {
    var v = Ros2Flexiv_msgsMsgJointImpedance()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 256))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`k_q` = []
    v.`k_q`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`k_q`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 32 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`z_q` = []
    v.`z_q`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`z_q`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 32 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`k_q_nom` = []
    v.`k_q_nom`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`k_q_nom`.append(try r.float64())
    }
    v.`in_effect` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/JointInertiaScale.
/// @details Canonical extent 21..8853 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgJointInertiaScale: Canonical {
  public static let maximumWireBytes = 8853
  public static let codecIdentity =
    "UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f"
  public static let nativeType = "flexiv_msgs/msg/JointInertiaScale"
  public static let nativeIdentity: String? = nil
  /// @brief Inertia shaping scales of the robot's joint motion controller, used in the joint impedance
  /// control modes. Mirrors the argument of flexiv::rdk::Robot::SetJointInertiaScale(). Header
  /// @details Original flexiv_msgs/msg/JointInertiaScale.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
  /// robot are covered, matching JointImpedance.msg.
  /// @details Original flexiv_msgs/msg/JointInertiaScale.joint_names; native type string. At most 32
  /// elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `joint_names`: [String] = []
  /// @brief Inertia shaping scale sigma_q, dimensionless. Valid range [0.75, 1.0]. The nominal value 1.0
  /// means no shaping; a smaller scale makes the joint behave as if it were lighter.
  /// @details Original flexiv_msgs/msg/JointInertiaScale.inertia_scales; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `inertia_scales`: [Double] = []
  /// @brief Whether these values are in effect on the robot. False while the robot is not in a joint
  /// impedance control mode: they are held and applied on the next controller start.
  /// @details Original flexiv_msgs/msg/JointInertiaScale.in_effect; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `in_effect`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 256)
    }
    guard self.`inertia_scales`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`inertia_scales`.count))
    for e in self.`inertia_scales` {
      try w.float64(e)
    }
    try w.boolean(self.`in_effect`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgJointInertiaScale {
    var v = Ros2Flexiv_msgsMsgJointInertiaScale()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 256))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`inertia_scales` = []
    v.`inertia_scales`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`inertia_scales`.append(try r.float64())
    }
    v.`in_effect` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/JointPosVel.
/// @details Canonical extent 8..520 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgJointPosVel: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca"
  public static let nativeType = "flexiv_msgs/msg/JointPosVel"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `positions`: [Double] = []
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `velocities`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`positions`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`positions`.count))
    for e in self.`positions` {
      try w.float64(e)
    }
    guard self.`velocities`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgJointPosVel {
    var v = Ros2Flexiv_msgsMsgJointPosVel()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`positions` = []
    v.`positions`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`positions`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/MaxContactTorque.
/// @details Canonical extent 25..9113 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgMaxContactTorque: Canonical {
  public static let maximumWireBytes = 9113
  public static let codecIdentity =
    "UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da"
  public static let nativeType = "flexiv_msgs/msg/MaxContactTorque"
  public static let nativeIdentity: String? = nil
  /// @brief Maximum contact torques of the robot's joint motion controller, used in the joint impedance
  /// control modes. Mirrors the argument of flexiv::rdk::Robot::SetMaxContactTorque(). Header
  /// @details Original flexiv_msgs/msg/MaxContactTorque.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
  /// robot are covered, matching JointImpedance.msg.
  /// @details Original flexiv_msgs/msg/MaxContactTorque.joint_names; native type string. At most 32
  /// elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `joint_names`: [String] = []
  /// @brief Maximum contact torque the controller regulates its output to maintain. [Nm]
  /// @details Original flexiv_msgs/msg/MaxContactTorque.max_contact_torques; native type float64. At most
  /// 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `max_contact_torques`: [Double] = []
  /// @brief Upper software limits of joint torques, the upper bound of max_contact_torques. [Nm]
  /// @details Original flexiv_msgs/msg/MaxContactTorque.tau_max; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `tau_max`: [Double] = []
  /// @brief Whether these values are in effect on the robot. False while the robot is not in a joint
  /// impedance control mode: they are held and applied on the next controller start.
  /// @details Original flexiv_msgs/msg/MaxContactTorque.in_effect; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `in_effect`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 256)
    }
    guard self.`max_contact_torques`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`max_contact_torques`.count))
    for e in self.`max_contact_torques` {
      try w.float64(e)
    }
    guard self.`tau_max`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau_max`.count))
    for e in self.`tau_max` {
      try w.float64(e)
    }
    try w.boolean(self.`in_effect`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgMaxContactTorque {
    var v = Ros2Flexiv_msgsMsgMaxContactTorque()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 256))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`max_contact_torques` = []
    v.`max_contact_torques`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`max_contact_torques`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 32 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`tau_max` = []
    v.`tau_max`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`tau_max`.append(try r.float64())
    }
    v.`in_effect` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/Mode.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgMode: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87"
  public static let nativeType = "flexiv_msgs/msg/Mode"
  public static let nativeIdentity: String? = nil
  public static let `MODE_UNKNOWN`: Int8 = 0
  public static let `MODE_IDLE`: Int8 = 1
  public static let `MODE_RT_JOINT_TORQUE`: Int8 = 2
  public static let `MODE_RT_JOINT_IMPEDANCE`: Int8 = 3
  public static let `MODE_NRT_JOINT_IMPEDANCE`: Int8 = 4
  public static let `MODE_RT_JOINT_POSITION`: Int8 = 5
  public static let `MODE_NRT_JOINT_POSITION`: Int8 = 6
  public static let `MODE_NRT_PLAN_EXECUTION`: Int8 = 7
  public static let `MODE_NRT_PRIMITIVE_EXECUTION`: Int8 = 8
  public static let `MODE_RT_CARTESIAN_MOTION_FORCE`: Int8 = 9
  public static let `MODE_NRT_CARTESIAN_MOTION_FORCE`: Int8 = 10
  public static let `MODE_NRT_SUPER_PRIMITIVE`: Int8 = 11
  /// @brief Retain the complete original int8 field.
  /// @details Original flexiv_msgs/msg/Mode.mode; native type int8. Scalar value. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgMode {
    var v = Ros2Flexiv_msgsMsgMode()
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/RobotEvent.
/// @details Canonical extent 29..1053 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgRobotEvent: Canonical {
  public static let maximumWireBytes = 1053
  public static let codecIdentity =
    "UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17"
  public static let nativeType = "flexiv_msgs/msg/RobotEvent"
  public static let nativeIdentity: String? = nil
  public static let `LEVEL_UNKNOWN`: UInt8 = 0
  public static let `LEVEL_INFO`: UInt8 = 1
  public static let `LEVEL_WARNING`: UInt8 = 2
  public static let `LEVEL_ERROR`: UInt8 = 3
  public static let `LEVEL_CRITICAL`: UInt8 = 4
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/msg/RobotEvent.level; native type uint8. Scalar value. Storage belongs
  /// to the complete value and acquires no ROS resource.
  public var `level`: UInt8 = 0
  /// @brief Unique ID of the event
  /// @details Original flexiv_msgs/msg/RobotEvent.id; native type int32. Scalar value. Storage belongs to
  /// the complete value and acquires no ROS resource.
  public var `id`: Int32 = 0
  /// @brief Brief description of the event
  /// @details Original flexiv_msgs/msg/RobotEvent.description; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `description`: String = ""
  /// @brief Consequences caused by the event
  /// @details Original flexiv_msgs/msg/RobotEvent.consequences; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `consequences`: String = ""
  /// @brief Probable causes of the event
  /// @details Original flexiv_msgs/msg/RobotEvent.probable_causes; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `probable_causes`: String = ""
  /// @brief Recommended actions after the event
  /// @details Original flexiv_msgs/msg/RobotEvent.recommended_actions; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `recommended_actions`: String = ""
  /// @brief Timestamp of the event
  /// @details Original flexiv_msgs/msg/RobotEvent.timestamp; native type builtin_interfaces/msg/Time.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `timestamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`level`)
    try w.integer(self.`id`)
    try w.string(self.`description`, bound: 256)
    try w.string(self.`consequences`, bound: 256)
    try w.string(self.`probable_causes`, bound: 256)
    try w.string(self.`recommended_actions`, bound: 256)
    try self.`timestamp`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgRobotEvent {
    var v = Ros2Flexiv_msgsMsgRobotEvent()
    v.`level` = try r.integer(UInt8.self)
    v.`id` = try r.integer(Int32.self)
    v.`description` = try r.string(bound: 256)
    v.`consequences` = try r.string(bound: 256)
    v.`probable_causes` = try r.string(bound: 256)
    v.`recommended_actions` = try r.string(bound: 256)
    v.`timestamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/OperationalStatus.
/// @details Canonical extent 34..17650 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgOperationalStatus: Canonical {
  public static let maximumWireBytes = 17650
  public static let codecIdentity =
    "UWVMROS1_89c0f96c20a56eb45bb21b617945cbe727558f12094a8377414fe5729d147a62"
  public static let nativeType = "flexiv_msgs/msg/OperationalStatus"
  public static let nativeIdentity: String? = nil
  public static let `STATUS_UNKNOWN`: UInt8 = 0
  public static let `STATUS_READY`: UInt8 = 1
  public static let `STATUS_BOOTING`: UInt8 = 2
  public static let `STATUS_ESTOP_NOT_RELEASED`: UInt8 = 3
  public static let `STATUS_NOT_SERVO_ON`: UInt8 = 4
  public static let `STATUS_RELEASING_BRAKE`: UInt8 = 5
  public static let `STATUS_MINOR_FAULT`: UInt8 = 6
  public static let `STATUS_CRITICAL_FAULT`: UInt8 = 7
  public static let `STATUS_IN_REDUCED_STATE`: UInt8 = 8
  public static let `STATUS_IN_RECOVERY_STATE`: UInt8 = 9
  public static let `STATUS_IN_MANUAL_MODE`: UInt8 = 10
  public static let `STATUS_IN_AUTO_MODE`: UInt8 = 11
  public static let `DRIVER_UNINITIALIZED`: UInt8 = 0
  public static let `DRIVER_READY`: UInt8 = 1
  public static let `DRIVER_FAULT`: UInt8 = 2
  public static let `DRIVER_RECOVERING`: UInt8 = 3
  public static let `DRIVER_LOCKOUT`: UInt8 = 4
  public static let `DRIVER_DISCONNECTED`: UInt8 = 5
  /// @brief Operational status of the robot and of the driver supervising it. The status values mirror
  /// flexiv::rdk::OperationalStatus one-for-one. Header
  /// @details Original flexiv_msgs/msg/OperationalStatus.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.operational_status; native type uint8. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `operational_status`: UInt8 = 0
  /// @brief Human-readable name of the operational status above
  /// @details Original flexiv_msgs/msg/OperationalStatus.operational_status_name; native type string.
  /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `operational_status_name`: String = ""
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.driver_state; native type uint8. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `driver_state`: UInt8 = 0
  /// @brief Robot condition flags
  /// @details Original flexiv_msgs/msg/OperationalStatus.connected; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `connected`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.fault; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `fault`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.operational; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `operational`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.estop_released; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `estop_released`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.reduced; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `reduced`: Bool = false
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.recovery_state; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `recovery_state`: Bool = false
  /// @brief Current robot control mode, values defined in Mode.msg
  /// @details Original flexiv_msgs/msg/OperationalStatus.control_mode; native type int8. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `control_mode`: Int8 = 0
  /// @brief How the current condition should be recovered from, values defined in RecoveryPolicy.msg
  /// @details Original flexiv_msgs/msg/OperationalStatus.recovery_policy; native type uint8. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `recovery_policy`: UInt8 = 0
  /// @brief Operator-facing explanation of the current condition and what to do about it
  /// @details Original flexiv_msgs/msg/OperationalStatus.message; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `message`: String = ""
  /// @brief Most recent error and critical events reported by the robot
  /// @details Original flexiv_msgs/msg/OperationalStatus.recent_events; native type
  /// flexiv_msgs/msg/RobotEvent. At most 16 elements. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `recent_events`: [Ros2Flexiv_msgsMsgRobotEvent] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`operational_status`)
    try w.string(self.`operational_status_name`, bound: 256)
    try w.integer(self.`driver_state`)
    try w.boolean(self.`connected`)
    try w.boolean(self.`fault`)
    try w.boolean(self.`operational`)
    try w.boolean(self.`estop_released`)
    try w.boolean(self.`reduced`)
    try w.boolean(self.`recovery_state`)
    try w.integer(self.`control_mode`)
    try w.integer(self.`recovery_policy`)
    try w.string(self.`message`, bound: 256)
    guard self.`recent_events`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`recent_events`.count))
    for e in self.`recent_events` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgOperationalStatus {
    var v = Ros2Flexiv_msgsMsgOperationalStatus()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`operational_status` = try r.integer(UInt8.self)
    v.`operational_status_name` = try r.string(bound: 256)
    v.`driver_state` = try r.integer(UInt8.self)
    v.`connected` = try r.boolean()
    v.`fault` = try r.boolean()
    v.`operational` = try r.boolean()
    v.`estop_released` = try r.boolean()
    v.`reduced` = try r.boolean()
    v.`recovery_state` = try r.boolean()
    v.`control_mode` = try r.integer(Int8.self)
    v.`recovery_policy` = try r.integer(UInt8.self)
    v.`message` = try r.string(bound: 256)
    let rawcount13 = try r.integer(UInt32.self)
    guard rawcount13 <= 16 else { throw RosError(22) }
    let count13 = Int(rawcount13)
    v.`recent_events` = []
    v.`recent_events`.reserveCapacity(count13)
    for _ in 0..<count13 {
      v.`recent_events`.append(try Ros2Flexiv_msgsMsgRobotEvent.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/RecoveryPolicy.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgRecoveryPolicy: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf"
  public static let nativeType = "flexiv_msgs/msg/RecoveryPolicy"
  public static let nativeIdentity: String? = nil
  public static let `NONE`: UInt8 = 0
  public static let `TRANSIENT`: UInt8 = 1
  public static let `AUTO_RECOVERABLE`: UInt8 = 2
  public static let `WAIT_OPERATOR`: UInt8 = 3
  public static let `SAFETY_LOCKOUT`: UInt8 = 4
  public static let `CONNECTION_LOST`: UInt8 = 5
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/msg/RecoveryPolicy.recovery_policy; native type uint8. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `recovery_policy`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`recovery_policy`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgRecoveryPolicy {
    var v = Ros2Flexiv_msgsMsgRecoveryPolicy()
    v.`recovery_policy` = try r.integer(UInt8.self)
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
/// @details Canonical extent 68..324 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgPoseStamped: Canonical {
  public static let maximumWireBytes = 324
  public static let codecIdentity =
    "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad"
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
/// @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgTwistStamped: Canonical {
  public static let maximumWireBytes = 316
  public static let codecIdentity =
    "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308"
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
/// @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgWrenchStamped: Canonical {
  public static let maximumWireBytes = 316
  public static let codecIdentity =
    "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177"
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
/// @brief Own every original field of flexiv_msgs/msg/RobotStates.
/// @details Canonical extent 552..5160 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgRobotStates: Canonical {
  public static let maximumWireBytes = 5160
  public static let codecIdentity =
    "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a"
  public static let nativeType = "flexiv_msgs/msg/RobotStates"
  public static let nativeIdentity: String? = nil
  /// @brief Header
  /// @details Original flexiv_msgs/msg/RobotStates.header; native type std_msgs/msg/Header. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Robot system timestamp
  /// @details Original flexiv_msgs/msg/RobotStates.robot_timestamp; native type
  /// builtin_interfaces/msg/Time. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `robot_timestamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Measured joint positions using link-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.q; native type float64. At most 32 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `q`: [Double] = []
  /// @brief Measured joint positions using motor-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `theta`: [Double] = []
  /// @brief Measured joint velocities using link-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. At most 32 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `dq`: [Double] = []
  /// @brief Measured joint velocities using motor-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `dtheta`: [Double] = []
  /// @brief Measured joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. At most 32 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `tau`: [Double] = []
  /// @brief Numerical derivative of measured joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `tau_dot`: [Double] = []
  /// @brief Estimated external joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `tau_ext`: [Double] = []
  /// @brief Estimated interaction joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau_interact; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `tau_interact`: [Double] = []
  /// @brief Measured joint temperatures
  /// @details Original flexiv_msgs/msg/RobotStates.temperature; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `temperature`: [Double] = []
  /// @brief Measured TCP pose expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/PoseStamped.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `tcp_pose`: Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped()
  /// @brief Measured TCP twist expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_twist; native type geometry_msgs/msg/TwistStamped.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `tcp_twist`: Ros2Geometry_msgsMsgTwistStamped = Ros2Geometry_msgsMsgTwistStamped()
  /// @brief Measured flange pose expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `flange_pose`: Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped()
  /// @brief Raw force-torque (FT) sensor reading in flange frame
  /// @details Original flexiv_msgs/msg/RobotStates.raw_ft_sensor; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `raw_ft_sensor`: Ros2Geometry_msgsMsgWrenchStamped =
    Ros2Geometry_msgsMsgWrenchStamped()
  /// @brief Estimated external wrench applied on TCP and expressed in TCP frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_wrench_local; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `tcp_wrench_local`: Ros2Geometry_msgsMsgWrenchStamped =
    Ros2Geometry_msgsMsgWrenchStamped()
  /// @brief Estimated external wrench applied on TCP and expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_wrench; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `tcp_wrench`: Ros2Geometry_msgsMsgWrenchStamped = Ros2Geometry_msgsMsgWrenchStamped()
  /// @brief Unfiltered external wrench applied on TCP and expressed in TCP frame
  /// @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench_local; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `raw_tcp_wrench_local`: Ros2Geometry_msgsMsgWrenchStamped =
    Ros2Geometry_msgsMsgWrenchStamped()
  /// @brief Unfiltered external wrench applied on TCP and expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `raw_tcp_wrench`: Ros2Geometry_msgsMsgWrenchStamped =
    Ros2Geometry_msgsMsgWrenchStamped()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`robot_timestamp`.write(to: &w)
    guard self.`q`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`q`.count))
    for e in self.`q` {
      try w.float64(e)
    }
    guard self.`theta`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`theta`.count))
    for e in self.`theta` {
      try w.float64(e)
    }
    guard self.`dq`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`dq`.count))
    for e in self.`dq` {
      try w.float64(e)
    }
    guard self.`dtheta`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`dtheta`.count))
    for e in self.`dtheta` {
      try w.float64(e)
    }
    guard self.`tau`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau`.count))
    for e in self.`tau` {
      try w.float64(e)
    }
    guard self.`tau_dot`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau_dot`.count))
    for e in self.`tau_dot` {
      try w.float64(e)
    }
    guard self.`tau_ext`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau_ext`.count))
    for e in self.`tau_ext` {
      try w.float64(e)
    }
    guard self.`tau_interact`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau_interact`.count))
    for e in self.`tau_interact` {
      try w.float64(e)
    }
    guard self.`temperature`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`temperature`.count))
    for e in self.`temperature` {
      try w.float64(e)
    }
    try self.`tcp_pose`.write(to: &w)
    try self.`tcp_twist`.write(to: &w)
    try self.`flange_pose`.write(to: &w)
    try self.`raw_ft_sensor`.write(to: &w)
    try self.`tcp_wrench_local`.write(to: &w)
    try self.`tcp_wrench`.write(to: &w)
    try self.`raw_tcp_wrench_local`.write(to: &w)
    try self.`raw_tcp_wrench`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgRobotStates {
    var v = Ros2Flexiv_msgsMsgRobotStates()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`robot_timestamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`q` = []
    v.`q`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`q`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 32 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`theta` = []
    v.`theta`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`theta`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 32 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`dq` = []
    v.`dq`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`dq`.append(try r.float64())
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 32 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`dtheta` = []
    v.`dtheta`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`dtheta`.append(try r.float64())
    }
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 32 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`tau` = []
    v.`tau`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`tau`.append(try r.float64())
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 32 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`tau_dot` = []
    v.`tau_dot`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`tau_dot`.append(try r.float64())
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 32 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`tau_ext` = []
    v.`tau_ext`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`tau_ext`.append(try r.float64())
    }
    let rawcount9 = try r.integer(UInt32.self)
    guard rawcount9 <= 32 else { throw RosError(22) }
    let count9 = Int(rawcount9)
    v.`tau_interact` = []
    v.`tau_interact`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`tau_interact`.append(try r.float64())
    }
    let rawcount10 = try r.integer(UInt32.self)
    guard rawcount10 <= 32 else { throw RosError(22) }
    let count10 = Int(rawcount10)
    v.`temperature` = []
    v.`temperature`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`temperature`.append(try r.float64())
    }
    v.`tcp_pose` = try Ros2Geometry_msgsMsgPoseStamped.read(from: &r)
    v.`tcp_twist` = try Ros2Geometry_msgsMsgTwistStamped.read(from: &r)
    v.`flange_pose` = try Ros2Geometry_msgsMsgPoseStamped.read(from: &r)
    v.`raw_ft_sensor` = try Ros2Geometry_msgsMsgWrenchStamped.read(from: &r)
    v.`tcp_wrench_local` = try Ros2Geometry_msgsMsgWrenchStamped.read(from: &r)
    v.`tcp_wrench` = try Ros2Geometry_msgsMsgWrenchStamped.read(from: &r)
    v.`raw_tcp_wrench_local` = try Ros2Geometry_msgsMsgWrenchStamped.read(from: &r)
    v.`raw_tcp_wrench` = try Ros2Geometry_msgsMsgWrenchStamped.read(from: &r)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/srv/GetOperationalStatus_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsSrvGetOperationalStatus_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12"
  public static let nativeType = "flexiv_msgs/srv/GetOperationalStatus_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Flexiv_msgsSrvGetOperationalStatus_Request
  {
    var v = Ros2Flexiv_msgsSrvGetOperationalStatus_Request()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/srv/GetOperationalStatus_Response.
/// @details Canonical extent 34..17650 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsSrvGetOperationalStatus_Response: Canonical {
  public static let maximumWireBytes = 17650
  public static let codecIdentity =
    "UWVMROS1_c0c5d8eabf0e036c0854728e784564c68669a6cdbb5e22f7f5934956d9e4e7da"
  public static let nativeType = "flexiv_msgs/srv/GetOperationalStatus_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original flexiv_msgs/msg/OperationalStatus field.
  /// @details Original flexiv_msgs/srv/GetOperationalStatus_Response.status; native type
  /// flexiv_msgs/msg/OperationalStatus. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `status`: Ros2Flexiv_msgsMsgOperationalStatus = Ros2Flexiv_msgsMsgOperationalStatus()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`status`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Flexiv_msgsSrvGetOperationalStatus_Response
  {
    var v = Ros2Flexiv_msgsSrvGetOperationalStatus_Response()
    v.`status` = try Ros2Flexiv_msgsMsgOperationalStatus.read(from: &r)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/srv/SetJointImpedance_Request.
/// @details Canonical extent 12..8844 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsSrvSetJointImpedance_Request: Canonical {
  public static let maximumWireBytes = 8844
  public static let codecIdentity =
    "UWVMROS1_37adbcb0beeef85996da45424e76b2d67bcbf245d22eae89f05e43d015527e08"
  public static let nativeType = "flexiv_msgs/srv/SetJointImpedance_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Set impedance properties of the robot's joint motion controller. Requires the driver to run
  /// with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing
  /// changes. Joints to set, named exactly as published on ~/joint_impedance. Leave empty to address
  /// every joint the interface covers, in that published order. On a dual-arm robot this is how a single
  /// arm is set on its own: name that arm's joints and the other arm is left untouched.
  /// @details Original flexiv_msgs/srv/SetJointImpedance_Request.joint_names; native type string. At most
  /// 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `joint_names`: [String] = []
  /// @brief Joint motion stiffness K_q, one entry per joint in joint_names, or one per covered joint when
  /// joint_names is empty. Valid range [0, k_q_nom]. Setting a joint to 0 makes it free-floating, which
  /// in this position-streaming driver means the joint will sag under gravity. [Nm/rad]
  /// @details Original flexiv_msgs/srv/SetJointImpedance_Request.k_q; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `k_q`: [Double] = []
  /// @brief Joint motion damping ratio Z_q, matching k_q entry for entry, or empty for the nominal 0.7.
  /// Valid range [0.3, 0.8]. Values away from nominal may lead to performance and stability issues.
  /// @details Original flexiv_msgs/srv/SetJointImpedance_Request.z_q; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `z_q`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_names`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 256)
    }
    guard self.`k_q`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`k_q`.count))
    for e in self.`k_q` {
      try w.float64(e)
    }
    guard self.`z_q`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`z_q`.count))
    for e in self.`z_q` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Flexiv_msgsSrvSetJointImpedance_Request
  {
    var v = Ros2Flexiv_msgsSrvSetJointImpedance_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_names`.append(try r.string(bound: 256))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`k_q` = []
    v.`k_q`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`k_q`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`z_q` = []
    v.`z_q`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`z_q`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/srv/SetJointImpedance_Response.
/// @details Canonical extent 34..9634 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsSrvSetJointImpedance_Response: Canonical {
  public static let maximumWireBytes = 9634
  public static let codecIdentity =
    "UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96"
  public static let nativeType = "flexiv_msgs/srv/SetJointImpedance_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/srv/SetJointImpedance_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
  /// @details Original flexiv_msgs/srv/SetJointImpedance_Response.message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `message`: String = ""
  /// @brief Every joint the interface covers and the values now held for it, unchanged from before on a
  /// rejection. Joints the request did not name keep the value they already had.
  /// @details Original flexiv_msgs/srv/SetJointImpedance_Response.setting; native type
  /// flexiv_msgs/msg/JointImpedance. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `setting`: Ros2Flexiv_msgsMsgJointImpedance = Ros2Flexiv_msgsMsgJointImpedance()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try self.`setting`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Flexiv_msgsSrvSetJointImpedance_Response
  {
    var v = Ros2Flexiv_msgsSrvSetJointImpedance_Response()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`setting` = try Ros2Flexiv_msgsMsgJointImpedance.read(from: &r)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/srv/SetJointInertiaScale_Request.
/// @details Canonical extent 8..8584 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsSrvSetJointInertiaScale_Request: Canonical {
  public static let maximumWireBytes = 8584
  public static let codecIdentity =
    "UWVMROS1_03aeec1174b3eda7777dc74548c9781915c532bef92af3f4383a801e3b8ff625"
  public static let nativeType = "flexiv_msgs/srv/SetJointInertiaScale_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Set inertia shaping scales of the robot's joint motion controller, which make the joints
  /// behave as if they were lighter. Requires the driver to run with rdk_control_mode:=joint_impedance.
  /// An invalid request is rejected as a whole and nothing changes. Joints to set, named exactly as
  /// published on ~/joint_inertia_scale. Leave empty to address every joint the interface covers, in that
  /// published order. On a dual-arm robot this is how a single arm is set on its own: name that arm's
  /// joints and the other arm is left untouched.
  /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Request.joint_names; native type string. At
  /// most 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `joint_names`: [String] = []
  /// @brief Inertia shaping scale sigma_q, one entry per joint in joint_names, or one per covered joint
  /// when joint_names is empty. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a
  /// smaller scale corresponds to lighter inertia.
  /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Request.inertia_scales; native type float64.
  /// At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `inertia_scales`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_names`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 256)
    }
    guard self.`inertia_scales`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`inertia_scales`.count))
    for e in self.`inertia_scales` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Flexiv_msgsSrvSetJointInertiaScale_Request
  {
    var v = Ros2Flexiv_msgsSrvSetJointInertiaScale_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_names`.append(try r.string(bound: 256))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`inertia_scales` = []
    v.`inertia_scales`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`inertia_scales`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/srv/SetJointInertiaScale_Response.
/// @details Canonical extent 26..9114 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsSrvSetJointInertiaScale_Response: Canonical {
  public static let maximumWireBytes = 9114
  public static let codecIdentity =
    "UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931"
  public static let nativeType = "flexiv_msgs/srv/SetJointInertiaScale_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
  /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `message`: String = ""
  /// @brief Every joint the interface covers and the values now held for it, unchanged from before on a
  /// rejection. Joints the request did not name keep the value they already had.
  /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.setting; native type
  /// flexiv_msgs/msg/JointInertiaScale. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `setting`: Ros2Flexiv_msgsMsgJointInertiaScale = Ros2Flexiv_msgsMsgJointInertiaScale()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try self.`setting`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Flexiv_msgsSrvSetJointInertiaScale_Response
  {
    var v = Ros2Flexiv_msgsSrvSetJointInertiaScale_Response()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`setting` = try Ros2Flexiv_msgsMsgJointInertiaScale.read(from: &r)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/srv/SetMaxContactTorque_Request.
/// @details Canonical extent 8..8584 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsSrvSetMaxContactTorque_Request: Canonical {
  public static let maximumWireBytes = 8584
  public static let codecIdentity =
    "UWVMROS1_cfbd80557b3c0529a3af3557b87908c05817d873401e3efb3c5ba8203af6b69e"
  public static let nativeType = "flexiv_msgs/srv/SetMaxContactTorque_Request"
  public static let nativeIdentity: String? = nil
  /// @brief Set maximum contact torques of the robot's joint motion controller. The controller regulates
  /// its output to keep contact torques with the environment under these values. Requires the driver to
  /// run with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing
  /// changes. Joints to set, named exactly as published on ~/max_contact_torque. Leave empty to address
  /// every joint the interface covers, in that published order. On a dual-arm robot this is how a single
  /// arm is set on its own: name that arm's joints and the other arm is left untouched.
  /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Request.joint_names; native type string. At
  /// most 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `joint_names`: [String] = []
  /// @brief Maximum contact torque, one entry per joint in joint_names, or one per covered joint when
  /// joint_names is empty. Valid range [0, tau_max]. Raising this increases the force the robot may exert
  /// on its surroundings. [Nm]
  /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Request.max_contact_torques; native type
  /// float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
  /// the complete value and acquires no ROS resource.
  public var `max_contact_torques`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_names`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 256)
    }
    guard self.`max_contact_torques`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`max_contact_torques`.count))
    for e in self.`max_contact_torques` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Flexiv_msgsSrvSetMaxContactTorque_Request
  {
    var v = Ros2Flexiv_msgsSrvSetMaxContactTorque_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_names`.append(try r.string(bound: 256))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`max_contact_torques` = []
    v.`max_contact_torques`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`max_contact_torques`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/srv/SetMaxContactTorque_Response.
/// @details Canonical extent 30..9374 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsSrvSetMaxContactTorque_Response: Canonical {
  public static let maximumWireBytes = 9374
  public static let codecIdentity =
    "UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c"
  public static let nativeType = "flexiv_msgs/srv/SetMaxContactTorque_Response"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
  /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `message`: String = ""
  /// @brief Every joint the interface covers and the values now held for it, unchanged from before on a
  /// rejection. Joints the request did not name keep the value they already had.
  /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.setting; native type
  /// flexiv_msgs/msg/MaxContactTorque. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `setting`: Ros2Flexiv_msgsMsgMaxContactTorque = Ros2Flexiv_msgsMsgMaxContactTorque()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
    try self.`setting`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Flexiv_msgsSrvSetMaxContactTorque_Response
  {
    var v = Ros2Flexiv_msgsSrvSetMaxContactTorque_Response()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    v.`setting` = try Ros2Flexiv_msgsMsgMaxContactTorque.read(from: &r)
    return v
  }
}
