// @brief Complete original flexiv ros1_noetic canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical values. No I/O or authority.
import RosWasm

/// @brief Own every original field of flexiv_msgs/JointPosVel.
/// @details Canonical extent 112..112 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Flexiv_msgsJointPosVel: Canonical {
  public static let maximumWireBytes = 112
  public static let codecIdentity =
    "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa"
  public static let nativeType = "flexiv_msgs/JointPosVel"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/JointPosVel.positions; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `positions`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/JointPosVel.velocities; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `velocities`: [Double] = Array(repeating: 0, count: 7)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`positions`.count == 7 else { throw RosError(22) }
    for e in self.`positions` {
      try w.float64(e)
    }
    guard self.`velocities`.count == 7 else { throw RosError(22) }
    for e in self.`velocities` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Flexiv_msgsJointPosVel {
    var v = Ros1Flexiv_msgsJointPosVel()
    let count0 = 7
    v.`positions` = []
    v.`positions`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`positions`.append(try r.float64())
    }
    let count1 = 7
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/Mode.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Flexiv_msgsMode: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422"
  public static let nativeType = "flexiv_msgs/Mode"
  public static let nativeIdentity: String? = nil
  public static let `MODE_UNKNOWN`: Int8 = -1
  public static let `MODE_IDLE`: Int8 = 0
  public static let `MODE_RT_JOINT_TORQUE`: Int8 = 1
  public static let `MODE_RT_JOINT_POSITION`: Int8 = 2
  public static let `MODE_NRT_JOINT_POSITION`: Int8 = 3
  public static let `MODE_NRT_PLAN_EXECUTION`: Int8 = 4
  public static let `MODE_NRT_PRIMITIVE_EXECUTION`: Int8 = 5
  public static let `MODE_RT_CARTESIAN_MOTION_FORCE_BASE`: Int8 = 6
  public static let `MODE_RT_CARTESIAN_MOTION_FORCE_TCP`: Int8 = 7
  public static let `MODE_NRT_CARTESIAN_MOTION_FORCE_BASE`: Int8 = 8
  public static let `MODE_NRT_CARTESIAN_MOTION_FORCE_TCP`: Int8 = 9
  /// @brief Retain the complete original int8 field.
  /// @details Original flexiv_msgs/Mode.mode; native type int8. Scalar value. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Flexiv_msgsMode {
    var v = Ros1Flexiv_msgsMode()
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/Point.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Geometry_msgsPoint: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
  public static let nativeType = "geometry_msgs/Point"
  public static let nativeIdentity: String? = nil
  /// @brief This contains the position of a point in free space
  /// @details Original geometry_msgs/Point.x; native type float64. Scalar value. Finite IEEE values; no
  /// implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `x`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Point.y; native type float64. Scalar value. Finite IEEE values; no
  /// implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `y`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Point.z; native type float64. Scalar value. Finite IEEE values; no
  /// implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `z`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPoint {
    var v = Ros1Geometry_msgsPoint()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
