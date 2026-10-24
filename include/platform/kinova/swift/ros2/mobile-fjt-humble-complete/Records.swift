// @brief Complete original kinova ros2_humble canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical values. No I/O or authority.
import RosWasm

/// @brief Own every original field of builtin_interfaces/msg/Duration.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Builtin_interfacesMsgDuration: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
  public static let nativeType = "builtin_interfaces/msg/Duration"
  public static let nativeIdentity: String? = nil
  /// @brief Duration defines a period between two time points. Messages of this datatype are of ROS Time
  /// following this design: https://design.ros2.org/articles/clock_and_time.html The seconds component,
  /// valid over all int32 values.
  /// @details Original builtin_interfaces/msg/Duration.sec; native type int32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `sec`: Int32 = 0
  /// @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
  /// e.g. The duration -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The duration 1.7 seconds is
  /// represented as {sec: 1, nanosec: 7e8}
  /// @details Original builtin_interfaces/msg/Duration.nanosec; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `nanosec`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    if self.`nanosec` >= 1_000_000_000 { throw RosError(22) }
    try w.integer(self.`sec`)
    try w.integer(self.`nanosec`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Builtin_interfacesMsgDuration {
    var v = Ros2Builtin_interfacesMsgDuration()
    v.`sec` = try r.integer(Int32.self)
    v.`nanosec` = try r.integer(UInt32.self)
    if v.`nanosec` >= 1_000_000_000 { throw RosError(22) }
    return v
  }
}
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
/// @brief Own every original field of trajectory_msgs/msg/JointTrajectoryPoint.
/// @details Canonical extent 24..280 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Trajectory_msgsMsgJointTrajectoryPoint: Canonical {
  public static let maximumWireBytes = 280
  public static let codecIdentity =
    "UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1"
  public static let nativeType = "trajectory_msgs/msg/JointTrajectoryPoint"
  public static let nativeIdentity: String? = nil
  /// @brief Each trajectory point specifies either positions[, velocities[, accelerations]] or
  /// positions[, effort] for the trajectory to be executed. All specified values are in the same order as
  /// the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their
  /// "0" position. The units depend on the specific joint type: radians for revolute or continuous
  /// joints, and meters for prismatic joints.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.positions; native type float64. At most 8
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `positions`: [Double] = []
  /// @brief The rate of change in position of each joint. Units are joint type dependent. Radians/second
  /// for revolute or continuous joints, and meters/second for prismatic joints.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.velocities; native type float64. At most
  /// 8 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `velocities`: [Double] = []
  /// @brief Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2
  /// for revolute or continuous joints, and meters/second^2 for prismatic joints.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations; native type float64. At
  /// most 8 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `accelerations`: [Double] = []
  /// @brief The torque or the force to be applied at each joint. For revolute/continuous joints effort
  /// denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.effort; native type float64. At most 8
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `effort`: [Double] = []
  /// @brief Desired time from the trajectory start to arrive at this trajectory point.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start; native type
  /// builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `time_from_start`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`positions`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`positions`.count))
    for e in self.`positions` {
      try w.float64(e)
    }
    guard self.`velocities`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try w.float64(e)
    }
    guard self.`accelerations`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`accelerations`.count))
    for e in self.`accelerations` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`effort`.count))
    for e in self.`effort` {
      try w.float64(e)
    }
    try self.`time_from_start`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Trajectory_msgsMsgJointTrajectoryPoint
  {
    var v = Ros2Trajectory_msgsMsgJointTrajectoryPoint()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 8 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`positions` = []
    v.`positions`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`positions`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`accelerations` = []
    v.`accelerations`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`accelerations`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
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
/// @brief Own every original field of trajectory_msgs/msg/JointTrajectory.
/// @details Canonical extent 20..1484 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Trajectory_msgsMsgJointTrajectory: Canonical {
  public static let maximumWireBytes = 1484
  public static let codecIdentity =
    "UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77"
  public static let nativeType = "trajectory_msgs/msg/JointTrajectory"
  public static let nativeIdentity: String? = nil
  /// @brief The header is used to specify the coordinate frame and the reference time for the trajectory
  /// durations
  /// @details Original trajectory_msgs/msg/JointTrajectory.header; native type std_msgs/msg/Header.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief The names of the active joints in each trajectory point. These names are ordered and must
  /// correspond to the values in each trajectory point.
  /// @details Original trajectory_msgs/msg/JointTrajectory.joint_names; native type string. At most 8
  /// elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `joint_names`: [String] = []
  /// @brief Array of trajectory points, which describe the positions, velocities, accelerations and/or
  /// efforts of the joints at each time point.
  /// @details Original trajectory_msgs/msg/JointTrajectory.points; native type
  /// trajectory_msgs/msg/JointTrajectoryPoint. At most 1 elements. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `points`: [Ros2Trajectory_msgsMsgJointTrajectoryPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 128)
    }
    guard self.`points`.count <= 1 else { throw RosError(22) }
    try w.integer(UInt32(self.`points`.count))
    for e in self.`points` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Trajectory_msgsMsgJointTrajectory
  {
    var v = Ros2Trajectory_msgsMsgJointTrajectory()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 1 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`points` = []
    v.`points`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`points`.append(try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r))
    }
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
/// @brief Own every original field of geometry_msgs/msg/Transform.
/// @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgTransform: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
  public static let nativeType = "geometry_msgs/msg/Transform"
  public static let nativeIdentity: String? = nil
  /// @brief This represents the transform between two coordinate frames in free space.
  /// @details Original geometry_msgs/msg/Transform.translation; native type geometry_msgs/msg/Vector3.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `translation`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Retain the complete original geometry_msgs/msg/Quaternion field.
  /// @details Original geometry_msgs/msg/Transform.rotation; native type geometry_msgs/msg/Quaternion.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `rotation`: Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`translation`.write(to: &w)
    try self.`rotation`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgTransform {
    var v = Ros2Geometry_msgsMsgTransform()
    v.`translation` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`rotation` = try Ros2Geometry_msgsMsgQuaternion.read(from: &r)
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
/// @brief Own every original field of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
/// @details Canonical extent 20..844 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint: Canonical {
  public static let maximumWireBytes = 844
  public static let codecIdentity =
    "UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf"
  public static let nativeType = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint"
  public static let nativeIdentity: String? = nil
  /// @brief Each multi-dof joint can specify a transform (up to 6 DOF).
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms; native type
  /// geometry_msgs/msg/Transform. At most 1 elements. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `transforms`: [Ros2Geometry_msgsMsgTransform] = []
  /// @brief There can be a velocity specified for the origin of the joint.
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities; native type
  /// geometry_msgs/msg/Twist. At most 8 elements. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `velocities`: [Ros2Geometry_msgsMsgTwist] = []
  /// @brief There can be an acceleration specified for the origin of the joint.
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations; native type
  /// geometry_msgs/msg/Twist. At most 8 elements. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `accelerations`: [Ros2Geometry_msgsMsgTwist] = []
  /// @brief Desired time from the trajectory start to arrive at this trajectory point.
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start; native type
  /// builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `time_from_start`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`transforms`.count <= 1 else { throw RosError(22) }
    try w.integer(UInt32(self.`transforms`.count))
    for e in self.`transforms` {
      try e.write(to: &w)
    }
    guard self.`velocities`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try e.write(to: &w)
    }
    guard self.`accelerations`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`accelerations`.count))
    for e in self.`accelerations` {
      try e.write(to: &w)
    }
    try self.`time_from_start`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  {
    var v = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 1 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`transforms` = []
    v.`transforms`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`transforms`.append(try Ros2Geometry_msgsMsgTransform.read(from: &r))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try Ros2Geometry_msgsMsgTwist.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`accelerations` = []
    v.`accelerations`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`accelerations`.append(try Ros2Geometry_msgsMsgTwist.read(from: &r))
    }
    v.`time_from_start` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of trajectory_msgs/msg/MultiDOFJointTrajectory.
