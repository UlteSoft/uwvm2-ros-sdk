/// @file records.swift
/// @brief Preserve the complete original realman/ros2_foxy canonical value domain.
/// @details The selected domain contains 80 complete record/components and 339 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
// Generated complete canonical values. No I/O or authority.
import RosWasm

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
public struct Ros2Rm_ros_interfacesMsgAlohastate: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab"
  public static let nativeType = "rm_ros_interfaces/msg/Alohastate"
  public static let nativeIdentity: String? = nil
  public var `io1_state`: Int16 = 0
  public var `io2_state`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`io1_state`)
    try w.integer(self.`io2_state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgAlohastate {
    var v = Ros2Rm_ros_interfacesMsgAlohastate()
    v.`io1_state` = try r.integer(Int16.self)
    v.`io2_state` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgArmcurrentstatus: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc"
  public static let nativeType = "rm_ros_interfaces/msg/Armcurrentstatus"
  public static let nativeIdentity: String? = nil
  public var `arm_current_status`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`arm_current_status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgArmcurrentstatus
  {
    var v = Ros2Rm_ros_interfacesMsgArmcurrentstatus()
    v.`arm_current_status` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgArmoriginalstate: Canonical {
  public static let maximumWireBytes = 96
  public static let codecIdentity =
    "UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c"
  public static let nativeType = "rm_ros_interfaces/msg/Armoriginalstate"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `pose`: [Float] = Array(repeating: 0, count: 6)
  public var `err`: UInt16 = 0
  public var `err_len`: UInt8 = 0
  public var `dof`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    guard self.`pose`.count == 6 else { throw RosError(22) }
    for e in self.`pose` {
      try w.float32(e)
    }
    try w.integer(self.`err`)
    try w.integer(self.`err_len`)
    try w.integer(self.`dof`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgArmoriginalstate
  {
    var v = Ros2Rm_ros_interfacesMsgArmoriginalstate()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    let count1 = 6
    v.`pose` = []
    v.`pose`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`pose`.append(try r.float32())
    }
    v.`err` = try r.integer(UInt16.self)
    v.`err_len` = try r.integer(UInt8.self)
    v.`dof` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgSoftwarebuildinfo: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc"
  public static let nativeType = "rm_ros_interfaces/msg/Softwarebuildinfo"
  public static let nativeIdentity: String? = nil
  public var `build_time`: String = ""
  public var `version`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`build_time`, bound: 256)
    try w.string(self.`version`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
  {
    var v = Ros2Rm_ros_interfacesMsgSoftwarebuildinfo()
    v.`build_time` = try r.string(bound: 256)
    v.`version` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgArmsoftversion: Canonical {
  public static let maximumWireBytes = 4421
  public static let codecIdentity =
    "UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c"
  public static let nativeType = "rm_ros_interfaces/msg/Armsoftversion"
  public static let nativeIdentity: String? = nil
  public var `product_version`: String = ""
  public var `controller_version`: String = ""
  public var `algorithm_info`: String = ""
  public var `ctrl_info`: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo =
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfo()
  public var `dynamic_info`: String = ""
  public var `plan_info`: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo =
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfo()
  public var `com_info`: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo =
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfo()
  public var `program_info`: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo =
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfo()
  public var `state`: Bool = false
  public var `planversion`: String = ""
  public var `ctrlversion`: String = ""
  public var `kernal1`: String = ""
  public var `kernal2`: String = ""
  public var `productversion`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`product_version`, bound: 256)
    try w.string(self.`controller_version`, bound: 256)
    try w.string(self.`algorithm_info`, bound: 256)
    try self.`ctrl_info`.write(to: &w)
    try w.string(self.`dynamic_info`, bound: 256)
    try self.`plan_info`.write(to: &w)
    try self.`com_info`.write(to: &w)
    try self.`program_info`.write(to: &w)
    try w.boolean(self.`state`)
    try w.string(self.`planversion`, bound: 256)
    try w.string(self.`ctrlversion`, bound: 256)
    try w.string(self.`kernal1`, bound: 256)
    try w.string(self.`kernal2`, bound: 256)
    try w.string(self.`productversion`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgArmsoftversion
  {
    var v = Ros2Rm_ros_interfacesMsgArmsoftversion()
    v.`product_version` = try r.string(bound: 256)
    v.`controller_version` = try r.string(bound: 256)
    v.`algorithm_info` = try r.string(bound: 256)
    v.`ctrl_info` = try Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.read(from: &r)
    v.`dynamic_info` = try r.string(bound: 256)
    v.`plan_info` = try Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.read(from: &r)
    v.`com_info` = try Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.read(from: &r)
    v.`program_info` = try Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.read(from: &r)
    v.`state` = try r.boolean()
    v.`planversion` = try r.string(bound: 256)
    v.`ctrlversion` = try r.string(bound: 256)
    v.`kernal1` = try r.string(bound: 256)
    v.`kernal2` = try r.string(bound: 256)
    v.`productversion` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgArmsoftversionv3: Canonical {
  public static let maximumWireBytes = 2080
  public static let codecIdentity =
    "UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b"
  public static let nativeType = "rm_ros_interfaces/msg/Armsoftversionv3"
  public static let nativeIdentity: String? = nil
  public var `product_version`: String = ""
  public var `controller_version`: String = ""
  public var `algorithm_info`: String = ""
  public var `ctrl_info`: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo =
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfo()
  public var `dynamic_info`: String = ""
  public var `plan_info`: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo =
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfo()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`product_version`, bound: 256)
    try w.string(self.`controller_version`, bound: 256)
    try w.string(self.`algorithm_info`, bound: 256)
    try self.`ctrl_info`.write(to: &w)
    try w.string(self.`dynamic_info`, bound: 256)
    try self.`plan_info`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgArmsoftversionv3
  {
    var v = Ros2Rm_ros_interfacesMsgArmsoftversionv3()
    v.`product_version` = try r.string(bound: 256)
    v.`controller_version` = try r.string(bound: 256)
    v.`algorithm_info` = try r.string(bound: 256)
    v.`ctrl_info` = try Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.read(from: &r)
    v.`dynamic_info` = try r.string(bound: 256)
    v.`plan_info` = try Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.read(from: &r)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgArmsoftversionv4: Canonical {
  public static let maximumWireBytes = 2340
  public static let codecIdentity =
    "UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d"
  public static let nativeType = "rm_ros_interfaces/msg/Armsoftversionv4"
  public static let nativeIdentity: String? = nil
  public var `product_version`: String = ""
  public var `controller_version`: String = ""
  public var `algorithm_info`: String = ""
  public var `ctrl_info`: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo =
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfo()
  public var `com_info`: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo =
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfo()
  public var `program_info`: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo =
    Ros2Rm_ros_interfacesMsgSoftwarebuildinfo()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`product_version`, bound: 256)
    try w.string(self.`controller_version`, bound: 256)
    try w.string(self.`algorithm_info`, bound: 256)
    try self.`ctrl_info`.write(to: &w)
    try self.`com_info`.write(to: &w)
    try self.`program_info`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgArmsoftversionv4
  {
    var v = Ros2Rm_ros_interfacesMsgArmsoftversionv4()
    v.`product_version` = try r.string(bound: 256)
    v.`controller_version` = try r.string(bound: 256)
    v.`algorithm_info` = try r.string(bound: 256)
    v.`ctrl_info` = try Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.read(from: &r)
    v.`com_info` = try Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.read(from: &r)
    v.`program_info` = try Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.read(from: &r)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgArmstate: Canonical {
  public static let maximumWireBytes = 128
  public static let codecIdentity =
    "UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7"
  public static let nativeType = "rm_ros_interfaces/msg/Armstate"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public var `err`: UInt16 = 0
  public var `err_len`: UInt8 = 0
  public var `dof`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    try self.`pose`.write(to: &w)
    try w.integer(self.`err`)
    try w.integer(self.`err_len`)
    try w.integer(self.`dof`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgArmstate {
    var v = Ros2Rm_ros_interfacesMsgArmstate()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`err` = try r.integer(UInt16.self)
    v.`err_len` = try r.integer(UInt8.self)
    v.`dof` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgCartepos: Canonical {
  public static let maximumWireBytes = 57
  public static let codecIdentity =
    "UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13"
  public static let nativeType = "rm_ros_interfaces/msg/Cartepos"
  public static let nativeIdentity: String? = nil
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public var `follow`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    try w.boolean(self.`follow`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgCartepos {
    var v = Ros2Rm_ros_interfacesMsgCartepos()
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`follow` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgCarteposcustom: Canonical {
  public static let maximumWireBytes = 59
  public static let codecIdentity =
    "UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c"
  public static let nativeType = "rm_ros_interfaces/msg/Carteposcustom"
  public static let nativeIdentity: String? = nil
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public var `follow`: Bool = false
  public var `trajectory_mode`: UInt8 = 0
  public var `radio`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    try w.boolean(self.`follow`)
    try w.integer(self.`trajectory_mode`)
    try w.integer(self.`radio`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgCarteposcustom
  {
    var v = Ros2Rm_ros_interfacesMsgCarteposcustom()
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`follow` = try r.boolean()
    v.`trajectory_mode` = try r.integer(UInt8.self)
    v.`radio` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgExpandpos: Canonical {
  public static let maximumWireBytes = 7
  public static let codecIdentity =
    "UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c"
  public static let nativeType = "rm_ros_interfaces/msg/Expandpos"
  public static let nativeIdentity: String? = nil
  public var `pos`: Int32 = 0
  public var `speed`: UInt16 = 0
  public var `block`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pos`)
    try w.integer(self.`speed`)
    try w.boolean(self.`block`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgExpandpos {
    var v = Ros2Rm_ros_interfacesMsgExpandpos()
    v.`pos` = try r.integer(Int32.self)
    v.`speed` = try r.integer(UInt16.self)
    v.`block` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgExpandstate: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4"
  public static let nativeType = "rm_ros_interfaces/msg/Expandstate"
  public static let nativeIdentity: String? = nil
  public var `pos`: Int32 = 0
  public var `current`: Int32 = 0
  public var `err_flag`: UInt16 = 0
  public var `mode`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pos`)
    try w.integer(self.`current`)
    try w.integer(self.`err_flag`)
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgExpandstate {
    var v = Ros2Rm_ros_interfacesMsgExpandstate()
    v.`pos` = try r.integer(Int32.self)
    v.`current` = try r.integer(Int32.self)
    v.`err_flag` = try r.integer(UInt16.self)
    v.`mode` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgFlowchartrunstate: Canonical {
  public static let maximumWireBytes = 525
  public static let codecIdentity =
    "UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f"
  public static let nativeType = "rm_ros_interfaces/msg/Flowchartrunstate"
  public static let nativeIdentity: String? = nil
  public var `run_state`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `name`: String = ""
  public var `plan_speed`: UInt8 = 0
  public var `step_mode`: UInt8 = 0
  public var `modal_id`: String = ""
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`run_state`)
    try w.integer(self.`id`)
    try w.string(self.`name`, bound: 256)
    try w.integer(self.`plan_speed`)
    try w.integer(self.`step_mode`)
    try w.string(self.`modal_id`, bound: 256)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgFlowchartrunstate
  {
    var v = Ros2Rm_ros_interfacesMsgFlowchartrunstate()
    v.`run_state` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    v.`name` = try r.string(bound: 256)
    v.`plan_speed` = try r.integer(UInt8.self)
    v.`step_mode` = try r.integer(UInt8.self)
    v.`modal_id` = try r.string(bound: 256)
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgForce_Position_State: Canonical {
  public static let maximumWireBytes = 30
  public static let codecIdentity =
    "UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7"
  public static let nativeType = "rm_ros_interfaces/msg/Force_Position_State"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = Array(repeating: 0, count: 6)
  public var `force`: Float = 0
  public var `arm_err`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count == 6 else { throw RosError(22) }
    for e in self.`joint` {
      try w.float32(e)
    }
    try w.float32(self.`force`)
    try w.integer(self.`arm_err`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgForce_Position_State
  {
    var v = Ros2Rm_ros_interfacesMsgForce_Position_State()
    let count0 = 6
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    v.`force` = try r.float32()
    v.`arm_err` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgForcepositionmove: Canonical {
  public static let maximumWireBytes = 185
  public static let codecIdentity =
    "UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224"
  public static let nativeType = "rm_ros_interfaces/msg/Forcepositionmove"
  public static let nativeIdentity: String? = nil
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public var `joint`: [Float] = []
  public var `flag`: UInt8 = 0
  public var `sensor`: UInt8 = 0
  public var `mode`: UInt8 = 0
  public var `control_mode`: [UInt8] = Array(repeating: 0, count: 6)
  public var `follow`: Bool = false
  public var `desired_force`: [Float] = Array(repeating: 0, count: 6)
  public var `limit_vel`: [Float] = Array(repeating: 0, count: 6)
  public var `trajectory_mode`: UInt8 = 0
  public var `radio`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    try w.integer(self.`flag`)
    try w.integer(self.`sensor`)
    try w.integer(self.`mode`)
    guard self.`control_mode`.count == 6 else { throw RosError(22) }
    for e in self.`control_mode` {
      try w.integer(e)
    }
    try w.boolean(self.`follow`)
    guard self.`desired_force`.count == 6 else { throw RosError(22) }
    for e in self.`desired_force` {
      try w.float32(e)
    }
    guard self.`limit_vel`.count == 6 else { throw RosError(22) }
    for e in self.`limit_vel` {
      try w.float32(e)
    }
    try w.integer(self.`trajectory_mode`)
    try w.integer(self.`radio`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgForcepositionmove
  {
    var v = Ros2Rm_ros_interfacesMsgForcepositionmove()
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint` = []
    v.`joint`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint`.append(try r.float32())
    }
    v.`flag` = try r.integer(UInt8.self)
    v.`sensor` = try r.integer(UInt8.self)
    v.`mode` = try r.integer(UInt8.self)
    let count5 = 6
    v.`control_mode` = []
    v.`control_mode`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`control_mode`.append(try r.integer(UInt8.self))
    }
    v.`follow` = try r.boolean()
    let count7 = 6
    v.`desired_force` = []
    v.`desired_force`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`desired_force`.append(try r.float32())
    }
    let count8 = 6
    v.`limit_vel` = []
    v.`limit_vel`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`limit_vel`.append(try r.float32())
    }
    v.`trajectory_mode` = try r.integer(UInt8.self)
    v.`radio` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgForcepositionmovejoint: Canonical {
  public static let maximumWireBytes = 78
  public static let codecIdentity =
    "UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed"
  public static let nativeType = "rm_ros_interfaces/msg/Forcepositionmovejoint"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `sensor`: UInt8 = 0
  public var `mode`: UInt8 = 0
  public var `dir`: Int16 = 0
  public var `force`: Float = 0
  public var `follow`: Bool = false
  public var `dof`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    try w.integer(self.`sensor`)
    try w.integer(self.`mode`)
    try w.integer(self.`dir`)
    try w.float32(self.`force`)
    try w.boolean(self.`follow`)
    try w.integer(self.`dof`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgForcepositionmovejoint
  {
    var v = Ros2Rm_ros_interfacesMsgForcepositionmovejoint()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    v.`sensor` = try r.integer(UInt8.self)
    v.`mode` = try r.integer(UInt8.self)
    v.`dir` = try r.integer(Int16.self)
    v.`force` = try r.float32()
    v.`follow` = try r.boolean()
    v.`dof` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgForcepositionmovepose: Canonical {
  public static let maximumWireBytes = 62
  public static let codecIdentity =
    "UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3"
  public static let nativeType = "rm_ros_interfaces/msg/Forcepositionmovepose"
  public static let nativeIdentity: String? = nil
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public var `sensor`: UInt8 = 0
  public var `mode`: UInt8 = 0
  public var `dir`: UInt8 = 0
  public var `force`: Int16 = 0
  public var `follow`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    try w.integer(self.`sensor`)
    try w.integer(self.`mode`)
    try w.integer(self.`dir`)
    try w.integer(self.`force`)
    try w.boolean(self.`follow`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgForcepositionmovepose
  {
    var v = Ros2Rm_ros_interfacesMsgForcepositionmovepose()
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`sensor` = try r.integer(UInt8.self)
    v.`mode` = try r.integer(UInt8.self)
    v.`dir` = try r.integer(UInt8.self)
    v.`force` = try r.integer(Int16.self)
    v.`follow` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgGetArmState_Command: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30"
  public static let nativeType = "rm_ros_interfaces/msg/GetArmState_Command"
  public static let nativeIdentity: String? = nil
  public var `command`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`command`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgGetArmState_Command
  {
    var v = Ros2Rm_ros_interfacesMsgGetArmState_Command()
    v.`command` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgGetallframe: Canonical {
  public static let maximumWireBytes = 2600
  public static let codecIdentity =
    "UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef"
  public static let nativeType = "rm_ros_interfaces/msg/Getallframe"
  public static let nativeIdentity: String? = nil
  public var `frame_name`: [String] = Array(repeating: "", count: 10)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`frame_name`.count == 10 else { throw RosError(22) }
    for e in self.`frame_name` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgGetallframe {
    var v = Ros2Rm_ros_interfacesMsgGetallframe()
    let count0 = 10
    v.`frame_name` = []
    v.`frame_name`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`frame_name`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686"
  public static let nativeType = "rm_ros_interfaces/msg/Getmodbustcpmasterlist"
  public static let nativeIdentity: String? = nil
  public var `page_num`: Int32 = 0
  public var `page_size`: Int32 = 0
  public var `vague_search`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`page_num`)
    try w.integer(self.`page_size`)
    try w.string(self.`vague_search`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
  {
    var v = Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist()
    v.`page_num` = try r.integer(Int32.self)
    v.`page_size` = try r.integer(Int32.self)
    v.`vague_search` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgGettrajectorylist: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b"
  public static let nativeType = "rm_ros_interfaces/msg/Gettrajectorylist"
  public static let nativeIdentity: String? = nil
  public var `page_num`: Int32 = 0
  public var `page_size`: Int32 = 0
  public var `vague_search`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`page_num`)
    try w.integer(self.`page_size`)
    try w.string(self.`vague_search`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgGettrajectorylist
  {
    var v = Ros2Rm_ros_interfacesMsgGettrajectorylist()
    v.`page_num` = try r.integer(Int32.self)
    v.`page_size` = try r.integer(Int32.self)
    v.`vague_search` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgGripperpick: Canonical {
  public static let maximumWireBytes = 7
  public static let codecIdentity =
    "UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2"
  public static let nativeType = "rm_ros_interfaces/msg/Gripperpick"
  public static let nativeIdentity: String? = nil
  public var `speed`: UInt16 = 0
  public var `force`: UInt16 = 0
  public var `block`: Bool = false
  public var `timeout`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed`)
    try w.integer(self.`force`)
    try w.boolean(self.`block`)
    try w.integer(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgGripperpick {
    var v = Ros2Rm_ros_interfacesMsgGripperpick()
    v.`speed` = try r.integer(UInt16.self)
    v.`force` = try r.integer(UInt16.self)
    v.`block` = try r.boolean()
    v.`timeout` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgGripperset: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b"
  public static let nativeType = "rm_ros_interfaces/msg/Gripperset"
  public static let nativeIdentity: String? = nil
  public var `position`: UInt16 = 0
  public var `block`: Bool = false
  public var `timeout`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`position`)
    try w.boolean(self.`block`)
    try w.integer(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgGripperset {
    var v = Ros2Rm_ros_interfacesMsgGripperset()
    v.`position` = try r.integer(UInt16.self)
    v.`block` = try r.boolean()
    v.`timeout` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgHandangle: Canonical {
  public static let maximumWireBytes = 13
  public static let codecIdentity =
    "UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf"
  public static let nativeType = "rm_ros_interfaces/msg/Handangle"
  public static let nativeIdentity: String? = nil
  public var `hand_angle`: [Int16] = Array(repeating: 0, count: 6)
  public var `block`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`hand_angle`.count == 6 else { throw RosError(22) }
    for e in self.`hand_angle` {
      try w.integer(e)
    }
    try w.boolean(self.`block`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgHandangle {
    var v = Ros2Rm_ros_interfacesMsgHandangle()
    let count0 = 6
    v.`hand_angle` = []
    v.`hand_angle`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`hand_angle`.append(try r.integer(Int16.self))
    }
    v.`block` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgHandforce: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2"
  public static let nativeType = "rm_ros_interfaces/msg/Handforce"
  public static let nativeIdentity: String? = nil
  public var `hand_force`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`hand_force`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgHandforce {
    var v = Ros2Rm_ros_interfacesMsgHandforce()
    v.`hand_force` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgHandposture: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f"
  public static let nativeType = "rm_ros_interfaces/msg/Handposture"
  public static let nativeIdentity: String? = nil
  public var `posture_num`: UInt16 = 0
  public var `block`: Bool = false
  public var `timeout`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`posture_num`)
    try w.boolean(self.`block`)
    try w.integer(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgHandposture {
    var v = Ros2Rm_ros_interfacesMsgHandposture()
    v.`posture_num` = try r.integer(UInt16.self)
    v.`block` = try r.boolean()
    v.`timeout` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgHandseq: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842"
  public static let nativeType = "rm_ros_interfaces/msg/Handseq"
  public static let nativeIdentity: String? = nil
  public var `seq_num`: UInt16 = 0
  public var `block`: Bool = false
  public var `timeout`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`seq_num`)
    try w.boolean(self.`block`)
    try w.integer(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgHandseq {
    var v = Ros2Rm_ros_interfacesMsgHandseq()
    v.`seq_num` = try r.integer(UInt16.self)
    v.`block` = try r.boolean()
    v.`timeout` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgHandspeed: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684"
  public static let nativeType = "rm_ros_interfaces/msg/Handspeed"
  public static let nativeIdentity: String? = nil
  public var `hand_speed`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`hand_speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgHandspeed {
    var v = Ros2Rm_ros_interfacesMsgHandspeed()
    v.`hand_speed` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgHandstatus: Canonical {
  public static let maximumWireBytes = 50
  public static let codecIdentity =
    "UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3"
  public static let nativeType = "rm_ros_interfaces/msg/Handstatus"
  public static let nativeIdentity: String? = nil
  public var `hand_angle`: [UInt16] = Array(repeating: 0, count: 6)
  public var `hand_pos`: [UInt16] = Array(repeating: 0, count: 6)
  public var `hand_state`: [UInt16] = Array(repeating: 0, count: 6)
  public var `hand_force`: [UInt16] = Array(repeating: 0, count: 6)
  public var `hand_err`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`hand_angle`.count == 6 else { throw RosError(22) }
    for e in self.`hand_angle` {
      try w.integer(e)
    }
    guard self.`hand_pos`.count == 6 else { throw RosError(22) }
    for e in self.`hand_pos` {
      try w.integer(e)
    }
    guard self.`hand_state`.count == 6 else { throw RosError(22) }
    for e in self.`hand_state` {
      try w.integer(e)
    }
    guard self.`hand_force`.count == 6 else { throw RosError(22) }
    for e in self.`hand_force` {
      try w.integer(e)
    }
    try w.integer(self.`hand_err`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgHandstatus {
    var v = Ros2Rm_ros_interfacesMsgHandstatus()
    let count0 = 6
    v.`hand_angle` = []
    v.`hand_angle`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`hand_angle`.append(try r.integer(UInt16.self))
    }
    let count1 = 6
    v.`hand_pos` = []
    v.`hand_pos`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`hand_pos`.append(try r.integer(UInt16.self))
    }
    let count2 = 6
    v.`hand_state` = []
    v.`hand_state`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`hand_state`.append(try r.integer(UInt16.self))
    }
    let count3 = 6
    v.`hand_force` = []
    v.`hand_force`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`hand_force`.append(try r.integer(UInt16.self))
    }
    v.`hand_err` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgJointcurrent: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91"
  public static let nativeType = "rm_ros_interfaces/msg/Jointcurrent"
  public static let nativeIdentity: String? = nil
  public var `joint_current`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_current`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_current`.count))
    for e in self.`joint_current` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgJointcurrent {
    var v = Ros2Rm_ros_interfacesMsgJointcurrent()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_current` = []
    v.`joint_current`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_current`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgJointenflag: Canonical {
  public static let maximumWireBytes = 20
  public static let codecIdentity =
    "UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187"
  public static let nativeType = "rm_ros_interfaces/msg/Jointenflag"
  public static let nativeIdentity: String? = nil
  public var `joint_en_flag`: [Bool] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_en_flag`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_en_flag`.count))
    for e in self.`joint_en_flag` {
      try w.boolean(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgJointenflag {
    var v = Ros2Rm_ros_interfacesMsgJointenflag()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_en_flag` = []
    v.`joint_en_flag`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_en_flag`.append(try r.boolean())
    }
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgJointerrclear: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45"
  public static let nativeType = "rm_ros_interfaces/msg/Jointerrclear"
  public static let nativeIdentity: String? = nil
  public var `joint_num`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`joint_num`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgJointerrclear
  {
    var v = Ros2Rm_ros_interfacesMsgJointerrclear()
    v.`joint_num` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgJointerrorcode: Canonical {
  public static let maximumWireBytes = 37
  public static let codecIdentity =
    "UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b"
  public static let nativeType = "rm_ros_interfaces/msg/Jointerrorcode"
  public static let nativeIdentity: String? = nil
  public var `joint_error`: [UInt16] = []
  public var `dof`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_error`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_error`.count))
    for e in self.`joint_error` {
      try w.integer(e)
    }
    try w.integer(self.`dof`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgJointerrorcode
  {
    var v = Ros2Rm_ros_interfacesMsgJointerrorcode()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_error` = []
    v.`joint_error`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_error`.append(try r.integer(UInt16.self))
    }
    v.`dof` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgJointpos: Canonical {
  public static let maximumWireBytes = 74
  public static let codecIdentity =
    "UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9"
  public static let nativeType = "rm_ros_interfaces/msg/Jointpos"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `follow`: Bool = false
  public var `expand`: Float = 0
  public var `dof`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    try w.boolean(self.`follow`)
    try w.float32(self.`expand`)
    try w.integer(self.`dof`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgJointpos {
    var v = Ros2Rm_ros_interfacesMsgJointpos()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    v.`follow` = try r.boolean()
    v.`expand` = try r.float32()
    v.`dof` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgJointposcustom: Canonical {
  public static let maximumWireBytes = 76
  public static let codecIdentity =
    "UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128"
  public static let nativeType = "rm_ros_interfaces/msg/Jointposcustom"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `follow`: Bool = false
  public var `expand`: Float = 0
  public var `dof`: UInt8 = 0
  public var `trajectory_mode`: UInt8 = 0
  public var `radio`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    try w.boolean(self.`follow`)
    try w.float32(self.`expand`)
    try w.integer(self.`dof`)
    try w.integer(self.`trajectory_mode`)
    try w.integer(self.`radio`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgJointposcustom
  {
    var v = Ros2Rm_ros_interfacesMsgJointposcustom()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    v.`follow` = try r.boolean()
    v.`expand` = try r.float32()
    v.`dof` = try r.integer(UInt8.self)
    v.`trajectory_mode` = try r.integer(UInt8.self)
    v.`radio` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgJointposeeuler: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61"
  public static let nativeType = "rm_ros_interfaces/msg/Jointposeeuler"
  public static let nativeIdentity: String? = nil
  public var `euler`: [Float] = Array(repeating: 0, count: 3)
  public var `position`: [Float] = Array(repeating: 0, count: 3)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`euler`.count == 3 else { throw RosError(22) }
    for e in self.`euler` {
      try w.float32(e)
    }
    guard self.`position`.count == 3 else { throw RosError(22) }
    for e in self.`position` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgJointposeeuler
  {
    var v = Ros2Rm_ros_interfacesMsgJointposeeuler()
    let count0 = 3
    v.`euler` = []
    v.`euler`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`euler`.append(try r.float32())
    }
    let count1 = 3
    v.`position` = []
    v.`position`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`position`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgJointspeed: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f"
  public static let nativeType = "rm_ros_interfaces/msg/Jointspeed"
  public static let nativeIdentity: String? = nil
  public var `joint_speed`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_speed`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_speed`.count))
    for e in self.`joint_speed` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgJointspeed {
    var v = Ros2Rm_ros_interfacesMsgJointspeed()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_speed` = []
    v.`joint_speed`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_speed`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgJointteach: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795"
  public static let nativeType = "rm_ros_interfaces/msg/Jointteach"
  public static let nativeIdentity: String? = nil
  public var `num`: UInt8 = 0
  public var `direction`: UInt8 = 0
  public var `speed`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`num`)
    try w.integer(self.`direction`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgJointteach {
    var v = Ros2Rm_ros_interfacesMsgJointteach()
    v.`num` = try r.integer(UInt8.self)
    v.`direction` = try r.integer(UInt8.self)
    v.`speed` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgJointtemperature: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9"
  public static let nativeType = "rm_ros_interfaces/msg/Jointtemperature"
  public static let nativeIdentity: String? = nil
  public var `joint_temperature`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_temperature`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_temperature`.count))
    for e in self.`joint_temperature` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgJointtemperature
  {
    var v = Ros2Rm_ros_interfacesMsgJointtemperature()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_temperature` = []
    v.`joint_temperature`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_temperature`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgJointversion: Canonical {
  public static let maximumWireBytes = 4165
  public static let codecIdentity =
    "UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962"
  public static let nativeType = "rm_ros_interfaces/msg/Jointversion"
  public static let nativeIdentity: String? = nil
  public var `joint_version`: [String] = []
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_version`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_version`.count))
    for e in self.`joint_version` {
      try w.string(e, bound: 256)
    }
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgJointversion {
    var v = Ros2Rm_ros_interfacesMsgJointversion()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_version` = []
    v.`joint_version`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_version`.append(try r.string(bound: 256))
    }
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgJointvoltage: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791"
  public static let nativeType = "rm_ros_interfaces/msg/Jointvoltage"
  public static let nativeIdentity: String? = nil
  public var `joint_voltage`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_voltage`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_voltage`.count))
    for e in self.`joint_voltage` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgJointvoltage {
    var v = Ros2Rm_ros_interfacesMsgJointvoltage()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_voltage` = []
    v.`joint_voltage`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_voltage`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgLiftheight: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2"
  public static let nativeType = "rm_ros_interfaces/msg/Liftheight"
  public static let nativeIdentity: String? = nil
  public var `height`: UInt16 = 0
  public var `speed`: UInt16 = 0
  public var `block`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`height`)
    try w.integer(self.`speed`)
    try w.boolean(self.`block`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgLiftheight {
    var v = Ros2Rm_ros_interfacesMsgLiftheight()
    v.`height` = try r.integer(UInt16.self)
    v.`speed` = try r.integer(UInt16.self)
    v.`block` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgLiftspeed: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29"
  public static let nativeType = "rm_ros_interfaces/msg/Liftspeed"
  public static let nativeIdentity: String? = nil
  public var `speed`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgLiftspeed {
    var v = Ros2Rm_ros_interfacesMsgLiftspeed()
    v.`speed` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgLiftstate: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87"
  public static let nativeType = "rm_ros_interfaces/msg/Liftstate"
  public static let nativeIdentity: String? = nil
  public var `height`: Int16 = 0
  public var `current`: Int16 = 0
  public var `err_flag`: UInt16 = 0
  public var `mode`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`height`)
    try w.integer(self.`current`)
    try w.integer(self.`err_flag`)
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgLiftstate {
    var v = Ros2Rm_ros_interfacesMsgLiftstate()
    v.`height` = try r.integer(Int16.self)
    v.`current` = try r.integer(Int16.self)
    v.`err_flag` = try r.integer(UInt16.self)
    v.`mode` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgMastername: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6"
  public static let nativeType = "rm_ros_interfaces/msg/Mastername"
  public static let nativeIdentity: String? = nil
  public var `master_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`master_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgMastername {
    var v = Ros2Rm_ros_interfacesMsgMastername()
    v.`master_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgModbusreaddata: Canonical {
  public static let maximumWireBytes = 69
  public static let codecIdentity =
    "UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4"
  public static let nativeType = "rm_ros_interfaces/msg/Modbusreaddata"
  public static let nativeIdentity: String? = nil
  public var `read_data`: [Int32] = []
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`read_data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`read_data`.count))
    for e in self.`read_data` {
      try w.integer(e)
    }
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgModbusreaddata
  {
    var v = Ros2Rm_ros_interfacesMsgModbusreaddata()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`read_data` = []
    v.`read_data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`read_data`.append(try r.integer(Int32.self))
    }
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgModbusrtureadparams: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d"
  public static let nativeType = "rm_ros_interfaces/msg/Modbusrtureadparams"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `device`: Int32 = 0
  public var `type`: Int32 = 0
  public var `num`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`device`)
    try w.integer(self.`type`)
    try w.integer(self.`num`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgModbusrtureadparams
  {
    var v = Ros2Rm_ros_interfacesMsgModbusrtureadparams()
    v.`address` = try r.integer(Int32.self)
    v.`device` = try r.integer(Int32.self)
    v.`type` = try r.integer(Int32.self)
    v.`num` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgModbusrtuwriteparams: Canonical {
  public static let maximumWireBytes = 84
  public static let codecIdentity =
    "UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18"
  public static let nativeType = "rm_ros_interfaces/msg/Modbusrtuwriteparams"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `device`: Int32 = 0
  public var `type`: Int32 = 0
  public var `num`: Int32 = 0
  public var `data`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`device`)
    try w.integer(self.`type`)
    try w.integer(self.`num`)
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
  {
    var v = Ros2Rm_ros_interfacesMsgModbusrtuwriteparams()
    v.`address` = try r.integer(Int32.self)
    v.`device` = try r.integer(Int32.self)
    v.`type` = try r.integer(Int32.self)
    v.`num` = try r.integer(Int32.self)
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`data` = []
    v.`data`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`data`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgModbustcpmasterinfo: Canonical {
  public static let maximumWireBytes = 525
  public static let codecIdentity =
    "UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa"
  public static let nativeType = "rm_ros_interfaces/msg/Modbustcpmasterinfo"
  public static let nativeIdentity: String? = nil
  public var `master_name`: String = ""
  public var `ip`: String = ""
  public var `port`: Int32 = 0
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`master_name`, bound: 256)
    try w.string(self.`ip`, bound: 256)
    try w.integer(self.`port`)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
  {
    var v = Ros2Rm_ros_interfacesMsgModbustcpmasterinfo()
    v.`master_name` = try r.string(bound: 256)
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgModbustcpmasterlist: Canonical {
  public static let maximumWireBytes = 8668
  public static let codecIdentity =
    "UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1"
  public static let nativeType = "rm_ros_interfaces/msg/Modbustcpmasterlist"
  public static let nativeIdentity: String? = nil
  public var `page_num`: UInt8 = 0
  public var `page_size`: UInt8 = 0
  public var `total_size`: UInt8 = 0
  public var `vague_search`: String = ""
  public var `master_list`: [Ros2Rm_ros_interfacesMsgModbustcpmasterinfo] = []
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`page_num`)
    try w.integer(self.`page_size`)
    try w.integer(self.`total_size`)
    try w.string(self.`vague_search`, bound: 256)
    guard self.`master_list`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`master_list`.count))
    for e in self.`master_list` {
      try e.write(to: &w)
    }
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgModbustcpmasterlist
  {
    var v = Ros2Rm_ros_interfacesMsgModbustcpmasterlist()
    v.`page_num` = try r.integer(UInt8.self)
    v.`page_size` = try r.integer(UInt8.self)
    v.`total_size` = try r.integer(UInt8.self)
    v.`vague_search` = try r.string(bound: 256)
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`master_list` = []
    v.`master_list`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`master_list`.append(try Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.read(from: &r))
    }
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgModbustcpmasterupdata: Canonical {
  public static let maximumWireBytes = 784
  public static let codecIdentity =
    "UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad"
  public static let nativeType = "rm_ros_interfaces/msg/Modbustcpmasterupdata"
  public static let nativeIdentity: String? = nil
  public var `master_name`: String = ""
  public var `new_master_name`: String = ""
  public var `ip`: String = ""
  public var `port`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`master_name`, bound: 256)
    try w.string(self.`new_master_name`, bound: 256)
    try w.string(self.`ip`, bound: 256)
    try w.integer(self.`port`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
  {
    var v = Ros2Rm_ros_interfacesMsgModbustcpmasterupdata()
    v.`master_name` = try r.string(bound: 256)
    v.`new_master_name` = try r.string(bound: 256)
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgModbustcpreadparams: Canonical {
  public static let maximumWireBytes = 532
  public static let codecIdentity =
    "UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7"
  public static let nativeType = "rm_ros_interfaces/msg/Modbustcpreadparams"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `master_name`: String = ""
  public var `ip`: String = ""
  public var `port`: Int32 = 0
  public var `num`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.string(self.`master_name`, bound: 256)
    try w.string(self.`ip`, bound: 256)
    try w.integer(self.`port`)
    try w.integer(self.`num`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgModbustcpreadparams
  {
    var v = Ros2Rm_ros_interfacesMsgModbustcpreadparams()
    v.`address` = try r.integer(Int32.self)
    v.`master_name` = try r.string(bound: 256)
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    v.`num` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgModbustcpwriteparams: Canonical {
  public static let maximumWireBytes = 600
  public static let codecIdentity =
    "UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b"
  public static let nativeType = "rm_ros_interfaces/msg/Modbustcpwriteparams"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `master_name`: String = ""
  public var `ip`: String = ""
  public var `port`: Int32 = 0
  public var `num`: Int32 = 0
  public var `data`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.string(self.`master_name`, bound: 256)
    try w.string(self.`ip`, bound: 256)
    try w.integer(self.`port`)
    try w.integer(self.`num`)
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgModbustcpwriteparams
  {
    var v = Ros2Rm_ros_interfacesMsgModbustcpwriteparams()
    v.`address` = try r.integer(Int32.self)
    v.`master_name` = try r.string(bound: 256)
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    v.`num` = try r.integer(Int32.self)
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 16 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`data` = []
    v.`data`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`data`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgMovec: Canonical {
  public static let maximumWireBytes = 116
  public static let codecIdentity =
    "UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b"
  public static let nativeType = "rm_ros_interfaces/msg/Movec"
  public static let nativeIdentity: String? = nil
  public var `pose_mid`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public var `pose_end`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public var `speed`: UInt8 = 0
  public var `trajectory_connect`: UInt8 = 0
  public var `block`: Bool = false
  public var `loop`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose_mid`.write(to: &w)
    try self.`pose_end`.write(to: &w)
    try w.integer(self.`speed`)
    try w.integer(self.`trajectory_connect`)
    try w.boolean(self.`block`)
    try w.integer(self.`loop`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgMovec {
    var v = Ros2Rm_ros_interfacesMsgMovec()
    v.`pose_mid` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`pose_end` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`speed` = try r.integer(UInt8.self)
    v.`trajectory_connect` = try r.integer(UInt8.self)
    v.`block` = try r.boolean()
    v.`loop` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgMovej: Canonical {
  public static let maximumWireBytes = 72
  public static let codecIdentity =
    "UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b"
  public static let nativeType = "rm_ros_interfaces/msg/Movej"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `speed`: UInt8 = 0
  public var `block`: Bool = false
  public var `trajectory_connect`: UInt8 = 0
  public var `dof`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    try w.integer(self.`speed`)
    try w.boolean(self.`block`)
    try w.integer(self.`trajectory_connect`)
    try w.integer(self.`dof`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgMovej {
    var v = Ros2Rm_ros_interfacesMsgMovej()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    v.`speed` = try r.integer(UInt8.self)
    v.`block` = try r.boolean()
    v.`trajectory_connect` = try r.integer(UInt8.self)
    v.`dof` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgMovejp: Canonical {
  public static let maximumWireBytes = 59
  public static let codecIdentity =
    "UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72"
  public static let nativeType = "rm_ros_interfaces/msg/Movejp"
  public static let nativeIdentity: String? = nil
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public var `speed`: UInt8 = 0
  public var `trajectory_connect`: UInt8 = 0
  public var `block`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    try w.integer(self.`speed`)
    try w.integer(self.`trajectory_connect`)
    try w.boolean(self.`block`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgMovejp {
    var v = Ros2Rm_ros_interfacesMsgMovejp()
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`speed` = try r.integer(UInt8.self)
    v.`trajectory_connect` = try r.integer(UInt8.self)
    v.`block` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgMovel: Canonical {
  public static let maximumWireBytes = 59
  public static let codecIdentity =
    "UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8"
  public static let nativeType = "rm_ros_interfaces/msg/Movel"
  public static let nativeIdentity: String? = nil
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public var `speed`: UInt8 = 0
  public var `trajectory_connect`: UInt8 = 0
  public var `block`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    try w.integer(self.`speed`)
    try w.integer(self.`trajectory_connect`)
    try w.boolean(self.`block`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgMovel {
    var v = Ros2Rm_ros_interfacesMsgMovel()
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`speed` = try r.integer(UInt8.self)
    v.`trajectory_connect` = try r.integer(UInt8.self)
    v.`block` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgMoveloffset: Canonical {
  public static let maximumWireBytes = 67
  public static let codecIdentity =
    "UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493"
  public static let nativeType = "rm_ros_interfaces/msg/Moveloffset"
  public static let nativeIdentity: String? = nil
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public var `speed`: Int32 = 0
  public var `r`: Int32 = 0
  public var `trajectory_connect`: Bool = false
  public var `frame_type`: Bool = false
  public var `block`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`pose`.write(to: &w)
    try w.integer(self.`speed`)
    try w.integer(self.`r`)
    try w.boolean(self.`trajectory_connect`)
    try w.boolean(self.`frame_type`)
    try w.boolean(self.`block`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgMoveloffset {
    var v = Ros2Rm_ros_interfacesMsgMoveloffset()
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`speed` = try r.integer(Int32.self)
    v.`r` = try r.integer(Int32.self)
    v.`trajectory_connect` = try r.boolean()
    v.`frame_type` = try r.boolean()
    v.`block` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgOrtteach: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3"
  public static let nativeType = "rm_ros_interfaces/msg/Ortteach"
  public static let nativeIdentity: String? = nil
  public var `type`: UInt8 = 0
  public var `direction`: UInt8 = 0
  public var `speed`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`type`)
    try w.integer(self.`direction`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgOrtteach {
    var v = Ros2Rm_ros_interfacesMsgOrtteach()
    v.`type` = try r.integer(UInt8.self)
    v.`direction` = try r.integer(UInt8.self)
    v.`speed` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgPosteach: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439"
  public static let nativeType = "rm_ros_interfaces/msg/Posteach"
  public static let nativeIdentity: String? = nil
  public var `type`: UInt8 = 0
  public var `direction`: UInt8 = 0
  public var `speed`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`type`)
    try w.integer(self.`direction`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgPosteach {
    var v = Ros2Rm_ros_interfacesMsgPosteach()
    v.`type` = try r.integer(UInt8.self)
    v.`direction` = try r.integer(UInt8.self)
    v.`speed` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgProgramrunstate: Canonical {
  public static let maximumWireBytes = 165
  public static let codecIdentity =
    "UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964"
  public static let nativeType = "rm_ros_interfaces/msg/Programrunstate"
  public static let nativeIdentity: String? = nil
  public var `run_state`: Int32 = 0
  public var `id`: Int32 = 0
  public var `edit_id`: Int32 = 0
  public var `plan_num`: Int32 = 0
  public var `total_loop`: Int32 = 0
  public var `step_mode`: Int32 = 0
  public var `plan_speed`: Int32 = 0
  public var `loop_num`: [Int32] = []
  public var `loop_cont`: [Int32] = []
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`run_state`)
    try w.integer(self.`id`)
    try w.integer(self.`edit_id`)
    try w.integer(self.`plan_num`)
    try w.integer(self.`total_loop`)
    try w.integer(self.`step_mode`)
    try w.integer(self.`plan_speed`)
    guard self.`loop_num`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`loop_num`.count))
    for e in self.`loop_num` {
      try w.integer(e)
    }
    guard self.`loop_cont`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`loop_cont`.count))
    for e in self.`loop_cont` {
      try w.integer(e)
    }
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgProgramrunstate
  {
    var v = Ros2Rm_ros_interfacesMsgProgramrunstate()
    v.`run_state` = try r.integer(Int32.self)
    v.`id` = try r.integer(Int32.self)
    v.`edit_id` = try r.integer(Int32.self)
    v.`plan_num` = try r.integer(Int32.self)
    v.`total_loop` = try r.integer(Int32.self)
    v.`step_mode` = try r.integer(Int32.self)
    v.`plan_speed` = try r.integer(Int32.self)
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`loop_num` = []
    v.`loop_num`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`loop_num`.append(try r.integer(Int32.self))
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 16 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`loop_cont` = []
    v.`loop_cont`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`loop_cont`.append(try r.integer(Int32.self))
    }
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgRS485params: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7"
  public static let nativeType = "rm_ros_interfaces/msg/RS485params"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int32 = 0
  public var `baudrate`: Int32 = 0
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    try w.integer(self.`baudrate`)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgRS485params {
    var v = Ros2Rm_ros_interfacesMsgRS485params()
    v.`mode` = try r.integer(Int32.self)
    v.`baudrate` = try r.integer(Int32.self)
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgRmerr: Canonical {
  public static let maximumWireBytes = 69
  public static let codecIdentity =
    "UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b"
  public static let nativeType = "rm_ros_interfaces/msg/Rmerr"
  public static let nativeIdentity: String? = nil
  public var `err_len`: UInt8 = 0
  public var `err`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`err_len`)
    guard self.`err`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`err`.count))
    for e in self.`err` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgRmerr {
    var v = Ros2Rm_ros_interfacesMsgRmerr()
    v.`err_len` = try r.integer(UInt8.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`err` = []
    v.`err`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`err`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgRmplusbase: Canonical {
  public static let maximumWireBytes = 1437
  public static let codecIdentity =
    "UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6"
  public static let nativeType = "rm_ros_interfaces/msg/Rmplusbase"
  public static let nativeIdentity: String? = nil
  public var `manu`: String = ""
  public var `type`: Int8 = 0
  public var `hv`: String = ""
  public var `sv`: String = ""
  public var `bv`: String = ""
  public var `id`: Int32 = 0
  public var `dof`: Int8 = 0
  public var `check`: Int8 = 0
  public var `bee`: Int8 = 0
  public var `force`: Bool = false
  public var `touch`: Bool = false
  public var `touch_num`: Int8 = 0
  public var `touch_sw`: Int8 = 0
  public var `hand`: Int8 = 0
  public var `pos_up`: [Int32] = Array(repeating: 0, count: 12)
  public var `pos_low`: [Int32] = Array(repeating: 0, count: 12)
  public var `angle_up`: [Int32] = Array(repeating: 0, count: 12)
  public var `angle_low`: [Int32] = Array(repeating: 0, count: 12)
  public var `speed_up`: [Int32] = Array(repeating: 0, count: 12)
  public var `speed_low`: [Int32] = Array(repeating: 0, count: 12)
  public var `force_up`: [Int32] = Array(repeating: 0, count: 12)
  public var `force_low`: [Int32] = Array(repeating: 0, count: 12)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`manu`, bound: 256)
    try w.integer(self.`type`)
    try w.string(self.`hv`, bound: 256)
    try w.string(self.`sv`, bound: 256)
    try w.string(self.`bv`, bound: 256)
    try w.integer(self.`id`)
    try w.integer(self.`dof`)
    try w.integer(self.`check`)
    try w.integer(self.`bee`)
    try w.boolean(self.`force`)
    try w.boolean(self.`touch`)
    try w.integer(self.`touch_num`)
    try w.integer(self.`touch_sw`)
    try w.integer(self.`hand`)
    guard self.`pos_up`.count == 12 else { throw RosError(22) }
    for e in self.`pos_up` {
      try w.integer(e)
    }
    guard self.`pos_low`.count == 12 else { throw RosError(22) }
    for e in self.`pos_low` {
      try w.integer(e)
    }
    guard self.`angle_up`.count == 12 else { throw RosError(22) }
    for e in self.`angle_up` {
      try w.integer(e)
    }
    guard self.`angle_low`.count == 12 else { throw RosError(22) }
    for e in self.`angle_low` {
      try w.integer(e)
    }
    guard self.`speed_up`.count == 12 else { throw RosError(22) }
    for e in self.`speed_up` {
      try w.integer(e)
    }
    guard self.`speed_low`.count == 12 else { throw RosError(22) }
    for e in self.`speed_low` {
      try w.integer(e)
    }
    guard self.`force_up`.count == 12 else { throw RosError(22) }
    for e in self.`force_up` {
      try w.integer(e)
    }
    guard self.`force_low`.count == 12 else { throw RosError(22) }
    for e in self.`force_low` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgRmplusbase {
    var v = Ros2Rm_ros_interfacesMsgRmplusbase()
    v.`manu` = try r.string(bound: 256)
    v.`type` = try r.integer(Int8.self)
    v.`hv` = try r.string(bound: 256)
    v.`sv` = try r.string(bound: 256)
    v.`bv` = try r.string(bound: 256)
    v.`id` = try r.integer(Int32.self)
    v.`dof` = try r.integer(Int8.self)
    v.`check` = try r.integer(Int8.self)
    v.`bee` = try r.integer(Int8.self)
    v.`force` = try r.boolean()
    v.`touch` = try r.boolean()
    v.`touch_num` = try r.integer(Int8.self)
    v.`touch_sw` = try r.integer(Int8.self)
    v.`hand` = try r.integer(Int8.self)
    let count14 = 12
    v.`pos_up` = []
    v.`pos_up`.reserveCapacity(count14)
    for _ in 0..<count14 {
      v.`pos_up`.append(try r.integer(Int32.self))
    }
    let count15 = 12
    v.`pos_low` = []
    v.`pos_low`.reserveCapacity(count15)
    for _ in 0..<count15 {
      v.`pos_low`.append(try r.integer(Int32.self))
    }
    let count16 = 12
    v.`angle_up` = []
    v.`angle_up`.reserveCapacity(count16)
    for _ in 0..<count16 {
      v.`angle_up`.append(try r.integer(Int32.self))
    }
    let count17 = 12
    v.`angle_low` = []
    v.`angle_low`.reserveCapacity(count17)
    for _ in 0..<count17 {
      v.`angle_low`.append(try r.integer(Int32.self))
    }
    let count18 = 12
    v.`speed_up` = []
    v.`speed_up`.reserveCapacity(count18)
    for _ in 0..<count18 {
      v.`speed_up`.append(try r.integer(Int32.self))
    }
    let count19 = 12
    v.`speed_low` = []
    v.`speed_low`.reserveCapacity(count19)
    for _ in 0..<count19 {
      v.`speed_low`.append(try r.integer(Int32.self))
    }
    let count20 = 12
    v.`force_up` = []
    v.`force_up`.reserveCapacity(count20)
    for _ in 0..<count20 {
      v.`force_up`.append(try r.integer(Int32.self))
    }
    let count21 = 12
    v.`force_low` = []
    v.`force_low`.reserveCapacity(count21)
    for _ in 0..<count21 {
      v.`force_low`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgRmplusstate: Canonical {
  public static let maximumWireBytes = 724
  public static let codecIdentity =
    "UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1"
  public static let nativeType = "rm_ros_interfaces/msg/Rmplusstate"
  public static let nativeIdentity: String? = nil
  public var `sys_state`: Int32 = 0
  public var `dof_state`: [Int32] = Array(repeating: 0, count: 12)
  public var `dof_err`: [Int32] = Array(repeating: 0, count: 12)
  public var `pos`: [Int32] = Array(repeating: 0, count: 12)
  public var `speed`: [Int32] = Array(repeating: 0, count: 12)
  public var `angle`: [Int32] = Array(repeating: 0, count: 12)
  public var `current`: [Int32] = Array(repeating: 0, count: 12)
  public var `normal_force`: [Int32] = Array(repeating: 0, count: 18)
  public var `tangential_force`: [Int32] = Array(repeating: 0, count: 18)
  public var `tangential_force_dir`: [Int32] = Array(repeating: 0, count: 18)
  public var `tsa`: [UInt32] = Array(repeating: 0, count: 12)
  public var `tma`: [UInt32] = Array(repeating: 0, count: 12)
  public var `touch_data`: [Int32] = Array(repeating: 0, count: 18)
  public var `force`: [Int32] = Array(repeating: 0, count: 12)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sys_state`)
    guard self.`dof_state`.count == 12 else { throw RosError(22) }
    for e in self.`dof_state` {
      try w.integer(e)
    }
    guard self.`dof_err`.count == 12 else { throw RosError(22) }
    for e in self.`dof_err` {
      try w.integer(e)
    }
    guard self.`pos`.count == 12 else { throw RosError(22) }
    for e in self.`pos` {
      try w.integer(e)
    }
    guard self.`speed`.count == 12 else { throw RosError(22) }
    for e in self.`speed` {
      try w.integer(e)
    }
    guard self.`angle`.count == 12 else { throw RosError(22) }
    for e in self.`angle` {
      try w.integer(e)
    }
    guard self.`current`.count == 12 else { throw RosError(22) }
    for e in self.`current` {
      try w.integer(e)
    }
    guard self.`normal_force`.count == 18 else { throw RosError(22) }
    for e in self.`normal_force` {
      try w.integer(e)
    }
    guard self.`tangential_force`.count == 18 else { throw RosError(22) }
    for e in self.`tangential_force` {
      try w.integer(e)
    }
    guard self.`tangential_force_dir`.count == 18 else { throw RosError(22) }
    for e in self.`tangential_force_dir` {
      try w.integer(e)
    }
    guard self.`tsa`.count == 12 else { throw RosError(22) }
    for e in self.`tsa` {
      try w.integer(e)
    }
    guard self.`tma`.count == 12 else { throw RosError(22) }
    for e in self.`tma` {
      try w.integer(e)
    }
    guard self.`touch_data`.count == 18 else { throw RosError(22) }
    for e in self.`touch_data` {
      try w.integer(e)
    }
    guard self.`force`.count == 12 else { throw RosError(22) }
    for e in self.`force` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgRmplusstate {
    var v = Ros2Rm_ros_interfacesMsgRmplusstate()
    v.`sys_state` = try r.integer(Int32.self)
    let count1 = 12
    v.`dof_state` = []
    v.`dof_state`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`dof_state`.append(try r.integer(Int32.self))
    }
    let count2 = 12
    v.`dof_err` = []
    v.`dof_err`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`dof_err`.append(try r.integer(Int32.self))
    }
    let count3 = 12
    v.`pos` = []
    v.`pos`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`pos`.append(try r.integer(Int32.self))
    }
    let count4 = 12
    v.`speed` = []
    v.`speed`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`speed`.append(try r.integer(Int32.self))
    }
    let count5 = 12
    v.`angle` = []
    v.`angle`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`angle`.append(try r.integer(Int32.self))
    }
    let count6 = 12
    v.`current` = []
    v.`current`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`current`.append(try r.integer(Int32.self))
    }
    let count7 = 18
    v.`normal_force` = []
    v.`normal_force`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`normal_force`.append(try r.integer(Int32.self))
    }
    let count8 = 18
    v.`tangential_force` = []
    v.`tangential_force`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`tangential_force`.append(try r.integer(Int32.self))
    }
    let count9 = 18
    v.`tangential_force_dir` = []
    v.`tangential_force_dir`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`tangential_force_dir`.append(try r.integer(Int32.self))
    }
    let count10 = 12
    v.`tsa` = []
    v.`tsa`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`tsa`.append(try r.integer(UInt32.self))
    }
    let count11 = 12
    v.`tma` = []
    v.`tma`.reserveCapacity(count11)
    for _ in 0..<count11 {
      v.`tma`.append(try r.integer(UInt32.self))
    }
    let count12 = 18
    v.`touch_data` = []
    v.`touch_data`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`touch_data`.append(try r.integer(Int32.self))
    }
    let count13 = 12
    v.`force` = []
    v.`force`.reserveCapacity(count13)
    for _ in 0..<count13 {
      v.`force`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgRmversion: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff"
  public static let nativeType = "rm_ros_interfaces/msg/Rmversion"
  public static let nativeIdentity: String? = nil
  public var `version`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`version`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgRmversion {
    var v = Ros2Rm_ros_interfacesMsgRmversion()
    v.`version` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgRobotInfo: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2"
  public static let nativeType = "rm_ros_interfaces/msg/RobotInfo"
  public static let nativeIdentity: String? = nil
  public var `arm_dof`: UInt8 = 0
  public var `arm_model`: UInt8 = 0
  public var `force_type`: UInt8 = 0
  public var `robot_controller_version`: UInt8 = 0
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`arm_dof`)
    try w.integer(self.`arm_model`)
    try w.integer(self.`force_type`)
    try w.integer(self.`robot_controller_version`)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgRobotInfo {
    var v = Ros2Rm_ros_interfacesMsgRobotInfo()
    v.`arm_dof` = try r.integer(UInt8.self)
    v.`arm_model` = try r.integer(UInt8.self)
    v.`force_type` = try r.integer(UInt8.self)
    v.`robot_controller_version` = try r.integer(UInt8.self)
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgSendproject: Canonical {
  public static let maximumWireBytes = 288
  public static let codecIdentity =
    "UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330"
  public static let nativeType = "rm_ros_interfaces/msg/Sendproject"
  public static let nativeIdentity: String? = nil
  public var `project_path`: String = ""
  public var `project_path_len`: Int32 = 0
  public var `plan_speed`: Int32 = 0
  public var `only_save`: Int32 = 0
  public var `save_id`: Int32 = 0
  public var `step_flag`: Int32 = 0
  public var `auto_start`: Int32 = 0
  public var `project_type`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`project_path`, bound: 256)
    try w.integer(self.`project_path_len`)
    try w.integer(self.`plan_speed`)
    try w.integer(self.`only_save`)
    try w.integer(self.`save_id`)
    try w.integer(self.`step_flag`)
    try w.integer(self.`auto_start`)
    try w.integer(self.`project_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgSendproject {
    var v = Ros2Rm_ros_interfacesMsgSendproject()
    v.`project_path` = try r.string(bound: 256)
    v.`project_path_len` = try r.integer(Int32.self)
    v.`plan_speed` = try r.integer(Int32.self)
    v.`only_save` = try r.integer(Int32.self)
    v.`save_id` = try r.integer(Int32.self)
    v.`step_flag` = try r.integer(Int32.self)
    v.`auto_start` = try r.integer(Int32.self)
    v.`project_type` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgSetforceposition: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157"
  public static let nativeType = "rm_ros_interfaces/msg/Setforceposition"
  public static let nativeIdentity: String? = nil
  public var `sensor`: UInt8 = 0
  public var `mode`: UInt8 = 0
  public var `direction`: UInt8 = 0
  public var `n`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sensor`)
    try w.integer(self.`mode`)
    try w.integer(self.`direction`)
    try w.integer(self.`n`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgSetforceposition
  {
    var v = Ros2Rm_ros_interfacesMsgSetforceposition()
    v.`sensor` = try r.integer(UInt8.self)
    v.`mode` = try r.integer(UInt8.self)
    v.`direction` = try r.integer(UInt8.self)
    v.`n` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgSetrealtimepush: Canonical {
  public static let maximumWireBytes = 274
  public static let codecIdentity =
    "UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368"
  public static let nativeType = "rm_ros_interfaces/msg/Setrealtimepush"
  public static let nativeIdentity: String? = nil
  public var `cycle`: UInt16 = 0
  public var `port`: UInt16 = 0
  public var `force_coordinate`: UInt16 = 0
  public var `ip`: String = ""
  public var `aloha_state_enable`: Bool = false
  public var `arm_current_status_enable`: Bool = false
  public var `expand_state_enable`: Bool = false
  public var `hand_enable`: Bool = false
  public var `joint_speed_enable`: Bool = false
  public var `lift_state_enable`: Bool = false
  public var `plus_base_enable`: Bool = false
  public var `plus_state_enable`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`cycle`)
    try w.integer(self.`port`)
    try w.integer(self.`force_coordinate`)
    try w.string(self.`ip`, bound: 256)
    try w.boolean(self.`aloha_state_enable`)
    try w.boolean(self.`arm_current_status_enable`)
    try w.boolean(self.`expand_state_enable`)
    try w.boolean(self.`hand_enable`)
    try w.boolean(self.`joint_speed_enable`)
    try w.boolean(self.`lift_state_enable`)
    try w.boolean(self.`plus_base_enable`)
    try w.boolean(self.`plus_state_enable`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgSetrealtimepush
  {
    var v = Ros2Rm_ros_interfacesMsgSetrealtimepush()
    v.`cycle` = try r.integer(UInt16.self)
    v.`port` = try r.integer(UInt16.self)
    v.`force_coordinate` = try r.integer(UInt16.self)
    v.`ip` = try r.string(bound: 256)
    v.`aloha_state_enable` = try r.boolean()
    v.`arm_current_status_enable` = try r.boolean()
    v.`expand_state_enable` = try r.boolean()
    v.`hand_enable` = try r.boolean()
    v.`joint_speed_enable` = try r.boolean()
    v.`lift_state_enable` = try r.boolean()
    v.`plus_base_enable` = try r.boolean()
    v.`plus_state_enable` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgSixforce: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288"
  public static let nativeType = "rm_ros_interfaces/msg/Sixforce"
  public static let nativeIdentity: String? = nil
  public var `force_fx`: Float = 0
  public var `force_fy`: Float = 0
  public var `force_fz`: Float = 0
  public var `force_mx`: Float = 0
  public var `force_my`: Float = 0
  public var `force_mz`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`force_fx`)
    try w.float32(self.`force_fy`)
    try w.float32(self.`force_fz`)
    try w.float32(self.`force_mx`)
    try w.float32(self.`force_my`)
    try w.float32(self.`force_mz`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgSixforce {
    var v = Ros2Rm_ros_interfacesMsgSixforce()
    v.`force_fx` = try r.float32()
    v.`force_fy` = try r.float32()
    v.`force_fz` = try r.float32()
    v.`force_mx` = try r.float32()
    v.`force_my` = try r.float32()
    v.`force_mz` = try r.float32()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgStop: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a"
  public static let nativeType = "rm_ros_interfaces/msg/Stop"
  public static let nativeIdentity: String? = nil
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgStop {
    var v = Ros2Rm_ros_interfacesMsgStop()
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgToolsoftwareversionv4: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991"
  public static let nativeType = "rm_ros_interfaces/msg/Toolsoftwareversionv4"
  public static let nativeIdentity: String? = nil
  public var `tool_version`: String = ""
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`tool_version`, bound: 256)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
  {
    var v = Ros2Rm_ros_interfacesMsgToolsoftwareversionv4()
    v.`tool_version` = try r.string(bound: 256)
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgTrajectoryinfo: Canonical {
  public static let maximumWireBytes = 525
  public static let codecIdentity =
    "UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1"
  public static let nativeType = "rm_ros_interfaces/msg/Trajectoryinfo"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `create_time`: String = ""
  public var `point_num`: Int32 = 0
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
    try w.string(self.`create_time`, bound: 256)
    try w.integer(self.`point_num`)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgTrajectoryinfo
  {
    var v = Ros2Rm_ros_interfacesMsgTrajectoryinfo()
    v.`name` = try r.string(bound: 256)
    v.`create_time` = try r.string(bound: 256)
    v.`point_num` = try r.integer(Int32.self)
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgTrajectorylist: Canonical {
  public static let maximumWireBytes = 8677
  public static let codecIdentity =
    "UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f"
  public static let nativeType = "rm_ros_interfaces/msg/Trajectorylist"
  public static let nativeIdentity: String? = nil
  public var `page_num`: Int32 = 0
  public var `page_size`: Int32 = 0
  public var `total_size`: Int32 = 0
  public var `vague_search`: String = ""
  public var `tra_list`: [Ros2Rm_ros_interfacesMsgTrajectoryinfo] = []
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`page_num`)
    try w.integer(self.`page_size`)
    try w.integer(self.`total_size`)
    try w.string(self.`vague_search`, bound: 256)
    guard self.`tra_list`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`tra_list`.count))
    for e in self.`tra_list` {
      try e.write(to: &w)
    }
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgTrajectorylist
  {
    var v = Ros2Rm_ros_interfacesMsgTrajectorylist()
    v.`page_num` = try r.integer(Int32.self)
    v.`page_size` = try r.integer(Int32.self)
    v.`total_size` = try r.integer(Int32.self)
    v.`vague_search` = try r.string(bound: 256)
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`tra_list` = []
    v.`tra_list`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`tra_list`.append(try Ros2Rm_ros_interfacesMsgTrajectoryinfo.read(from: &r))
    }
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgUdpexpandstate: Canonical {
  public static let maximumWireBytes = 14
  public static let codecIdentity =
    "UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5"
  public static let nativeType = "rm_ros_interfaces/msg/Udpexpandstate"
  public static let nativeIdentity: String? = nil
  public var `pos`: Int32 = 0
  public var `current`: Int32 = 0
  public var `err_flag`: UInt16 = 0
  public var `en_flag`: Bool = false
  public var `joint_id`: UInt8 = 0
  public var `mode`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pos`)
    try w.integer(self.`current`)
    try w.integer(self.`err_flag`)
    try w.boolean(self.`en_flag`)
    try w.integer(self.`joint_id`)
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgUdpexpandstate
  {
    var v = Ros2Rm_ros_interfacesMsgUdpexpandstate()
    v.`pos` = try r.integer(Int32.self)
    v.`current` = try r.integer(Int32.self)
    v.`err_flag` = try r.integer(UInt16.self)
    v.`en_flag` = try r.boolean()
    v.`joint_id` = try r.integer(UInt8.self)
    v.`mode` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros2Rm_ros_interfacesMsgUdpliftstate: Canonical {
  public static let maximumWireBytes = 13
  public static let codecIdentity =
    "UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817"
  public static let nativeType = "rm_ros_interfaces/msg/Udpliftstate"
  public static let nativeIdentity: String? = nil
  public var `height`: Int32 = 0
  public var `pos`: Float = 0
  public var `current`: Int16 = 0
  public var `en_flag`: Bool = false
  public var `err_flag`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`height`)
    try w.float32(self.`pos`)
    try w.integer(self.`current`)
    try w.boolean(self.`en_flag`)
    try w.integer(self.`err_flag`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Rm_ros_interfacesMsgUdpliftstate {
    var v = Ros2Rm_ros_interfacesMsgUdpliftstate()
    v.`height` = try r.integer(Int32.self)
    v.`pos` = try r.float32()
    v.`current` = try r.integer(Int16.self)
    v.`en_flag` = try r.boolean()
    v.`err_flag` = try r.integer(UInt16.self)
    return v
  }
}