/// @brief Own every original field of geometry_msgs/Quaternion.
/// @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Geometry_msgsQuaternion: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
  public static let nativeType = "geometry_msgs/Quaternion"
  public static let nativeIdentity: String? = nil
  /// @brief This represents an orientation in free space in quaternion form.
  /// @details Original geometry_msgs/Quaternion.x; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `x`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Quaternion.y; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `y`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Quaternion.z; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `z`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Quaternion.w; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `w`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`w`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsQuaternion {
    var v = Ros1Geometry_msgsQuaternion()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`w` = try r.float64()
    return v
  }
}
/// @brief Own every original field of geometry_msgs/Pose.
/// @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Geometry_msgsPose: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
  public static let nativeType = "geometry_msgs/Pose"
  public static let nativeIdentity: String? = nil
  /// @brief A representation of pose in free space, composed of position and orientation.
  /// @details Original geometry_msgs/Pose.position; native type geometry_msgs/Point. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `position`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  /// @brief Retain the complete original geometry_msgs/Quaternion field.
  /// @details Original geometry_msgs/Pose.orientation; native type geometry_msgs/Quaternion. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `orientation`: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`position`.write(to: &w)
    try self.`orientation`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPose {
    var v = Ros1Geometry_msgsPose()
    v.`position` = try Ros1Geometry_msgsPoint.read(from: &r)
    v.`orientation` = try Ros1Geometry_msgsQuaternion.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/Vector3.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Geometry_msgsVector3: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
  public static let nativeType = "geometry_msgs/Vector3"
  public static let nativeIdentity: String? = nil
  /// @brief This represents a vector in free space. It is only meant to represent a direction. Therefore,
  /// it does not make sense to apply a translation to it (e.g., when applying a generic rigid
  /// transformation to a Vector3, tf2 will only apply the rotation). If you want your data to be
  /// translatable too, use the geometry_msgs/Point message instead.
  /// @details Original geometry_msgs/Vector3.x; native type float64. Scalar value. Finite IEEE values; no
  /// implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `x`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Vector3.y; native type float64. Scalar value. Finite IEEE values; no
  /// implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `y`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Vector3.z; native type float64. Scalar value. Finite IEEE values; no
  /// implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `z`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsVector3 {
    var v = Ros1Geometry_msgsVector3()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
/// @brief Own every original field of geometry_msgs/Accel.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Geometry_msgsAccel: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed"
  public static let nativeType = "geometry_msgs/Accel"
  public static let nativeIdentity: String? = nil
  /// @brief This expresses acceleration in free space broken into its linear and angular parts.
  /// @details Original geometry_msgs/Accel.linear; native type geometry_msgs/Vector3. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `linear`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  /// @brief Retain the complete original geometry_msgs/Vector3 field.
  /// @details Original geometry_msgs/Accel.angular; native type geometry_msgs/Vector3. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `angular`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`linear`.write(to: &w)
    try self.`angular`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsAccel {
    var v = Ros1Geometry_msgsAccel()
    v.`linear` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`angular` = try Ros1Geometry_msgsVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/Wrench.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Geometry_msgsWrench: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3"
  public static let nativeType = "geometry_msgs/Wrench"
  public static let nativeIdentity: String? = nil
  /// @brief This represents force in free space, separated into its linear and angular parts.
  /// @details Original geometry_msgs/Wrench.force; native type geometry_msgs/Vector3. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `force`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  /// @brief Retain the complete original geometry_msgs/Vector3 field.
  /// @details Original geometry_msgs/Wrench.torque; native type geometry_msgs/Vector3. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `torque`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`force`.write(to: &w)
    try self.`torque`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsWrench {
    var v = Ros1Geometry_msgsWrench()
    v.`force` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`torque` = try Ros1Geometry_msgsVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/RobotStates.
/// @details Canonical extent 864..864 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros1Flexiv_msgsRobotStates: Canonical {
  public static let maximumWireBytes = 864
  public static let codecIdentity =
    "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8"
  public static let nativeType = "flexiv_msgs/RobotStates"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.q; native type float64. Exactly 7 elements. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `q`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.theta; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `theta`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.dq; native type float64. Exactly 7 elements. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `dq`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.dtheta; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `dtheta`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.tau; native type float64. Exactly 7 elements. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `tau`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.tau_des; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `tau_des`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.tau_dot; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `tau_dot`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.tau_ext; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `tau_ext`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original geometry_msgs/Pose field.
  /// @details Original flexiv_msgs/RobotStates.tcp_pose; native type geometry_msgs/Pose. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `tcp_pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Retain the complete original geometry_msgs/Pose field.
  /// @details Original flexiv_msgs/RobotStates.tcp_pose_des; native type geometry_msgs/Pose. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `tcp_pose_des`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Retain the complete original geometry_msgs/Accel field.
  /// @details Original flexiv_msgs/RobotStates.tcp_vel; native type geometry_msgs/Accel. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `tcp_vel`: Ros1Geometry_msgsAccel = Ros1Geometry_msgsAccel()
  /// @brief Retain the complete original geometry_msgs/Pose field.
  /// @details Original flexiv_msgs/RobotStates.cam_pose; native type geometry_msgs/Pose. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `cam_pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Retain the complete original geometry_msgs/Pose field.
  /// @details Original flexiv_msgs/RobotStates.flange_pose; native type geometry_msgs/Pose. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `flange_pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  /// @brief Retain the complete original geometry_msgs/Wrench field.
  /// @details Original flexiv_msgs/RobotStates.ft_sensor_raw; native type geometry_msgs/Wrench. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `ft_sensor_raw`: Ros1Geometry_msgsWrench = Ros1Geometry_msgsWrench()
  /// @brief Retain the complete original geometry_msgs/Wrench field.
  /// @details Original flexiv_msgs/RobotStates.ext_wrench_tcp_frame; native type geometry_msgs/Wrench.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `ext_wrench_tcp_frame`: Ros1Geometry_msgsWrench = Ros1Geometry_msgsWrench()
  /// @brief Retain the complete original geometry_msgs/Wrench field.
  /// @details Original flexiv_msgs/RobotStates.ext_wrench_base_frame; native type geometry_msgs/Wrench.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `ext_wrench_base_frame`: Ros1Geometry_msgsWrench = Ros1Geometry_msgsWrench()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`q`.count == 7 else { throw RosError(22) }
    for e in self.`q` {
      try w.float64(e)
    }
    guard self.`theta`.count == 7 else { throw RosError(22) }
    for e in self.`theta` {
      try w.float64(e)
    }
    guard self.`dq`.count == 7 else { throw RosError(22) }
    for e in self.`dq` {
      try w.float64(e)
    }
    guard self.`dtheta`.count == 7 else { throw RosError(22) }
    for e in self.`dtheta` {
      try w.float64(e)
    }
    guard self.`tau`.count == 7 else { throw RosError(22) }
    for e in self.`tau` {
      try w.float64(e)
    }
    guard self.`tau_des`.count == 7 else { throw RosError(22) }
    for e in self.`tau_des` {
      try w.float64(e)
    }
    guard self.`tau_dot`.count == 7 else { throw RosError(22) }
    for e in self.`tau_dot` {
      try w.float64(e)
    }
    guard self.`tau_ext`.count == 7 else { throw RosError(22) }
    for e in self.`tau_ext` {
      try w.float64(e)
    }
    try self.`tcp_pose`.write(to: &w)
    try self.`tcp_pose_des`.write(to: &w)
    try self.`tcp_vel`.write(to: &w)
    try self.`cam_pose`.write(to: &w)
    try self.`flange_pose`.write(to: &w)
    try self.`ft_sensor_raw`.write(to: &w)
    try self.`ext_wrench_tcp_frame`.write(to: &w)
    try self.`ext_wrench_base_frame`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Flexiv_msgsRobotStates {
    var v = Ros1Flexiv_msgsRobotStates()
    let count0 = 7
    v.`q` = []
    v.`q`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`q`.append(try r.float64())
    }
    let count1 = 7
    v.`theta` = []
    v.`theta`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`theta`.append(try r.float64())
    }
    let count2 = 7
    v.`dq` = []
    v.`dq`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`dq`.append(try r.float64())
    }
    let count3 = 7
    v.`dtheta` = []
    v.`dtheta`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`dtheta`.append(try r.float64())
    }
    let count4 = 7
    v.`tau` = []
    v.`tau`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`tau`.append(try r.float64())
    }
    let count5 = 7
    v.`tau_des` = []
    v.`tau_des`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`tau_des`.append(try r.float64())
    }
    let count6 = 7
    v.`tau_dot` = []
    v.`tau_dot`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`tau_dot`.append(try r.float64())
    }
    let count7 = 7
    v.`tau_ext` = []
    v.`tau_ext`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`tau_ext`.append(try r.float64())
    }
    v.`tcp_pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`tcp_pose_des` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`tcp_vel` = try Ros1Geometry_msgsAccel.read(from: &r)
    v.`cam_pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`flange_pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`ft_sensor_raw` = try Ros1Geometry_msgsWrench.read(from: &r)
    v.`ext_wrench_tcp_frame` = try Ros1Geometry_msgsWrench.read(from: &r)
    v.`ext_wrench_base_frame` = try Ros1Geometry_msgsWrench.read(from: &r)
    return v
  }
}
