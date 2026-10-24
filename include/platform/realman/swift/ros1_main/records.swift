/// @file records.swift
/// @brief Preserve the complete original realman/ros1_main canonical value domain.
/// @details The selected domain contains 105 complete record/components and 349 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Geometry_msgsPoint: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
  public static let nativeType = "geometry_msgs/Point"
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPoint {
    var v = Ros1Geometry_msgsPoint()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
public struct Ros1Geometry_msgsQuaternion: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
  public static let nativeType = "geometry_msgs/Quaternion"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
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
public struct Ros1Geometry_msgsPose: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
  public static let nativeType = "geometry_msgs/Pose"
  public static let nativeIdentity: String? = nil
  public var `position`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
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
public struct Ros1Rm_msgsArmState: Canonical {
  public static let maximumWireBytes = 161
  public static let codecIdentity =
    "UWVMROS1_f66af5e8f31c3b897559c988ef8a9fe8257199453c3973bcb9afe56a420d2f93"
  public static let nativeType = "rm_msgs/ArmState"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `Pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `err`: [UInt16] = []
  public var `dof`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    try self.`Pose`.write(to: &w)
    guard self.`err`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`err`.count))
    for e in self.`err` {
      try w.integer(e)
    }
    try w.integer(self.`dof`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsArmState {
    var v = Ros1Rm_msgsArmState()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    v.`Pose` = try Ros1Geometry_msgsPose.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`err` = []
    v.`err`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`err`.append(try r.integer(UInt16.self))
    }
    v.`dof` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Rm_msgsArm_Analog_Output: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_c344d257e1e5f45d1f82e60e66a38a1714dbc06b8e9379357c308b34f2ed3c94"
  public static let nativeType = "rm_msgs/Arm_Analog_Output"
  public static let nativeIdentity: String? = nil
  public var `num`: UInt8 = 0
  public var `voltage`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`num`)
    try w.float32(self.`voltage`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsArm_Analog_Output {
    var v = Ros1Rm_msgsArm_Analog_Output()
    v.`num` = try r.integer(UInt8.self)
    v.`voltage` = try r.float32()
    return v
  }
}
public struct Ros1Rm_msgsArm_Current_State: Canonical {
  public static let maximumWireBytes = 129
  public static let codecIdentity =
    "UWVMROS1_b5c0206ba9eb0674b9a1ca4204aa63e41ce356ad38953a544760897d0d467844"
  public static let nativeType = "rm_msgs/Arm_Current_State"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `Pose`: [Float] = Array(repeating: 0, count: 6)
  public var `err`: [UInt16] = []
  public var `dof`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    guard self.`Pose`.count == 6 else { throw RosError(22) }
    for e in self.`Pose` {
      try w.float32(e)
    }
    guard self.`err`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`err`.count))
    for e in self.`err` {
      try w.integer(e)
    }
    try w.integer(self.`dof`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsArm_Current_State {
    var v = Ros1Rm_msgsArm_Current_State()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    let count1 = 6
    v.`Pose` = []
    v.`Pose`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`Pose`.append(try r.float32())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`err` = []
    v.`err`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`err`.append(try r.integer(UInt16.self))
    }
    v.`dof` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Rm_msgsArm_Current_Status: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_871842ca4ff929b1851a43d9cf855a85ab37ccf147e1b24dfbdb8421f4133fd3"
  public static let nativeType = "rm_msgs/Arm_Current_Status"
  public static let nativeIdentity: String? = nil
  public var `arm_current_status`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`arm_current_status`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsArm_Current_Status {
    var v = Ros1Rm_msgsArm_Current_Status()
    v.`arm_current_status` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rm_msgsArm_Digital_Output: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_afc6da6c0b8f5e9dc9846b9c536ced62723c7e1479737bc5f4f31d14c2f5f029"
  public static let nativeType = "rm_msgs/Arm_Digital_Output"
  public static let nativeIdentity: String? = nil
  public var `num`: UInt8 = 0
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`num`)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsArm_Digital_Output {
    var v = Ros1Rm_msgsArm_Digital_Output()
    v.`num` = try r.integer(UInt8.self)
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsArm_IO_State: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bdcfa192917433b9ac60a589c42c06cc1092080e0d0410dbcd967b88298b315c"
  public static let nativeType = "rm_msgs/Arm_IO_State"
  public static let nativeIdentity: String? = nil
  public var `Arm_Digital_Input`: [Int8] = Array(repeating: 0, count: 4)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`Arm_Digital_Input`.count == 4 else { throw RosError(22) }
    for e in self.`Arm_Digital_Input` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsArm_IO_State {
    var v = Ros1Rm_msgsArm_IO_State()
    let count0 = 4
    v.`Arm_Digital_Input` = []
    v.`Arm_Digital_Input`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`Arm_Digital_Input`.append(try r.integer(Int8.self))
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
public struct Ros1Rm_msgsArm_Joint_Speed_Max: Canonical {
  public static let maximumWireBytes = 4568
  public static let codecIdentity =
    "UWVMROS1_3e8703dc738f06e4e9e3ce64446ef46706350439309eb78b54801c95846f547d"
  public static let nativeType = "rm_msgs/Arm_Joint_Speed_Max"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `name`: [String] = []
  public var `max_velocity`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`name`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`name`.count))
    for e in self.`name` {
      try w.string(e, bound: 256)
    }
    guard self.`max_velocity`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`max_velocity`.count))
    for e in self.`max_velocity` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsArm_Joint_Speed_Max {
    var v = Ros1Rm_msgsArm_Joint_Speed_Max()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`name` = []
    v.`name`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`name`.append(try r.string(bound: 256))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`max_velocity` = []
    v.`max_velocity`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`max_velocity`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Rm_msgsSoftwarebuildinfo: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_c6ee342c433ac29a8e2b2484b8e3d5071c8a37baf95b1fb59883f43b8d2e1ec5"
  public static let nativeType = "rm_msgs/Softwarebuildinfo"
  public static let nativeIdentity: String? = nil
  public var `build_time`: String = ""
  public var `version`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`build_time`, bound: 256)
    try w.string(self.`version`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsSoftwarebuildinfo {
    var v = Ros1Rm_msgsSoftwarebuildinfo()
    v.`build_time` = try r.string(bound: 256)
    v.`version` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rm_msgsArm_Softversion_v3: Canonical {
  public static let maximumWireBytes = 1820
  public static let codecIdentity =
    "UWVMROS1_7965401d47a025c253634e60695689f086763ff15ed2a624c9219f67dc3bf394"
  public static let nativeType = "rm_msgs/Arm_Softversion_v3"
  public static let nativeIdentity: String? = nil
  public var `product_version`: String = ""
  public var `algorithm_info`: String = ""
  public var `ctrl_info`: Ros1Rm_msgsSoftwarebuildinfo = Ros1Rm_msgsSoftwarebuildinfo()
  public var `dynamic_info`: String = ""
  public var `plan_info`: Ros1Rm_msgsSoftwarebuildinfo = Ros1Rm_msgsSoftwarebuildinfo()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`product_version`, bound: 256)
    try w.string(self.`algorithm_info`, bound: 256)
    try self.`ctrl_info`.write(to: &w)
    try w.string(self.`dynamic_info`, bound: 256)
    try self.`plan_info`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsArm_Softversion_v3 {
    var v = Ros1Rm_msgsArm_Softversion_v3()
    v.`product_version` = try r.string(bound: 256)
    v.`algorithm_info` = try r.string(bound: 256)
    v.`ctrl_info` = try Ros1Rm_msgsSoftwarebuildinfo.read(from: &r)
    v.`dynamic_info` = try r.string(bound: 256)
    v.`plan_info` = try Ros1Rm_msgsSoftwarebuildinfo.read(from: &r)
    return v
  }
}
public struct Ros1Rm_msgsArm_Softversion_v4: Canonical {
  public static let maximumWireBytes = 2340
  public static let codecIdentity =
    "UWVMROS1_40f59f8af4a50464ab428e1246a58ca767b21950c19e7d565c9a2aea5bc95a0f"
  public static let nativeType = "rm_msgs/Arm_Softversion_v4"
  public static let nativeIdentity: String? = nil
  public var `product_version`: String = ""
  public var `controller_version`: String = ""
  public var `algorithm_info`: String = ""
  public var `ctrl_info`: Ros1Rm_msgsSoftwarebuildinfo = Ros1Rm_msgsSoftwarebuildinfo()
  public var `com_info`: Ros1Rm_msgsSoftwarebuildinfo = Ros1Rm_msgsSoftwarebuildinfo()
  public var `program_info`: Ros1Rm_msgsSoftwarebuildinfo = Ros1Rm_msgsSoftwarebuildinfo()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`product_version`, bound: 256)
    try w.string(self.`controller_version`, bound: 256)
    try w.string(self.`algorithm_info`, bound: 256)
    try self.`ctrl_info`.write(to: &w)
    try self.`com_info`.write(to: &w)
    try self.`program_info`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsArm_Softversion_v4 {
    var v = Ros1Rm_msgsArm_Softversion_v4()
    v.`product_version` = try r.string(bound: 256)
    v.`controller_version` = try r.string(bound: 256)
    v.`algorithm_info` = try r.string(bound: 256)
    v.`ctrl_info` = try Ros1Rm_msgsSoftwarebuildinfo.read(from: &r)
    v.`com_info` = try Ros1Rm_msgsSoftwarebuildinfo.read(from: &r)
    v.`program_info` = try Ros1Rm_msgsSoftwarebuildinfo.read(from: &r)
    return v
  }
}
public struct Ros1Rm_msgsArm_Software_Version: Canonical {
  public static let maximumWireBytes = 3120
  public static let codecIdentity =
    "UWVMROS1_73a8bbc2aae36edf9b7e16773c7c683e148f81269ed380e012d8a5e4cc79d5d5"
  public static let nativeType = "rm_msgs/Arm_Software_Version"
  public static let nativeIdentity: String? = nil
  public var `product_version`: String = ""
  public var `algorithm_info`: String = ""
  public var `ctrl_info`: Ros1Rm_msgsSoftwarebuildinfo = Ros1Rm_msgsSoftwarebuildinfo()
  public var `dynamic_info`: String = ""
  public var `plan_info`: Ros1Rm_msgsSoftwarebuildinfo = Ros1Rm_msgsSoftwarebuildinfo()
  public var `controller_version`: String = ""
  public var `com_info`: Ros1Rm_msgsSoftwarebuildinfo = Ros1Rm_msgsSoftwarebuildinfo()
  public var `program_info`: Ros1Rm_msgsSoftwarebuildinfo = Ros1Rm_msgsSoftwarebuildinfo()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`product_version`, bound: 256)
    try w.string(self.`algorithm_info`, bound: 256)
    try self.`ctrl_info`.write(to: &w)
    try w.string(self.`dynamic_info`, bound: 256)
    try self.`plan_info`.write(to: &w)
    try w.string(self.`controller_version`, bound: 256)
    try self.`com_info`.write(to: &w)
    try self.`program_info`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsArm_Software_Version {
    var v = Ros1Rm_msgsArm_Software_Version()
    v.`product_version` = try r.string(bound: 256)
    v.`algorithm_info` = try r.string(bound: 256)
    v.`ctrl_info` = try Ros1Rm_msgsSoftwarebuildinfo.read(from: &r)
    v.`dynamic_info` = try r.string(bound: 256)
    v.`plan_info` = try Ros1Rm_msgsSoftwarebuildinfo.read(from: &r)
    v.`controller_version` = try r.string(bound: 256)
    v.`com_info` = try Ros1Rm_msgsSoftwarebuildinfo.read(from: &r)
    v.`program_info` = try Ros1Rm_msgsSoftwarebuildinfo.read(from: &r)
    return v
  }
}
public struct Ros1Rm_msgsCabinet: Canonical {
  public static let maximumWireBytes = 334
  public static let codecIdentity =
    "UWVMROS1_c87786d2d26af9f8d138443f251c69d46f60b011db9abd3b3d4f80dca8e1babf"
  public static let nativeType = "rm_msgs/Cabinet"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `label`: Int16 = 0
  public var `angle`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`pose`.write(to: &w)
    try w.integer(self.`label`)
    try w.float32(self.`angle`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsCabinet {
    var v = Ros1Rm_msgsCabinet()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`label` = try r.integer(Int16.self)
    v.`angle` = try r.float32()
    return v
  }
}
public struct Ros1Rm_msgsCartePos: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_c57fa78db159ce841b371c7cad7490b2059aabfe9394776129ab3eab33b59ce9"
  public static let nativeType = "rm_msgs/CartePos"
  public static let nativeIdentity: String? = nil
  public var `Pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`Pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsCartePos {
    var v = Ros1Rm_msgsCartePos()
    v.`Pose` = try Ros1Geometry_msgsPose.read(from: &r)
    return v
  }
}
public struct Ros1Rm_msgsCartePosCustom: Canonical {
  public static let maximumWireBytes = 59
  public static let codecIdentity =
    "UWVMROS1_747920217625df52e54b9f69ea1e7375e2945ef08c1a9243d7cf88429f6f871c"
  public static let nativeType = "rm_msgs/CartePosCustom"
  public static let nativeIdentity: String? = nil
  public var `Pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `follow`: Bool = false
  public var `trajectory_mode`: UInt8 = 0
  public var `radio`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`Pose`.write(to: &w)
    try w.boolean(self.`follow`)
    try w.integer(self.`trajectory_mode`)
    try w.integer(self.`radio`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsCartePosCustom {
    var v = Ros1Rm_msgsCartePosCustom()
    v.`Pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`follow` = try r.boolean()
    v.`trajectory_mode` = try r.integer(UInt8.self)
    v.`radio` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Rm_msgsChangeTool_Name: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_e911c349e53bcce70562585461a9da98a2db38e964dc743d6eb49b334f7f2314"
  public static let nativeType = "rm_msgs/ChangeTool_Name"
  public static let nativeIdentity: String? = nil
  public var `toolname`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`toolname`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsChangeTool_Name {
    var v = Ros1Rm_msgsChangeTool_Name()
    v.`toolname` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rm_msgsChangeTool_State: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_dd7214855c8334d6c5098ec2da0fd3ee89d02d7b17ad83c58f0b28740b044b86"
  public static let nativeType = "rm_msgs/ChangeTool_State"
  public static let nativeIdentity: String? = nil
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsChangeTool_State {
    var v = Ros1Rm_msgsChangeTool_State()
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsChangeWorkFrame_Name: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_47a75a37f6777b0aee5ad12e298e07359d1ffcbd26e4fafe5efe5a98f757cbce"
  public static let nativeType = "rm_msgs/ChangeWorkFrame_Name"
  public static let nativeIdentity: String? = nil
  public var `WorkFrame_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`WorkFrame_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsChangeWorkFrame_Name {
    var v = Ros1Rm_msgsChangeWorkFrame_Name()
    v.`WorkFrame_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rm_msgsChangeWorkFrame_State: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d5b387f63fb4c309d83fbdb046a8c8a0e6678d60fb521139250f15e8e5a56856"
  public static let nativeType = "rm_msgs/ChangeWorkFrame_State"
  public static let nativeIdentity: String? = nil
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsChangeWorkFrame_State {
    var v = Ros1Rm_msgsChangeWorkFrame_State()
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsErr: Canonical {
  public static let maximumWireBytes = 36
  public static let codecIdentity =
    "UWVMROS1_dec53c41ca46496e0ac25a56a15fc255aa369f59d7add914de365b18acff2117"
  public static let nativeType = "rm_msgs/Err"
  public static let nativeIdentity: String? = nil
  public var `err`: [UInt16] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`err`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`err`.count))
    for e in self.`err` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsErr {
    var v = Ros1Rm_msgsErr()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`err` = []
    v.`err`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`err`.append(try r.integer(UInt16.self))
    }
    return v
  }
}
public struct Ros1Rm_msgsExpandState: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_640f4cf4113a2c38af646bd4b1a112916b795daec1b8c4b4362712ab473d3f1a"
  public static let nativeType = "rm_msgs/ExpandState"
  public static let nativeIdentity: String? = nil
  public var `get_state`: Bool = false
  public var `pos`: Int16 = 0
  public var `err_flag`: Int16 = 0
  public var `en_flag`: UInt16 = 0
  public var `current`: UInt16 = 0
  public var `mode`: Int8 = 0
  public var `joint_id`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`get_state`)
    try w.integer(self.`pos`)
    try w.integer(self.`err_flag`)
    try w.integer(self.`en_flag`)
    try w.integer(self.`current`)
    try w.integer(self.`mode`)
    try w.integer(self.`joint_id`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsExpandState {
    var v = Ros1Rm_msgsExpandState()
    v.`get_state` = try r.boolean()
    v.`pos` = try r.integer(Int16.self)
    v.`err_flag` = try r.integer(Int16.self)
    v.`en_flag` = try r.integer(UInt16.self)
    v.`current` = try r.integer(UInt16.self)
    v.`mode` = try r.integer(Int8.self)
    v.`joint_id` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros1Rm_msgsExpand_In_Position: Canonical {
  public static let maximumWireBytes = 263
  public static let codecIdentity =
    "UWVMROS1_51acd7ca334e74e4c8ba72027230530ec5b1e63865cc0c35172aa6040969f3b0"
  public static let nativeType = "rm_msgs/Expand_In_Position"
  public static let nativeIdentity: String? = nil
  public var `device`: UInt8 = 0
  public var `state`: String = ""
  public var `trajectory_connect`: UInt8 = 0
  public var `trajectory_state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`device`)
    try w.string(self.`state`, bound: 256)
    try w.integer(self.`trajectory_connect`)
    try w.boolean(self.`trajectory_state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsExpand_In_Position {
    var v = Ros1Rm_msgsExpand_In_Position()
    v.`device` = try r.integer(UInt8.self)
    v.`state` = try r.string(bound: 256)
    v.`trajectory_connect` = try r.integer(UInt8.self)
    v.`trajectory_state` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsExpand_Position: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cd07785998b7fd5698c8606538f9ed6b35ae5f0aded4ca768c446dd7d235faed"
  public static let nativeType = "rm_msgs/Expand_Position"
  public static let nativeIdentity: String? = nil
  public var `pos`: Int16 = 0
  public var `speed`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pos`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsExpand_Position {
    var v = Ros1Rm_msgsExpand_Position()
    v.`pos` = try r.integer(Int16.self)
    v.`speed` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Rm_msgsExpand_Speed: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_1ec010d530738e2f4f9ba5fe992202886bb3485be97f1e72b5b36ba0f6b5d9d4"
  public static let nativeType = "rm_msgs/Expand_Speed"
  public static let nativeIdentity: String? = nil
  public var `speed`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsExpand_Speed {
    var v = Ros1Rm_msgsExpand_Speed()
    v.`speed` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Rm_msgsFlowchartrunstate: Canonical {
  public static let maximumWireBytes = 524
  public static let codecIdentity =
    "UWVMROS1_deafa818f1cf99a33c9443d1880f5744f721ac3c07d583a00ed269569f07e030"
  public static let nativeType = "rm_msgs/Flowchartrunstate"
  public static let nativeIdentity: String? = nil
  public var `run_state`: UInt8 = 0
  public var `id`: UInt8 = 0
  public var `name`: String = ""
  public var `plan_speed`: UInt8 = 0
  public var `step_mode`: UInt8 = 0
  public var `modal_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`run_state`)
    try w.integer(self.`id`)
    try w.string(self.`name`, bound: 256)
    try w.integer(self.`plan_speed`)
    try w.integer(self.`step_mode`)
    try w.string(self.`modal_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsFlowchartrunstate {
    var v = Ros1Rm_msgsFlowchartrunstate()
    v.`run_state` = try r.integer(UInt8.self)
    v.`id` = try r.integer(UInt8.self)
    v.`name` = try r.string(bound: 256)
    v.`plan_speed` = try r.integer(UInt8.self)
    v.`step_mode` = try r.integer(UInt8.self)
    v.`modal_id` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rm_msgsForce_Position_Move_Joint: Canonical {
  public static let maximumWireBytes = 74
  public static let codecIdentity =
    "UWVMROS1_40252f1cf60424f32d01c870d44e286a0138883d8db1302ffdbbe0300e38cd39"
  public static let nativeType = "rm_msgs/Force_Position_Move_Joint"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `sensor`: UInt8 = 0
  public var `mode`: UInt8 = 0
  public var `dir`: UInt8 = 0
  public var `force`: Int16 = 0
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
    try w.integer(self.`force`)
    try w.integer(self.`dof`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsForce_Position_Move_Joint {
    var v = Ros1Rm_msgsForce_Position_Move_Joint()
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
    v.`dir` = try r.integer(UInt8.self)
    v.`force` = try r.integer(Int16.self)
    v.`dof` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Rm_msgsForce_Position_Move_Pose: Canonical {
  public static let maximumWireBytes = 61
  public static let codecIdentity =
    "UWVMROS1_6397e7691e6a886b0ec77927e87229edf7c7c4b3164e64e4898813d240206f02"
  public static let nativeType = "rm_msgs/Force_Position_Move_Pose"
  public static let nativeIdentity: String? = nil
  public var `Pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `sensor`: UInt8 = 0
  public var `mode`: UInt8 = 0
  public var `dir`: UInt8 = 0
  public var `force`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`Pose`.write(to: &w)
    try w.integer(self.`sensor`)
    try w.integer(self.`mode`)
    try w.integer(self.`dir`)
    try w.integer(self.`force`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsForce_Position_Move_Pose {
    var v = Ros1Rm_msgsForce_Position_Move_Pose()
    v.`Pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`sensor` = try r.integer(UInt8.self)
    v.`mode` = try r.integer(UInt8.self)
    v.`dir` = try r.integer(UInt8.self)
    v.`force` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Rm_msgsForce_Position_Move_Pose_Custom: Canonical {
  public static let maximumWireBytes = 64
  public static let codecIdentity =
    "UWVMROS1_85e4ff181a274b8e87937ae0eaa56b94de2b7d524caf3f6fc89c0d33a487c1bd"
  public static let nativeType = "rm_msgs/Force_Position_Move_Pose_Custom"
  public static let nativeIdentity: String? = nil
  public var `Pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `sensor`: UInt8 = 0
  public var `mode`: UInt8 = 0
  public var `dir`: UInt8 = 0
  public var `force`: Int16 = 0
  public var `follow`: Bool = false
  public var `trajectory_mode`: UInt8 = 0
  public var `radio`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`Pose`.write(to: &w)
    try w.integer(self.`sensor`)
    try w.integer(self.`mode`)
    try w.integer(self.`dir`)
    try w.integer(self.`force`)
    try w.boolean(self.`follow`)
    try w.integer(self.`trajectory_mode`)
    try w.integer(self.`radio`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Rm_msgsForce_Position_Move_Pose_Custom
  {
    var v = Ros1Rm_msgsForce_Position_Move_Pose_Custom()
    v.`Pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`sensor` = try r.integer(UInt8.self)
    v.`mode` = try r.integer(UInt8.self)
    v.`dir` = try r.integer(UInt8.self)
    v.`force` = try r.integer(Int16.self)
    v.`follow` = try r.boolean()
    v.`trajectory_mode` = try r.integer(UInt8.self)
    v.`radio` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Rm_msgsForce_Position_State: Canonical {
  public static let maximumWireBytes = 75
  public static let codecIdentity =
    "UWVMROS1_8b817fc0422a9dcfc91e51ade9e0fc9d1d44ed315d9b813eaf88cf88d889b367"
  public static let nativeType = "rm_msgs/Force_Position_State"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `force`: Float = 0
  public var `arm_err`: UInt16 = 0
  public var `dof`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    try w.float32(self.`force`)
    try w.integer(self.`arm_err`)
    try w.integer(self.`dof`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsForce_Position_State {
    var v = Ros1Rm_msgsForce_Position_State()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    v.`force` = try r.float32()
    v.`arm_err` = try r.integer(UInt16.self)
    v.`dof` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Rm_msgsGetArmState_Command: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_ae8d3621dd3742fc96f2dd06907f546f1def2e1d91cb2b652d4f7fc499755d4b"
  public static let nativeType = "rm_msgs/GetArmState_Command"
  public static let nativeIdentity: String? = nil
  public var `command`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`command`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsGetArmState_Command {
    var v = Ros1Rm_msgsGetArmState_Command()
    v.`command` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rm_msgsGet_TCP_Master_List_Param: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_8a8b20ec793a537927ce7190694ca820648b6492822a8284e2e072ea68a2ad00"
  public static let nativeType = "rm_msgs/Get_TCP_Master_List_Param"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsGet_TCP_Master_List_Param {
    var v = Ros1Rm_msgsGet_TCP_Master_List_Param()
    v.`page_num` = try r.integer(Int32.self)
    v.`page_size` = try r.integer(Int32.self)
    v.`vague_search` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rm_msgsGettrajectorylist: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_da19e810ea29adcd43132897a49c6445e61cd18d1f06783162857b25b8c2cbe0"
  public static let nativeType = "rm_msgs/Gettrajectorylist"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsGettrajectorylist {
    var v = Ros1Rm_msgsGettrajectorylist()
    v.`page_num` = try r.integer(Int32.self)
    v.`page_size` = try r.integer(Int32.self)
    v.`vague_search` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rm_msgsGripper_Pick: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cd54942d53ad8167aaa7f2cfe1d0d4e6ad1092d015d59deff29080fa70a9a7a9"
  public static let nativeType = "rm_msgs/Gripper_Pick"
  public static let nativeIdentity: String? = nil
  public var `speed`: UInt16 = 0
  public var `force`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed`)
    try w.integer(self.`force`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsGripper_Pick {
    var v = Ros1Rm_msgsGripper_Pick()
    v.`speed` = try r.integer(UInt16.self)
    v.`force` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros1Rm_msgsGripper_Set: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_6095cdd3c0ac57ed78df3676ecc946e6cdc6ff48404dc7f205e1da3efeecabe3"
  public static let nativeType = "rm_msgs/Gripper_Set"
  public static let nativeIdentity: String? = nil
  public var `position`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`position`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsGripper_Set {
    var v = Ros1Rm_msgsGripper_Set()
    v.`position` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros1Rm_msgsHand_Angle: Canonical {
  public static let maximumWireBytes = 13
  public static let codecIdentity =
    "UWVMROS1_9d1bf1c63d0cd9feae75492e0610bd9f261bef5d9b774f042534ac5ff6b2ba48"
  public static let nativeType = "rm_msgs/Hand_Angle"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsHand_Angle {
    var v = Ros1Rm_msgsHand_Angle()
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
public struct Ros1Rm_msgsHand_Force: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_530176ac18800838e1648e67dbc6f4ca83101e333adcae1b44dbf749ffafd71c"
  public static let nativeType = "rm_msgs/Hand_Force"
  public static let nativeIdentity: String? = nil
  public var `hand_force`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`hand_force`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsHand_Force {
    var v = Ros1Rm_msgsHand_Force()
    v.`hand_force` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros1Rm_msgsHand_Posture: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_0272a7a2465f613518f7bbcce5f31395faebe4b7f54c77bed3a076f0b9eb5785"
  public static let nativeType = "rm_msgs/Hand_Posture"
  public static let nativeIdentity: String? = nil
  public var `posture_num`: UInt16 = 0
  public var `block`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`posture_num`)
    try w.boolean(self.`block`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsHand_Posture {
    var v = Ros1Rm_msgsHand_Posture()
    v.`posture_num` = try r.integer(UInt16.self)
    v.`block` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsHand_Seq: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_f6fa34fdf69af4115af9d275026c35614ececda0084ac45bee579bae43f2d3f0"
  public static let nativeType = "rm_msgs/Hand_Seq"
  public static let nativeIdentity: String? = nil
  public var `seq_num`: UInt16 = 0
  public var `block`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`seq_num`)
    try w.boolean(self.`block`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsHand_Seq {
    var v = Ros1Rm_msgsHand_Seq()
    v.`seq_num` = try r.integer(UInt16.self)
    v.`block` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsHand_Speed: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_f21faf03c07ab57120835321e699b27ec6f86e462930e83499bef2a155f827ca"
  public static let nativeType = "rm_msgs/Hand_Speed"
  public static let nativeIdentity: String? = nil
  public var `hand_speed`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`hand_speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsHand_Speed {
    var v = Ros1Rm_msgsHand_Speed()
    v.`hand_speed` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros1Rm_msgsHand_Status: Canonical {
  public static let maximumWireBytes = 50
  public static let codecIdentity =
    "UWVMROS1_2ff89c76aa0fc5924535b7de55609d74847aac91fc2ab8145ec7b8d958260ad8"
  public static let nativeType = "rm_msgs/Hand_Status"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsHand_Status {
    var v = Ros1Rm_msgsHand_Status()
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
public struct Ros1Rm_msgsIO_Update: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6941f85ba773344ca73a917cfef68d8a6a99f67ff76bdf6eea4b9b1a7d1ddba7"
  public static let nativeType = "rm_msgs/IO_Update"
  public static let nativeIdentity: String? = nil
  public var `type`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsIO_Update {
    var v = Ros1Rm_msgsIO_Update()
    v.`type` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Rm_msgsJointPos: Canonical {
  public static let maximumWireBytes = 72
  public static let codecIdentity =
    "UWVMROS1_55bb4d07f6901dfd381902cb71f0bfa8bb2e34b70e7c8cae455b68a8b57e5623"
  public static let nativeType = "rm_msgs/JointPos"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `expand`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    try w.float32(self.`expand`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJointPos {
    var v = Ros1Rm_msgsJointPos()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    v.`expand` = try r.float32()
    return v
  }
}
public struct Ros1Rm_msgsJointPosCustom: Canonical {
  public static let maximumWireBytes = 75
  public static let codecIdentity =
    "UWVMROS1_d4935ad5910358dea6a8902e472c01f413574a5db91a57e4e54dee65a0bac676"
  public static let nativeType = "rm_msgs/JointPosCustom"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `expand`: Float = 0
  public var `follow`: Bool = false
  public var `trajectory_mode`: UInt8 = 0
  public var `radio`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    try w.float32(self.`expand`)
    try w.boolean(self.`follow`)
    try w.integer(self.`trajectory_mode`)
    try w.integer(self.`radio`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJointPosCustom {
    var v = Ros1Rm_msgsJointPosCustom()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    v.`expand` = try r.float32()
    v.`follow` = try r.boolean()
    v.`trajectory_mode` = try r.integer(UInt8.self)
    v.`radio` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Rm_msgsJoint_Current: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_bc39b37164a42e1937db5e4404b2a9c869083a3b81e84f5d7beb34de93e04b7c"
  public static let nativeType = "rm_msgs/Joint_Current"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJoint_Current {
    var v = Ros1Rm_msgsJoint_Current()
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
public struct Ros1Rm_msgsJoint_En_Flag: Canonical {
  public static let maximumWireBytes = 20
  public static let codecIdentity =
    "UWVMROS1_a5fc892ad2eb36348a3b49588393c82773299a8f7a8d73079c338864430e58b8"
  public static let nativeType = "rm_msgs/Joint_En_Flag"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJoint_En_Flag {
    var v = Ros1Rm_msgsJoint_En_Flag()
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
public struct Ros1Rm_msgsJoint_Enable: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_0b54d5338f0c38491ecf9f0e9e6d7963384f45666ee235b18ae24649fa99bfb6"
  public static let nativeType = "rm_msgs/Joint_Enable"
  public static let nativeIdentity: String? = nil
  public var `joint_num`: UInt8 = 0
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`joint_num`)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJoint_Enable {
    var v = Ros1Rm_msgsJoint_Enable()
    v.`joint_num` = try r.integer(UInt8.self)
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsJoint_Error_Code: Canonical {
  public static let maximumWireBytes = 36
  public static let codecIdentity =
    "UWVMROS1_76bc10f3795648437b5021e1a3b7087d11dc1d85ddb429f6f3c87c7f00bed361"
  public static let nativeType = "rm_msgs/Joint_Error_Code"
  public static let nativeIdentity: String? = nil
  public var `joint_error`: [UInt16] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_error`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_error`.count))
    for e in self.`joint_error` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJoint_Error_Code {
    var v = Ros1Rm_msgsJoint_Error_Code()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint_error` = []
    v.`joint_error`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_error`.append(try r.integer(UInt16.self))
    }
    return v
  }
}
public struct Ros1Rm_msgsJoint_Max_Speed: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_808b0661dec52a0bb942426d3cff85fa3cd025ea5e18efde14b7c3cbf12212fb"
  public static let nativeType = "rm_msgs/Joint_Max_Speed"
  public static let nativeIdentity: String? = nil
  public var `joint_num`: UInt8 = 0
  public var `joint_max_speed`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`joint_num`)
    try w.float32(self.`joint_max_speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJoint_Max_Speed {
    var v = Ros1Rm_msgsJoint_Max_Speed()
    v.`joint_num` = try r.integer(UInt8.self)
    v.`joint_max_speed` = try r.float32()
    return v
  }
}
public struct Ros1Rm_msgsJoint_PoseEuler: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_5145fe7bbcebd72b80dbb5b09cb8e736049951d5c8011af97a05bfaccd1638e1"
  public static let nativeType = "rm_msgs/Joint_PoseEuler"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJoint_PoseEuler {
    var v = Ros1Rm_msgsJoint_PoseEuler()
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
public struct Ros1Rm_msgsJoint_Speed: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_fbc6add09d420c1cf11af125de1f13a40586dca5e374bd8cd970289468e6140f"
  public static let nativeType = "rm_msgs/Joint_Speed"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJoint_Speed {
    var v = Ros1Rm_msgsJoint_Speed()
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
public struct Ros1Rm_msgsJoint_Step: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_2f8f1683b5b2734e9fc105f61ed848e905a33abeb9e5f09028ea834991d4000b"
  public static let nativeType = "rm_msgs/Joint_Step"
  public static let nativeIdentity: String? = nil
  public var `joint_num`: UInt8 = 0
  public var `step_angle`: Float = 0
  public var `speed`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`joint_num`)
    try w.float32(self.`step_angle`)
    try w.float32(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJoint_Step {
    var v = Ros1Rm_msgsJoint_Step()
    v.`joint_num` = try r.integer(UInt8.self)
    v.`step_angle` = try r.float32()
    v.`speed` = try r.float32()
    return v
  }
}
public struct Ros1Rm_msgsJoint_Teach: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_6191ef24dc181055dd0fb597fec470a8b583791e0a67edd14f3eb7a6fdac1717"
  public static let nativeType = "rm_msgs/Joint_Teach"
  public static let nativeIdentity: String? = nil
  public var `teach_joint`: Int16 = 0
  public var `direction`: String = ""
  public var `v`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`teach_joint`)
    try w.string(self.`direction`, bound: 256)
    try w.integer(self.`v`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJoint_Teach {
    var v = Ros1Rm_msgsJoint_Teach()
    v.`teach_joint` = try r.integer(Int16.self)
    v.`direction` = try r.string(bound: 256)
    v.`v` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Rm_msgsJoint_Temperature: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_6c3dd6374ed98e575b6e4db3a15691bdde6e174c9aa6e15ce5d2ada37e79507e"
  public static let nativeType = "rm_msgs/Joint_Temperature"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJoint_Temperature {
    var v = Ros1Rm_msgsJoint_Temperature()
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
public struct Ros1Rm_msgsJoint_Voltage: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_45e56529f780d399f86c70e4303dc63e49760f1247124a866d7830a656bf830d"
  public static let nativeType = "rm_msgs/Joint_Voltage"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJoint_Voltage {
    var v = Ros1Rm_msgsJoint_Voltage()
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
public struct Ros1Rm_msgsJointversion: Canonical {
  public static let maximumWireBytes = 1820
  public static let codecIdentity =
    "UWVMROS1_e49b2595327fcedf6a8a15f690deac2f4809eefb25957cf2c0ac9d7117579e1e"
  public static let nativeType = "rm_msgs/Jointversion"
  public static let nativeIdentity: String? = nil
  public var `joint_version`: [String] = Array(repeating: "", count: 7)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_version`.count == 7 else { throw RosError(22) }
    for e in self.`joint_version` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsJointversion {
    var v = Ros1Rm_msgsJointversion()
    let count0 = 7
    v.`joint_version` = []
    v.`joint_version`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_version`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Rm_msgsLiftState: Canonical {
  public static let maximumWireBytes = 7
  public static let codecIdentity =
    "UWVMROS1_c09f03491729bb1f271578da29f8b68fba3da3e57a3b15dc1c835373d2406aea"
  public static let nativeType = "rm_msgs/LiftState"
  public static let nativeIdentity: String? = nil
  public var `height`: Int16 = 0
  public var `current`: Int16 = 0
  public var `err_flag`: UInt16 = 0
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`height`)
    try w.integer(self.`current`)
    try w.integer(self.`err_flag`)
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsLiftState {
    var v = Ros1Rm_msgsLiftState()
    v.`height` = try r.integer(Int16.self)
    v.`current` = try r.integer(Int16.self)
    v.`err_flag` = try r.integer(UInt16.self)
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Rm_msgsLift_Height: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_91f1e27a75ec4d5b8e9a677e5a3eb0493cc19067019121a2d6397a87ebff5c61"
  public static let nativeType = "rm_msgs/Lift_Height"
  public static let nativeIdentity: String? = nil
  public var `height`: UInt16 = 0
  public var `speed`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`height`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsLift_Height {
    var v = Ros1Rm_msgsLift_Height()
    v.`height` = try r.integer(UInt16.self)
    v.`speed` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros1Rm_msgsLift_In_Position: Canonical {
  public static let maximumWireBytes = 263
  public static let codecIdentity =
    "UWVMROS1_eeb51df403cc708bf439f6a54b6d010981ad3d7919fd1d6cea84a77935ced787"
  public static let nativeType = "rm_msgs/Lift_In_Position"
  public static let nativeIdentity: String? = nil
  public var `device`: UInt8 = 0
  public var `state`: String = ""
  public var `trajectory_connect`: UInt8 = 0
  public var `trajectory_state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`device`)
    try w.string(self.`state`, bound: 256)
    try w.integer(self.`trajectory_connect`)
    try w.boolean(self.`trajectory_state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsLift_In_Position {
    var v = Ros1Rm_msgsLift_In_Position()
    v.`device` = try r.integer(UInt8.self)
    v.`state` = try r.string(bound: 256)
    v.`trajectory_connect` = try r.integer(UInt8.self)
    v.`trajectory_state` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsLift_Speed: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_19aa9a2cffa38998503715ba68a5281d58933a12b16e1a2bfca7c8f96dcca0a8"
  public static let nativeType = "rm_msgs/Lift_Speed"
  public static let nativeIdentity: String? = nil
  public var `speed`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsLift_Speed {
    var v = Ros1Rm_msgsLift_Speed()
    v.`speed` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Rm_msgsManual_Set_Force_Pose: Canonical {
  public static let maximumWireBytes = 392
  public static let codecIdentity =
    "UWVMROS1_215450b7ec8f49bc87aea83627cc98d887c29b3a3c6377eee217d64eac2f3ea0"
  public static let nativeType = "rm_msgs/Manual_Set_Force_Pose"
  public static let nativeIdentity: String? = nil
  public var `pose`: String = ""
  public var `joint`: [Int64] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`pose`, bound: 256)
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsManual_Set_Force_Pose {
    var v = Ros1Rm_msgsManual_Set_Force_Pose()
    v.`pose` = try r.string(bound: 256)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joint` = []
    v.`joint`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint`.append(try r.integer(Int64.self))
    }
    return v
  }
}
public struct Ros1Rm_msgsMastername: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_a10623bdcabd2f64e702b69c6549bdb219796e9516dc9cf505070036353cc59f"
  public static let nativeType = "rm_msgs/Mastername"
  public static let nativeIdentity: String? = nil
  public var `master_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`master_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsMastername {
    var v = Ros1Rm_msgsMastername()
    v.`master_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rm_msgsModbusreaddata: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_107972f1e16052d7b327932447d7d704c7888041f715105f30a416fbf429dd20"
  public static let nativeType = "rm_msgs/Modbusreaddata"
  public static let nativeIdentity: String? = nil
  public var `read_data`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`read_data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`read_data`.count))
    for e in self.`read_data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsModbusreaddata {
    var v = Ros1Rm_msgsModbusreaddata()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`read_data` = []
    v.`read_data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`read_data`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros1Rm_msgsModbustcpmasterinfo: Canonical {
  public static let maximumWireBytes = 524
  public static let codecIdentity =
    "UWVMROS1_7f45c814efbc1268c68b7955f3c077f319f46ba4dc532f36914ccd3c55420680"
  public static let nativeType = "rm_msgs/Modbustcpmasterinfo"
  public static let nativeIdentity: String? = nil
  public var `master_name`: String = ""
  public var `ip`: String = ""
  public var `port`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`master_name`, bound: 256)
    try w.string(self.`ip`, bound: 256)
    try w.integer(self.`port`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsModbustcpmasterinfo {
    var v = Ros1Rm_msgsModbustcpmasterinfo()
    v.`master_name` = try r.string(bound: 256)
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rm_msgsModbustcpmasterlist: Canonical {
  public static let maximumWireBytes = 8388
  public static let codecIdentity =
    "UWVMROS1_a656fe16126d96dc7de6bdb80d60087d9ceb3f2680e403437283a1eaee3b5eb1"
  public static let nativeType = "rm_msgs/Modbustcpmasterlist"
  public static let nativeIdentity: String? = nil
  public var `master_list`: [Ros1Rm_msgsModbustcpmasterinfo] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`master_list`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`master_list`.count))
    for e in self.`master_list` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsModbustcpmasterlist {
    var v = Ros1Rm_msgsModbustcpmasterlist()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`master_list` = []
    v.`master_list`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`master_list`.append(try Ros1Rm_msgsModbustcpmasterinfo.read(from: &r))
    }
    return v
  }
}
public struct Ros1Rm_msgsMoveC: Canonical {
  public static let maximumWireBytes = 119
  public static let codecIdentity =
    "UWVMROS1_a7c9838edb369a30428d4225ce45305e72ddd5a9a315147dfa47288e3a367a69"
  public static let nativeType = "rm_msgs/MoveC"
  public static let nativeIdentity: String? = nil
  public var `Mid_Pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `End_Pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `speed`: Float = 0
  public var `loop`: UInt16 = 0
  public var `trajectory_connect`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`Mid_Pose`.write(to: &w)
    try self.`End_Pose`.write(to: &w)
    try w.float32(self.`speed`)
    try w.integer(self.`loop`)
    try w.integer(self.`trajectory_connect`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsMoveC {
    var v = Ros1Rm_msgsMoveC()
    v.`Mid_Pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`End_Pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`speed` = try r.float32()
    v.`loop` = try r.integer(UInt16.self)
    v.`trajectory_connect` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Rm_msgsMoveJ: Canonical {
  public static let maximumWireBytes = 73
  public static let codecIdentity =
    "UWVMROS1_b06164ba46d0b515ea1b853f6e91af08ac358839fef3174797ba097b2f4a0d93"
  public static let nativeType = "rm_msgs/MoveJ"
  public static let nativeIdentity: String? = nil
  public var `joint`: [Float] = []
  public var `speed`: Float = 0
  public var `trajectory_connect`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint`.count))
    for e in self.`joint` {
      try w.float32(e)
    }
    try w.float32(self.`speed`)
    try w.integer(self.`trajectory_connect`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsMoveJ {
    var v = Ros1Rm_msgsMoveJ()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`joint` = []
    v.`joint`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint`.append(try r.float32())
    }
    v.`speed` = try r.float32()
    v.`trajectory_connect` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Rm_msgsMoveJ_P: Canonical {
  public static let maximumWireBytes = 61
  public static let codecIdentity =
    "UWVMROS1_e2f03dd50bed12ea4e61705e6cb09bfb224e8dd92b02a0bacf3dfeb253f72b65"
  public static let nativeType = "rm_msgs/MoveJ_P"
  public static let nativeIdentity: String? = nil
  public var `Pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `speed`: Float = 0
  public var `trajectory_connect`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`Pose`.write(to: &w)
    try w.float32(self.`speed`)
    try w.integer(self.`trajectory_connect`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsMoveJ_P {
    var v = Ros1Rm_msgsMoveJ_P()
    v.`Pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`speed` = try r.float32()
    v.`trajectory_connect` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Rm_msgsMoveL: Canonical {
  public static let maximumWireBytes = 61
  public static let codecIdentity =
    "UWVMROS1_2816f8d5ff4be8578d2dfa17425b165a4263456573dfd23ade5bd679a685cd49"
  public static let nativeType = "rm_msgs/MoveL"
  public static let nativeIdentity: String? = nil
  public var `Pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `speed`: Float = 0
  public var `trajectory_connect`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`Pose`.write(to: &w)
    try w.float32(self.`speed`)
    try w.integer(self.`trajectory_connect`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsMoveL {
    var v = Ros1Rm_msgsMoveL()
    v.`Pose` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`speed` = try r.float32()
    v.`trajectory_connect` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Rm_msgsMoveloffset: Canonical {
  public static let maximumWireBytes = 67
  public static let codecIdentity =
    "UWVMROS1_886f3c1a20875ee75df0a4e50fd4dd0c3ec47ffd7bc3f868ac90ad9e7f0dec28"
  public static let nativeType = "rm_msgs/Moveloffset"
  public static let nativeIdentity: String? = nil
  public var `offset`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public var `speed`: Int32 = 0
  public var `r`: Int32 = 0
  public var `trajectory_connect`: Bool = false
  public var `frame_type`: Bool = false
  public var `block`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`offset`.write(to: &w)
    try w.integer(self.`speed`)
    try w.integer(self.`r`)
    try w.boolean(self.`trajectory_connect`)
    try w.boolean(self.`frame_type`)
    try w.boolean(self.`block`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsMoveloffset {
    var v = Ros1Rm_msgsMoveloffset()
    v.`offset` = try Ros1Geometry_msgsPose.read(from: &r)
    v.`speed` = try r.integer(Int32.self)
    v.`r` = try r.integer(Int32.self)
    v.`trajectory_connect` = try r.boolean()
    v.`frame_type` = try r.boolean()
    v.`block` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsOrt_Teach: Canonical {
  public static let maximumWireBytes = 522
  public static let codecIdentity =
    "UWVMROS1_42dfe53597ed6f1ba5ffaa6042babc85f1a5ff43e2880f2c6fb383211ebed497"
  public static let nativeType = "rm_msgs/Ort_Teach"
  public static let nativeIdentity: String? = nil
  public var `teach_type`: String = ""
  public var `direction`: String = ""
  public var `v`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`teach_type`, bound: 256)
    try w.string(self.`direction`, bound: 256)
    try w.integer(self.`v`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsOrt_Teach {
    var v = Ros1Rm_msgsOrt_Teach()
    v.`teach_type` = try r.string(bound: 256)
    v.`direction` = try r.string(bound: 256)
    v.`v` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Rm_msgsPlan_State: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a9ac3bd0f8c096d42c8a5852fb71d9aac18315645cf0fb4669c38d6371fb2ba9"
  public static let nativeType = "rm_msgs/Plan_State"
  public static let nativeIdentity: String? = nil
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsPlan_State {
    var v = Ros1Rm_msgsPlan_State()
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsPos_Teach: Canonical {
  public static let maximumWireBytes = 522
  public static let codecIdentity =
    "UWVMROS1_6cf8ac67bafa4470a0a338053f3bef98e6c4c97cc508fbade9ebe590e4bf691a"
  public static let nativeType = "rm_msgs/Pos_Teach"
  public static let nativeIdentity: String? = nil
  public var `teach_type`: String = ""
  public var `direction`: String = ""
  public var `v`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`teach_type`, bound: 256)
    try w.string(self.`direction`, bound: 256)
    try w.integer(self.`v`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsPos_Teach {
    var v = Ros1Rm_msgsPos_Teach()
    v.`teach_type` = try r.string(bound: 256)
    v.`direction` = try r.string(bound: 256)
    v.`v` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Rm_msgsProgramrunstate: Canonical {
  public static let maximumWireBytes = 164
  public static let codecIdentity =
    "UWVMROS1_33f9f3bf9c238c3b304fdb6f8394ff1efd76d312dafb908a2e39260dadd1434a"
  public static let nativeType = "rm_msgs/Programrunstate"
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
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsProgramrunstate {
    var v = Ros1Rm_msgsProgramrunstate()
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
    return v
  }
}
public struct Ros1Rm_msgsRS485_Mode: Canonical {
  public static let maximumWireBytes = 10
  public static let codecIdentity =
    "UWVMROS1_47bf8f6bb74160b4acfea2fe14a2d75f35a0232f11419cda7c0d2333aab31424"
  public static let nativeType = "rm_msgs/RS485_Mode"
  public static let nativeIdentity: String? = nil
  public var `controller_RS485_mode`: UInt8 = 0
  public var `tool_RS485_mode`: UInt8 = 0
  public var `baudrate`: UInt32 = 0
  public var `modbus_timeout`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`controller_RS485_mode`)
    try w.integer(self.`tool_RS485_mode`)
    try w.integer(self.`baudrate`)
    try w.integer(self.`modbus_timeout`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsRS485_Mode {
    var v = Ros1Rm_msgsRS485_Mode()
    v.`controller_RS485_mode` = try r.integer(UInt8.self)
    v.`tool_RS485_mode` = try r.integer(UInt8.self)
    v.`baudrate` = try r.integer(UInt32.self)
    v.`modbus_timeout` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Rm_msgsRS485params: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_7c8cce477352cfa8e2647042f8734dad2ed44aa35f51701d528cd0d9931f4eec"
  public static let nativeType = "rm_msgs/RS485params"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int32 = 0
  public var `baudrate`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    try w.integer(self.`baudrate`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsRS485params {
    var v = Ros1Rm_msgsRS485params()
    v.`mode` = try r.integer(Int32.self)
    v.`baudrate` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rm_msgsRead_ModbusRTU: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_a81a5257d7f140e3d988d283c4fa2fdabfda43ca1d0c80f5dfad3f498a776969"
  public static let nativeType = "rm_msgs/Read_ModbusRTU"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `device`: Int32 = 0
  public var `num`: Int32 = 0
  public var `type`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`device`)
    try w.integer(self.`num`)
    try w.integer(self.`type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsRead_ModbusRTU {
    var v = Ros1Rm_msgsRead_ModbusRTU()
    v.`address` = try r.integer(Int32.self)
    v.`device` = try r.integer(Int32.self)
    v.`num` = try r.integer(Int32.self)
    v.`type` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rm_msgsRead_Register: Canonical {
  public static let maximumWireBytes = 13
  public static let codecIdentity =
    "UWVMROS1_917ea5dfecf096965284116556b7d6e34011714da4cb369fbf3d9a497c630d4f"
  public static let nativeType = "rm_msgs/Read_Register"
  public static let nativeIdentity: String? = nil
  public var `port`: UInt8 = 0
  public var `address`: UInt32 = 0
  public var `num`: UInt32 = 0
  public var `device`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`port`)
    try w.integer(self.`address`)
    try w.integer(self.`num`)
    try w.integer(self.`device`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsRead_Register {
    var v = Ros1Rm_msgsRead_Register()
    v.`port` = try r.integer(UInt8.self)
    v.`address` = try r.integer(UInt32.self)
    v.`num` = try r.integer(UInt32.self)
    v.`device` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Rm_msgsRead_TCPandRTU: Canonical {
  public static let maximumWireBytes = 540
  public static let codecIdentity =
    "UWVMROS1_6380b88d7659fa5c4acc02f200882400b978c960d948edc551359a74bd3376b9"
  public static let nativeType = "rm_msgs/Read_TCPandRTU"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `num`: Int32 = 0
  public var `ip`: String = ""
  public var `port`: Int32 = 0
  public var `master_name`: String = ""
  public var `device`: Int32 = 0
  public var `type`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`num`)
    try w.string(self.`ip`, bound: 256)
    try w.integer(self.`port`)
    try w.string(self.`master_name`, bound: 256)
    try w.integer(self.`device`)
    try w.integer(self.`type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsRead_TCPandRTU {
    var v = Ros1Rm_msgsRead_TCPandRTU()
    v.`address` = try r.integer(Int32.self)
    v.`num` = try r.integer(Int32.self)
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    v.`master_name` = try r.string(bound: 256)
    v.`device` = try r.integer(Int32.self)
    v.`type` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rm_msgsRegister_Data: Canonical {
  public static let maximumWireBytes = 37
  public static let codecIdentity =
    "UWVMROS1_ba1d780495f79683c483081c8326ce806edc62e8402dcc0566dc34d86b3a8867"
  public static let nativeType = "rm_msgs/Register_Data"
  public static let nativeIdentity: String? = nil
  public var `state`: Bool = false
  public var `data`: [UInt16] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`state`)
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsRegister_Data {
    var v = Ros1Rm_msgsRegister_Data()
    v.`state` = try r.boolean()
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`data` = []
    v.`data`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`data`.append(try r.integer(UInt16.self))
    }
    return v
  }
}
public struct Ros1Rm_msgsRm_Plus_Base: Canonical {
  public static let maximumWireBytes = 1597
  public static let codecIdentity =
    "UWVMROS1_9ca40bb3db27ce29bdb768b19fbb9d83f54894b107844c5d127c99d45702c1d6"
  public static let nativeType = "rm_msgs/Rm_Plus_Base"
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
  public var `pos_up`: [Int32] = []
  public var `pos_low`: [Int32] = []
  public var `angle_up`: [Int32] = []
  public var `angle_low`: [Int32] = []
  public var `speed_up`: [Int32] = []
  public var `speed_low`: [Int32] = []
  public var `force_up`: [Int32] = []
  public var `force_low`: [Int32] = []
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
    guard self.`pos_up`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`pos_up`.count))
    for e in self.`pos_up` {
      try w.integer(e)
    }
    guard self.`pos_low`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`pos_low`.count))
    for e in self.`pos_low` {
      try w.integer(e)
    }
    guard self.`angle_up`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`angle_up`.count))
    for e in self.`angle_up` {
      try w.integer(e)
    }
    guard self.`angle_low`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`angle_low`.count))
    for e in self.`angle_low` {
      try w.integer(e)
    }
    guard self.`speed_up`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`speed_up`.count))
    for e in self.`speed_up` {
      try w.integer(e)
    }
    guard self.`speed_low`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`speed_low`.count))
    for e in self.`speed_low` {
      try w.integer(e)
    }
    guard self.`force_up`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`force_up`.count))
    for e in self.`force_up` {
      try w.integer(e)
    }
    guard self.`force_low`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`force_low`.count))
    for e in self.`force_low` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsRm_Plus_Base {
    var v = Ros1Rm_msgsRm_Plus_Base()
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
    let rawcount14 = try r.integer(UInt32.self)
    guard rawcount14 <= 16 else { throw RosError(22) }
    let count14 = Int(rawcount14)
    v.`pos_up` = []
    v.`pos_up`.reserveCapacity(count14)
    for _ in 0..<count14 {
      v.`pos_up`.append(try r.integer(Int32.self))
    }
    let rawcount15 = try r.integer(UInt32.self)
    guard rawcount15 <= 16 else { throw RosError(22) }
    let count15 = Int(rawcount15)
    v.`pos_low` = []
    v.`pos_low`.reserveCapacity(count15)
    for _ in 0..<count15 {
      v.`pos_low`.append(try r.integer(Int32.self))
    }
    let rawcount16 = try r.integer(UInt32.self)
    guard rawcount16 <= 16 else { throw RosError(22) }
    let count16 = Int(rawcount16)
    v.`angle_up` = []
    v.`angle_up`.reserveCapacity(count16)
    for _ in 0..<count16 {
      v.`angle_up`.append(try r.integer(Int32.self))
    }
    let rawcount17 = try r.integer(UInt32.self)
    guard rawcount17 <= 16 else { throw RosError(22) }
    let count17 = Int(rawcount17)
    v.`angle_low` = []
    v.`angle_low`.reserveCapacity(count17)
    for _ in 0..<count17 {
      v.`angle_low`.append(try r.integer(Int32.self))
    }
    let rawcount18 = try r.integer(UInt32.self)
    guard rawcount18 <= 16 else { throw RosError(22) }
    let count18 = Int(rawcount18)
    v.`speed_up` = []
    v.`speed_up`.reserveCapacity(count18)
    for _ in 0..<count18 {
      v.`speed_up`.append(try r.integer(Int32.self))
    }
    let rawcount19 = try r.integer(UInt32.self)
    guard rawcount19 <= 16 else { throw RosError(22) }
    let count19 = Int(rawcount19)
    v.`speed_low` = []
    v.`speed_low`.reserveCapacity(count19)
    for _ in 0..<count19 {
      v.`speed_low`.append(try r.integer(Int32.self))
    }
    let rawcount20 = try r.integer(UInt32.self)
    guard rawcount20 <= 16 else { throw RosError(22) }
    let count20 = Int(rawcount20)
    v.`force_up` = []
    v.`force_up`.reserveCapacity(count20)
    for _ in 0..<count20 {
      v.`force_up`.append(try r.integer(Int32.self))
    }
    let rawcount21 = try r.integer(UInt32.self)
    guard rawcount21 <= 16 else { throw RosError(22) }
    let count21 = Int(rawcount21)
    v.`force_low` = []
    v.`force_low`.reserveCapacity(count21)
    for _ in 0..<count21 {
      v.`force_low`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros1Rm_msgsRm_Plus_State: Canonical {
  public static let maximumWireBytes = 892
  public static let codecIdentity =
    "UWVMROS1_430d17485316136f019ee6cda961a0152b7f024cb24aa235d2e048b0216f6db1"
  public static let nativeType = "rm_msgs/Rm_Plus_State"
  public static let nativeIdentity: String? = nil
  public var `sys_state`: Int32 = 0
  public var `sys_err`: Int32 = 0
  public var `dof_state`: [Int32] = []
  public var `dof_err`: [Int32] = []
  public var `pos`: [Int32] = []
  public var `speed`: [Int32] = []
  public var `angle`: [Int32] = []
  public var `current`: [Int32] = []
  public var `normal_force`: [Int32] = []
  public var `tangential_force`: [Int32] = []
  public var `tangential_force_dir`: [Int32] = []
  public var `tsa`: [UInt32] = []
  public var `tma`: [UInt32] = []
  public var `touch_data`: [Int32] = []
  public var `force`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sys_state`)
    try w.integer(self.`sys_err`)
    guard self.`dof_state`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`dof_state`.count))
    for e in self.`dof_state` {
      try w.integer(e)
    }
    guard self.`dof_err`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`dof_err`.count))
    for e in self.`dof_err` {
      try w.integer(e)
    }
    guard self.`pos`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`pos`.count))
    for e in self.`pos` {
      try w.integer(e)
    }
    guard self.`speed`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`speed`.count))
    for e in self.`speed` {
      try w.integer(e)
    }
    guard self.`angle`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`angle`.count))
    for e in self.`angle` {
      try w.integer(e)
    }
    guard self.`current`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`current`.count))
    for e in self.`current` {
      try w.integer(e)
    }
    guard self.`normal_force`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`normal_force`.count))
    for e in self.`normal_force` {
      try w.integer(e)
    }
    guard self.`tangential_force`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`tangential_force`.count))
    for e in self.`tangential_force` {
      try w.integer(e)
    }
    guard self.`tangential_force_dir`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`tangential_force_dir`.count))
    for e in self.`tangential_force_dir` {
      try w.integer(e)
    }
    guard self.`tsa`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`tsa`.count))
    for e in self.`tsa` {
      try w.integer(e)
    }
    guard self.`tma`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`tma`.count))
    for e in self.`tma` {
      try w.integer(e)
    }
    guard self.`touch_data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`touch_data`.count))
    for e in self.`touch_data` {
      try w.integer(e)
    }
    guard self.`force`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`force`.count))
    for e in self.`force` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsRm_Plus_State {
    var v = Ros1Rm_msgsRm_Plus_State()
    v.`sys_state` = try r.integer(Int32.self)
    v.`sys_err` = try r.integer(Int32.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`dof_state` = []
    v.`dof_state`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`dof_state`.append(try r.integer(Int32.self))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`dof_err` = []
    v.`dof_err`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`dof_err`.append(try r.integer(Int32.self))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`pos` = []
    v.`pos`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`pos`.append(try r.integer(Int32.self))
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 16 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`speed` = []
    v.`speed`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`speed`.append(try r.integer(Int32.self))
    }
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`angle` = []
    v.`angle`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`angle`.append(try r.integer(Int32.self))
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`current` = []
    v.`current`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`current`.append(try r.integer(Int32.self))
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 16 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`normal_force` = []
    v.`normal_force`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`normal_force`.append(try r.integer(Int32.self))
    }
    let rawcount9 = try r.integer(UInt32.self)
    guard rawcount9 <= 16 else { throw RosError(22) }
    let count9 = Int(rawcount9)
    v.`tangential_force` = []
    v.`tangential_force`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`tangential_force`.append(try r.integer(Int32.self))
    }
    let rawcount10 = try r.integer(UInt32.self)
    guard rawcount10 <= 16 else { throw RosError(22) }
    let count10 = Int(rawcount10)
    v.`tangential_force_dir` = []
    v.`tangential_force_dir`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`tangential_force_dir`.append(try r.integer(Int32.self))
    }
    let rawcount11 = try r.integer(UInt32.self)
    guard rawcount11 <= 16 else { throw RosError(22) }
    let count11 = Int(rawcount11)
    v.`tsa` = []
    v.`tsa`.reserveCapacity(count11)
    for _ in 0..<count11 {
      v.`tsa`.append(try r.integer(UInt32.self))
    }
    let rawcount12 = try r.integer(UInt32.self)
    guard rawcount12 <= 16 else { throw RosError(22) }
    let count12 = Int(rawcount12)
    v.`tma` = []
    v.`tma`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`tma`.append(try r.integer(UInt32.self))
    }
    let rawcount13 = try r.integer(UInt32.self)
    guard rawcount13 <= 16 else { throw RosError(22) }
    let count13 = Int(rawcount13)
    v.`touch_data` = []
    v.`touch_data`.reserveCapacity(count13)
    for _ in 0..<count13 {
      v.`touch_data`.append(try r.integer(Int32.self))
    }
    let rawcount14 = try r.integer(UInt32.self)
    guard rawcount14 <= 16 else { throw RosError(22) }
    let count14 = Int(rawcount14)
    v.`force` = []
    v.`force`.reserveCapacity(count14)
    for _ in 0..<count14 {
      v.`force`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros1Rm_msgsServo_GetAngle: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_f3f0398034088c5c94c1551f041a808898ea8f6bdc82226ef69099be11286784"
  public static let nativeType = "rm_msgs/Servo_GetAngle"
  public static let nativeIdentity: String? = nil
  public var `servo_id`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`servo_id`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsServo_GetAngle {
    var v = Ros1Rm_msgsServo_GetAngle()
    v.`servo_id` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros1Rm_msgsServo_Move: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_776097952cd219d20f95b4e953dc4b0a9fbbe2652475309fd976537988f241fb"
  public static let nativeType = "rm_msgs/Servo_Move"
  public static let nativeIdentity: String? = nil
  public var `servo_id`: UInt16 = 0
  public var `angle`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`servo_id`)
    try w.integer(self.`angle`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsServo_Move {
    var v = Ros1Rm_msgsServo_Move()
    v.`servo_id` = try r.integer(UInt16.self)
    v.`angle` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros1Rm_msgsSet_Force_Position: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_f2837e2588cbaabc85d66b6693a18ca1581be1ec09fbb4207d6e377d00fdbf87"
  public static let nativeType = "rm_msgs/Set_Force_Position"
  public static let nativeIdentity: String? = nil
  public var `sensor`: UInt8 = 0
  public var `mode`: UInt8 = 0
  public var `direction`: UInt8 = 0
  public var `N`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sensor`)
    try w.integer(self.`mode`)
    try w.integer(self.`direction`)
    try w.integer(self.`N`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsSet_Force_Position {
    var v = Ros1Rm_msgsSet_Force_Position()
    v.`sensor` = try r.integer(UInt8.self)
    v.`mode` = try r.integer(UInt8.self)
    v.`direction` = try r.integer(UInt8.self)
    v.`N` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Rm_msgsSet_Modbus_Mode: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_007fd5321b9c408191b697ed67ff0a439220fdabdec81e94ef1cc53b35de028e"
  public static let nativeType = "rm_msgs/Set_Modbus_Mode"
  public static let nativeIdentity: String? = nil
  public var `port`: UInt32 = 0
  public var `baudrate`: UInt32 = 0
  public var `timeout`: UInt32 = 0
  public var `ip`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`port`)
    try w.integer(self.`baudrate`)
    try w.integer(self.`timeout`)
    try w.string(self.`ip`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsSet_Modbus_Mode {
    var v = Ros1Rm_msgsSet_Modbus_Mode()
    v.`port` = try r.integer(UInt32.self)
    v.`baudrate` = try r.integer(UInt32.self)
    v.`timeout` = try r.integer(UInt32.self)
    v.`ip` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rm_msgsSet_Realtime_Push: Canonical {
  public static let maximumWireBytes = 276
  public static let codecIdentity =
    "UWVMROS1_aa3d4add03b4a1d307e389813bf8337b34c8260c9eb186ac5a3aabee7e344375"
  public static let nativeType = "rm_msgs/Set_Realtime_Push"
  public static let nativeIdentity: String? = nil
  public var `cycle`: UInt16 = 0
  public var `port`: UInt16 = 0
  public var `force_coordinate`: UInt16 = 0
  public var `ip`: String = ""
  public var `aloha_state_enable`: Bool = false
  public var `arm_current_status_enable`: Bool = false
  public var `expand_state_enable`: Bool = false
  public var `hand_enable`: Bool = false
  public var `joint_acc_enable`: Bool = false
  public var `joint_speed_enable`: Bool = false
  public var `lift_state_enable`: Bool = false
  public var `tail_end_enable`: Bool = false
  public var `rm_plus_base_enable`: Bool = false
  public var `rm_plus_state_enable`: Bool = false
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
    try w.boolean(self.`joint_acc_enable`)
    try w.boolean(self.`joint_speed_enable`)
    try w.boolean(self.`lift_state_enable`)
    try w.boolean(self.`tail_end_enable`)
    try w.boolean(self.`rm_plus_base_enable`)
    try w.boolean(self.`rm_plus_state_enable`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsSet_Realtime_Push {
    var v = Ros1Rm_msgsSet_Realtime_Push()
    v.`cycle` = try r.integer(UInt16.self)
    v.`port` = try r.integer(UInt16.self)
    v.`force_coordinate` = try r.integer(UInt16.self)
    v.`ip` = try r.string(bound: 256)
    v.`aloha_state_enable` = try r.boolean()
    v.`arm_current_status_enable` = try r.boolean()
    v.`expand_state_enable` = try r.boolean()
    v.`hand_enable` = try r.boolean()
    v.`joint_acc_enable` = try r.boolean()
    v.`joint_speed_enable` = try r.boolean()
    v.`lift_state_enable` = try r.boolean()
    v.`tail_end_enable` = try r.boolean()
    v.`rm_plus_base_enable` = try r.boolean()
    v.`rm_plus_state_enable` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsSix_Force: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_16909106e846dce81f6ff66583cdb569fecd956c7e08367b9d532ce096d5d720"
  public static let nativeType = "rm_msgs/Six_Force"
  public static let nativeIdentity: String? = nil
  public var `force_Fx`: Float = 0
  public var `force_Fy`: Float = 0
  public var `force_Fz`: Float = 0
  public var `force_Mx`: Float = 0
  public var `force_My`: Float = 0
  public var `force_Mz`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`force_Fx`)
    try w.float32(self.`force_Fy`)
    try w.float32(self.`force_Fz`)
    try w.float32(self.`force_Mx`)
    try w.float32(self.`force_My`)
    try w.float32(self.`force_Mz`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsSix_Force {
    var v = Ros1Rm_msgsSix_Force()
    v.`force_Fx` = try r.float32()
    v.`force_Fy` = try r.float32()
    v.`force_Fz` = try r.float32()
    v.`force_Mx` = try r.float32()
    v.`force_My` = try r.float32()
    v.`force_Mz` = try r.float32()
    return v
  }
}
public struct Ros1Rm_msgsSocket_Command: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_f55143fcc5bf1da4e0fbf538f9faf480932d5b8405d6c1f880c6091a38f68d17"
  public static let nativeType = "rm_msgs/Socket_Command"
  public static let nativeIdentity: String? = nil
  public var `command`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`command`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsSocket_Command {
    var v = Ros1Rm_msgsSocket_Command()
    v.`command` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros1Rm_msgsStart_Multi_Drag_Teach: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_5bc8bea8dc6051a6ec45da2fabd12107e8b7a9731cc6031af49371cb2b6c64a8"
  public static let nativeType = "rm_msgs/Start_Multi_Drag_Teach"
  public static let nativeIdentity: String? = nil
  public var `free_axes`: [Int32] = Array(repeating: 0, count: 6)
  public var `frame`: Int32 = 0
  public var `singular_wall`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`free_axes`.count == 6 else { throw RosError(22) }
    for e in self.`free_axes` {
      try w.integer(e)
    }
    try w.integer(self.`frame`)
    try w.integer(self.`singular_wall`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsStart_Multi_Drag_Teach {
    var v = Ros1Rm_msgsStart_Multi_Drag_Teach()
    let count0 = 6
    v.`free_axes` = []
    v.`free_axes`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`free_axes`.append(try r.integer(Int32.self))
    }
    v.`frame` = try r.integer(Int32.self)
    v.`singular_wall` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rm_msgsStop: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_87bbb0270d31ccd7e207da872d191cf01d4f10f9eed6bcffaef9f440a2c5378a"
  public static let nativeType = "rm_msgs/Stop"
  public static let nativeIdentity: String? = nil
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsStop {
    var v = Ros1Rm_msgsStop()
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsStop_Teach: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_d7e8a4419f9a4132ecad0fcb738953bc3dc029aba09bc8f4fa97e12ab088f97e"
  public static let nativeType = "rm_msgs/Stop_Teach"
  public static let nativeIdentity: String? = nil
  public var `command`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`command`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsStop_Teach {
    var v = Ros1Rm_msgsStop_Teach()
    v.`command` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rm_msgsTool_Analog_Output: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8ce6b700a85d05fa99167fad521b7162b9a0e4670c9022782ed522d1c320979f"
  public static let nativeType = "rm_msgs/Tool_Analog_Output"
  public static let nativeIdentity: String? = nil
  public var `voltage`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`voltage`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsTool_Analog_Output {
    var v = Ros1Rm_msgsTool_Analog_Output()
    v.`voltage` = try r.float32()
    return v
  }
}
public struct Ros1Rm_msgsTool_Digital_Output: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_10c924520a9c47a999bfebbf55c9474aa8e7770a8e8a58d446af0c1eacc1889e"
  public static let nativeType = "rm_msgs/Tool_Digital_Output"
  public static let nativeIdentity: String? = nil
  public var `num`: UInt8 = 0
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`num`)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsTool_Digital_Output {
    var v = Ros1Rm_msgsTool_Digital_Output()
    v.`num` = try r.integer(UInt8.self)
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros1Rm_msgsTool_IO_State: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3259adff977d4832fc6ba1e9e2a13aca1e99f86c4f4177b54ccd7c459f86fb84"
  public static let nativeType = "rm_msgs/Tool_IO_State"
  public static let nativeIdentity: String? = nil
  public var `Tool_IO_Mode`: [Int8] = Array(repeating: 0, count: 2)
  public var `Tool_IO_State`: [Int8] = Array(repeating: 0, count: 2)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`Tool_IO_Mode`.count == 2 else { throw RosError(22) }
    for e in self.`Tool_IO_Mode` {
      try w.integer(e)
    }
    guard self.`Tool_IO_State`.count == 2 else { throw RosError(22) }
    for e in self.`Tool_IO_State` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsTool_IO_State {
    var v = Ros1Rm_msgsTool_IO_State()
    let count0 = 2
    v.`Tool_IO_Mode` = []
    v.`Tool_IO_Mode`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`Tool_IO_Mode`.append(try r.integer(Int8.self))
    }
    let count1 = 2
    v.`Tool_IO_State` = []
    v.`Tool_IO_State`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`Tool_IO_State`.append(try r.integer(Int8.self))
    }
    return v
  }
}
public struct Ros1Rm_msgsTrajectoryinfo: Canonical {
  public static let maximumWireBytes = 524
  public static let codecIdentity =
    "UWVMROS1_16571d503b8ffbc3d3bbd71f2f4eea11e8d0c30ff1dc8a40349d00c6294bbebd"
  public static let nativeType = "rm_msgs/Trajectoryinfo"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `create_time`: String = ""
  public var `point_num`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
    try w.string(self.`create_time`, bound: 256)
    try w.integer(self.`point_num`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsTrajectoryinfo {
    var v = Ros1Rm_msgsTrajectoryinfo()
    v.`name` = try r.string(bound: 256)
    v.`create_time` = try r.string(bound: 256)
    v.`point_num` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rm_msgsTrajectorylist: Canonical {
  public static let maximumWireBytes = 8660
  public static let codecIdentity =
    "UWVMROS1_2a6f11ce34da610b3a2c7738fbdc705ce549702edf8869972ab1126d86717fd9"
  public static let nativeType = "rm_msgs/Trajectorylist"
  public static let nativeIdentity: String? = nil
  public var `page_num`: Int32 = 0
  public var `page_size`: Int32 = 0
  public var `total_size`: Int32 = 0
  public var `vague_search`: String = ""
  public var `tra_list`: [Ros1Rm_msgsTrajectoryinfo] = []
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
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsTrajectorylist {
    var v = Ros1Rm_msgsTrajectorylist()
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
      v.`tra_list`.append(try Ros1Rm_msgsTrajectoryinfo.read(from: &r))
    }
    return v
  }
}
public struct Ros1Rm_msgsTurtle_Driver: Canonical {
  public static let maximumWireBytes = 532
  public static let codecIdentity =
    "UWVMROS1_d78bbc2b8ade4cc0f3a2807b674b87cf49f46faa33185187b579b7836c5bb7fe"
  public static let nativeType = "rm_msgs/Turtle_Driver"
  public static let nativeIdentity: String? = nil
  public var `message_type`: String = ""
  public var `robot_mac_address`: String = ""
  public var `vx`: Float = 0
  public var `vy`: Float = 0
  public var `vtheta`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`message_type`, bound: 256)
    try w.string(self.`robot_mac_address`, bound: 256)
    try w.float32(self.`vx`)
    try w.float32(self.`vy`)
    try w.float32(self.`vtheta`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsTurtle_Driver {
    var v = Ros1Rm_msgsTurtle_Driver()
    v.`message_type` = try r.string(bound: 256)
    v.`robot_mac_address` = try r.string(bound: 256)
    v.`vx` = try r.float32()
    v.`vy` = try r.float32()
    v.`vtheta` = try r.float32()
    return v
  }
}
public struct Ros1Rm_msgsUpdateTCPmasterparam: Canonical {
  public static let maximumWireBytes = 784
  public static let codecIdentity =
    "UWVMROS1_588eaac57487dc2d7ab412bf221ca0157959d2826d310ff218c63ddbfa287872"
  public static let nativeType = "rm_msgs/UpdateTCPmasterparam"
  public static let nativeIdentity: String? = nil
  public var `master_name`: String = ""
  public var `new_name`: String = ""
  public var `ip`: String = ""
  public var `port`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`master_name`, bound: 256)
    try w.string(self.`new_name`, bound: 256)
    try w.string(self.`ip`, bound: 256)
    try w.integer(self.`port`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsUpdateTCPmasterparam {
    var v = Ros1Rm_msgsUpdateTCPmasterparam()
    v.`master_name` = try r.string(bound: 256)
    v.`new_name` = try r.string(bound: 256)
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rm_msgsWrite_ModbusRTU: Canonical {
  public static let maximumWireBytes = 80
  public static let codecIdentity =
    "UWVMROS1_09caba0e331ca32e826368f575bcfd26ec1e0e2ae63da26bdbfdda5f7cc486c8"
  public static let nativeType = "rm_msgs/Write_ModbusRTU"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `data`: [Int32] = []
  public var `type`: Int32 = 0
  public var `device`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
    try w.integer(self.`type`)
    try w.integer(self.`device`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsWrite_ModbusRTU {
    var v = Ros1Rm_msgsWrite_ModbusRTU()
    v.`address` = try r.integer(Int32.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`data` = []
    v.`data`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`data`.append(try r.integer(Int32.self))
    }
    v.`type` = try r.integer(Int32.self)
    v.`device` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rm_msgsWrite_Register: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_ef2fb0ea4f38aecce5111c39f35aa4195d9658fe6bbe4f9c059b85ee3ce32251"
  public static let nativeType = "rm_msgs/Write_Register"
  public static let nativeIdentity: String? = nil
  public var `port`: UInt8 = 0
  public var `address`: UInt32 = 0
  public var `num`: UInt32 = 0
  public var `data`: [UInt16] = []
  public var `device`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`port`)
    try w.integer(self.`address`)
    try w.integer(self.`num`)
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
    try w.integer(self.`device`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsWrite_Register {
    var v = Ros1Rm_msgsWrite_Register()
    v.`port` = try r.integer(UInt8.self)
    v.`address` = try r.integer(UInt32.self)
    v.`num` = try r.integer(UInt32.self)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`data` = []
    v.`data`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`data`.append(try r.integer(UInt16.self))
    }
    v.`device` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Rm_msgsWrite_TCPandRTU: Canonical {
  public static let maximumWireBytes = 604
  public static let codecIdentity =
    "UWVMROS1_8e0690efe69c300dc98a90b00a785109bb3cf0b603a36e173a346383e6b7e16a"
  public static let nativeType = "rm_msgs/Write_TCPandRTU"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `data`: [Int32] = []
  public var `ip`: String = ""
  public var `port`: Int32 = 0
  public var `master_name`: String = ""
  public var `type`: Int32 = 0
  public var `device`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.integer(e)
    }
    try w.string(self.`ip`, bound: 256)
    try w.integer(self.`port`)
    try w.string(self.`master_name`, bound: 256)
    try w.integer(self.`type`)
    try w.integer(self.`device`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rm_msgsWrite_TCPandRTU {
    var v = Ros1Rm_msgsWrite_TCPandRTU()
    v.`address` = try r.integer(Int32.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`data` = []
    v.`data`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`data`.append(try r.integer(Int32.self))
    }
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    v.`master_name` = try r.string(bound: 256)
    v.`type` = try r.integer(Int32.self)
    v.`device` = try r.integer(Int32.self)
    return v
  }
}
