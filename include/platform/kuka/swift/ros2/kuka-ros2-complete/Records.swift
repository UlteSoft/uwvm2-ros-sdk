/// @file Records.swift
/// @brief Complete kuka values and adapters for the selected original interface catalog.
/// @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
/// defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
/// roles require the separately admitted SDK owner.
/// @see share/platform/kuka/domains/kuka-ros2-complete.ir.json
/// @see document/platform/kuka/en_US/README.md

// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros2Builtin_interfacesMsgDuration: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
  public static let nativeType = "builtin_interfaces/msg/Duration"
  public static let nativeIdentity: String? = nil
  public var `sec`: Int32 = 0
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
public struct Ros2Builtin_interfacesMsgTime: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
  public static let nativeType = "builtin_interfaces/msg/Time"
  public static let nativeIdentity: String? = nil
  public var `sec`: Int32 = 0
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
public struct Ros2Std_msgsMsgHeader: Canonical {
  public static let maximumWireBytes = 76
  public static let codecIdentity =
    "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
  public static let nativeType = "std_msgs/msg/Header"
  public static let nativeIdentity: String? = nil
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 64)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgHeader {
    var v = Ros2Std_msgsMsgHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    v.`frame_id` = try r.string(bound: 64)
    return v
  }
}
public struct Ros2Trajectory_msgsMsgJointTrajectoryPoint: Canonical {
  public static let maximumWireBytes = 408
  public static let codecIdentity =
    "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5"
  public static let nativeType = "trajectory_msgs/msg/JointTrajectoryPoint"
  public static let nativeIdentity: String? = nil
  public var `positions`: [Double] = []
  public var `velocities`: [Double] = []
  public var `accelerations`: [Double] = []
  public var `effort`: [Double] = []
  public var `time_from_start`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`positions`.count <= 12 else { throw RosError(22) }
    try w.integer(UInt32(self.`positions`.count))
    for e in self.`positions` {
      try w.float64(e)
    }
    guard self.`velocities`.count <= 12 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try w.float64(e)
    }
    guard self.`accelerations`.count <= 12 else { throw RosError(22) }
    try w.integer(UInt32(self.`accelerations`.count))
    for e in self.`accelerations` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 12 else { throw RosError(22) }
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
    guard rawcount0 <= 12 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`positions` = []
    v.`positions`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`positions`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 12 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 12 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`accelerations` = []
    v.`accelerations`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`accelerations`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 12 else { throw RosError(22) }
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
public struct Ros2Trajectory_msgsMsgJointTrajectory: Canonical {
  public static let maximumWireBytes = 4164
  public static let codecIdentity =
    "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0"
  public static let nativeType = "trajectory_msgs/msg/JointTrajectory"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `joint_names`: [String] = []
  public var `points`: [Ros2Trajectory_msgsMsgJointTrajectoryPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 12 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 64)
    }
    guard self.`points`.count <= 8 else { throw RosError(22) }
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
    guard rawcount1 <= 12 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 64))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`points` = []
    v.`points`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`points`.append(try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros2Geometry_msgsMsgVector3: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
  public static let nativeType = "geometry_msgs/msg/Vector3"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
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
public struct Ros2Geometry_msgsMsgQuaternion: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
  public static let nativeType = "geometry_msgs/msg/Quaternion"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = Double(bitPattern: 0x0)
  public var `y`: Double = Double(bitPattern: 0x0)
  public var `z`: Double = Double(bitPattern: 0x0)
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
public struct Ros2Geometry_msgsMsgTransform: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
  public static let nativeType = "geometry_msgs/msg/Transform"
  public static let nativeIdentity: String? = nil
  public var `translation`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
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
public struct Ros2Geometry_msgsMsgTwist: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
  public static let nativeType = "geometry_msgs/msg/Twist"
  public static let nativeIdentity: String? = nil
  public var `linear`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
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
public struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint: Canonical {
  public static let maximumWireBytes = 324
  public static let codecIdentity =
    "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242"
  public static let nativeType = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint"
  public static let nativeIdentity: String? = nil
  public var `transforms`: [Ros2Geometry_msgsMsgTransform] = []
  public var `velocities`: [Ros2Geometry_msgsMsgTwist] = []
  public var `accelerations`: [Ros2Geometry_msgsMsgTwist] = []
  public var `time_from_start`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`transforms`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`transforms`.count))
    for e in self.`transforms` {
      try e.write(to: &w)
    }
    guard self.`velocities`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try e.write(to: &w)
    }
    guard self.`accelerations`.count <= 2 else { throw RosError(22) }
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
    guard rawcount0 <= 2 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`transforms` = []
    v.`transforms`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`transforms`.append(try Ros2Geometry_msgsMsgTransform.read(from: &r))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 2 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try Ros2Geometry_msgsMsgTwist.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 2 else { throw RosError(22) }
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
public struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectory: Canonical {
  public static let maximumWireBytes = 1516
  public static let codecIdentity =
    "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401"
  public static let nativeType = "trajectory_msgs/msg/MultiDOFJointTrajectory"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `joint_names`: [String] = []
  public var `points`: [Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 64)
    }
    guard self.`points`.count <= 4 else { throw RosError(22) }
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
    guard rawcount1 <= 2 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 64))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`points` = []
    v.`points`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`points`.append(try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros2Control_msgsMsgJointTolerance: Canonical {
  public static let maximumWireBytes = 92
  public static let codecIdentity =
    "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2"
  public static let nativeType = "control_msgs/msg/JointTolerance"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `position`: Double = 0
  public var `velocity`: Double = 0
  public var `acceleration`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 64)
    try w.float64(self.`position`)
    try w.float64(self.`velocity`)
    try w.float64(self.`acceleration`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Control_msgsMsgJointTolerance {
    var v = Ros2Control_msgsMsgJointTolerance()
    v.`name` = try r.string(bound: 64)
    v.`position` = try r.float64()
    v.`velocity` = try r.float64()
    v.`acceleration` = try r.float64()
    return v
  }
}
public struct Ros2Control_msgsMsgJointComponentTolerance: Canonical {
  public static let maximumWireBytes = 542
  public static let codecIdentity =
    "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342"
  public static let nativeType = "control_msgs/msg/JointComponentTolerance"
  public static let nativeIdentity: String? = nil
  public static let `X_AXIS`: UInt16 = 1
  public static let `Y_AXIS`: UInt16 = 2
  public static let `Z_AXIS`: UInt16 = 3
  public static let `TRANSLATION`: UInt16 = 4
  public static let `ROTATION`: UInt16 = 5
  public var `joint_name`: String = ""
  public var `component`: UInt16 = 0
  public var `position`: Double = 0
  public var `velocity`: Double = 0
  public var `acceleration`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`joint_name`, bound: 512)
    try w.integer(self.`component`)
    try w.float64(self.`position`)
    try w.float64(self.`velocity`)
    try w.float64(self.`acceleration`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Control_msgsMsgJointComponentTolerance
  {
    var v = Ros2Control_msgsMsgJointComponentTolerance()
    v.`joint_name` = try r.string(bound: 512)
    v.`component` = try r.integer(UInt16.self)
    v.`position` = try r.float64()
    v.`velocity` = try r.float64()
    v.`acceleration` = try r.float64()
    return v
  }
}
public struct Ros2Control_msgsActionFollowJointTrajectory_Goal: Canonical {
  public static let maximumWireBytes = 20920
  public static let codecIdentity =
    "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16"
  public static let nativeType = "control_msgs/action/FollowJointTrajectory_Goal"
  public static let nativeIdentity: String? = nil
  public var `trajectory`: Ros2Trajectory_msgsMsgJointTrajectory =
    Ros2Trajectory_msgsMsgJointTrajectory()
  public var `multi_dof_trajectory`: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
  public var `path_tolerance`: [Ros2Control_msgsMsgJointTolerance] = []
  public var `component_path_tolerance`: [Ros2Control_msgsMsgJointComponentTolerance] = []
  public var `goal_tolerance`: [Ros2Control_msgsMsgJointTolerance] = []
  public var `component_goal_tolerance`: [Ros2Control_msgsMsgJointComponentTolerance] = []
  public var `goal_time_tolerance`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`trajectory`.write(to: &w)
    try self.`multi_dof_trajectory`.write(to: &w)
    guard self.`path_tolerance`.count <= 12 else { throw RosError(22) }
    try w.integer(UInt32(self.`path_tolerance`.count))
    for e in self.`path_tolerance` {
      try e.write(to: &w)
    }
    guard self.`component_path_tolerance`.count <= 12 else { throw RosError(22) }
    try w.integer(UInt32(self.`component_path_tolerance`.count))
    for e in self.`component_path_tolerance` {
      try e.write(to: &w)
    }
    guard self.`goal_tolerance`.count <= 12 else { throw RosError(22) }
    try w.integer(UInt32(self.`goal_tolerance`.count))
    for e in self.`goal_tolerance` {
      try e.write(to: &w)
    }
    guard self.`component_goal_tolerance`.count <= 12 else { throw RosError(22) }
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
    guard rawcount2 <= 12 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`path_tolerance` = []
    v.`path_tolerance`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`path_tolerance`.append(try Ros2Control_msgsMsgJointTolerance.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 12 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`component_path_tolerance` = []
    v.`component_path_tolerance`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`component_path_tolerance`.append(
        try Ros2Control_msgsMsgJointComponentTolerance.read(from: &r))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 12 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`goal_tolerance` = []
    v.`goal_tolerance`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`goal_tolerance`.append(try Ros2Control_msgsMsgJointTolerance.read(from: &r))
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 12 else { throw RosError(22) }
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
public struct Ros2Control_msgsActionFollowJointTrajectory_Result: Canonical {
  public static let maximumWireBytes = 4104
  public static let codecIdentity =
    "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70"
  public static let nativeType = "control_msgs/action/FollowJointTrajectory_Result"
  public static let nativeIdentity: String? = nil
  public static let `SUCCESSFUL`: Int32 = 0
  public static let `INVALID_GOAL`: Int32 = -1
  public static let `INVALID_JOINTS`: Int32 = -2
  public static let `OLD_HEADER_TIMESTAMP`: Int32 = -3
  public static let `PATH_TOLERANCE_VIOLATED`: Int32 = -4
  public static let `GOAL_TOLERANCE_VIOLATED`: Int32 = -5
  public var `error_code`: Int32 = 0
  public var `error_string`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`error_code`)
    try w.string(self.`error_string`, bound: 4096)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Control_msgsActionFollowJointTrajectory_Result
  {
    var v = Ros2Control_msgsActionFollowJointTrajectory_Result()
    v.`error_code` = try r.integer(Int32.self)
    v.`error_string` = try r.string(bound: 4096)
    return v
  }
}
public struct Ros2Control_msgsActionFollowJointTrajectory_Feedback: Canonical {
  public static let maximumWireBytes = 4128
  public static let codecIdentity =
    "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb"
  public static let nativeType = "control_msgs/action/FollowJointTrajectory_Feedback"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `joint_names`: [String] = []
  public var `desired`: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  public var `actual`: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  public var `error`: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  public var `multi_dof_joint_names`: [String] = []
  public var `multi_dof_desired`: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  public var `multi_dof_actual`: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  public var `multi_dof_error`: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 12 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 64)
    }
    try self.`desired`.write(to: &w)
    try self.`actual`.write(to: &w)
    try self.`error`.write(to: &w)
    guard self.`multi_dof_joint_names`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`multi_dof_joint_names`.count))
    for e in self.`multi_dof_joint_names` {
      try w.string(e, bound: 512)
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
    guard rawcount1 <= 12 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 64))
    }
    v.`desired` = try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r)
    v.`actual` = try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r)
    v.`error` = try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r)
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 2 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`multi_dof_joint_names` = []
    v.`multi_dof_joint_names`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`multi_dof_joint_names`.append(try r.string(bound: 512))
    }
    v.`multi_dof_desired` = try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.read(from: &r)
    v.`multi_dof_actual` = try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.read(from: &r)
    v.`multi_dof_error` = try Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.read(from: &r)
    return v
  }
}
public struct Ros2Kuka_driver_interfacesMsgFRIState: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716"
  public static let nativeType = "kuka_driver_interfaces/msg/FRIState"
  public static let nativeIdentity: String? = nil
  public var `session_state`: Int32 = 0
  public var `connection_quality`: Int32 = 0
  public var `safety_state`: Int32 = 0
  public var `command_mode`: Int32 = 0
  public var `control_mode`: Int32 = 0
  public var `operation_mode`: Int32 = 0
  public var `drive_state`: Int32 = 0
  public var `overlay_type`: Int32 = 0
  public var `tracking_performance`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`session_state`)
    try w.integer(self.`connection_quality`)
    try w.integer(self.`safety_state`)
    try w.integer(self.`command_mode`)
    try w.integer(self.`control_mode`)
    try w.integer(self.`operation_mode`)
    try w.integer(self.`drive_state`)
    try w.integer(self.`overlay_type`)
    try w.float64(self.`tracking_performance`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Kuka_driver_interfacesMsgFRIState
  {
    var v = Ros2Kuka_driver_interfacesMsgFRIState()
    v.`session_state` = try r.integer(Int32.self)
    v.`connection_quality` = try r.integer(Int32.self)
    v.`safety_state` = try r.integer(Int32.self)
    v.`command_mode` = try r.integer(Int32.self)
    v.`control_mode` = try r.integer(Int32.self)
    v.`operation_mode` = try r.integer(Int32.self)
    v.`drive_state` = try r.integer(Int32.self)
    v.`overlay_type` = try r.integer(Int32.self)
    v.`tracking_performance` = try r.float64()
    return v
  }
}
public struct Ros2Kuka_driver_interfacesMsgFRIStateArray: Canonical {
  public static let maximumWireBytes = 1736
  public static let codecIdentity =
    "UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449"
  public static let nativeType = "kuka_driver_interfaces/msg/FRIStateArray"
  public static let nativeIdentity: String? = nil
  public var `robot_names`: [String] = []
  public var `states`: [Ros2Kuka_driver_interfacesMsgFRIState] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`robot_names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`robot_names`.count))
    for e in self.`robot_names` {
      try w.string(e, bound: 64)
    }
    guard self.`states`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`states`.count))
    for e in self.`states` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Kuka_driver_interfacesMsgFRIStateArray
  {
    var v = Ros2Kuka_driver_interfacesMsgFRIStateArray()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`robot_names` = []
    v.`robot_names`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`robot_names`.append(try r.string(bound: 64))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`states` = []
    v.`states`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`states`.append(try Ros2Kuka_driver_interfacesMsgFRIState.read(from: &r))
    }
    return v
  }
}
public struct Ros2Kuka_driver_interfacesMsgFriConfiguration: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e"
  public static let nativeType = "kuka_driver_interfaces/msg/FriConfiguration"
  public static let nativeIdentity: String? = nil
  public var `receive_multiplier`: Int32 = 0
  public var `send_period_ms`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`receive_multiplier`)
    try w.integer(self.`send_period_ms`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Kuka_driver_interfacesMsgFriConfiguration
  {
    var v = Ros2Kuka_driver_interfacesMsgFriConfiguration()
    v.`receive_multiplier` = try r.integer(Int32.self)
    v.`send_period_ms` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Kuka_driver_interfacesMsgHardwareEvent: Canonical {
  public static let maximumWireBytes = 517
  public static let codecIdentity =
    "UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68"
  public static let nativeType = "kuka_driver_interfaces/msg/HardwareEvent"
  public static let nativeIdentity: String? = nil
  public var `robot_name`: String = ""
  public var `event`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`robot_name`, bound: 512)
    try w.integer(self.`event`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Kuka_driver_interfacesMsgHardwareEvent
  {
    var v = Ros2Kuka_driver_interfacesMsgHardwareEvent()
    v.`robot_name` = try r.string(bound: 512)
    v.`event` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Kuka_driver_interfacesMsgKssStatus: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82"
  public static let nativeType = "kuka_driver_interfaces/msg/KssStatus"
  public static let nativeIdentity: String? = nil
  public static let `UNSPECIFIED`: UInt8 = 0
  public static let `JOINT_POSITION_CONTROL`: UInt8 = 1
  public static let `CARTESIAN_POSITION_CONTROL`: UInt8 = 5
  public static let `RSI_4MS`: UInt8 = 1
  public static let `RSI_12MS`: UInt8 = 2
  public static let `T1`: UInt8 = 1
  public static let `T2`: UInt8 = 2
  public static let `AUT`: UInt8 = 3
  public static let `EXT`: UInt8 = 4
  public var `control_mode`: UInt8 = 0
  public var `cycle_time`: UInt8 = 0
  public var `drives_powered`: Bool = false
  public var `emergency_stop`: Bool = false
  public var `guard_stop`: Bool = false
  public var `in_motion`: Bool = false
  public var `motion_possible`: Bool = false
  public var `operation_mode`: UInt8 = 0
  public var `robot_stopped`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`control_mode`)
    try w.integer(self.`cycle_time`)
    try w.boolean(self.`drives_powered`)
    try w.boolean(self.`emergency_stop`)
    try w.boolean(self.`guard_stop`)
    try w.boolean(self.`in_motion`)
    try w.boolean(self.`motion_possible`)
    try w.integer(self.`operation_mode`)
    try w.boolean(self.`robot_stopped`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Kuka_driver_interfacesMsgKssStatus
  {
    var v = Ros2Kuka_driver_interfacesMsgKssStatus()
    v.`control_mode` = try r.integer(UInt8.self)
    v.`cycle_time` = try r.integer(UInt8.self)
    v.`drives_powered` = try r.boolean()
    v.`emergency_stop` = try r.boolean()
    v.`guard_stop` = try r.boolean()
    v.`in_motion` = try r.boolean()
    v.`motion_possible` = try r.boolean()
    v.`operation_mode` = try r.integer(UInt8.self)
    v.`robot_stopped` = try r.boolean()
    return v
  }
}
public struct Ros2Kuka_driver_interfacesMsgKssStatusArray: Canonical {
  public static let maximumWireBytes = 1240
  public static let codecIdentity =
    "UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd"
  public static let nativeType = "kuka_driver_interfaces/msg/KssStatusArray"
  public static let nativeIdentity: String? = nil
  public var `robot_names`: [String] = []
  public var `statuses`: [Ros2Kuka_driver_interfacesMsgKssStatus] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`robot_names`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`robot_names`.count))
    for e in self.`robot_names` {
      try w.string(e, bound: 64)
    }
    guard self.`statuses`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`statuses`.count))
    for e in self.`statuses` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Kuka_driver_interfacesMsgKssStatusArray
  {
    var v = Ros2Kuka_driver_interfacesMsgKssStatusArray()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`robot_names` = []
    v.`robot_names`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`robot_names`.append(try r.string(bound: 64))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`statuses` = []
    v.`statuses`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`statuses`.append(try Ros2Kuka_driver_interfacesMsgKssStatus.read(from: &r))
    }
    return v
  }
}
public struct Ros2Lifecycle_msgsMsgState: Canonical {
  public static let maximumWireBytes = 517
  public static let codecIdentity =
    "UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94"
  public static let nativeType = "lifecycle_msgs/msg/State"
  public static let nativeIdentity: String? = nil
  public static let `PRIMARY_STATE_UNKNOWN`: UInt8 = 0
  public static let `PRIMARY_STATE_UNCONFIGURED`: UInt8 = 1
  public static let `PRIMARY_STATE_INACTIVE`: UInt8 = 2
  public static let `PRIMARY_STATE_ACTIVE`: UInt8 = 3
  public static let `PRIMARY_STATE_FINALIZED`: UInt8 = 4
  public static let `TRANSITION_STATE_CONFIGURING`: UInt8 = 10
  public static let `TRANSITION_STATE_CLEANINGUP`: UInt8 = 11
  public static let `TRANSITION_STATE_SHUTTINGDOWN`: UInt8 = 12
  public static let `TRANSITION_STATE_ACTIVATING`: UInt8 = 13
  public static let `TRANSITION_STATE_DEACTIVATING`: UInt8 = 14
  public static let `TRANSITION_STATE_ERRORPROCESSING`: UInt8 = 15
  public var `id`: UInt8 = 0
  public var `label`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.string(self.`label`, bound: 512)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Lifecycle_msgsMsgState {
    var v = Ros2Lifecycle_msgsMsgState()
    v.`id` = try r.integer(UInt8.self)
    v.`label` = try r.string(bound: 512)
    return v
  }
}
public struct Ros2Lifecycle_msgsMsgTransition: Canonical {
  public static let maximumWireBytes = 517
  public static let codecIdentity =
    "UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb"
  public static let nativeType = "lifecycle_msgs/msg/Transition"
  public static let nativeIdentity: String? = nil
  public static let `TRANSITION_CREATE`: UInt8 = 0
  public static let `TRANSITION_CONFIGURE`: UInt8 = 1
  public static let `TRANSITION_CLEANUP`: UInt8 = 2
  public static let `TRANSITION_ACTIVATE`: UInt8 = 3
  public static let `TRANSITION_DEACTIVATE`: UInt8 = 4
  public static let `TRANSITION_UNCONFIGURED_SHUTDOWN`: UInt8 = 5
  public static let `TRANSITION_INACTIVE_SHUTDOWN`: UInt8 = 6
  public static let `TRANSITION_ACTIVE_SHUTDOWN`: UInt8 = 7
  public static let `TRANSITION_DESTROY`: UInt8 = 8
  public static let `TRANSITION_ON_CONFIGURE_SUCCESS`: UInt8 = 10
  public static let `TRANSITION_ON_CONFIGURE_FAILURE`: UInt8 = 11
  public static let `TRANSITION_ON_CONFIGURE_ERROR`: UInt8 = 12
  public static let `TRANSITION_ON_CLEANUP_SUCCESS`: UInt8 = 20
  public static let `TRANSITION_ON_CLEANUP_FAILURE`: UInt8 = 21
  public static let `TRANSITION_ON_CLEANUP_ERROR`: UInt8 = 22
  public static let `TRANSITION_ON_ACTIVATE_SUCCESS`: UInt8 = 30
  public static let `TRANSITION_ON_ACTIVATE_FAILURE`: UInt8 = 31
  public static let `TRANSITION_ON_ACTIVATE_ERROR`: UInt8 = 32
  public static let `TRANSITION_ON_DEACTIVATE_SUCCESS`: UInt8 = 40
  public static let `TRANSITION_ON_DEACTIVATE_FAILURE`: UInt8 = 41
  public static let `TRANSITION_ON_DEACTIVATE_ERROR`: UInt8 = 42
  public static let `TRANSITION_ON_SHUTDOWN_SUCCESS`: UInt8 = 50
  public static let `TRANSITION_ON_SHUTDOWN_FAILURE`: UInt8 = 51
  public static let `TRANSITION_ON_SHUTDOWN_ERROR`: UInt8 = 52
  public static let `TRANSITION_ON_ERROR_SUCCESS`: UInt8 = 60
  public static let `TRANSITION_ON_ERROR_FAILURE`: UInt8 = 61
  public static let `TRANSITION_ON_ERROR_ERROR`: UInt8 = 62
  public static let `TRANSITION_CALLBACK_SUCCESS`: UInt8 = 97
  public static let `TRANSITION_CALLBACK_FAILURE`: UInt8 = 98
  public static let `TRANSITION_CALLBACK_ERROR`: UInt8 = 99
  public var `id`: UInt8 = 0
  public var `label`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.string(self.`label`, bound: 512)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Lifecycle_msgsMsgTransition {
    var v = Ros2Lifecycle_msgsMsgTransition()
    v.`id` = try r.integer(UInt8.self)
    v.`label` = try r.string(bound: 512)
    return v
  }
}
public struct Ros2Lifecycle_msgsSrvChangeState_Request: Canonical {
  public static let maximumWireBytes = 517
  public static let codecIdentity =
    "UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1"
  public static let nativeType = "lifecycle_msgs/srv/ChangeState_Request"
  public static let nativeIdentity: String? = nil
  public var `transition`: Ros2Lifecycle_msgsMsgTransition = Ros2Lifecycle_msgsMsgTransition()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`transition`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Lifecycle_msgsSrvChangeState_Request
  {
    var v = Ros2Lifecycle_msgsSrvChangeState_Request()
    v.`transition` = try Ros2Lifecycle_msgsMsgTransition.read(from: &r)
    return v
  }
}
public struct Ros2Lifecycle_msgsSrvChangeState_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032"
  public static let nativeType = "lifecycle_msgs/srv/ChangeState_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Lifecycle_msgsSrvChangeState_Response
  {
    var v = Ros2Lifecycle_msgsSrvChangeState_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Lifecycle_msgsSrvGetState_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d"
  public static let nativeType = "lifecycle_msgs/srv/GetState_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Lifecycle_msgsSrvGetState_Request
  {
    var v = Ros2Lifecycle_msgsSrvGetState_Request()
    return v
  }
}
public struct Ros2Lifecycle_msgsSrvGetState_Response: Canonical {
  public static let maximumWireBytes = 517
  public static let codecIdentity =
    "UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39"
  public static let nativeType = "lifecycle_msgs/srv/GetState_Response"
  public static let nativeIdentity: String? = nil
  public var `current_state`: Ros2Lifecycle_msgsMsgState = Ros2Lifecycle_msgsMsgState()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`current_state`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Lifecycle_msgsSrvGetState_Response
  {
    var v = Ros2Lifecycle_msgsSrvGetState_Response()
    v.`current_state` = try Ros2Lifecycle_msgsMsgState.read(from: &r)
    return v
  }
}
public struct Ros2Sensor_msgsMsgJointState: Canonical {
  public static let maximumWireBytes = 1196
  public static let codecIdentity =
    "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884"
  public static let nativeType = "sensor_msgs/msg/JointState"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `name`: [String] = []
  public var `position`: [Double] = []
  public var `velocity`: [Double] = []
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
    guard self.`name`.count <= 12 else { throw RosError(22) }
    try w.integer(UInt32(self.`name`.count))
    for e in self.`name` {
      try w.string(e, bound: 64)
    }
    guard self.`position`.count <= 12 else { throw RosError(22) }
    try w.integer(UInt32(self.`position`.count))
    for e in self.`position` {
      try w.float64(e)
    }
    guard self.`velocity`.count <= 12 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity`.count))
    for e in self.`velocity` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 12 else { throw RosError(22) }
    try w.integer(UInt32(self.`effort`.count))
    for e in self.`effort` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Sensor_msgsMsgJointState {
    var v = Ros2Sensor_msgsMsgJointState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 12 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`name` = []
    v.`name`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`name`.append(try r.string(bound: 64))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 12 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`position` = []
    v.`position`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`position`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 12 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`velocity`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 12 else { throw RosError(22) }
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
public struct Ros2Std_srvsSrvTrigger_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"
  public static let nativeType = "std_srvs/srv/Trigger_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_srvsSrvTrigger_Request {
    var v = Ros2Std_srvsSrvTrigger_Request()
    return v
  }
}
public struct Ros2Std_srvsSrvTrigger_Response: Canonical {
  public static let maximumWireBytes = 517
  public static let codecIdentity =
    "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d"
  public static let nativeType = "std_srvs/srv/Trigger_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 512)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_srvsSrvTrigger_Response {
    var v = Ros2Std_srvsSrvTrigger_Response()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 512)
    return v
  }
}
