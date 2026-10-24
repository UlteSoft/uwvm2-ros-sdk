/// @file records.swift
/// @brief Preserve the complete original elephant/humble canonical value domain.
/// @details The selected domain contains 88 complete record/components and 280 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros2Mecharm_interfacesMsgMecharmAngles: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331"
  public static let nativeType = "mecharm_interfaces/msg/MecharmAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Mecharm_interfacesMsgMecharmAngles
  {
    var v = Ros2Mecharm_interfacesMsgMecharmAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros2Mecharm_interfacesMsgMecharmCoords: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed"
  public static let nativeType = "mecharm_interfaces/msg/MecharmCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `ry`: Float = 0
  public var `rz`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.float32(self.`ry`)
    try w.float32(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Mecharm_interfacesMsgMecharmCoords
  {
    var v = Ros2Mecharm_interfacesMsgMecharmCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros2Mecharm_interfacesMsgMecharmGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046"
  public static let nativeType = "mecharm_interfaces/msg/MecharmGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesMsgMecharmGripperStatus
  {
    var v = Ros2Mecharm_interfacesMsgMecharmGripperStatus()
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros2Mecharm_interfacesMsgMecharmPumpStatus: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add"
  public static let nativeType = "mecharm_interfaces/msg/MecharmPumpStatus"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public var `pin1`: Int8 = 0
  public var `pin2`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
    try w.integer(self.`pin1`)
    try w.integer(self.`pin2`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesMsgMecharmPumpStatus
  {
    var v = Ros2Mecharm_interfacesMsgMecharmPumpStatus()
    v.`status` = try r.boolean()
    v.`pin1` = try r.integer(Int8.self)
    v.`pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mecharm_interfacesMsgMecharmSetAngles: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5"
  public static let nativeType = "mecharm_interfaces/msg/MecharmSetAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesMsgMecharmSetAngles
  {
    var v = Ros2Mecharm_interfacesMsgMecharmSetAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mecharm_interfacesMsgMecharmSetCoords: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2"
  public static let nativeType = "mecharm_interfaces/msg/MecharmSetCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `ry`: Float = 0
  public var `rz`: Float = 0
  public var `speed`: Int8 = 0
  public var `model`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.float32(self.`ry`)
    try w.float32(self.`rz`)
    try w.integer(self.`speed`)
    try w.integer(self.`model`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesMsgMecharmSetCoords
  {
    var v = Ros2Mecharm_interfacesMsgMecharmSetCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    v.`model` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mecharm_interfacesSrvGetAngles_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df"
  public static let nativeType = "mecharm_interfaces/srv/GetAngles_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesSrvGetAngles_Request
  {
    var v = Ros2Mecharm_interfacesSrvGetAngles_Request()
    return v
  }
}
public struct Ros2Mecharm_interfacesSrvGetAngles_Response: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61"
  public static let nativeType = "mecharm_interfaces/srv/GetAngles_Response"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesSrvGetAngles_Response
  {
    var v = Ros2Mecharm_interfacesSrvGetAngles_Response()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros2Mecharm_interfacesSrvGetCoords_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1"
  public static let nativeType = "mecharm_interfaces/srv/GetCoords_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesSrvGetCoords_Request
  {
    var v = Ros2Mecharm_interfacesSrvGetCoords_Request()
    return v
  }
}
public struct Ros2Mecharm_interfacesSrvGetCoords_Response: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75"
  public static let nativeType = "mecharm_interfaces/srv/GetCoords_Response"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `ry`: Float = 0
  public var `rz`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.float32(self.`ry`)
    try w.float32(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesSrvGetCoords_Response
  {
    var v = Ros2Mecharm_interfacesSrvGetCoords_Response()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros2Mecharm_interfacesSrvGripperStatus_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb"
  public static let nativeType = "mecharm_interfaces/srv/GripperStatus_Request"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesSrvGripperStatus_Request
  {
    var v = Ros2Mecharm_interfacesSrvGripperStatus_Request()
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros2Mecharm_interfacesSrvGripperStatus_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3"
  public static let nativeType = "mecharm_interfaces/srv/GripperStatus_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesSrvGripperStatus_Response
  {
    var v = Ros2Mecharm_interfacesSrvGripperStatus_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mecharm_interfacesSrvPumpStatus_Request: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9"
  public static let nativeType = "mecharm_interfaces/srv/PumpStatus_Request"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public var `pin1`: Int8 = 0
  public var `pin2`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
    try w.integer(self.`pin1`)
    try w.integer(self.`pin2`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesSrvPumpStatus_Request
  {
    var v = Ros2Mecharm_interfacesSrvPumpStatus_Request()
    v.`status` = try r.boolean()
    v.`pin1` = try r.integer(Int8.self)
    v.`pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mecharm_interfacesSrvPumpStatus_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b"
  public static let nativeType = "mecharm_interfaces/srv/PumpStatus_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesSrvPumpStatus_Response
  {
    var v = Ros2Mecharm_interfacesSrvPumpStatus_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mecharm_interfacesSrvSetAngles_Request: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb"
  public static let nativeType = "mecharm_interfaces/srv/SetAngles_Request"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesSrvSetAngles_Request
  {
    var v = Ros2Mecharm_interfacesSrvSetAngles_Request()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mecharm_interfacesSrvSetAngles_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620"
  public static let nativeType = "mecharm_interfaces/srv/SetAngles_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesSrvSetAngles_Response
  {
    var v = Ros2Mecharm_interfacesSrvSetAngles_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mecharm_interfacesSrvSetCoords_Request: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916"
  public static let nativeType = "mecharm_interfaces/srv/SetCoords_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `ry`: Float = 0
  public var `rz`: Float = 0
  public var `speed`: Int8 = 0
  public var `model`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.float32(self.`ry`)
    try w.float32(self.`rz`)
    try w.integer(self.`speed`)
    try w.integer(self.`model`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesSrvSetCoords_Request
  {
    var v = Ros2Mecharm_interfacesSrvSetCoords_Request()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    v.`model` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mecharm_interfacesSrvSetCoords_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f"
  public static let nativeType = "mecharm_interfaces/srv/SetCoords_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mecharm_interfacesSrvSetCoords_Response
  {
    var v = Ros2Mecharm_interfacesSrvSetCoords_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mycobot_interfacesMsgMycobotAngles: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82"
  public static let nativeType = "mycobot_interfaces/msg/MycobotAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Mycobot_interfacesMsgMycobotAngles
  {
    var v = Ros2Mycobot_interfacesMsgMycobotAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros2Mycobot_interfacesMsgMycobotCoords: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7"
  public static let nativeType = "mycobot_interfaces/msg/MycobotCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `ry`: Float = 0
  public var `rz`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.float32(self.`ry`)
    try w.float32(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Mycobot_interfacesMsgMycobotCoords
  {
    var v = Ros2Mycobot_interfacesMsgMycobotCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros2Mycobot_interfacesMsgMycobotGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d"
  public static let nativeType = "mycobot_interfaces/msg/MycobotGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesMsgMycobotGripperStatus
  {
    var v = Ros2Mycobot_interfacesMsgMycobotGripperStatus()
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros2Mycobot_interfacesMsgMycobotPumpStatus: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58"
  public static let nativeType = "mycobot_interfaces/msg/MycobotPumpStatus"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public var `pin1`: Int8 = 0
  public var `pin2`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
    try w.integer(self.`pin1`)
    try w.integer(self.`pin2`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesMsgMycobotPumpStatus
  {
    var v = Ros2Mycobot_interfacesMsgMycobotPumpStatus()
    v.`status` = try r.boolean()
    v.`pin1` = try r.integer(Int8.self)
    v.`pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mycobot_interfacesMsgMycobotSetAngles: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e"
  public static let nativeType = "mycobot_interfaces/msg/MycobotSetAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesMsgMycobotSetAngles
  {
    var v = Ros2Mycobot_interfacesMsgMycobotSetAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mycobot_interfacesMsgMycobotSetCoords: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49"
  public static let nativeType = "mycobot_interfaces/msg/MycobotSetCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `ry`: Float = 0
  public var `rz`: Float = 0
  public var `speed`: Int8 = 0
  public var `model`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.float32(self.`ry`)
    try w.float32(self.`rz`)
    try w.integer(self.`speed`)
    try w.integer(self.`model`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesMsgMycobotSetCoords
  {
    var v = Ros2Mycobot_interfacesMsgMycobotSetCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    v.`model` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mycobot_interfacesSrvGetAngles_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e"
  public static let nativeType = "mycobot_interfaces/srv/GetAngles_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesSrvGetAngles_Request
  {
    var v = Ros2Mycobot_interfacesSrvGetAngles_Request()
    return v
  }
}
public struct Ros2Mycobot_interfacesSrvGetAngles_Response: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a"
  public static let nativeType = "mycobot_interfaces/srv/GetAngles_Response"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesSrvGetAngles_Response
  {
    var v = Ros2Mycobot_interfacesSrvGetAngles_Response()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros2Mycobot_interfacesSrvGetCoords_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076"
  public static let nativeType = "mycobot_interfaces/srv/GetCoords_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesSrvGetCoords_Request
  {
    var v = Ros2Mycobot_interfacesSrvGetCoords_Request()
    return v
  }
}
public struct Ros2Mycobot_interfacesSrvGetCoords_Response: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787"
  public static let nativeType = "mycobot_interfaces/srv/GetCoords_Response"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `ry`: Float = 0
  public var `rz`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.float32(self.`ry`)
    try w.float32(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesSrvGetCoords_Response
  {
    var v = Ros2Mycobot_interfacesSrvGetCoords_Response()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros2Mycobot_interfacesSrvGripperStatus_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5"
  public static let nativeType = "mycobot_interfaces/srv/GripperStatus_Request"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesSrvGripperStatus_Request
  {
    var v = Ros2Mycobot_interfacesSrvGripperStatus_Request()
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros2Mycobot_interfacesSrvGripperStatus_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab"
  public static let nativeType = "mycobot_interfaces/srv/GripperStatus_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesSrvGripperStatus_Response
  {
    var v = Ros2Mycobot_interfacesSrvGripperStatus_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mycobot_interfacesSrvPumpStatus_Request: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0"
  public static let nativeType = "mycobot_interfaces/srv/PumpStatus_Request"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public var `pin1`: Int8 = 0
  public var `pin2`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
    try w.integer(self.`pin1`)
    try w.integer(self.`pin2`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesSrvPumpStatus_Request
  {
    var v = Ros2Mycobot_interfacesSrvPumpStatus_Request()
    v.`status` = try r.boolean()
    v.`pin1` = try r.integer(Int8.self)
    v.`pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mycobot_interfacesSrvPumpStatus_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0"
  public static let nativeType = "mycobot_interfaces/srv/PumpStatus_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesSrvPumpStatus_Response
  {
    var v = Ros2Mycobot_interfacesSrvPumpStatus_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mycobot_interfacesSrvSetAngles_Request: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310"
  public static let nativeType = "mycobot_interfaces/srv/SetAngles_Request"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesSrvSetAngles_Request
  {
    var v = Ros2Mycobot_interfacesSrvSetAngles_Request()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mycobot_interfacesSrvSetAngles_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665"
  public static let nativeType = "mycobot_interfaces/srv/SetAngles_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesSrvSetAngles_Response
  {
    var v = Ros2Mycobot_interfacesSrvSetAngles_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mycobot_interfacesSrvSetCoords_Request: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213"
  public static let nativeType = "mycobot_interfaces/srv/SetCoords_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `ry`: Float = 0
  public var `rz`: Float = 0
  public var `speed`: Int8 = 0
  public var `model`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.float32(self.`ry`)
    try w.float32(self.`rz`)
    try w.integer(self.`speed`)
    try w.integer(self.`model`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesSrvSetCoords_Request
  {
    var v = Ros2Mycobot_interfacesSrvSetCoords_Request()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    v.`model` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mycobot_interfacesSrvSetCoords_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9"
  public static let nativeType = "mycobot_interfaces/srv/SetCoords_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_interfacesSrvSetCoords_Response
  {
    var v = Ros2Mycobot_interfacesSrvSetCoords_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesMsgMycobotAngles: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da"
  public static let nativeType = "mycobot_pro450_interfaces/msg/MycobotAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesMsgMycobotAngles
  {
    var v = Ros2Mycobot_pro450_interfacesMsgMycobotAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesMsgMycobotCoords: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de"
  public static let nativeType = "mycobot_pro450_interfaces/msg/MycobotCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `ry`: Float = 0
  public var `rz`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.float32(self.`ry`)
    try w.float32(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesMsgMycobotCoords
  {
    var v = Ros2Mycobot_pro450_interfacesMsgMycobotCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784"
  public static let nativeType = "mycobot_pro450_interfaces/msg/MycobotGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
  {
    var v = Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus()
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591"
  public static let nativeType = "mycobot_pro450_interfaces/msg/MycobotSetAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
  {
    var v = Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea"
  public static let nativeType = "mycobot_pro450_interfaces/msg/MycobotSetCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `ry`: Float = 0
  public var `rz`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.float32(self.`ry`)
    try w.float32(self.`rz`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
  {
    var v = Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesSrvGetAngles_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4"
  public static let nativeType = "mycobot_pro450_interfaces/srv/GetAngles_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesSrvGetAngles_Request
  {
    var v = Ros2Mycobot_pro450_interfacesSrvGetAngles_Request()
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesSrvGetAngles_Response: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8"
  public static let nativeType = "mycobot_pro450_interfaces/srv/GetAngles_Response"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
  {
    var v = Ros2Mycobot_pro450_interfacesSrvGetAngles_Response()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesSrvGetCoords_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2"
  public static let nativeType = "mycobot_pro450_interfaces/srv/GetCoords_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesSrvGetCoords_Request
  {
    var v = Ros2Mycobot_pro450_interfacesSrvGetCoords_Request()
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesSrvGetCoords_Response: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf"
  public static let nativeType = "mycobot_pro450_interfaces/srv/GetCoords_Response"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `ry`: Float = 0
  public var `rz`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.float32(self.`ry`)
    try w.float32(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
  {
    var v = Ros2Mycobot_pro450_interfacesSrvGetCoords_Response()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125"
  public static let nativeType = "mycobot_pro450_interfaces/srv/GetGripperValue_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
  {
    var v = Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request()
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676"
  public static let nativeType = "mycobot_pro450_interfaces/srv/GetGripperValue_Response"
  public static let nativeIdentity: String? = nil
  public var `gripper_angle`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`gripper_angle`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
  {
    var v = Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response()
    v.`gripper_angle` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac"
  public static let nativeType = "mycobot_pro450_interfaces/srv/GripperStatus_Request"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
  {
    var v = Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request()
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2"
  public static let nativeType = "mycobot_pro450_interfaces/srv/GripperStatus_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
  {
    var v = Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesSrvSetAngles_Request: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09"
  public static let nativeType = "mycobot_pro450_interfaces/srv/SetAngles_Request"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `joint_5`: Float = 0
  public var `joint_6`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.float32(self.`joint_5`)
    try w.float32(self.`joint_6`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
  {
    var v = Ros2Mycobot_pro450_interfacesSrvSetAngles_Request()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`joint_5` = try r.float32()
    v.`joint_6` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesSrvSetAngles_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4"
  public static let nativeType = "mycobot_pro450_interfaces/srv/SetAngles_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
  {
    var v = Ros2Mycobot_pro450_interfacesSrvSetAngles_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesSrvSetCoords_Request: Canonical {
  public static let maximumWireBytes = 25
  public static let codecIdentity =
    "UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81"
  public static let nativeType = "mycobot_pro450_interfaces/srv/SetCoords_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `ry`: Float = 0
  public var `rz`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.float32(self.`ry`)
    try w.float32(self.`rz`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
  {
    var v = Ros2Mycobot_pro450_interfacesSrvSetCoords_Request()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`ry` = try r.float32()
    v.`rz` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mycobot_pro450_interfacesSrvSetCoords_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51"
  public static let nativeType = "mycobot_pro450_interfaces/srv/SetCoords_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
  {
    var v = Ros2Mycobot_pro450_interfacesSrvSetCoords_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mypalletizer_interfacesMsgMypalAngles: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d"
  public static let nativeType = "mypalletizer_interfaces/msg/MypalAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesMsgMypalAngles
  {
    var v = Ros2Mypalletizer_interfacesMsgMypalAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    return v
  }
}
public struct Ros2Mypalletizer_interfacesMsgMypalCoords: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7"
  public static let nativeType = "mypalletizer_interfaces/msg/MypalCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesMsgMypalCoords
  {
    var v = Ros2Mypalletizer_interfacesMsgMypalCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    return v
  }
}
public struct Ros2Mypalletizer_interfacesMsgMypalGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0"
  public static let nativeType = "mypalletizer_interfaces/msg/MypalGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesMsgMypalGripperStatus
  {
    var v = Ros2Mypalletizer_interfacesMsgMypalGripperStatus()
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros2Mypalletizer_interfacesMsgMypalPumpStatus: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c"
  public static let nativeType = "mypalletizer_interfaces/msg/MypalPumpStatus"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public var `pin1`: Int8 = 0
  public var `pin2`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
    try w.integer(self.`pin1`)
    try w.integer(self.`pin2`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesMsgMypalPumpStatus
  {
    var v = Ros2Mypalletizer_interfacesMsgMypalPumpStatus()
    v.`status` = try r.boolean()
    v.`pin1` = try r.integer(Int8.self)
    v.`pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mypalletizer_interfacesMsgMypalSetAngles: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5"
  public static let nativeType = "mypalletizer_interfaces/msg/MypalSetAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesMsgMypalSetAngles
  {
    var v = Ros2Mypalletizer_interfacesMsgMypalSetAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mypalletizer_interfacesMsgMypalSetCoords: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79"
  public static let nativeType = "mypalletizer_interfaces/msg/MypalSetCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesMsgMypalSetCoords
  {
    var v = Ros2Mypalletizer_interfacesMsgMypalSetCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mypalletizer_interfacesSrvGetAngles_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78"
  public static let nativeType = "mypalletizer_interfaces/srv/GetAngles_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesSrvGetAngles_Request
  {
    var v = Ros2Mypalletizer_interfacesSrvGetAngles_Request()
    return v
  }
}
public struct Ros2Mypalletizer_interfacesSrvGetAngles_Response: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d"
  public static let nativeType = "mypalletizer_interfaces/srv/GetAngles_Response"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesSrvGetAngles_Response
  {
    var v = Ros2Mypalletizer_interfacesSrvGetAngles_Response()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    return v
  }
}
public struct Ros2Mypalletizer_interfacesSrvGetCoords_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440"
  public static let nativeType = "mypalletizer_interfaces/srv/GetCoords_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesSrvGetCoords_Request
  {
    var v = Ros2Mypalletizer_interfacesSrvGetCoords_Request()
    return v
  }
}
public struct Ros2Mypalletizer_interfacesSrvGetCoords_Response: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84"
  public static let nativeType = "mypalletizer_interfaces/srv/GetCoords_Response"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesSrvGetCoords_Response
  {
    var v = Ros2Mypalletizer_interfacesSrvGetCoords_Response()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    return v
  }
}
public struct Ros2Mypalletizer_interfacesSrvGripperStatus_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d"
  public static let nativeType = "mypalletizer_interfaces/srv/GripperStatus_Request"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesSrvGripperStatus_Request
  {
    var v = Ros2Mypalletizer_interfacesSrvGripperStatus_Request()
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros2Mypalletizer_interfacesSrvGripperStatus_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4"
  public static let nativeType = "mypalletizer_interfaces/srv/GripperStatus_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesSrvGripperStatus_Response
  {
    var v = Ros2Mypalletizer_interfacesSrvGripperStatus_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mypalletizer_interfacesSrvPumpStatus_Request: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f"
  public static let nativeType = "mypalletizer_interfaces/srv/PumpStatus_Request"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public var `pin1`: Int8 = 0
  public var `pin2`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
    try w.integer(self.`pin1`)
    try w.integer(self.`pin2`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesSrvPumpStatus_Request
  {
    var v = Ros2Mypalletizer_interfacesSrvPumpStatus_Request()
    v.`status` = try r.boolean()
    v.`pin1` = try r.integer(Int8.self)
    v.`pin2` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mypalletizer_interfacesSrvPumpStatus_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45"
  public static let nativeType = "mypalletizer_interfaces/srv/PumpStatus_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesSrvPumpStatus_Response
  {
    var v = Ros2Mypalletizer_interfacesSrvPumpStatus_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mypalletizer_interfacesSrvSetAngles_Request: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec"
  public static let nativeType = "mypalletizer_interfaces/srv/SetAngles_Request"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesSrvSetAngles_Request
  {
    var v = Ros2Mypalletizer_interfacesSrvSetAngles_Request()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mypalletizer_interfacesSrvSetAngles_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9"
  public static let nativeType = "mypalletizer_interfaces/srv/SetAngles_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesSrvSetAngles_Response
  {
    var v = Ros2Mypalletizer_interfacesSrvSetAngles_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Mypalletizer_interfacesSrvSetCoords_Request: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541"
  public static let nativeType = "mypalletizer_interfaces/srv/SetCoords_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesSrvSetCoords_Request
  {
    var v = Ros2Mypalletizer_interfacesSrvSetCoords_Request()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Mypalletizer_interfacesSrvSetCoords_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b"
  public static let nativeType = "mypalletizer_interfaces/srv/SetCoords_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Mypalletizer_interfacesSrvSetCoords_Response
  {
    var v = Ros2Mypalletizer_interfacesSrvSetCoords_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesMsgMycobotAngles: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_75965ba712c12f465c2424b540359dbc4c88e2e85aa772698ee040db7c32a945"
  public static let nativeType = "ultraarm_p1_interfaces/msg/MycobotAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesMsgMycobotAngles
  {
    var v = Ros2Ultraarm_p1_interfacesMsgMycobotAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesMsgMycobotCoords: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_c79774c9af7fb4c150cb18c2510df52bbc7bad3c05b604abf90e19087aa05874"
  public static let nativeType = "ultraarm_p1_interfaces/msg/MycobotCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesMsgMycobotCoords
  {
    var v = Ros2Ultraarm_p1_interfacesMsgMycobotCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1efb83ff22c5eb211fe92355cb5358cb991a373693d33180362e43a2ef56d22f"
  public static let nativeType = "ultraarm_p1_interfaces/msg/MycobotGripperStatus"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus
  {
    var v = Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus()
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles: Canonical {
  public static let maximumWireBytes = 20
  public static let codecIdentity =
    "UWVMROS1_cb53aab11e200533386b764a423f86bd7a24c65105236945c6b27ba7a9c3221c"
  public static let nativeType = "ultraarm_p1_interfaces/msg/MycobotSetAngles"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `speed`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles
  {
    var v = Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`speed` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords: Canonical {
  public static let maximumWireBytes = 20
  public static let codecIdentity =
    "UWVMROS1_fca21ab6eed31f03f0f7c9c6010d893f709f1eebb1bf07c1911452da1c50bbee"
  public static let nativeType = "ultraarm_p1_interfaces/msg/MycobotSetCoords"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `speed`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords
  {
    var v = Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`speed` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesSrvGetAngles_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b2ff68f6919df813ddf49ad9337c2345e3c4e70242ad81f6440d5cd1cd612ff9"
  public static let nativeType = "ultraarm_p1_interfaces/srv/GetAngles_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesSrvGetAngles_Request
  {
    var v = Ros2Ultraarm_p1_interfacesSrvGetAngles_Request()
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesSrvGetAngles_Response: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_cc8b4259c50ed82d6f3b3bbb9470ac089b127b70ace12457cb41fccb7ae67cbc"
  public static let nativeType = "ultraarm_p1_interfaces/srv/GetAngles_Response"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesSrvGetAngles_Response
  {
    var v = Ros2Ultraarm_p1_interfacesSrvGetAngles_Response()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesSrvGetCoords_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0ed9a0f7124cb00e62b71aecaedb60ea8832a94aaf4dc8f1de943d91dbf74e01"
  public static let nativeType = "ultraarm_p1_interfaces/srv/GetCoords_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesSrvGetCoords_Request
  {
    var v = Ros2Ultraarm_p1_interfacesSrvGetCoords_Request()
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesSrvGetCoords_Response: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_47ef794ffd2a3a4125ce3c9cbbd6b0d85fbb42cbfc888dd8fec39020cd454565"
  public static let nativeType = "ultraarm_p1_interfaces/srv/GetCoords_Response"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesSrvGetCoords_Response
  {
    var v = Ros2Ultraarm_p1_interfacesSrvGetCoords_Response()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_dad3d4af78250b2b8e44424ee1bb532b1e24bd9b867417fa428dec761fcf4be9"
  public static let nativeType = "ultraarm_p1_interfaces/srv/GetGripperValue_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request
  {
    var v = Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request()
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_3b3830d2ae5b4327771923acab70739d05dd3f9c8e2b3b060f6a3136a9e6c647"
  public static let nativeType = "ultraarm_p1_interfaces/srv/GetGripperValue_Response"
  public static let nativeIdentity: String? = nil
  public var `gripper_angle`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`gripper_angle`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response
  {
    var v = Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response()
    v.`gripper_angle` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_cdaff7754e24b6910102060d2af379d4bcc9c3a647604ccdf2dc8b4a50d854b8"
  public static let nativeType = "ultraarm_p1_interfaces/srv/GripperStatus_Request"
  public static let nativeIdentity: String? = nil
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request
  {
    var v = Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request()
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_55826c68885c7382e5a9e8a0ec35b312af3b2e974236d80518564c3fb8b9fa48"
  public static let nativeType = "ultraarm_p1_interfaces/srv/GripperStatus_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response
  {
    var v = Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesSrvSetAngles_Request: Canonical {
  public static let maximumWireBytes = 20
  public static let codecIdentity =
    "UWVMROS1_4184d40dd5cef87f13e913d349e37b0661905c5c9f0d8c5f9cc965ea272be025"
  public static let nativeType = "ultraarm_p1_interfaces/srv/SetAngles_Request"
  public static let nativeIdentity: String? = nil
  public var `joint_1`: Float = 0
  public var `joint_2`: Float = 0
  public var `joint_3`: Float = 0
  public var `joint_4`: Float = 0
  public var `speed`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`joint_1`)
    try w.float32(self.`joint_2`)
    try w.float32(self.`joint_3`)
    try w.float32(self.`joint_4`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesSrvSetAngles_Request
  {
    var v = Ros2Ultraarm_p1_interfacesSrvSetAngles_Request()
    v.`joint_1` = try r.float32()
    v.`joint_2` = try r.float32()
    v.`joint_3` = try r.float32()
    v.`joint_4` = try r.float32()
    v.`speed` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesSrvSetAngles_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_de517cd68c164d4214aed8ad92f7bb9ee49f24c7e43d96c18e193095b0b23e1a"
  public static let nativeType = "ultraarm_p1_interfaces/srv/SetAngles_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesSrvSetAngles_Response
  {
    var v = Ros2Ultraarm_p1_interfacesSrvSetAngles_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesSrvSetCoords_Request: Canonical {
  public static let maximumWireBytes = 20
  public static let codecIdentity =
    "UWVMROS1_df9914ced1ef5f92f6102595de772ed076be380360b8fd5732cf7f0d4c0ec3e3"
  public static let nativeType = "ultraarm_p1_interfaces/srv/SetCoords_Request"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `rx`: Float = 0
  public var `speed`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`rx`)
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesSrvSetCoords_Request
  {
    var v = Ros2Ultraarm_p1_interfacesSrvSetCoords_Request()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`rx` = try r.float32()
    v.`speed` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Ultraarm_p1_interfacesSrvSetCoords_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c66cfcc79da5bbc9a19b077761cfd3e89b3dae56ae604205de6316aa37935d7f"
  public static let nativeType = "ultraarm_p1_interfaces/srv/SetCoords_Response"
  public static let nativeIdentity: String? = nil
  public var `flag`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`flag`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Ultraarm_p1_interfacesSrvSetCoords_Response
  {
    var v = Ros2Ultraarm_p1_interfacesSrvSetCoords_Response()
    v.`flag` = try r.boolean()
    return v
  }
}
