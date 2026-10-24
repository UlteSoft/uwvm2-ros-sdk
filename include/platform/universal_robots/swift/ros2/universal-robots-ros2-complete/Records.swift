/// @file Records.swift
/// @brief Complete universal_robots values and adapters for the selected original interface catalog.
/// @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
/// defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
/// roles require the separately admitted SDK owner.
/// @see share/platform/universal_robots/domains/universal-robots-ros2-complete.ir.json
/// @see document/platform/universal_robots/en_US/README.md

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
public struct Ros2Control_msgsMsgJointTolerance: Canonical {
  public static let maximumWireBytes = 156
  public static let codecIdentity =
    "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a"
  public static let nativeType = "control_msgs/msg/JointTolerance"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `position`: Double = 0
  public var `velocity`: Double = 0
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
public struct Ros2Geometry_msgsMsgPoint: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
  public static let nativeType = "geometry_msgs/msg/Point"
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
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPoint {
    var v = Ros2Geometry_msgsMsgPoint()
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
public struct Ros2Geometry_msgsMsgPose: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
  public static let nativeType = "geometry_msgs/msg/Pose"
  public static let nativeIdentity: String? = nil
  public var `position`: Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint()
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
public struct Ros2Std_msgsMsgHeader: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
  public static let nativeType = "std_msgs/msg/Header"
  public static let nativeIdentity: String? = nil
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
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
public struct Ros2Geometry_msgsMsgPoseStamped: Canonical {
  public static let maximumWireBytes = 196
  public static let codecIdentity =
    "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2"
  public static let nativeType = "geometry_msgs/msg/PoseStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
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
public struct Ros2Geometry_msgsMsgVector3Stamped: Canonical {
  public static let maximumWireBytes = 164
  public static let codecIdentity =
    "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b"
  public static let nativeType = "geometry_msgs/msg/Vector3Stamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
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
public struct Ros2Geometry_msgsMsgWrench: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6"
  public static let nativeType = "geometry_msgs/msg/Wrench"
  public static let nativeIdentity: String? = nil
  public var `force`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
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
public struct Ros2Trajectory_msgsMsgJointTrajectoryPoint: Canonical {
  public static let maximumWireBytes = 216
  public static let codecIdentity =
    "UWVMROS1_c4eafb6efd22d299b5c6fc21844d8bf69789cf27ee5414a1d7d2371f0b1acbbf"
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
    guard self.`positions`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`positions`.count))
    for e in self.`positions` {
      try w.float64(e)
    }
    guard self.`velocities`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try w.float64(e)
    }
    guard self.`accelerations`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`accelerations`.count))
    for e in self.`accelerations` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 6 else { throw RosError(22) }
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
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`positions` = []
    v.`positions`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`positions`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 6 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 6 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`accelerations` = []
    v.`accelerations`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`accelerations`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 6 else { throw RosError(22) }
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
  public static let maximumWireBytes = 5164
  public static let codecIdentity =
    "UWVMROS1_e77c37c75123e442edb6a7f6f2a21dcbe33d8bb8fd2577f9906653a6ad5f8225"
  public static let nativeType = "trajectory_msgs/msg/JointTrajectory"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `joint_names`: [String] = []
  public var `points`: [Ros2Trajectory_msgsMsgJointTrajectoryPoint] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 256)
    }
    guard self.`points`.count <= 16 else { throw RosError(22) }
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
    guard rawcount1 <= 6 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 256))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`points` = []
    v.`points`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`points`.append(try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r))
    }
    return v
  }
}
public struct Ros2Ur_dashboard_msgsActionSetMode_Goal: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_8a7484a60bad21933df3f847d3fd554e41098ed596dee270335ce9f092dc313d"
  public static let nativeType = "ur_dashboard_msgs/action/SetMode_Goal"
  public static let nativeIdentity: String? = nil
  public var `target_robot_mode`: Int8 = 0
  public var `stop_program`: Bool = false
  public var `play_program`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`target_robot_mode`)
    try w.boolean(self.`stop_program`)
    try w.boolean(self.`play_program`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsActionSetMode_Goal
  {
    var v = Ros2Ur_dashboard_msgsActionSetMode_Goal()
    v.`target_robot_mode` = try r.integer(Int8.self)
    v.`stop_program` = try r.boolean()
    v.`play_program` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsActionSetMode_Result: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_ef2a557ff27171319d46170ab16a80f5cba5fbd59e44c21cc1b704d01764b913"
  public static let nativeType = "ur_dashboard_msgs/action/SetMode_Result"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsActionSetMode_Result
  {
    var v = Ros2Ur_dashboard_msgsActionSetMode_Result()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsActionSetMode_Feedback: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_afd74cd0a79174b53499a40b23b040ba96ec3d3e332129999525dcf6ca287ac6"
  public static let nativeType = "ur_dashboard_msgs/action/SetMode_Feedback"
  public static let nativeIdentity: String? = nil
  public var `current_robot_mode`: Int8 = 0
  public var `current_safety_mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`current_robot_mode`)
    try w.integer(self.`current_safety_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsActionSetMode_Feedback
  {
    var v = Ros2Ur_dashboard_msgsActionSetMode_Feedback()
    v.`current_robot_mode` = try r.integer(Int8.self)
    v.`current_safety_mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsMsgOperationalMode: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_7a0be8522cdc20e01d382218499030176a0f6565376fadc5bbdd871a01b9316e"
  public static let nativeType = "ur_dashboard_msgs/msg/OperationalMode"
  public static let nativeIdentity: String? = nil
  public static let `MANUAL`: String = "\u{4d}\u{41}\u{4e}\u{55}\u{41}\u{4c}"
  public static let `AUTOMATIC`: String = "\u{41}\u{55}\u{54}\u{4f}\u{4d}\u{41}\u{54}\u{49}\u{43}"
  public var `mode`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`mode`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsMsgOperationalMode
  {
    var v = Ros2Ur_dashboard_msgsMsgOperationalMode()
    v.`mode` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsMsgProgramInformation: Canonical {
  public static let maximumWireBytes = 676
  public static let codecIdentity =
    "UWVMROS1_9299ce545acd0b6ff064998334820fbe503b71dc47a475ef93545d2cdb41f965"
  public static let nativeType = "ur_dashboard_msgs/msg/ProgramInformation"
  public static let nativeIdentity: String? = nil
  public static let `PROGRAM_STATE_DRAFT`: String = "\u{44}\u{52}\u{41}\u{46}\u{54}"
  public static let `PROGRAM_STATE_FINAL`: String = "\u{46}\u{49}\u{4e}\u{41}\u{4c}"
  public var `name`: String = ""
  public var `description`: String = ""
  public var `created_date`: UInt64 = 0
  public var `last_saved_date`: UInt64 = 0
  public var `last_modified_date`: UInt64 = 0
  public var `program_state`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.string(self.`description`, bound: 256)
    try w.integer(self.`created_date`)
    try w.integer(self.`last_saved_date`)
    try w.integer(self.`last_modified_date`)
    try w.string(self.`program_state`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsMsgProgramInformation
  {
    var v = Ros2Ur_dashboard_msgsMsgProgramInformation()
    v.`name` = try r.string(bound: 128)
    v.`description` = try r.string(bound: 256)
    v.`created_date` = try r.integer(UInt64.self)
    v.`last_saved_date` = try r.integer(UInt64.self)
    v.`last_modified_date` = try r.integer(UInt64.self)
    v.`program_state` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsMsgProgramState: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_1462a3c2323792afbbfc6d48a600a6ab66a50a6f6f583e57a62da2458ea81f26"
  public static let nativeType = "ur_dashboard_msgs/msg/ProgramState"
  public static let nativeIdentity: String? = nil
  public static let `STOPPED`: String = "\u{53}\u{54}\u{4f}\u{50}\u{50}\u{45}\u{44}"
  public static let `PLAYING`: String = "\u{50}\u{4c}\u{41}\u{59}\u{49}\u{4e}\u{47}"
  public static let `PAUSED`: String = "\u{50}\u{41}\u{55}\u{53}\u{45}\u{44}"
  public var `state`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`state`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_dashboard_msgsMsgProgramState {
    var v = Ros2Ur_dashboard_msgsMsgProgramState()
    v.`state` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsMsgRobotMode: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_81a79c84083520d911de108a728ad1877de78a57ec9e27b5cc432590be4616bb"
  public static let nativeType = "ur_dashboard_msgs/msg/RobotMode"
  public static let nativeIdentity: String? = nil
  public static let `NO_CONTROLLER`: Int8 = -1
  public static let `DISCONNECTED`: Int8 = 0
  public static let `CONFIRM_SAFETY`: Int8 = 1
  public static let `BOOTING`: Int8 = 2
  public static let `POWER_OFF`: Int8 = 3
  public static let `POWER_ON`: Int8 = 4
  public static let `IDLE`: Int8 = 5
  public static let `BACKDRIVE`: Int8 = 6
  public static let `RUNNING`: Int8 = 7
  public static let `UPDATING_FIRMWARE`: Int8 = 8
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_dashboard_msgsMsgRobotMode {
    var v = Ros2Ur_dashboard_msgsMsgRobotMode()
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsMsgSafetyMode: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2eb3d5075a2d7d1765a604c1d1d198379010867d83a98d0327488ca51f5e1aac"
  public static let nativeType = "ur_dashboard_msgs/msg/SafetyMode"
  public static let nativeIdentity: String? = nil
  public static let `NORMAL`: UInt8 = 1
  public static let `REDUCED`: UInt8 = 2
  public static let `PROTECTIVE_STOP`: UInt8 = 3
  public static let `RECOVERY`: UInt8 = 4
  public static let `SAFEGUARD_STOP`: UInt8 = 5
  public static let `SYSTEM_EMERGENCY_STOP`: UInt8 = 6
  public static let `ROBOT_EMERGENCY_STOP`: UInt8 = 7
  public static let `VIOLATION`: UInt8 = 8
  public static let `FAULT`: UInt8 = 9
  public static let `VALIDATE_JOINT_ID`: UInt8 = 10
  public static let `UNDEFINED_SAFETY_MODE`: UInt8 = 11
  public static let `AUTOMATIC_MODE_SAFEGUARD_STOP`: UInt8 = 12
  public static let `SYSTEM_THREE_POSITION_ENABLING_STOP`: UInt8 = 13
  public var `mode`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_dashboard_msgsMsgSafetyMode {
    var v = Ros2Ur_dashboard_msgsMsgSafetyMode()
    v.`mode` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsMsgSafetyStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1b1a7257c40d9c62e0b6291f241825d029fe38f3f3695265a182a270899a79e9"
  public static let nativeType = "ur_dashboard_msgs/msg/SafetyStatus"
  public static let nativeIdentity: String? = nil
  public static let `NORMAL`: Int8 = 1
  public static let `REDUCED`: Int8 = 2
  public static let `PROTECTIVE_STOP`: Int8 = 3
  public static let `RECOVERY`: Int8 = 4
  public static let `SAFEGUARD_STOP`: Int8 = 5
  public static let `SYSTEM_EMERGENCY_STOP`: Int8 = 6
  public static let `ROBOT_EMERGENCY_STOP`: Int8 = 7
  public static let `VIOLATION`: Int8 = 8
  public static let `FAULT`: Int8 = 9
  public static let `VALIDATE_JOINT_ID`: Int8 = 10
  public static let `UNDEFINED_SAFETY_MODE`: Int8 = 11
  public static let `AUTOMATIC_MODE_SAFEGUARD_STOP`: Int8 = 12
  public static let `SYSTEM_THREE_POSITION_ENABLING_STOP`: Int8 = 13
  public static let `TP_THREE_POSITION_ENABLING_STOP`: Int8 = 14
  public static let `IMMI_EMERGENCY_STOP`: Int8 = 15
  public static let `IMMI_SAFEGUARD_STOP`: Int8 = 16
  public static let `PROFISAFE_WAITING_FOR_PARAMETERS`: Int8 = 17
  public static let `PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP`: Int8 = 18
  public static let `PROFISAFE_SAFEGUARD_STOP`: Int8 = 19
  public static let `PROFISAFE_EMERGENCY_STOP`: Int8 = 20
  public static let `SAFETY_API_SAFEGUARD_STOP`: Int8 = 22
  public static let `IO_PLANE_STOP`: Int8 = 23
  public var `status`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_dashboard_msgsMsgSafetyStatus {
    var v = Ros2Ur_dashboard_msgsMsgSafetyStatus()
    v.`status` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsMsgUserRole: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_7568bc9417685a9bc56cfdd2b41ff81ab99bd8e20fbe5f9e537b5b5d0689440a"
  public static let nativeType = "ur_dashboard_msgs/msg/UserRole"
  public static let nativeIdentity: String? = nil
  public static let `PROGRAMMER`: String =
    "\u{50}\u{52}\u{4f}\u{47}\u{52}\u{41}\u{4d}\u{4d}\u{45}\u{52}"
  public static let `OPERATOR`: String = "\u{4f}\u{50}\u{45}\u{52}\u{41}\u{54}\u{4f}\u{52}"
  public static let `NONE`: String = "\u{4e}\u{4f}\u{4e}\u{45}"
  public static let `LOCKED`: String = "\u{4c}\u{4f}\u{43}\u{4b}\u{45}\u{44}"
  public static let `RESTRICTED`: String =
    "\u{52}\u{45}\u{53}\u{54}\u{52}\u{49}\u{43}\u{54}\u{45}\u{44}"
  public var `role`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`role`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_dashboard_msgsMsgUserRole {
    var v = Ros2Ur_dashboard_msgsMsgUserRole()
    v.`role` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsMsgVersionInformation: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_450c41c4361f1bca51f864dd9ef596851b17ebc79d4f784e7abb8b721752443d"
  public static let nativeType = "ur_dashboard_msgs/msg/VersionInformation"
  public static let nativeIdentity: String? = nil
  public var `major`: UInt32 = 0
  public var `minor`: UInt32 = 0
  public var `bugfix`: UInt32 = 0
  public var `build`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`major`)
    try w.integer(self.`minor`)
    try w.integer(self.`bugfix`)
    try w.integer(self.`build`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsMsgVersionInformation
  {
    var v = Ros2Ur_dashboard_msgsMsgVersionInformation()
    v.`major` = try r.integer(UInt32.self)
    v.`minor` = try r.integer(UInt32.self)
    v.`bugfix` = try r.integer(UInt32.self)
    v.`build` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvAddToLog_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_ecfe5bb0d0db92bc5dfdec9bf82fbe730e3b3b4d65680812d0540b9055590142"
  public static let nativeType = "ur_dashboard_msgs/srv/AddToLog_Request"
  public static let nativeIdentity: String? = nil
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvAddToLog_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvAddToLog_Request()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvAddToLog_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_57b0c150a353d3fca6e96c4dc86e72f71b452663ede1eeb69e51069992d07e4c"
  public static let nativeType = "ur_dashboard_msgs/srv/AddToLog_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvAddToLog_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvAddToLog_Response()
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvDownloadProgram_Request: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_5c84420393aae13ea448d171a7b2956a55a39f3321f504b9f3bd5b4a38960c2f"
  public static let nativeType = "ur_dashboard_msgs/srv/DownloadProgram_Request"
  public static let nativeIdentity: String? = nil
  public var `program_name`: String = ""
  public var `target_path`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`program_name`, bound: 256)
    try w.string(self.`target_path`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvDownloadProgram_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvDownloadProgram_Request()
    v.`program_name` = try r.string(bound: 256)
    v.`target_path` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvDownloadProgram_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_46b0a73805282bad5f819f712275b7dd2ca4a6bb8c73c445ea8ae0a3d0f9e8e0"
  public static let nativeType = "ur_dashboard_msgs/srv/DownloadProgram_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvDownloadProgram_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvDownloadProgram_Response()
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_d919563629f81d5a8c10f1d2921ea16f3c912a49b8d3bcf65d17b8daa0a38140"
  public static let nativeType = "ur_dashboard_msgs/srv/DownloadSupportFile_Request"
  public static let nativeIdentity: String? = nil
  public var `target_path`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`target_path`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request()
    v.`target_path` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_76e190e6e9f1ddfff3082ea2adb0463d21ba9fb6795153fe6bbacee8a3334667"
  public static let nativeType = "ur_dashboard_msgs/srv/DownloadSupportFile_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `success`: Bool = false
  public var `support_files_present`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
    try w.boolean(self.`support_files_present`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response()
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    v.`support_files_present` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_7246d97690c0c827e9cfab2f8297cf27a10e60e41ebb3ba345f361a109057099"
  public static let nativeType = "ur_dashboard_msgs/srv/GenerateFlightReport_Request"
  public static let nativeIdentity: String? = nil
  public static let `CONTROLLER`: String =
    "\u{63}\u{6f}\u{6e}\u{74}\u{72}\u{6f}\u{6c}\u{6c}\u{65}\u{72}"
  public static let `SOFTWARE`: String = "\u{73}\u{6f}\u{66}\u{74}\u{77}\u{61}\u{72}\u{65}"
  public static let `SYSTEM`: String = "\u{73}\u{79}\u{73}\u{74}\u{65}\u{6d}"
  public var `report_type`: String = "\u{53}\u{59}\u{53}\u{54}\u{45}\u{4d}"
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`report_type`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request()
    v.`report_type` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_adebf67876b5ae3377cec0aa04138c2ab73ef7c0d7942c77c6c06b248a836445"
  public static let nativeType = "ur_dashboard_msgs/srv/GenerateFlightReport_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `answer`: String = ""
  public var `report_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`answer`, bound: 256)
    try w.string(self.`report_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response()
    v.`success` = try r.boolean()
    v.`answer` = try r.string(bound: 256)
    v.`report_id` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_10b0371b77db32d75a77dcb0605b325caa1915ccfb7d0917896fd75234e6ada7"
  public static let nativeType = "ur_dashboard_msgs/srv/GenerateSupportFile_Request"
  public static let nativeIdentity: String? = nil
  public var `dir_path`: String = "\u{2e}"
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`dir_path`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request()
    v.`dir_path` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_f370623fe690f218073f8538aa9fcf41c94d4abd3e0507e09607ef11e10edf38"
  public static let nativeType = "ur_dashboard_msgs/srv/GenerateSupportFile_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `answer`: String = ""
  public var `generated_file_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`answer`, bound: 256)
    try w.string(self.`generated_file_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response()
    v.`success` = try r.boolean()
    v.`answer` = try r.string(bound: 256)
    v.`generated_file_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_030e5746e6a4da8f266e37d11cc3826715099ff1aa1c845a97042aec987707e3"
  public static let nativeType = "ur_dashboard_msgs/srv/GetLoadedProgram_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_3e8c7f3c8711faea01de37b9a011f34a9c6dd660cc222e46177b2c1898ec2f7e"
  public static let nativeType = "ur_dashboard_msgs/srv/GetLoadedProgram_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `program_name`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.string(self.`program_name`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response()
    v.`answer` = try r.string(bound: 256)
    v.`program_name` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_3f348b5d9e04a8ba01f5277ad259c34a6816ae0693f47c49e348a5497a90a325"
  public static let nativeType = "ur_dashboard_msgs/srv/GetOperationalMode_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_6c2da335fd551162020eb394b91e99aaeca17e34e7c2e98de935c81912efb5f6"
  public static let nativeType = "ur_dashboard_msgs/srv/GetOperationalMode_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `answer`: String = ""
  public var `operational_mode`: Ros2Ur_dashboard_msgsMsgOperationalMode =
    Ros2Ur_dashboard_msgsMsgOperationalMode()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`answer`, bound: 256)
    try self.`operational_mode`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response()
    v.`success` = try r.boolean()
    v.`answer` = try r.string(bound: 256)
    v.`operational_mode` = try Ros2Ur_dashboard_msgsMsgOperationalMode.read(from: &r)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_88193ae202f0cb02746bc5556e8e8ee277fb4fae72ee4b96a6539c980dc86f13"
  public static let nativeType = "ur_dashboard_msgs/srv/GetPolyScopeVersion_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response: Canonical {
  public static let maximumWireBytes = 277
  public static let codecIdentity =
    "UWVMROS1_c8d53d0a920806e86ceb6d2ac5a692a92e62b057432554bed9dcf57bed0ff9bd"
  public static let nativeType = "ur_dashboard_msgs/srv/GetPolyScopeVersion_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `success`: Bool = false
  public var `version`: Ros2Ur_dashboard_msgsMsgVersionInformation =
    Ros2Ur_dashboard_msgsMsgVersionInformation()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
    try self.`version`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response()
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    v.`version` = try Ros2Ur_dashboard_msgsMsgVersionInformation.read(from: &r)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetProgramState_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_fe42d1d1aa3d7bdbaa410bce045120d6dd841213ef10c5dd158c2b76fa157f65"
  public static let nativeType = "ur_dashboard_msgs/srv/GetProgramState_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetProgramState_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGetProgramState_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetProgramState_Response: Canonical {
  public static let maximumWireBytes = 781
  public static let codecIdentity =
    "UWVMROS1_b20731b8552f323837c5939f390060a6c7c92e9447df5e620891708cfce51ff4"
  public static let nativeType = "ur_dashboard_msgs/srv/GetProgramState_Response"
  public static let nativeIdentity: String? = nil
  public var `state`: Ros2Ur_dashboard_msgsMsgProgramState = Ros2Ur_dashboard_msgsMsgProgramState()
  public var `program_name`: String = ""
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`state`.write(to: &w)
    try w.string(self.`program_name`, bound: 256)
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetProgramState_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGetProgramState_Response()
    v.`state` = try Ros2Ur_dashboard_msgsMsgProgramState.read(from: &r)
    v.`program_name` = try r.string(bound: 256)
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetPrograms_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_8d7b4f3fb9a15854b59c85c5205bf20d3e0f6a1a972ccbdf77ee8377c9e40d6d"
  public static let nativeType = "ur_dashboard_msgs/srv/GetPrograms_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetPrograms_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGetPrograms_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetPrograms_Response: Canonical {
  public static let maximumWireBytes = 11081
  public static let codecIdentity =
    "UWVMROS1_111b67c562ba0c77c2924b97058e4126055ad6deb7f99049b8caf8990b3f979c"
  public static let nativeType = "ur_dashboard_msgs/srv/GetPrograms_Response"
  public static let nativeIdentity: String? = nil
  public var `programs`: [Ros2Ur_dashboard_msgsMsgProgramInformation] = []
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`programs`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`programs`.count))
    for e in self.`programs` {
      try e.write(to: &w)
    }
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetPrograms_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGetPrograms_Response()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`programs` = []
    v.`programs`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`programs`.append(try Ros2Ur_dashboard_msgsMsgProgramInformation.read(from: &r))
    }
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetRobotMode_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d1d9cd94a443b20ec0d41a8db1a6d87291657597abc014e7da0f46a58c6c5614"
  public static let nativeType = "ur_dashboard_msgs/srv/GetRobotMode_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetRobotMode_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGetRobotMode_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetRobotMode_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_67db750ad95b3b207d61b18513a117c868040c22c93638f07fa74645d87bcfba"
  public static let nativeType = "ur_dashboard_msgs/srv/GetRobotMode_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_mode`: Ros2Ur_dashboard_msgsMsgRobotMode = Ros2Ur_dashboard_msgsMsgRobotMode()
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`robot_mode`.write(to: &w)
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetRobotMode_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGetRobotMode_Response()
    v.`robot_mode` = try Ros2Ur_dashboard_msgsMsgRobotMode.read(from: &r)
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetRobotModel_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_9db08f07993bd5786aea5b6bd567f9e9f49329883326ea16e6c49eef1586dc43"
  public static let nativeType = "ur_dashboard_msgs/srv/GetRobotModel_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetRobotModel_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGetRobotModel_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetRobotModel_Response: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_faf0124c542ef7420915527c27e99a7d26c5d6274f55d869bc9416e6b7d9b3c9"
  public static let nativeType = "ur_dashboard_msgs/srv/GetRobotModel_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `answer`: String = ""
  public var `robot_model`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`answer`, bound: 256)
    try w.string(self.`robot_model`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetRobotModel_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGetRobotModel_Response()
    v.`success` = try r.boolean()
    v.`answer` = try r.string(bound: 256)
    v.`robot_model` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_5866cc4b0e10508eeb45ceecf9f9b6036ba55d04c9613622e189ccde2781dcb0"
  public static let nativeType = "ur_dashboard_msgs/srv/GetSafetyMode_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_f65d7ff83dc97f891032d8ab16bf71a9c2326c6ae6a033fe1d6e06f011c5a40b"
  public static let nativeType = "ur_dashboard_msgs/srv/GetSafetyMode_Response"
  public static let nativeIdentity: String? = nil
  public var `safety_mode`: Ros2Ur_dashboard_msgsMsgSafetyMode =
    Ros2Ur_dashboard_msgsMsgSafetyMode()
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`safety_mode`.write(to: &w)
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response()
    v.`safety_mode` = try Ros2Ur_dashboard_msgsMsgSafetyMode.read(from: &r)
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0e2958bcd7b121682361c94b2926bcc4552d7ef07dc2af4609d04b1bb7054602"
  public static let nativeType = "ur_dashboard_msgs/srv/GetSafetyStatus_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_bb96aaa96f5c78b97ad80a14eb96865dc10b5a1d12524fcbcc75fc6d481c53e4"
  public static let nativeType = "ur_dashboard_msgs/srv/GetSafetyStatus_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `success`: Bool = false
  public var `safety_status`: Ros2Ur_dashboard_msgsMsgSafetyStatus =
    Ros2Ur_dashboard_msgsMsgSafetyStatus()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
    try self.`safety_status`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response()
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    v.`safety_status` = try Ros2Ur_dashboard_msgsMsgSafetyStatus.read(from: &r)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_bbb1ca066c77ed459352de69d566f3ea87b94fe593c31c911193416f92a73c9b"
  public static let nativeType = "ur_dashboard_msgs/srv/GetSerialNumber_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response: Canonical {
  public static let maximumWireBytes = 269
  public static let codecIdentity =
    "UWVMROS1_f389641d089fa6fd421348f047732de2122cd714bdb2bd4d1e611592aca349e7"
  public static let nativeType = "ur_dashboard_msgs/srv/GetSerialNumber_Response"
  public static let nativeIdentity: String? = nil
  public var `serial_number`: UInt64 = 0
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`serial_number`)
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response()
    v.`serial_number` = try r.integer(UInt64.self)
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetUserRole_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a331be09dd2093e4584e6dc80f83caaadd3a8e43cca6a1c8fcfa1e2ea632c9f0"
  public static let nativeType = "ur_dashboard_msgs/srv/GetUserRole_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetUserRole_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvGetUserRole_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvGetUserRole_Response: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_ed4f53e59fbe4cd33cfbf5d190b60fbe8371dda7da9d7af6e270a882eb142df8"
  public static let nativeType = "ur_dashboard_msgs/srv/GetUserRole_Response"
  public static let nativeIdentity: String? = nil
  public var `user_role`: Ros2Ur_dashboard_msgsMsgUserRole = Ros2Ur_dashboard_msgsMsgUserRole()
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`user_role`.write(to: &w)
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvGetUserRole_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvGetUserRole_Response()
    v.`user_role` = try Ros2Ur_dashboard_msgsMsgUserRole.read(from: &r)
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4b6b86fc4337c36589e8781b46ddbe6992f750b565ff413ea0b069982d87a463"
  public static let nativeType = "ur_dashboard_msgs/srv/IsInRemoteControl_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_f2705c1be319c7c667f4f2224851b06c24b15b4211c2828fab89f09455e4c816"
  public static let nativeType = "ur_dashboard_msgs/srv/IsInRemoteControl_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `remote_control`: Bool = false
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`remote_control`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response()
    v.`answer` = try r.string(bound: 256)
    v.`remote_control` = try r.boolean()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f28274c0dc01d8aa2f981f969c05a614e6b3922601d578f99c6321a4b20fc80f"
  public static let nativeType = "ur_dashboard_msgs/srv/IsProgramRunning_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_c57cc7ecd7e81f7359824b43884a58f65748a4c77cacbcc45be17aa9147cf499"
  public static let nativeType = "ur_dashboard_msgs/srv/IsProgramRunning_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `program_running`: Bool = false
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`program_running`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response()
    v.`answer` = try r.string(bound: 256)
    v.`program_running` = try r.boolean()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c53d57cffc0480d66257150a8450ba90563fda5153742784831d38abcbc0b099"
  public static let nativeType = "ur_dashboard_msgs/srv/IsProgramSaved_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response: Canonical {
  public static let maximumWireBytes = 522
  public static let codecIdentity =
    "UWVMROS1_aa171247f31fd00a1b8820ee21cf20d159bd10d0d2887dc96b3a4dd4d372d115"
  public static let nativeType = "ur_dashboard_msgs/srv/IsProgramSaved_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `program_name`: String = ""
  public var `program_saved`: Bool = false
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.string(self.`program_name`, bound: 256)
    try w.boolean(self.`program_saved`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response()
    v.`answer` = try r.string(bound: 256)
    v.`program_name` = try r.string(bound: 256)
    v.`program_saved` = try r.boolean()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvLoad_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_1d0cd6cdeaaafce999a7e9924721246b9f4954f22da40fd0a27fb7b657324876"
  public static let nativeType = "ur_dashboard_msgs/srv/Load_Request"
  public static let nativeIdentity: String? = nil
  public var `filename`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`filename`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_dashboard_msgsSrvLoad_Request {
    var v = Ros2Ur_dashboard_msgsSrvLoad_Request()
    v.`filename` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvLoad_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_4e694de8079133a8e789add3640dfe19805cad92991a650167c2aae7067da415"
  public static let nativeType = "ur_dashboard_msgs/srv/Load_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_dashboard_msgsSrvLoad_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvLoad_Response()
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvPopup_Request: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_369e6eab4f689a846c52fcc5cb539da63fab3939fab254dd1e04c7b274d5f770"
  public static let nativeType = "ur_dashboard_msgs/srv/Popup_Request"
  public static let nativeIdentity: String? = nil
  public var `message`: String = ""
  public var `title`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`message`, bound: 256)
    try w.string(self.`title`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_dashboard_msgsSrvPopup_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvPopup_Request()
    v.`message` = try r.string(bound: 256)
    v.`title` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvPopup_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_0b54f7c477c1ddf8ccb18d12d50eaf308225d4927ee377377ed354426e58f984"
  public static let nativeType = "ur_dashboard_msgs/srv/Popup_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_dashboard_msgsSrvPopup_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvPopup_Response()
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvRawRequest_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_2bf66d87b20ca2de9ed94c04c79042a50239728320b43b27c9942405795b4555"
  public static let nativeType = "ur_dashboard_msgs/srv/RawRequest_Request"
  public static let nativeIdentity: String? = nil
  public var `query`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`query`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvRawRequest_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvRawRequest_Request()
    v.`query` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvRawRequest_Response: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_7c37f54149bab54f6e7bbfed41992eb54416b31346bc889a9632d5497111267f"
  public static let nativeType = "ur_dashboard_msgs/srv/RawRequest_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvRawRequest_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvRawRequest_Response()
    v.`answer` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_8cc61f7c64211c46e01e52eee2c05f6e709f4f0900cf24fdfd4079b0f7581a00"
  public static let nativeType = "ur_dashboard_msgs/srv/SetOperationalMode_Request"
  public static let nativeIdentity: String? = nil
  public var `operational_mode`: Ros2Ur_dashboard_msgsMsgOperationalMode =
    Ros2Ur_dashboard_msgsMsgOperationalMode()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`operational_mode`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request()
    v.`operational_mode` = try Ros2Ur_dashboard_msgsMsgOperationalMode.read(from: &r)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_f5009de077224371e9d2f6c0aecbabd24c80148f2c7e1b1383a64f6f214b202a"
  public static let nativeType = "ur_dashboard_msgs/srv/SetOperationalMode_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response()
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvSetUserRole_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_7bd499947803efca81401a2de496d24e7e54ba97f4f86ec2b3089146a0655f5e"
  public static let nativeType = "ur_dashboard_msgs/srv/SetUserRole_Request"
  public static let nativeIdentity: String? = nil
  public var `user_role`: Ros2Ur_dashboard_msgsMsgUserRole = Ros2Ur_dashboard_msgsMsgUserRole()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`user_role`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvSetUserRole_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvSetUserRole_Request()
    v.`user_role` = try Ros2Ur_dashboard_msgsMsgUserRole.read(from: &r)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvSetUserRole_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_4cab2bba5030f4e4b9e90252d64ec2e02d6eb87070b75cf43190fecd21da59fd"
  public static let nativeType = "ur_dashboard_msgs/srv/SetUserRole_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `answer`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`answer`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvSetUserRole_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvSetUserRole_Response()
    v.`success` = try r.boolean()
    v.`answer` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvUploadProgram_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_f7501d0115f8d36b1942ce610b1bbc197d0276de508ac8175d539f40494f437b"
  public static let nativeType = "ur_dashboard_msgs/srv/UploadProgram_Request"
  public static let nativeIdentity: String? = nil
  public var `file_path`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`file_path`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvUploadProgram_Request
  {
    var v = Ros2Ur_dashboard_msgsSrvUploadProgram_Request()
    v.`file_path` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_dashboard_msgsSrvUploadProgram_Response: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_ae9a28c1cd4729f54968d18a16e2f8f417bdc5e9bc15809de7481f1f20e6b398"
  public static let nativeType = "ur_dashboard_msgs/srv/UploadProgram_Response"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `program_name`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.string(self.`program_name`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_dashboard_msgsSrvUploadProgram_Response
  {
    var v = Ros2Ur_dashboard_msgsSrvUploadProgram_Response()
    v.`answer` = try r.string(bound: 256)
    v.`program_name` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal: Canonical {
  public static let maximumWireBytes = 7053
  public static let codecIdentity =
    "UWVMROS1_78fda8f2d20c502e24b1ad4fe55f34bba41de20ff88e71b56d7a0631d7a3905a"
  public static let nativeType = "ur_msgs/action/FollowJointTrajectoryUntil_Goal"
  public static let nativeIdentity: String? = nil
  public static let `TOOL_CONTACT`: UInt8 = 0
  public var `trajectory`: Ros2Trajectory_msgsMsgJointTrajectory =
    Ros2Trajectory_msgsMsgJointTrajectory()
  public var `path_tolerance`: [Ros2Control_msgsMsgJointTolerance] = []
  public var `goal_tolerance`: [Ros2Control_msgsMsgJointTolerance] = []
  public var `goal_time_tolerance`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  public var `until_type`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`trajectory`.write(to: &w)
    guard self.`path_tolerance`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`path_tolerance`.count))
    for e in self.`path_tolerance` {
      try e.write(to: &w)
    }
    guard self.`goal_tolerance`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`goal_tolerance`.count))
    for e in self.`goal_tolerance` {
      try e.write(to: &w)
    }
    try self.`goal_time_tolerance`.write(to: &w)
    try w.integer(self.`until_type`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal
  {
    var v = Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal()
    v.`trajectory` = try Ros2Trajectory_msgsMsgJointTrajectory.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 6 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`path_tolerance` = []
    v.`path_tolerance`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`path_tolerance`.append(try Ros2Control_msgsMsgJointTolerance.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 6 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`goal_tolerance` = []
    v.`goal_tolerance`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`goal_tolerance`.append(try Ros2Control_msgsMsgJointTolerance.read(from: &r))
    }
    v.`goal_time_tolerance` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    v.`until_type` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_de92b9ccfb9c93f3afae9da5e8e31df9a6d6a606479fe27b9bcf14ff329bc869"
  public static let nativeType = "ur_msgs/action/FollowJointTrajectoryUntil_Result"
  public static let nativeIdentity: String? = nil
  public static let `SUCCESSFUL`: Int32 = 0
  public static let `INVALID_GOAL`: Int32 = -1
  public static let `INVALID_JOINTS`: Int32 = -2
  public static let `OLD_HEADER_TIMESTAMP`: Int32 = -3
  public static let `PATH_TOLERANCE_VIOLATED`: Int32 = -4
  public static let `GOAL_TOLERANCE_VIOLATED`: Int32 = -5
  public static let `TRIGGERED`: Int32 = 0
  public static let `NOT_TRIGGERED`: Int32 = 1
  public var `error_code`: Int32 = 0
  public var `until_condition_result`: Int32 = 0
  public var `error_string`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`error_code`)
    try w.integer(self.`until_condition_result`)
    try w.string(self.`error_string`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result
  {
    var v = Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result()
    v.`error_code` = try r.integer(Int32.self)
    v.`until_condition_result` = try r.integer(Int32.self)
    v.`error_string` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback: Canonical {
  public static let maximumWireBytes = 2352
  public static let codecIdentity =
    "UWVMROS1_5a719f991f5c73784f9dc9e962ecfa0541e00daef7f747c312d4b633d63040ac"
  public static let nativeType = "ur_msgs/action/FollowJointTrajectoryUntil_Feedback"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `joint_names`: [String] = []
  public var `desired`: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  public var `actual`: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  public var `error`: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_names`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_names`.count))
    for e in self.`joint_names` {
      try w.string(e, bound: 256)
    }
    try self.`desired`.write(to: &w)
    try self.`actual`.write(to: &w)
    try self.`error`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback
  {
    var v = Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 6 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint_names` = []
    v.`joint_names`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_names`.append(try r.string(bound: 256))
    }
    v.`desired` = try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r)
    v.`actual` = try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r)
    v.`error` = try Ros2Trajectory_msgsMsgJointTrajectoryPoint.read(from: &r)
    return v
  }
}
public struct Ros2Ur_msgsActionSendScript_Goal: Canonical {
  public static let maximumWireBytes = 8465
  public static let codecIdentity =
    "UWVMROS1_c277cd00663786f95201e61baa658b92def3becc1f37e54aa6093bb11135819c"
  public static let nativeType = "ur_msgs/action/SendScript_Goal"
  public static let nativeIdentity: String? = nil
  public var `program`: String = ""
  public var `script_name`: String = ""
  public var `start_timeout`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  public var `fail_on_warnings`: Bool = true
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`program`, bound: 8192)
    try w.string(self.`script_name`, bound: 256)
    try self.`start_timeout`.write(to: &w)
    try w.boolean(self.`fail_on_warnings`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsActionSendScript_Goal {
    var v = Ros2Ur_msgsActionSendScript_Goal()
    v.`program` = try r.string(bound: 8192)
    v.`script_name` = try r.string(bound: 256)
    v.`start_timeout` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    v.`fail_on_warnings` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_msgsActionSendScript_Result: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_d4c4d9721c3a576f590ba4967b2444a82969d6ccba94ddbf8c4a974535ee17d2"
  public static let nativeType = "ur_msgs/action/SendScript_Result"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsActionSendScript_Result {
    var v = Ros2Ur_msgsActionSendScript_Result()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_msgsActionSendScript_Feedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_094876d6467bd2b34f74cc6b574393117753add5254285e4e95d85b07328ef2c"
  public static let nativeType = "ur_msgs/action/SendScript_Feedback"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsActionSendScript_Feedback {
    var v = Ros2Ur_msgsActionSendScript_Feedback()
    return v
  }
}
public struct Ros2Ur_msgsActionToolContact_Goal: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_150298ad16b1bc37d47bd3324cd4ec301ad8402c07779e8a435ce61daa7578dd"
  public static let nativeType = "ur_msgs/action/ToolContact_Goal"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsActionToolContact_Goal {
    var v = Ros2Ur_msgsActionToolContact_Goal()
    return v
  }
}
public struct Ros2Ur_msgsActionToolContact_Result: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b79f6080ac18b67c25131458a2af0a3c235d624c00fc5c13da534cc546c94578"
  public static let nativeType = "ur_msgs/action/ToolContact_Result"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsActionToolContact_Result {
    var v = Ros2Ur_msgsActionToolContact_Result()
    return v
  }
}
public struct Ros2Ur_msgsActionToolContact_Feedback: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c6a11fd615f72a70a98514703de4c007a2bb161fbd8a953c5e8b899f471f4c5b"
  public static let nativeType = "ur_msgs/action/ToolContact_Feedback"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsActionToolContact_Feedback
  {
    var v = Ros2Ur_msgsActionToolContact_Feedback()
    return v
  }
}
public struct Ros2Ur_msgsMsgAnalog: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_68873e85836e1a65d7b67a52f5db8b3c3be082f889d2df4342386b282988f2a4"
  public static let nativeType = "ur_msgs/msg/Analog"
  public static let nativeIdentity: String? = nil
  public static let `CURRENT`: UInt8 = 0
  public static let `VOLTAGE`: UInt8 = 1
  public var `pin`: UInt8 = 0
  public var `domain`: UInt8 = 0
  public var `state`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pin`)
    try w.integer(self.`domain`)
    try w.float32(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsMsgAnalog {
    var v = Ros2Ur_msgsMsgAnalog()
    v.`pin` = try r.integer(UInt8.self)
    v.`domain` = try r.integer(UInt8.self)
    v.`state` = try r.float32()
    return v
  }
}
public struct Ros2Ur_msgsMsgDigital: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_e5ebd0a17ee528cff1e0a636eb0be9c7e4128d3e77be722c5f1be73df4f4c11e"
  public static let nativeType = "ur_msgs/msg/Digital"
  public static let nativeIdentity: String? = nil
  public var `pin`: UInt8 = 0
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pin`)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsMsgDigital {
    var v = Ros2Ur_msgsMsgDigital()
    v.`pin` = try r.integer(UInt8.self)
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_msgsMsgFrictionModelParameters: Canonical {
  public static let maximumWireBytes = 104
  public static let codecIdentity =
    "UWVMROS1_7cc9c7af77340f56b0559b4e2ad32972ff65f2a6cf89ebfbe2c48c645f8e9c89"
  public static let nativeType = "ur_msgs/msg/FrictionModelParameters"
  public static let nativeIdentity: String? = nil
  public var `viscous_scale`: [Double] = []
  public var `coulomb_scale`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`viscous_scale`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`viscous_scale`.count))
    for e in self.`viscous_scale` {
      try w.float64(e)
    }
    guard self.`coulomb_scale`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`coulomb_scale`.count))
    for e in self.`coulomb_scale` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsMsgFrictionModelParameters
  {
    var v = Ros2Ur_msgsMsgFrictionModelParameters()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`viscous_scale` = []
    v.`viscous_scale`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`viscous_scale`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 6 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`coulomb_scale` = []
    v.`coulomb_scale`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`coulomb_scale`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Ur_msgsMsgIOStates: Canonical {
  public static let maximumWireBytes = 404
  public static let codecIdentity =
    "UWVMROS1_c22f9f784c89b6854fa84df416ed3704e3a312b15c8fc41162e7f5f53223fef5"
  public static let nativeType = "ur_msgs/msg/IOStates"
  public static let nativeIdentity: String? = nil
  public var `digital_in_states`: [Ros2Ur_msgsMsgDigital] = []
  public var `digital_out_states`: [Ros2Ur_msgsMsgDigital] = []
  public var `flag_states`: [Ros2Ur_msgsMsgDigital] = []
  public var `analog_in_states`: [Ros2Ur_msgsMsgAnalog] = []
  public var `analog_out_states`: [Ros2Ur_msgsMsgAnalog] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`digital_in_states`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`digital_in_states`.count))
    for e in self.`digital_in_states` {
      try e.write(to: &w)
    }
    guard self.`digital_out_states`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`digital_out_states`.count))
    for e in self.`digital_out_states` {
      try e.write(to: &w)
    }
    guard self.`flag_states`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`flag_states`.count))
    for e in self.`flag_states` {
      try e.write(to: &w)
    }
    guard self.`analog_in_states`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`analog_in_states`.count))
    for e in self.`analog_in_states` {
      try e.write(to: &w)
    }
    guard self.`analog_out_states`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`analog_out_states`.count))
    for e in self.`analog_out_states` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsMsgIOStates {
    var v = Ros2Ur_msgsMsgIOStates()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`digital_in_states` = []
    v.`digital_in_states`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`digital_in_states`.append(try Ros2Ur_msgsMsgDigital.read(from: &r))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`digital_out_states` = []
    v.`digital_out_states`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`digital_out_states`.append(try Ros2Ur_msgsMsgDigital.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`flag_states` = []
    v.`flag_states`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`flag_states`.append(try Ros2Ur_msgsMsgDigital.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`analog_in_states` = []
    v.`analog_in_states`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`analog_in_states`.append(try Ros2Ur_msgsMsgAnalog.read(from: &r))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`analog_out_states` = []
    v.`analog_out_states`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`analog_out_states`.append(try Ros2Ur_msgsMsgAnalog.read(from: &r))
    }
    return v
  }
}
public struct Ros2Ur_msgsMsgMasterboardDataMsg: Canonical {
  public static let maximumWireBytes = 62
  public static let codecIdentity =
    "UWVMROS1_eb3b0aab27bb5683859356ca7cf9648e53d311c1fd32cac97f68ce1d4622a9e5"
  public static let nativeType = "ur_msgs/msg/MasterboardDataMsg"
  public static let nativeIdentity: String? = nil
  public var `digital_input_bits`: UInt32 = 0
  public var `digital_output_bits`: UInt32 = 0
  public var `analog_input_range0`: Int8 = 0
  public var `analog_input_range1`: Int8 = 0
  public var `analog_input0`: Double = 0
  public var `analog_input1`: Double = 0
  public var `analog_output_domain0`: Int8 = 0
  public var `analog_output_domain1`: Int8 = 0
  public var `analog_output0`: Double = 0
  public var `analog_output1`: Double = 0
  public var `masterboard_temperature`: Float = 0
  public var `robot_voltage_48v`: Float = 0
  public var `robot_current`: Float = 0
  public var `master_io_current`: Float = 0
  public var `master_safety_state`: UInt8 = 0
  public var `master_onoff_state`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`digital_input_bits`)
    try w.integer(self.`digital_output_bits`)
    try w.integer(self.`analog_input_range0`)
    try w.integer(self.`analog_input_range1`)
    try w.float64(self.`analog_input0`)
    try w.float64(self.`analog_input1`)
    try w.integer(self.`analog_output_domain0`)
    try w.integer(self.`analog_output_domain1`)
    try w.float64(self.`analog_output0`)
    try w.float64(self.`analog_output1`)
    try w.float32(self.`masterboard_temperature`)
    try w.float32(self.`robot_voltage_48v`)
    try w.float32(self.`robot_current`)
    try w.float32(self.`master_io_current`)
    try w.integer(self.`master_safety_state`)
    try w.integer(self.`master_onoff_state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsMsgMasterboardDataMsg {
    var v = Ros2Ur_msgsMsgMasterboardDataMsg()
    v.`digital_input_bits` = try r.integer(UInt32.self)
    v.`digital_output_bits` = try r.integer(UInt32.self)
    v.`analog_input_range0` = try r.integer(Int8.self)
    v.`analog_input_range1` = try r.integer(Int8.self)
    v.`analog_input0` = try r.float64()
    v.`analog_input1` = try r.float64()
    v.`analog_output_domain0` = try r.integer(Int8.self)
    v.`analog_output_domain1` = try r.integer(Int8.self)
    v.`analog_output0` = try r.float64()
    v.`analog_output1` = try r.float64()
    v.`masterboard_temperature` = try r.float32()
    v.`robot_voltage_48v` = try r.float32()
    v.`robot_current` = try r.float32()
    v.`master_io_current` = try r.float32()
    v.`master_safety_state` = try r.integer(UInt8.self)
    v.`master_onoff_state` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Ur_msgsMsgRobotModeDataMsg: Canonical {
  public static let maximumWireBytes = 15
  public static let codecIdentity =
    "UWVMROS1_0181d85868dc6251289c6f7bc723757fa573c1345b6502497e335655d328bb31"
  public static let nativeType = "ur_msgs/msg/RobotModeDataMsg"
  public static let nativeIdentity: String? = nil
  public var `timestamp`: UInt64 = 0
  public var `is_robot_connected`: Bool = false
  public var `is_real_robot_enabled`: Bool = false
  public var `is_power_on_robot`: Bool = false
  public var `is_emergency_stopped`: Bool = false
  public var `is_protective_stopped`: Bool = false
  public var `is_program_running`: Bool = false
  public var `is_program_paused`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`timestamp`)
    try w.boolean(self.`is_robot_connected`)
    try w.boolean(self.`is_real_robot_enabled`)
    try w.boolean(self.`is_power_on_robot`)
    try w.boolean(self.`is_emergency_stopped`)
    try w.boolean(self.`is_protective_stopped`)
    try w.boolean(self.`is_program_running`)
    try w.boolean(self.`is_program_paused`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsMsgRobotModeDataMsg {
    var v = Ros2Ur_msgsMsgRobotModeDataMsg()
    v.`timestamp` = try r.integer(UInt64.self)
    v.`is_robot_connected` = try r.boolean()
    v.`is_real_robot_enabled` = try r.boolean()
    v.`is_power_on_robot` = try r.boolean()
    v.`is_emergency_stopped` = try r.boolean()
    v.`is_protective_stopped` = try r.boolean()
    v.`is_program_running` = try r.boolean()
    v.`is_program_paused` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_msgsMsgRobotStateRTMsg: Canonical {
  public static let maximumWireBytes = 768
  public static let codecIdentity =
    "UWVMROS1_a30600c42e98b89da49d63073a5d30b0989aa0cb21f2bafec229dee10591d9cd"
  public static let nativeType = "ur_msgs/msg/RobotStateRTMsg"
  public static let nativeIdentity: String? = nil
  public var `time`: Double = 0
  public var `q_target`: [Double] = []
  public var `qd_target`: [Double] = []
  public var `qdd_target`: [Double] = []
  public var `i_target`: [Double] = []
  public var `m_target`: [Double] = []
  public var `q_actual`: [Double] = []
  public var `qd_actual`: [Double] = []
  public var `i_actual`: [Double] = []
  public var `tool_acc_values`: [Double] = []
  public var `tcp_force`: [Double] = []
  public var `tool_vector`: [Double] = []
  public var `tcp_speed`: [Double] = []
  public var `digital_input_bits`: Double = 0
  public var `motor_temperatures`: [Double] = []
  public var `controller_timer`: Double = 0
  public var `test_value`: Double = 0
  public var `robot_mode`: Double = 0
  public var `joint_modes`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`time`)
    guard self.`q_target`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`q_target`.count))
    for e in self.`q_target` {
      try w.float64(e)
    }
    guard self.`qd_target`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`qd_target`.count))
    for e in self.`qd_target` {
      try w.float64(e)
    }
    guard self.`qdd_target`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`qdd_target`.count))
    for e in self.`qdd_target` {
      try w.float64(e)
    }
    guard self.`i_target`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`i_target`.count))
    for e in self.`i_target` {
      try w.float64(e)
    }
    guard self.`m_target`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`m_target`.count))
    for e in self.`m_target` {
      try w.float64(e)
    }
    guard self.`q_actual`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`q_actual`.count))
    for e in self.`q_actual` {
      try w.float64(e)
    }
    guard self.`qd_actual`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`qd_actual`.count))
    for e in self.`qd_actual` {
      try w.float64(e)
    }
    guard self.`i_actual`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`i_actual`.count))
    for e in self.`i_actual` {
      try w.float64(e)
    }
    guard self.`tool_acc_values`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`tool_acc_values`.count))
    for e in self.`tool_acc_values` {
      try w.float64(e)
    }
    guard self.`tcp_force`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`tcp_force`.count))
    for e in self.`tcp_force` {
      try w.float64(e)
    }
    guard self.`tool_vector`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`tool_vector`.count))
    for e in self.`tool_vector` {
      try w.float64(e)
    }
    guard self.`tcp_speed`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`tcp_speed`.count))
    for e in self.`tcp_speed` {
      try w.float64(e)
    }
    try w.float64(self.`digital_input_bits`)
    guard self.`motor_temperatures`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`motor_temperatures`.count))
    for e in self.`motor_temperatures` {
      try w.float64(e)
    }
    try w.float64(self.`controller_timer`)
    try w.float64(self.`test_value`)
    try w.float64(self.`robot_mode`)
    guard self.`joint_modes`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_modes`.count))
    for e in self.`joint_modes` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsMsgRobotStateRTMsg {
    var v = Ros2Ur_msgsMsgRobotStateRTMsg()
    v.`time` = try r.float64()
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 6 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`q_target` = []
    v.`q_target`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`q_target`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 6 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`qd_target` = []
    v.`qd_target`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`qd_target`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 6 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`qdd_target` = []
    v.`qdd_target`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`qdd_target`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 6 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`i_target` = []
    v.`i_target`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`i_target`.append(try r.float64())
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 6 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`m_target` = []
    v.`m_target`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`m_target`.append(try r.float64())
    }
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 6 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`q_actual` = []
    v.`q_actual`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`q_actual`.append(try r.float64())
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 6 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`qd_actual` = []
    v.`qd_actual`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`qd_actual`.append(try r.float64())
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 6 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`i_actual` = []
    v.`i_actual`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`i_actual`.append(try r.float64())
    }
    let rawcount9 = try r.integer(UInt32.self)
    guard rawcount9 <= 6 else { throw RosError(22) }
    let count9 = Int(rawcount9)
    v.`tool_acc_values` = []
    v.`tool_acc_values`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`tool_acc_values`.append(try r.float64())
    }
    let rawcount10 = try r.integer(UInt32.self)
    guard rawcount10 <= 6 else { throw RosError(22) }
    let count10 = Int(rawcount10)
    v.`tcp_force` = []
    v.`tcp_force`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`tcp_force`.append(try r.float64())
    }
    let rawcount11 = try r.integer(UInt32.self)
    guard rawcount11 <= 6 else { throw RosError(22) }
    let count11 = Int(rawcount11)
    v.`tool_vector` = []
    v.`tool_vector`.reserveCapacity(count11)
    for _ in 0..<count11 {
      v.`tool_vector`.append(try r.float64())
    }
    let rawcount12 = try r.integer(UInt32.self)
    guard rawcount12 <= 6 else { throw RosError(22) }
    let count12 = Int(rawcount12)
    v.`tcp_speed` = []
    v.`tcp_speed`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`tcp_speed`.append(try r.float64())
    }
    v.`digital_input_bits` = try r.float64()
    let rawcount14 = try r.integer(UInt32.self)
    guard rawcount14 <= 6 else { throw RosError(22) }
    let count14 = Int(rawcount14)
    v.`motor_temperatures` = []
    v.`motor_temperatures`.reserveCapacity(count14)
    for _ in 0..<count14 {
      v.`motor_temperatures`.append(try r.float64())
    }
    v.`controller_timer` = try r.float64()
    v.`test_value` = try r.float64()
    v.`robot_mode` = try r.float64()
    let rawcount18 = try r.integer(UInt32.self)
    guard rawcount18 <= 6 else { throw RosError(22) }
    let count18 = Int(rawcount18)
    v.`joint_modes` = []
    v.`joint_modes`.reserveCapacity(count18)
    for _ in 0..<count18 {
      v.`joint_modes`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Ur_msgsMsgToolDataMsg: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_1eec69666515ffbdca162a10967fce03ee4c25f0c27d56c5a812b87c9a229aa0"
  public static let nativeType = "ur_msgs/msg/ToolDataMsg"
  public static let nativeIdentity: String? = nil
  public static let `ANALOG_INPUT_RANGE_CURRENT`: Int8 = 0
  public static let `ANALOG_INPUT_RANGE_VOLTAGE`: Int8 = 1
  public static let `TOOL_BOOTLOADER_MODE`: UInt8 = 249
  public static let `TOOL_RUNNING_MODE`: UInt8 = 253
  public static let `TOOL_IDLE_MODE`: UInt8 = 255
  public var `analog_input_range2`: Int8 = 0
  public var `analog_input_range3`: Int8 = 0
  public var `analog_input2`: Double = 0
  public var `analog_input3`: Double = 0
  public var `tool_voltage_48v`: Float = 0
  public var `tool_output_voltage`: UInt8 = 0
  public var `tool_current`: Float = 0
  public var `tool_temperature`: Float = 0
  public var `tool_mode`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`analog_input_range2`)
    try w.integer(self.`analog_input_range3`)
    try w.float64(self.`analog_input2`)
    try w.float64(self.`analog_input3`)
    try w.float32(self.`tool_voltage_48v`)
    try w.integer(self.`tool_output_voltage`)
    try w.float32(self.`tool_current`)
    try w.float32(self.`tool_temperature`)
    try w.integer(self.`tool_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsMsgToolDataMsg {
    var v = Ros2Ur_msgsMsgToolDataMsg()
    v.`analog_input_range2` = try r.integer(Int8.self)
    v.`analog_input_range3` = try r.integer(Int8.self)
    v.`analog_input2` = try r.float64()
    v.`analog_input3` = try r.float64()
    v.`tool_voltage_48v` = try r.float32()
    v.`tool_output_voltage` = try r.integer(UInt8.self)
    v.`tool_current` = try r.float32()
    v.`tool_temperature` = try r.float32()
    v.`tool_mode` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c2d78972cb5b63138d1e780e8ff0c082dd77d5b76b09642d2c655e9f16780101"
  public static let nativeType = "ur_msgs/srv/GetRobotSoftwareVersion_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request
  {
    var v = Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request()
    return v
  }
}
public struct Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_bbe9984c34d69f93ad8dbfe6059c6a2e1bf43dbd27eabd97cf0a9507308d814a"
  public static let nativeType = "ur_msgs/srv/GetRobotSoftwareVersion_Response"
  public static let nativeIdentity: String? = nil
  public var `major`: UInt32 = 0
  public var `minor`: UInt32 = 0
  public var `bugfix`: UInt32 = 0
  public var `build`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`major`)
    try w.integer(self.`minor`)
    try w.integer(self.`bugfix`)
    try w.integer(self.`build`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response
  {
    var v = Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response()
    v.`major` = try r.integer(UInt32.self)
    v.`minor` = try r.integer(UInt32.self)
    v.`bugfix` = try r.integer(UInt32.self)
    v.`build` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Ur_msgsSrvSetAnalogOutput_Request: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_71c3eca5c6c90758f084e275fc495feb5d1c08a467c97d941fb5864c54309bea"
  public static let nativeType = "ur_msgs/srv/SetAnalogOutput_Request"
  public static let nativeIdentity: String? = nil
  public var `data`: Ros2Ur_msgsMsgAnalog = Ros2Ur_msgsMsgAnalog()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`data`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsSrvSetAnalogOutput_Request
  {
    var v = Ros2Ur_msgsSrvSetAnalogOutput_Request()
    v.`data` = try Ros2Ur_msgsMsgAnalog.read(from: &r)
    return v
  }
}
public struct Ros2Ur_msgsSrvSetAnalogOutput_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_71a5f3580657cb3ca702dbb63b7af3330c922624c9e9774e47e6533e2fc0a05a"
  public static let nativeType = "ur_msgs/srv/SetAnalogOutput_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsSrvSetAnalogOutput_Response
  {
    var v = Ros2Ur_msgsSrvSetAnalogOutput_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_msgsSrvSetForceMode_Request: Canonical {
  public static let maximumWireBytes = 331
  public static let codecIdentity =
    "UWVMROS1_e43a6c22510a2078de3cb2dc17ba1b7184080a6aa29a1653b7986723c0cfef6e"
  public static let nativeType = "ur_msgs/srv/SetForceMode_Request"
  public static let nativeIdentity: String? = nil
  public static let `TCP_TO_ORIGIN`: UInt8 = 1
  public static let `NO_TRANSFORM`: UInt8 = 2
  public static let `TCP_VELOCITY_TO_X_Y`: UInt8 = 3
  public var `task_frame`: Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped()
  public var `selection_vector_x`: Bool = false
  public var `selection_vector_y`: Bool = false
  public var `selection_vector_z`: Bool = false
  public var `selection_vector_rx`: Bool = false
  public var `selection_vector_ry`: Bool = false
  public var `selection_vector_rz`: Bool = false
  public var `wrench`: Ros2Geometry_msgsMsgWrench = Ros2Geometry_msgsMsgWrench()
  public var `type`: UInt8 = 2
  public var `speed_limits`: Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist()
  public var `deviation_limits`: [Float] = [
    Float(bitPattern: 0x3c23_d70a), Float(bitPattern: 0x3c23_d70a), Float(bitPattern: 0x3c23_d70a),
    Float(bitPattern: 0x3c23_d70a), Float(bitPattern: 0x3c23_d70a), Float(bitPattern: 0x3c23_d70a),
  ]
  public var `damping_factor`: Float = Float(bitPattern: 0x3ccc_cccd)
  public var `gain_scaling`: Float = Float(bitPattern: 0x3f00_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`task_frame`.write(to: &w)
    try w.boolean(self.`selection_vector_x`)
    try w.boolean(self.`selection_vector_y`)
    try w.boolean(self.`selection_vector_z`)
    try w.boolean(self.`selection_vector_rx`)
    try w.boolean(self.`selection_vector_ry`)
    try w.boolean(self.`selection_vector_rz`)
    try self.`wrench`.write(to: &w)
    try w.integer(self.`type`)
    try self.`speed_limits`.write(to: &w)
    guard self.`deviation_limits`.count == 6 else { throw RosError(22) }
    for e in self.`deviation_limits` {
      try w.float32(e)
    }
    try w.float32(self.`damping_factor`)
    try w.float32(self.`gain_scaling`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsSrvSetForceMode_Request {
    var v = Ros2Ur_msgsSrvSetForceMode_Request()
    v.`task_frame` = try Ros2Geometry_msgsMsgPoseStamped.read(from: &r)
    v.`selection_vector_x` = try r.boolean()
    v.`selection_vector_y` = try r.boolean()
    v.`selection_vector_z` = try r.boolean()
    v.`selection_vector_rx` = try r.boolean()
    v.`selection_vector_ry` = try r.boolean()
    v.`selection_vector_rz` = try r.boolean()
    v.`wrench` = try Ros2Geometry_msgsMsgWrench.read(from: &r)
    v.`type` = try r.integer(UInt8.self)
    v.`speed_limits` = try Ros2Geometry_msgsMsgTwist.read(from: &r)
    let count10 = 6
    v.`deviation_limits` = []
    v.`deviation_limits`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`deviation_limits`.append(try r.float32())
    }
    v.`damping_factor` = try r.float32()
    v.`gain_scaling` = try r.float32()
    return v
  }
}
public struct Ros2Ur_msgsSrvSetForceMode_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_3f5438d426b7b68557ac8f43dc8efc2e2106782ec0cd4fd0dee7cdd69ddc7de8"
  public static let nativeType = "ur_msgs/srv/SetForceMode_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsSrvSetForceMode_Response {
    var v = Ros2Ur_msgsSrvSetForceMode_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_msgsSrvSetFrictionModelParameters_Request: Canonical {
  public static let maximumWireBytes = 104
  public static let codecIdentity =
    "UWVMROS1_e44ad15f9c45d5a65eb13e6bc6e973bb20eebdafa04a5f2e8bcf4b0b54ce91c2"
  public static let nativeType = "ur_msgs/srv/SetFrictionModelParameters_Request"
  public static let nativeIdentity: String? = nil
  public var `parameters`: Ros2Ur_msgsMsgFrictionModelParameters =
    Ros2Ur_msgsMsgFrictionModelParameters()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`parameters`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_msgsSrvSetFrictionModelParameters_Request
  {
    var v = Ros2Ur_msgsSrvSetFrictionModelParameters_Request()
    v.`parameters` = try Ros2Ur_msgsMsgFrictionModelParameters.read(from: &r)
    return v
  }
}
public struct Ros2Ur_msgsSrvSetFrictionModelParameters_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1caca29dda3dc32360fd010dfb352b6feb54bba66ee16edd2f4353e3382207b3"
  public static let nativeType = "ur_msgs/srv/SetFrictionModelParameters_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_msgsSrvSetFrictionModelParameters_Response
  {
    var v = Ros2Ur_msgsSrvSetFrictionModelParameters_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_msgsSrvSetGravity_Request: Canonical {
  public static let maximumWireBytes = 164
  public static let codecIdentity =
    "UWVMROS1_3d7fed6ae8accbddd5b09f93c3e49f2b9f99cae4cf80a951eb31ace30ec5a834"
  public static let nativeType = "ur_msgs/srv/SetGravity_Request"
  public static let nativeIdentity: String? = nil
  public var `gravity`: Ros2Geometry_msgsMsgVector3Stamped = Ros2Geometry_msgsMsgVector3Stamped()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`gravity`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsSrvSetGravity_Request {
    var v = Ros2Ur_msgsSrvSetGravity_Request()
    v.`gravity` = try Ros2Geometry_msgsMsgVector3Stamped.read(from: &r)
    return v
  }
}
public struct Ros2Ur_msgsSrvSetGravity_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_84694df7fbb4fd15bfecaf1aae683ef1795b0c4941d1987d951467448da5f793"
  public static let nativeType = "ur_msgs/srv/SetGravity_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `status`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`status`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsSrvSetGravity_Response {
    var v = Ros2Ur_msgsSrvSetGravity_Response()
    v.`success` = try r.boolean()
    v.`status` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Ur_msgsSrvSetIO_Request: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_c8ac4dddeb474521b4c701a0229e99af954416b7b8d7f32d2a19629d38b378c7"
  public static let nativeType = "ur_msgs/srv/SetIO_Request"
  public static let nativeIdentity: String? = nil
  public static let `PIN_AOUT0`: Int8 = 0
  public static let `PIN_AOUT1`: Int8 = 1
  public static let `PIN_DOUT0`: Int8 = 0
  public static let `PIN_DOUT1`: Int8 = 1
  public static let `PIN_DOUT2`: Int8 = 2
  public static let `PIN_DOUT3`: Int8 = 3
  public static let `PIN_DOUT4`: Int8 = 4
  public static let `PIN_DOUT5`: Int8 = 5
  public static let `PIN_DOUT6`: Int8 = 6
  public static let `PIN_DOUT7`: Int8 = 7
  public static let `PIN_CONF_OUT0`: Int8 = 8
  public static let `PIN_CONF_OUT1`: Int8 = 9
  public static let `PIN_CONF_OUT2`: Int8 = 10
  public static let `PIN_CONF_OUT3`: Int8 = 11
  public static let `PIN_CONF_OUT4`: Int8 = 12
  public static let `PIN_CONF_OUT5`: Int8 = 13
  public static let `PIN_CONF_OUT6`: Int8 = 14
  public static let `PIN_CONF_OUT7`: Int8 = 15
  public static let `PIN_TOOL_DOUT0`: Int8 = 16
  public static let `PIN_TOOL_DOUT1`: Int8 = 17
  public static let `FUN_SET_DIGITAL_OUT`: Int8 = 1
  public static let `FUN_SET_FLAG`: Int8 = 2
  public static let `FUN_SET_ANALOG_OUT`: Int8 = 3
  public static let `FUN_SET_TOOL_VOLTAGE`: Int8 = 4
  public static let `STATE_OFF`: Int8 = 0
  public static let `STATE_ON`: Int8 = 1
  public static let `STATE_TOOL_VOLTAGE_0V`: Int8 = 0
  public static let `STATE_TOOL_VOLTAGE_12V`: Int8 = 12
  public static let `STATE_TOOL_VOLTAGE_24V`: Int8 = 24
  public var `fun`: Int8 = 0
  public var `pin`: Int8 = 0
  public var `state`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`fun`)
    try w.integer(self.`pin`)
    try w.float32(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsSrvSetIO_Request {
    var v = Ros2Ur_msgsSrvSetIO_Request()
    v.`fun` = try r.integer(Int8.self)
    v.`pin` = try r.integer(Int8.self)
    v.`state` = try r.float32()
    return v
  }
}
public struct Ros2Ur_msgsSrvSetIO_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_bd32373034093ccdab140a5ba8ce8a420ef2ce441430e8306b2484f0ca535090"
  public static let nativeType = "ur_msgs/srv/SetIO_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsSrvSetIO_Response {
    var v = Ros2Ur_msgsSrvSetIO_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_msgsSrvSetPayload_Request: Canonical {
  public static let maximumWireBytes = 84
  public static let codecIdentity =
    "UWVMROS1_e76e256e1accf2d742c4cf529e5af1e830db75f3db703a1f368d28077a87e735"
  public static let nativeType = "ur_msgs/srv/SetPayload_Request"
  public static let nativeIdentity: String? = nil
  public var `mass`: Float = 0
  public var `center_of_gravity`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  public var `ixx`: Double = 0
  public var `iyy`: Double = 0
  public var `izz`: Double = 0
  public var `ixy`: Double = 0
  public var `ixz`: Double = 0
  public var `iyz`: Double = 0
  public var `transition_time`: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`mass`)
    try self.`center_of_gravity`.write(to: &w)
    try w.float64(self.`ixx`)
    try w.float64(self.`iyy`)
    try w.float64(self.`izz`)
    try w.float64(self.`ixy`)
    try w.float64(self.`ixz`)
    try w.float64(self.`iyz`)
    try self.`transition_time`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsSrvSetPayload_Request {
    var v = Ros2Ur_msgsSrvSetPayload_Request()
    v.`mass` = try r.float32()
    v.`center_of_gravity` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`ixx` = try r.float64()
    v.`iyy` = try r.float64()
    v.`izz` = try r.float64()
    v.`ixy` = try r.float64()
    v.`ixz` = try r.float64()
    v.`iyz` = try r.float64()
    v.`transition_time` = try Ros2Builtin_interfacesMsgDuration.read(from: &r)
    return v
  }
}
public struct Ros2Ur_msgsSrvSetPayload_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_036dbaa7d42b6cba6ad29a082e078401d507292483d260ba532f7d6947c1624c"
  public static let nativeType = "ur_msgs/srv/SetPayload_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Ur_msgsSrvSetPayload_Response {
    var v = Ros2Ur_msgsSrvSetPayload_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Ur_msgsSrvSetSpeedSliderFraction_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_d8f19fb240e4b70cad74c5111cdaebad14b480f21da953c95d474064b091abd8"
  public static let nativeType = "ur_msgs/srv/SetSpeedSliderFraction_Request"
  public static let nativeIdentity: String? = nil
  public var `speed_slider_fraction`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`speed_slider_fraction`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_msgsSrvSetSpeedSliderFraction_Request
  {
    var v = Ros2Ur_msgsSrvSetSpeedSliderFraction_Request()
    v.`speed_slider_fraction` = try r.float64()
    return v
  }
}
public struct Ros2Ur_msgsSrvSetSpeedSliderFraction_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1ab1ad5ab4b1ed302710ec055dff7644cc6e966af919ff311eaea6cddcf7dbb9"
  public static let nativeType = "ur_msgs/srv/SetSpeedSliderFraction_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ur_msgsSrvSetSpeedSliderFraction_Response
  {
    var v = Ros2Ur_msgsSrvSetSpeedSliderFraction_Response()
    v.`success` = try r.boolean()
    return v
  }
}
