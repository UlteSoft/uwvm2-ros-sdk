// @file Records.swift
// @brief Full leju swift codecs and original record metadata.
// @details Complete leju ros1_beta_packaged_ik values in swift. 17 original records retain 55 fields and 15
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Motion_capture_ikArmHandPose: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08"
  public static let nativeType = "motion_capture_ik/armHandPose"
  public static let nativeIdentity: String? = nil
  public var `pos_xyz`: [Double] = Array(repeating: 0, count: 3)
  public var `quat_xyzw`: [Double] = Array(repeating: 0, count: 4)
  public var `elbow_pos_xyz`: [Double] = Array(repeating: 0, count: 3)
  public var `joint_angles`: [Double] = Array(repeating: 0, count: 7)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos_xyz`.count == 3 else { throw RosError(22) }
    for e in self.`pos_xyz` {
      try w.float64(e)
    }
    guard self.`quat_xyzw`.count == 4 else { throw RosError(22) }
    for e in self.`quat_xyzw` {
      try w.float64(e)
    }
    guard self.`elbow_pos_xyz`.count == 3 else { throw RosError(22) }
    for e in self.`elbow_pos_xyz` {
      try w.float64(e)
    }
    guard self.`joint_angles`.count == 7 else { throw RosError(22) }
    for e in self.`joint_angles` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Motion_capture_ikArmHandPose {
    var v = Ros1Motion_capture_ikArmHandPose()
    let count0 = 3
    v.`pos_xyz` = []
    v.`pos_xyz`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos_xyz`.append(try r.float64())
    }
    let count1 = 4
    v.`quat_xyzw` = []
    v.`quat_xyzw`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`quat_xyzw`.append(try r.float64())
    }
    let count2 = 3
    v.`elbow_pos_xyz` = []
    v.`elbow_pos_xyz`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`elbow_pos_xyz`.append(try r.float64())
    }
    let count3 = 7
    v.`joint_angles` = []
    v.`joint_angles`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`joint_angles`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Motion_capture_ikArmHandPoseFree: Canonical {
  public static let maximumWireBytes = 212
  public static let codecIdentity =
    "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf"
  public static let nativeType = "motion_capture_ik/armHandPoseFree"
  public static let nativeIdentity: String? = nil
  public var `pos_xyz`: [Double] = Array(repeating: 0, count: 3)
  public var `quat_xyzw`: [Double] = Array(repeating: 0, count: 4)
  public var `elbow_pos_xyz`: [Double] = Array(repeating: 0, count: 3)
  public var `joint_angles`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos_xyz`.count == 3 else { throw RosError(22) }
    for e in self.`pos_xyz` {
      try w.float64(e)
    }
    guard self.`quat_xyzw`.count == 4 else { throw RosError(22) }
    for e in self.`quat_xyzw` {
      try w.float64(e)
    }
    guard self.`elbow_pos_xyz`.count == 3 else { throw RosError(22) }
    for e in self.`elbow_pos_xyz` {
      try w.float64(e)
    }
    guard self.`joint_angles`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_angles`.count))
    for e in self.`joint_angles` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Motion_capture_ikArmHandPoseFree {
    var v = Ros1Motion_capture_ikArmHandPoseFree()
    let count0 = 3
    v.`pos_xyz` = []
    v.`pos_xyz`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos_xyz`.append(try r.float64())
    }
    let count1 = 4
    v.`quat_xyzw` = []
    v.`quat_xyzw`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`quat_xyzw`.append(try r.float64())
    }
    let count2 = 3
    v.`elbow_pos_xyz` = []
    v.`elbow_pos_xyz`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`elbow_pos_xyz`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`joint_angles` = []
    v.`joint_angles`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`joint_angles`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Motion_capture_ikChangeArmCtrlModeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd"
  public static let nativeType = "motion_capture_ik/changeArmCtrlModeRequest"
  public static let nativeIdentity: String? = nil
  public var `control_mode`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`control_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Motion_capture_ikChangeArmCtrlModeRequest
  {
    var v = Ros1Motion_capture_ikChangeArmCtrlModeRequest()
    v.`control_mode` = try r.boolean()
    return v
  }
}
public struct Ros1Motion_capture_ikChangeArmCtrlModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac"
  public static let nativeType = "motion_capture_ik/changeArmCtrlModeResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`result`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Motion_capture_ikChangeArmCtrlModeResponse
  {
    var v = Ros1Motion_capture_ikChangeArmCtrlModeResponse()
    v.`result` = try r.boolean()
    return v
  }
}
public struct Ros1Motion_capture_ikHandPose: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f"
  public static let nativeType = "motion_capture_ik/handPose"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `roll`: Double = 0
  public var `pitch`: Double = 0
  public var `yaw`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`roll`)
    try w.float64(self.`pitch`)
    try w.float64(self.`yaw`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Motion_capture_ikHandPose {
    var v = Ros1Motion_capture_ikHandPose()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`roll` = try r.float64()
    v.`pitch` = try r.float64()
    v.`yaw` = try r.float64()
    return v
  }
}
public struct Ros1Motion_capture_ikIkSolveError: Canonical {
  public static let maximumWireBytes = 356
  public static let codecIdentity =
    "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94"
  public static let nativeType = "motion_capture_ik/ikSolveError"
  public static let nativeIdentity: String? = nil
  public var `ik_type`: String = ""
  public var `left_pose_error`: Ros1Motion_capture_ikHandPose = Ros1Motion_capture_ikHandPose()
  public var `right_pose_error`: Ros1Motion_capture_ikHandPose = Ros1Motion_capture_ikHandPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`ik_type`, bound: 256)
    try self.`left_pose_error`.write(to: &w)
    try self.`right_pose_error`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Motion_capture_ikIkSolveError {
    var v = Ros1Motion_capture_ikIkSolveError()
    v.`ik_type` = try r.string(bound: 256)
    v.`left_pose_error` = try Ros1Motion_capture_ikHandPose.read(from: &r)
    v.`right_pose_error` = try Ros1Motion_capture_ikHandPose.read(from: &r)
    return v
  }
}
public struct Ros1Motion_capture_ikIkSolveParam: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981"
  public static let nativeType = "motion_capture_ik/ikSolveParam"
  public static let nativeIdentity: String? = nil
  public var `major_optimality_tol`: Double = 0
  public var `major_feasibility_tol`: Double = 0
  public var `minor_feasibility_tol`: Double = 0
  public var `major_iterations_limit`: Double = 0
  public var `oritation_constraint_tol`: Double = 0
  public var `pos_constraint_tol`: Double = 0
  public var `pos_cost_weight`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`major_optimality_tol`)
    try w.float64(self.`major_feasibility_tol`)
    try w.float64(self.`minor_feasibility_tol`)
    try w.float64(self.`major_iterations_limit`)
    try w.float64(self.`oritation_constraint_tol`)
    try w.float64(self.`pos_constraint_tol`)
    try w.float64(self.`pos_cost_weight`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Motion_capture_ikIkSolveParam {
    var v = Ros1Motion_capture_ikIkSolveParam()
    v.`major_optimality_tol` = try r.float64()
    v.`major_feasibility_tol` = try r.float64()
    v.`minor_feasibility_tol` = try r.float64()
    v.`major_iterations_limit` = try r.float64()
    v.`oritation_constraint_tol` = try r.float64()
    v.`pos_constraint_tol` = try r.float64()
    v.`pos_cost_weight` = try r.float64()
    return v
  }
}
public struct Ros1Motion_capture_ikRecordArmHandPose: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a"
  public static let nativeType = "motion_capture_ik/recordArmHandPose"
  public static let nativeIdentity: String? = nil
  public var `left_pose`: Ros1Motion_capture_ikArmHandPose = Ros1Motion_capture_ikArmHandPose()
  public var `right_pose`: Ros1Motion_capture_ikArmHandPose = Ros1Motion_capture_ikArmHandPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`left_pose`.write(to: &w)
    try self.`right_pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Motion_capture_ikRecordArmHandPose
  {
    var v = Ros1Motion_capture_ikRecordArmHandPose()
    v.`left_pose` = try Ros1Motion_capture_ikArmHandPose.read(from: &r)
    v.`right_pose` = try Ros1Motion_capture_ikArmHandPose.read(from: &r)
    return v
  }
}
public struct Ros1Motion_capture_ikRecordArmHandPoseFree: Canonical {
  public static let maximumWireBytes = 424
  public static let codecIdentity =
    "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811"
  public static let nativeType = "motion_capture_ik/recordArmHandPoseFree"
  public static let nativeIdentity: String? = nil
  public var `left_pose`: Ros1Motion_capture_ikArmHandPoseFree =
    Ros1Motion_capture_ikArmHandPoseFree()
  public var `right_pose`: Ros1Motion_capture_ikArmHandPoseFree =
    Ros1Motion_capture_ikArmHandPoseFree()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`left_pose`.write(to: &w)
    try self.`right_pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Motion_capture_ikRecordArmHandPoseFree
  {
    var v = Ros1Motion_capture_ikRecordArmHandPoseFree()
    v.`left_pose` = try Ros1Motion_capture_ikArmHandPoseFree.read(from: &r)
    v.`right_pose` = try Ros1Motion_capture_ikArmHandPoseFree.read(from: &r)
    return v
  }
}
public struct Ros1Motion_capture_ikRobotArmQVVD: Canonical {
  public static let maximumWireBytes = 396
  public static let codecIdentity =
    "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb"
  public static let nativeType = "motion_capture_ik/robotArmQVVD"
  public static let nativeIdentity: String? = nil
  public var `q`: [Double] = []
  public var `v`: [Double] = []
  public var `vd`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`q`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`q`.count))
    for e in self.`q` {
      try w.float64(e)
    }
    guard self.`v`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`v`.count))
    for e in self.`v` {
      try w.float64(e)
    }
    guard self.`vd`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`vd`.count))
    for e in self.`vd` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Motion_capture_ikRobotArmQVVD {
    var v = Ros1Motion_capture_ikRobotArmQVVD()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`q` = []
    v.`q`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`q`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`v` = []
    v.`v`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`v`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`vd` = []
    v.`vd`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`vd`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Time: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
  public static let nativeType = "time"
  public static let nativeIdentity: String? = nil
  public var `sec`: UInt32 = 0
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
public struct Ros1Std_msgsHeader: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7"
  public static let nativeType = "std_msgs/Header"
  public static let nativeIdentity: String? = nil
  public var `seq`: UInt32 = 0
  public var `stamp`: Ros1Time = Ros1Time()
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`seq`)
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsHeader {
    var v = Ros1Std_msgsHeader()
    v.`seq` = try r.integer(UInt32.self)
    v.`stamp` = try Ros1Time.read(from: &r)
    v.`frame_id` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Motion_capture_ikRobotHandPosition: Canonical {
  public static let maximumWireBytes = 792
  public static let codecIdentity =
    "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa"
  public static let nativeType = "motion_capture_ik/robotHandPosition"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `left_hand_position`: [UInt8] = []
  public var `right_hand_position`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`left_hand_position`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`left_hand_position`.count))
    for e in self.`left_hand_position` {
      try w.integer(e)
    }
    guard self.`right_hand_position`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`right_hand_position`.count))
    for e in self.`right_hand_position` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Motion_capture_ikRobotHandPosition
  {
    var v = Ros1Motion_capture_ikRobotHandPosition()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 256 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`left_hand_position` = []
    v.`left_hand_position`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`left_hand_position`.append(try r.integer(UInt8.self))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 256 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`right_hand_position` = []
    v.`right_hand_position`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`right_hand_position`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros1Motion_capture_ikTwoArmHandPose: Canonical {
  public static let maximumWireBytes = 544
  public static let codecIdentity =
    "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181"
  public static let nativeType = "motion_capture_ik/twoArmHandPose"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `left_pose`: Ros1Motion_capture_ikArmHandPose = Ros1Motion_capture_ikArmHandPose()
  public var `right_pose`: Ros1Motion_capture_ikArmHandPose = Ros1Motion_capture_ikArmHandPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`left_pose`.write(to: &w)
    try self.`right_pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Motion_capture_ikTwoArmHandPose {
    var v = Ros1Motion_capture_ikTwoArmHandPose()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`left_pose` = try Ros1Motion_capture_ikArmHandPose.read(from: &r)
    v.`right_pose` = try Ros1Motion_capture_ikArmHandPose.read(from: &r)
    return v
  }
}
public struct Ros1Motion_capture_ikTwoArmHandPoseCmd: Canonical {
  public static let maximumWireBytes = 602
  public static let codecIdentity =
    "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc"
  public static let nativeType = "motion_capture_ik/twoArmHandPoseCmd"
  public static let nativeIdentity: String? = nil
  public var `hand_poses`: Ros1Motion_capture_ikTwoArmHandPose =
    Ros1Motion_capture_ikTwoArmHandPose()
  public var `use_custom_ik_param`: Bool = false
  public var `joint_angles_as_q0`: Bool = false
  public var `ik_param`: Ros1Motion_capture_ikIkSolveParam = Ros1Motion_capture_ikIkSolveParam()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`hand_poses`.write(to: &w)
    try w.boolean(self.`use_custom_ik_param`)
    try w.boolean(self.`joint_angles_as_q0`)
    try self.`ik_param`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Motion_capture_ikTwoArmHandPoseCmd
  {
    var v = Ros1Motion_capture_ikTwoArmHandPoseCmd()
    v.`hand_poses` = try Ros1Motion_capture_ikTwoArmHandPose.read(from: &r)
    v.`use_custom_ik_param` = try r.boolean()
    v.`joint_angles_as_q0` = try r.boolean()
    v.`ik_param` = try Ros1Motion_capture_ikIkSolveParam.read(from: &r)
    return v
  }
}
public struct Ros1Motion_capture_ikTwoArmHandPoseFree: Canonical {
  public static let maximumWireBytes = 696
  public static let codecIdentity =
    "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c"
  public static let nativeType = "motion_capture_ik/twoArmHandPoseFree"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `left_pose`: Ros1Motion_capture_ikArmHandPoseFree =
    Ros1Motion_capture_ikArmHandPoseFree()
  public var `right_pose`: Ros1Motion_capture_ikArmHandPoseFree =
    Ros1Motion_capture_ikArmHandPoseFree()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`left_pose`.write(to: &w)
    try self.`right_pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Motion_capture_ikTwoArmHandPoseFree
  {
    var v = Ros1Motion_capture_ikTwoArmHandPoseFree()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`left_pose` = try Ros1Motion_capture_ikArmHandPoseFree.read(from: &r)
    v.`right_pose` = try Ros1Motion_capture_ikArmHandPoseFree.read(from: &r)
    return v
  }
}
public struct Ros1Motion_capture_ikTwoArmHandPoseCmdFree: Canonical {
  public static let maximumWireBytes = 754
  public static let codecIdentity =
    "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773"
  public static let nativeType = "motion_capture_ik/twoArmHandPoseCmdFree"
  public static let nativeIdentity: String? = nil
  public var `hand_poses`: Ros1Motion_capture_ikTwoArmHandPoseFree =
    Ros1Motion_capture_ikTwoArmHandPoseFree()
  public var `use_custom_ik_param`: Bool = false
  public var `joint_angles_as_q0`: Bool = false
  public var `ik_param`: Ros1Motion_capture_ikIkSolveParam = Ros1Motion_capture_ikIkSolveParam()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`hand_poses`.write(to: &w)
    try w.boolean(self.`use_custom_ik_param`)
    try w.boolean(self.`joint_angles_as_q0`)
    try self.`ik_param`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Motion_capture_ikTwoArmHandPoseCmdFree
  {
    var v = Ros1Motion_capture_ikTwoArmHandPoseCmdFree()
    v.`hand_poses` = try Ros1Motion_capture_ikTwoArmHandPoseFree.read(from: &r)
    v.`use_custom_ik_param` = try r.boolean()
    v.`joint_angles_as_q0` = try r.boolean()
    v.`ik_param` = try Ros1Motion_capture_ikIkSolveParam.read(from: &r)
    return v
  }
}
