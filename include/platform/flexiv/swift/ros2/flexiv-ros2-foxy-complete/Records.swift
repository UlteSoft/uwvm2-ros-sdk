// @brief Complete original flexiv ros2_foxy canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical values. No I/O or authority.
import RosWasm

/// @brief Own every original field of flexiv_msgs/msg/JointPosVel.
/// @details Canonical extent 112..112 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgJointPosVel: Canonical {
  public static let maximumWireBytes = 112
  public static let codecIdentity =
    "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8"
  public static let nativeType = "flexiv_msgs/msg/JointPosVel"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `positions`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. Exactly 7 elements.
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
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgJointPosVel {
    var v = Ros2Flexiv_msgsMsgJointPosVel()
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
/// @brief Own every original field of flexiv_msgs/msg/Mode.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgMode: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f"
  public static let nativeType = "flexiv_msgs/msg/Mode"
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
/// @brief Own every original field of flexiv_msgs/msg/RobotStates.
/// @details Canonical extent 864..864 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgRobotStates: Canonical {
  public static let maximumWireBytes = 864
  public static let codecIdentity =
    "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b"
  public static let nativeType = "flexiv_msgs/msg/RobotStates"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.q; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `q`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `theta`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `dq`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `dtheta`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `tau`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.tau_des; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `tau_des`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `tau_dot`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `tau_ext`: [Double] = Array(repeating: 0, count: 7)
  /// @brief Retain the complete original geometry_msgs/msg/Pose field.
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/Pose. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `tcp_pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  /// @brief Retain the complete original geometry_msgs/msg/Pose field.
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_pose_des; native type geometry_msgs/msg/Pose.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `tcp_pose_des`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  /// @brief Retain the complete original geometry_msgs/msg/Accel field.
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_vel; native type geometry_msgs/msg/Accel. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `tcp_vel`: Ros2Geometry_msgsMsgAccel = Ros2Geometry_msgsMsgAccel()
  /// @brief Retain the complete original geometry_msgs/msg/Pose field.
  /// @details Original flexiv_msgs/msg/RobotStates.cam_pose; native type geometry_msgs/msg/Pose. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `cam_pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  /// @brief Retain the complete original geometry_msgs/msg/Pose field.
  /// @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type geometry_msgs/msg/Pose.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `flange_pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
  /// @details Original flexiv_msgs/msg/RobotStates.ft_sensor_raw; native type geometry_msgs/msg/Wrench.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `ft_sensor_raw`: Ros2Geometry_msgsMsgWrench = Ros2Geometry_msgsMsgWrench()
  /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
  /// @details Original flexiv_msgs/msg/RobotStates.ext_wrench_tcp_frame; native type
  /// geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `ext_wrench_tcp_frame`: Ros2Geometry_msgsMsgWrench = Ros2Geometry_msgsMsgWrench()
  /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
  /// @details Original flexiv_msgs/msg/RobotStates.ext_wrench_base_frame; native type
  /// geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `ext_wrench_base_frame`: Ros2Geometry_msgsMsgWrench = Ros2Geometry_msgsMsgWrench()
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
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgRobotStates {
    var v = Ros2Flexiv_msgsMsgRobotStates()
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
    v.`tcp_pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`tcp_pose_des` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`tcp_vel` = try Ros2Geometry_msgsMsgAccel.read(from: &r)
    v.`cam_pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`flange_pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`ft_sensor_raw` = try Ros2Geometry_msgsMsgWrench.read(from: &r)
    v.`ext_wrench_tcp_frame` = try Ros2Geometry_msgsMsgWrench.read(from: &r)
    v.`ext_wrench_base_frame` = try Ros2Geometry_msgsMsgWrench.read(from: &r)
    return v
  }
}