/// @details Canonical extent 20..2048 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectory: Canonical {
  public static let maximumWireBytes = 2048
  public static let codecIdentity =
    "UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5"
  public static let nativeType = "trajectory_msgs/msg/MultiDOFJointTrajectory"
  public static let nativeIdentity: String? = nil
  /// @brief The header is used to specify the coordinate frame and the reference time for the trajectory
  /// durations
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.header; native type
  /// std_msgs/msg/Header. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief A representation of a multi-dof joint trajectory (each point is a transformation) Each point
  /// along the trajectory will include an array of positions/velocities/accelerations that has the same
  /// length as the array of joint names, and has the same order of joints as the joint names array.
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names; native type string. At
  /// most 8 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value
  /// and acquires no ROS resource.
  public var `joint_names`: [String] = []
  /// @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
  /// @details Original trajectory_msgs/msg/MultiDOFJointTrajectory.points; native type
  /// trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. At most 1 elements. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `points`: [Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 128)
    }
    guard self.`points`.count <= 1 else { throw RosError(22) }
    try w.integer(UInt32(self.`points`.count))
    for e in self.`points` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
  {
    var v = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 1 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`points` = []
    v.`points`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`points`.append(try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of control_msgs/msg/JointTolerance.
/// @details Canonical extent 28..156 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Control_msgsMsgJointTolerance: Canonical {
  public static let maximumWireBytes = 156
  public static let codecIdentity =
    "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a"
  public static let nativeType = "control_msgs/msg/JointTolerance"
  public static let nativeIdentity: String? = nil
  /// @brief The tolerances specify the amount the position, velocity, and accelerations can vary from the
  /// setpoints.  For example, in the case of trajectory control, when the actual position varies beyond
  /// (desired position + position tolerance), the trajectory goal may abort.  There are two special
  /// values for tolerances: * 0 - The tolerance is unspecified and will remain at whatever the default is
  /// * -1 - The tolerance is "erased".  If there was a default, the joint will be allowed to move without
  /// restriction.
  /// @details Original control_msgs/msg/JointTolerance.name; native type string. Scalar value. UTF-8
  /// capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `name`: String = ""
  /// @brief in radians or meters (for a revolute or prismatic joint, respectively)
  /// @details Original control_msgs/msg/JointTolerance.position; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `position`: Double = 0
  /// @brief in rad/sec or m/sec
  /// @details Original control_msgs/msg/JointTolerance.velocity; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `velocity`: Double = 0
  /// @brief in rad/sec^2 or m/sec^2
  /// @details Original control_msgs/msg/JointTolerance.acceleration; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `acceleration`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.float64(self.`position`)
    try w.float64(self.`velocity`)
    try w.float64(self.`acceleration`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Control_msgsMsgJointTolerance {
    var v = Ros2Control_msgsMsgJointTolerance()
    v.`name` = try r.string(bound: 128)
    v.`position` = try r.float64()
    v.`velocity` = try r.float64()
    v.`acceleration` = try r.float64()
    return v
  }
}
/// @brief Own every original field of control_msgs/msg/JointComponentTolerance.
/// @details Canonical extent 30..158 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Control_msgsMsgJointComponentTolerance: Canonical {
  public static let maximumWireBytes = 158
  public static let codecIdentity =
    "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb"
  public static let nativeType = "control_msgs/msg/JointComponentTolerance"
  public static let nativeIdentity: String? = nil
  public static let `X_AXIS`: UInt16 = 1
  public static let `Y_AXIS`: UInt16 = 2
  public static let `Z_AXIS`: UInt16 = 3
  public static let `TRANSLATION`: UInt16 = 4
  public static let `ROTATION`: UInt16 = 5
  /// @brief Retain the complete original string field.
  /// @details Original control_msgs/msg/JointComponentTolerance.joint_name; native type string. Scalar
  /// value. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `joint_name`: String = ""
  /// @brief Retain the complete original uint16 field.
  /// @details Original control_msgs/msg/JointComponentTolerance.component; native type uint16. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `component`: UInt16 = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original control_msgs/msg/JointComponentTolerance.position; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `position`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original control_msgs/msg/JointComponentTolerance.velocity; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `velocity`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original control_msgs/msg/JointComponentTolerance.acceleration; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `acceleration`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`joint_name`, bound: 128)
    try w.integer(self.`component`)
    try w.float64(self.`position`)
    try w.float64(self.`velocity`)
    try w.float64(self.`acceleration`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Control_msgsMsgJointComponentTolerance
  {
    var v = Ros2Control_msgsMsgJointComponentTolerance()
    v.`joint_name` = try r.string(bound: 128)
    v.`component` = try r.integer(UInt16.self)
    v.`position` = try r.float64()
    v.`velocity` = try r.float64()
    v.`acceleration` = try r.float64()
    return v
  }
}
/// @brief Own every original field of control_msgs/action/FollowJointTrajectory_Goal.
/// @details Canonical extent 64..8580 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Control_msgsActionFollowJointTrajectory_Goal: Canonical {
  public static let maximumWireBytes = 8580
  public static let codecIdentity =
    "UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018"
  public static let nativeType = "control_msgs/action/FollowJointTrajectory_Goal"
  public static let nativeIdentity: String? = nil
  /// @brief The trajectory for all revolute, continuous or prismatic joints
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.trajectory; native type
  /// trajectory_msgs/msg/JointTrajectory. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `trajectory`: Ros2Trajectory_msgsMsgJointTrajectory =
    Ros2Trajectory_msgsMsgJointTrajectory()
  /// @brief The trajectory for all planar or floating joints (i.e. individual joints with more than one
  /// DOF)
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory; native type
  /// trajectory_msgs/msg/MultiDOFJointTrajectory. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `multi_dof_trajectory`: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
  /// @brief Tolerances for the trajectory.  If the measured joint values fall outside the tolerances the
  /// trajectory goal is aborted.  Any tolerances that are not specified (by being omitted or set to 0)
  /// are set to the defaults for the action server (often taken from the parameter server). Tolerances
  /// applied to the joints as the trajectory is executed.  If violated, the goal aborts with error_code
  /// set to PATH_TOLERANCE_VIOLATED.
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance; native type
  /// control_msgs/msg/JointTolerance. At most 8 elements. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `path_tolerance`: [Ros2Control_msgsMsgJointTolerance] = []
  /// @brief Retain the complete original control_msgs/msg/JointComponentTolerance field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance; native
  /// type control_msgs/msg/JointComponentTolerance. At most 8 elements. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `component_path_tolerance`: [Ros2Control_msgsMsgJointComponentTolerance] = []
  /// @brief To report success, the joints must be within goal_tolerance of the final trajectory value.
  /// The goal must be achieved by time the trajectory ends plus goal_time_tolerance.
  /// (goal_time_tolerance allows some leeway in time, so that the trajectory goal can still succeed even
  /// if the joints reach the goal some time after the precise end time of the trajectory).  If the joints
  /// are not within goal_tolerance after "trajectory finish time" + goal_time_tolerance, the goal aborts
  /// with error_code set to GOAL_TOLERANCE_VIOLATED
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance; native type
  /// control_msgs/msg/JointTolerance. At most 8 elements. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `goal_tolerance`: [Ros2Control_msgsMsgJointTolerance] = []
  /// @brief Retain the complete original control_msgs/msg/JointComponentTolerance field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance; native
  /// type control_msgs/msg/JointComponentTolerance. At most 8 elements. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `component_goal_tolerance`: [Ros2Control_msgsMsgJointComponentTolerance] = []
  /// @brief Retain the complete original builtin_interfaces/msg/Duration field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance; native type
  /// builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `goal_time_tolerance`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`trajectory`.write(to: &w)
    try self.`multi_dof_trajectory`.write(to: &w)
    guard self.`path_tolerance`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`path_tolerance`.count))
    for e in self.`path_tolerance` {
      try e.write(to: &w)
    }
    guard self.`component_path_tolerance`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`component_path_tolerance`.count))
    for e in self.`component_path_tolerance` {
      try e.write(to: &w)
    }
    guard self.`goal_tolerance`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`goal_tolerance`.count))
    for e in self.`goal_tolerance` {
      try e.write(to: &w)
    }
    guard self.`component_goal_tolerance`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`component_goal_tolerance`.count))
    for e in self.`component_goal_tolerance` {
      try e.write(to: &w)
    }
    try self.`goal_time_tolerance`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Control_msgsActionFollowJointTrajectory_Goal
  {
    var v = Ros2Control_msgsActionFollowJointTrajectory_Goal()
    v.`trajectory` = try Ros2Trajectory_msgsMsgJointTrajectory.read(from: &r)
    v.`multi_dof_trajectory` = try Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`path_tolerance` = []
    v.`path_tolerance`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`path_tolerance`.append(try Ros2Control_msgsMsgJointTolerance.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`component_path_tolerance` = []
    v.`component_path_tolerance`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`component_path_tolerance`.append(
        try Ros2Control_msgsMsgJointComponentTolerance.read(from: &r))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 8 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`goal_tolerance` = []
    v.`goal_tolerance`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`goal_tolerance`.append(try Ros2Control_msgsMsgJointTolerance.read(from: &r))
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 8 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`component_goal_tolerance` = []
    v.`component_goal_tolerance`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`component_goal_tolerance`.append(
        try Ros2Control_msgsMsgJointComponentTolerance.read(from: &r))
    }
    v.`goal_time_tolerance` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    return v
  }
}
/// @brief Own every original field of control_msgs/action/FollowJointTrajectory_Result.
/// @details Canonical extent 8..264 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Control_msgsActionFollowJointTrajectory_Result: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649"
  public static let nativeType = "control_msgs/action/FollowJointTrajectory_Result"
  public static let nativeIdentity: String? = nil
  public static let `SUCCESSFUL`: Int32 = 0
  public static let `INVALID_GOAL`: Int32 = -1
  public static let `INVALID_JOINTS`: Int32 = -2
  public static let `OLD_HEADER_TIMESTAMP`: Int32 = -3
  public static let `PATH_TOLERANCE_VIOLATED`: Int32 = -4
  public static let `GOAL_TOLERANCE_VIOLATED`: Int32 = -5
  /// @brief Retain the complete original int32 field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Result.error_code; native type int32.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `error_code`: Int32 = 0
  /// @brief Human readable description of the error code. Contains complementary information that is
  /// especially useful when execution fails, for instance: - INVALID_GOAL: The reason for the invalid
  /// goal (e.g., the requested trajectory is in the past). - INVALID_JOINTS: The mismatch between the
  /// expected controller joints and those provided in the goal. - PATH_TOLERANCE_VIOLATED and
  /// GOAL_TOLERANCE_VIOLATED: Which joint violated which tolerance, and by how much.
  /// @details Original control_msgs/action/FollowJointTrajectory_Result.error_string; native type string.
  /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `error_string`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`error_code`)
    try w.string(self.`error_string`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Control_msgsActionFollowJointTrajectory_Result
  {
    var v = Ros2Control_msgsActionFollowJointTrajectory_Result()
    v.`error_code` = try r.integer(Int32.self)
    v.`error_string` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of control_msgs/action/FollowJointTrajectory_Feedback.
/// @details Canonical extent 152..4708 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Control_msgsActionFollowJointTrajectory_Feedback: Canonical {
  public static let maximumWireBytes = 4708
  public static let codecIdentity =
    "UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529"
  public static let nativeType = "control_msgs/action/FollowJointTrajectory_Feedback"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original std_msgs/msg/Header field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.header; native type
  /// std_msgs/msg/Header. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original string field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names; native type
  /// string. At most 8 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `joint_names`: [String] = []
  /// @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.desired; native type
  /// trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `desired`: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.actual; native type
  /// trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `actual`: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Retain the complete original trajectory_msgs/msg/JointTrajectoryPoint field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.error; native type
  /// trajectory_msgs/msg/JointTrajectoryPoint. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `error`: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Retain the complete original string field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names; native
  /// type string. At most 1 elements. UTF-8 capacity 128 bytes; no embedded NUL. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `multi_dof_joint_names`: [String] = []
  /// @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired; native type
  /// trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `multi_dof_desired`: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  /// @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual; native type
  /// trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `multi_dof_actual`: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  /// @brief Retain the complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
  /// @details Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error; native type
  /// trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Scalar value. Storage belongs to the complete
  /// value and acquires no ROS resource.
  public var `multi_dof_error`: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 128)
    }
    try self.`desired`.write(to: &w)
    try self.`actual`.write(to: &w)
    try self.`error`.write(to: &w)
    guard self.`multi_dof_joint_names`.count <= 1 else { throw RosError(22) }
    try w.integer(UInt32(self.`multi_dof_joint_names`.count))
    for e in self.`multi_dof_joint_names` {
      try w.string(e, bound: 128)
    }
    try self.`multi_dof_desired`.write(to: &w)
    try self.`multi_dof_actual`.write(to: &w)
    try self.`multi_dof_error`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Control_msgsActionFollowJointTrajectory_Feedback
  {
    var v = Ros2Control_msgsActionFollowJointTrajectory_Feedback()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 128))
    }
    v.`desired` = try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r)
    v.`actual` = try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r)
    v.`error` = try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r)
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 1 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`multi_dof_joint_names` = []
    v.`multi_dof_joint_names`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`multi_dof_joint_names`.append(try r.string(bound: 128))
    }
    v.`multi_dof_desired` = try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.read(from: &r)
    v.`multi_dof_actual` = try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.read(from: &r)
    v.`multi_dof_error` = try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.read(from: &r)
    return v
  }
}
/// @brief Own every original field of sensor_msgs/msg/JointState.
/// @details Canonical extent 28..1404 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Sensor_msgsMsgJointState: Canonical {
  public static let maximumWireBytes = 1404
  public static let codecIdentity =
    "UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11"
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
  /// @details Original sensor_msgs/msg/JointState.name; native type string. At most 8 elements. UTF-8
  /// capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `name`: [String] = []
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.position; native type float64. At most 8 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `position`: [Double] = []
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 8 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `velocity`: [Double] = []
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 8 elements. Finite
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
    guard self.`name`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`name`.count))
    for e in self.`name` {
      try w.string(e, bound: 128)
    }
    guard self.`position`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`position`.count))
    for e in self.`position` {
      try w.float64(e)
    }
    guard self.`velocity`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity`.count))
    for e in self.`velocity` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`effort`.count))
    for e in self.`effort` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Sensor_msgsMsgJointState {
    var v = Ros2Sensor_msgsMsgJointState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`name` = []
    v.`name`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`name`.append(try r.string(bound: 128))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`position` = []
    v.`position`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`position`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`velocity`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 8 else { throw RosError(22) }
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
